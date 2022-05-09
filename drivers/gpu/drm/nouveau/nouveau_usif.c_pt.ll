; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_usif.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_usif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvif_notify_rep_v0 = type { i8, [6 x i8], i8, i64, [0 x i8] }
%struct.usif_notify = type { %struct.list_head, %struct.atomic_t, i32, i16, i8, i64, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.usif_notify_p = type { %struct.drm_pending_event, %struct.anon.90 }
%struct.anon.90 = type { %struct.drm_event, [0 x i8] }
%struct.drm_event = type { i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { ptr, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.usif_object = type { %struct.list_head, %struct.list_head, i8, i64 }
%struct.nvif_ioctl_new_v0 = type { i8, [6 x i8], i8, i64, i64, i32, i32, [0 x i8] }
%struct.nvif_ioctl_ntfy_new_v0 = type { i8, i8, i8, [5 x i8], [0 x i8] }
%struct.nvif_ioctl_ntfy_del_v0 = type { i8, i8, [6 x i8] }
%struct.nvif_ioctl_ntfy_put_v0 = type { i8, i8, [6 x i8] }

@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/nouveau_usif.c\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 61, i64 128]
@___asan_gen_.6 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/nouveau_usif.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 87, i32 7 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 230, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 214, i32 2 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 156, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usif_notify(ptr nocapture noundef readonly %header, i32 noundef %length, ptr nocapture noundef readonly %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %length)
  %cmp = icmp eq i32 %length, 16
  br i1 %cmp, label %land.lhs.true, label %entry.do.end60_crit_edge

entry.do.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %header to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %header, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %if.then, label %land.lhs.true.do.end60_crit_edge

land.lhs.true.do.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end60

if.then:                                          ; preds = %land.lhs.true
  %token = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %header, i32 0, i32 3
  %2 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %token, align 8
  %conv3 = trunc i64 %3 to i32
  %4 = inttoptr i32 %conv3 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3)
  %tobool.not = icmp eq i32 %conv3, 0
  br i1 %tobool.not, label %do.end, label %do.body28, !prof !19

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

do.body28:                                        ; preds = %if.then
  %route = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %header, i32 0, i32 2
  %5 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %route, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp30.not = icmp eq i8 %6, 1
  br i1 %cmp30.not, label %if.end77, label %do.body39, !prof !20

do.body39:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_usif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #7, !srcloc !21
  unreachable

do.end60:                                         ; preds = %land.lhs.true.do.end60_crit_edge, %entry.do.end60_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end77:                                         ; preds = %do.body28
  %p = getelementptr inbounds %struct.usif_notify, ptr %4, i32 0, i32 6
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 8
  %tobool79.not = icmp eq ptr %8, null
  br i1 %tobool79.not, label %if.end77.do.end98_crit_edge, label %lor.rhs

if.end77.do.end98_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end98

lor.rhs:                                          ; preds = %if.end77
  %reply = getelementptr inbounds %struct.usif_notify, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %reply to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reply, align 8
  %conv80 = zext i16 %10 to i32
  %add = add i32 %size, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv80)
  %cmp81.not = icmp eq i32 %add, %conv80
  br i1 %cmp81.not, label %if.end114, label %lor.rhs.do.end98_crit_edge, !prof !20

lor.rhs.do.end98_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end98

do.end98:                                         ; preds = %lor.rhs.do.end98_crit_edge, %if.end77.do.end98_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end114:                                        ; preds = %lor.rhs
  %file_priv = getelementptr inbounds %struct.drm_pending_event, ptr %8, i32 0, i32 4
  %11 = ptrtoint ptr %file_priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %file_priv, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %minor, align 4
  %dev116 = getelementptr inbounds %struct.drm_minor, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev116 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev116, align 4
  %data118 = getelementptr inbounds %struct.usif_notify_p, ptr %8, i32 1
  %17 = call ptr @memcpy(ptr %data118, ptr %header, i32 16)
  %18 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p, align 8
  %arrayidx122 = getelementptr %struct.usif_notify_p, ptr %19, i32 1, i32 0, i32 4
  %20 = call ptr @memcpy(ptr %arrayidx122, ptr %data, i32 %size)
  %21 = ptrtoint ptr %header to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %header, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cond = icmp eq i8 %22, 0
  br i1 %cond, label %sw.bb, label %do.body133

sw.bb:                                            ; preds = %if.end114
  %23 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p, align 8
  %data128 = getelementptr inbounds %struct.usif_notify_p, ptr %24, i32 1
  %route129 = getelementptr inbounds %struct.usif_notify, ptr %4, i32 0, i32 4
  %25 = ptrtoint ptr %route129 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %route129, align 2
  %route130 = getelementptr inbounds %struct.nvif_notify_rep_v0, ptr %data128, i32 0, i32 2
  %27 = ptrtoint ptr %route130 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %route130, align 1
  %token131 = getelementptr inbounds %struct.usif_notify, ptr %4, i32 0, i32 5
  %28 = ptrtoint ptr %token131 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %token131, align 8
  %token132 = getelementptr inbounds %struct.usif_notify_p, ptr %24, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %token132 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %token132, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 28
  %call144 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #7
  %event_space = getelementptr inbounds %struct.drm_file, ptr %12, i32 0, i32 26
  %31 = ptrtoint ptr %event_space to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %event_space, align 4
  %33 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p, align 8
  %length153 = getelementptr inbounds %struct.usif_notify_p, ptr %34, i32 0, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %length153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %length153, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %36)
  %cmp154 = icmp ult i32 %32, %36
  br i1 %cmp154, label %do.end171, label %if.then186.critedge, !prof !19

do.body133:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_usif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 109, 0\0A.popsection", ""() #7, !srcloc !22
  unreachable

do.end171:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 9, ptr noundef null) #7
  br label %if.end194

if.then186.critedge:                              ; preds = %sw.bb
  %link = getelementptr inbounds %struct.drm_pending_event, ptr %34, i32 0, i32 5
  %event_list = getelementptr inbounds %struct.drm_file, ptr %12, i32 0, i32 25
  %prev.i = getelementptr inbounds %struct.drm_file, ptr %12, i32 0, i32 25, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i229 = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %38, ptr noundef %event_list) #7
  br i1 %call.i.i229, label %if.end.i.i, label %if.then186.critedge.list_add_tail.exit_crit_edge

if.then186.critedge.list_add_tail.exit_crit_edge: ; preds = %if.then186.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then186.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %link, ptr %prev.i, align 4
  %40 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %event_list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.drm_pending_event, ptr %34, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %link, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then186.critedge.list_add_tail.exit_crit_edge
  %43 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p, align 8
  %length192 = getelementptr inbounds %struct.usif_notify_p, ptr %44, i32 0, i32 1, i32 0, i32 1
  %45 = ptrtoint ptr %length192 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %length192, align 4
  %47 = ptrtoint ptr %event_space to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %event_space, align 4
  %sub = sub i32 %48, %46
  store i32 %sub, ptr %event_space, align 4
  br label %if.end194

if.end194:                                        ; preds = %list_add_tail.exit, %do.end171
  %event_wait = getelementptr inbounds %struct.drm_file, ptr %12, i32 0, i32 23
  tail call void @__wake_up(ptr noundef %event_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call144) #7
  %enabled = getelementptr inbounds %struct.usif_notify, ptr %4, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled, i32 noundef 4) #7
  %49 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end194, %do.end98, %do.end60, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usif_ioctl(ptr noundef %filp, ptr noundef %user, i32 noundef %argc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %filp, null
  br i1 %tobool.not.i, label %entry.if.end8.i_crit_edge, label %cond.true.i

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %filp, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %cond.true.i, %entry.if.end8.i_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.if.end8.i_crit_edge ]
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %argc, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.done_crit_edge, label %if.end8.i.i

if.end8.i.done_crit_edge:                         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end8.i.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp9.i.i = icmp slt i32 %argc, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.done_crit_edge, label %if.then27.i.i, !prof !20

land.rhs16.i.i.done_crit_edge:                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #7
  br label %done

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %argc, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i164_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i164_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i164

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 %argc, i32 -1226833920) #11, !srcloc !23
  %asmresult.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i164_crit_edge, !prof !20

land.lhs.true.i.i.if.end.i.i164_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i164

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i, i32 noundef %argc) #7
  %3 = tail call i32 @llvm.read_register.i32(metadata !9) #7
  %and.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !24
  %and.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call9.i, ptr noundef %user, i32 noundef %argc) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  br label %if.end.i.i164

if.end.i.i164:                                    ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i164_crit_edge, %if.then.i.i.i.if.end.i.i164_crit_edge
  %res.0.i.i = phi i32 [ %argc, %if.then.i.i.i.if.end.i.i164_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %argc, %land.lhs.true.i.i.if.end.i.i164_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true, label %if.then11.i.i, !prof !20

if.then11.i.i:                                    ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %argc, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call9.i, i32 %sub.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %done

land.lhs.true:                                    ; preds = %if.end.i.i164
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %argc)
  %cmp6 = icmp ugt i32 %argc, 23
  br i1 %cmp6, label %land.lhs.true10, label %land.lhs.true.done_crit_edge

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

land.lhs.true10:                                  ; preds = %land.lhs.true
  %7 = ptrtoint ptr %call9.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp13 = icmp eq i8 %8, 0
  br i1 %cmp13, label %if.then21, label %land.lhs.true10.done_crit_edge

land.lhs.true10.done_crit_edge:                   ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then21:                                        ; preds = %land.lhs.true10
  %add.ptr = getelementptr i8, ptr %call9.i, i32 24
  %sub = add nsw i32 %argc, -24
  %owner22 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 3
  %9 = ptrtoint ptr %owner22 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %owner22, align 2
  %object23 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 6
  %11 = ptrtoint ptr %object23 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %object23, align 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp24 = icmp eq i64 %12, 0
  br i1 %cmp24, label %land.lhs.true26, label %if.then21.if.else_crit_edge

if.then21.if.else_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true26:                                  ; preds = %if.then21
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp28.not = icmp eq i8 %14, 3
  br i1 %cmp28.not, label %land.lhs.true26.if.else_crit_edge, label %land.lhs.true26.if.end35_crit_edge

land.lhs.true26.if.end35_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

land.lhs.true26.if.else_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %land.lhs.true26.if.else_crit_edge, %if.then21.if.else_crit_edge
  br label %if.end35

if.end35:                                         ; preds = %if.else, %land.lhs.true26.if.end35_crit_edge
  %storemerge = phi i8 [ 1, %if.else ], [ -1, %land.lhs.true26.if.end35_crit_edge ]
  %15 = ptrtoint ptr %owner22 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %storemerge, ptr %owner22, align 2
  %mutex = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %route = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 4
  %16 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %route, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool36.not = icmp eq i8 %17, 0
  br i1 %tobool36.not, label %if.end35.if.end49_crit_edge, label %if.then37

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp40 = icmp eq i8 %17, -1
  br i1 %cmp40, label %if.end44, label %if.then37.if.then46_crit_edge

if.then37.if.then46_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end44:                                         ; preds = %if.then37
  %call43 = tail call i32 @nouveau_abi16_usif(ptr noundef %filp, ptr noundef nonnull %call9.i, i32 noundef %argc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool45.not = icmp eq i32 %call43, 0
  br i1 %tobool45.not, label %if.end44.if.end49_crit_edge, label %if.end44.if.then46_crit_edge

if.end44.if.then46_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then46:                                        ; preds = %if.end44.if.then46_crit_edge, %if.then37.if.then46_crit_edge
  %ret.0245 = phi i32 [ %call43, %if.end44.if.then46_crit_edge ], [ -22, %if.then37.if.then46_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %done

if.end49:                                         ; preds = %if.end44.if.end49_crit_edge, %if.end35.if.end49_crit_edge
  %type50 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 1
  %18 = ptrtoint ptr %type50 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type50, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %sw.default [
    i8 2, label %sw.bb
    i8 9, label %sw.bb54
    i8 10, label %sw.bb56
    i8 11, label %sw.bb58
    i8 12, label %sw.bb60
  ]

sw.bb:                                            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %21 = xor i1 %tobool36.not, true
  %call53 = tail call fastcc i32 @usif_object_new(ptr noundef %filp, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %call9.i, i32 noundef %argc, i1 noundef zeroext %21)
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call fastcc i32 @usif_notify_new(ptr noundef %filp, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %call9.i, i32 noundef %argc)
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call57 = tail call fastcc i32 @usif_notify_del(ptr noundef %filp, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %call9.i, i32 noundef %argc)
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call fastcc i32 @usif_notify_get(ptr noundef %filp, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %call9.i, i32 noundef %argc)
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call61 = tail call fastcc i32 @usif_notify_put(ptr noundef %filp, ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull %call9.i, i32 noundef %argc)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = tail call i32 @nvif_client_ioctl(ptr noundef %cond.i, ptr noundef nonnull %call9.i, i32 noundef %argc) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb60, %sw.bb58, %sw.bb56, %sw.bb54, %sw.bb
  %ret.1 = phi i32 [ %call62, %sw.default ], [ %call61, %sw.bb60 ], [ %call59, %sw.bb58 ], [ %call57, %sw.bb56 ], [ %call55, %sw.bb54 ], [ %call53, %sw.bb ]
  %22 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %route, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp65 = icmp eq i8 %23, 1
  br i1 %cmp65, label %if.then67, label %if.else82

if.then67:                                        ; preds = %sw.epilog
  %token = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 5
  %24 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %token, align 8
  %conv68 = trunc i64 %25 to i32
  %26 = inttoptr i32 %conv68 to ptr
  %route69 = getelementptr inbounds %struct.usif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %route69 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %route69, align 8
  %29 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %route, align 1
  %token71 = getelementptr inbounds %struct.usif_object, ptr %26, i32 0, i32 3
  %30 = ptrtoint ptr %token71 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %token71, align 8
  store i64 %31, ptr %token, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp73 = icmp eq i32 %ret.1, 0
  br i1 %cmp73, label %land.lhs.true75, label %if.then67.if.end59.i.i177_crit_edge

if.then67.if.end59.i.i177_crit_edge:              ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i177

land.lhs.true75:                                  ; preds = %if.then67
  %32 = ptrtoint ptr %type50 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %type50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %33)
  %cmp78 = icmp eq i8 %33, 3
  br i1 %cmp78, label %if.then80, label %land.lhs.true75.if.end59.i.i177_crit_edge

land.lhs.true75.if.end59.i.i177_crit_edge:        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i.i177

if.then80:                                        ; preds = %land.lhs.true75
  %call.i.i187 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #7
  br i1 %call.i.i187, label %if.end.i.i188, label %if.then80.list_del.exit_crit_edge

if.then80.list_del.exit_crit_edge:                ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i188:                                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i188, %if.then80.list_del.exit_crit_edge
  %40 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %26) #7
  br label %if.end59.i.i177

if.else82:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %route, align 1
  %token84 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %call9.i, i32 0, i32 5
  %43 = ptrtoint ptr %token84 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 0, ptr %token84, align 8
  br label %if.end59.i.i177

if.end59.i.i177:                                  ; preds = %if.else82, %list_del.exit, %land.lhs.true75.if.end59.i.i177_crit_edge, %if.then67.if.end59.i.i177_crit_edge
  %44 = ptrtoint ptr %owner22 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %10, ptr %owner22, align 2
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %argc, i1 noundef zeroext true) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #7
  %call.i.i179 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i179, label %if.end59.i.i177.done_crit_edge, label %if.end.i.i183

if.end59.i.i177.done_crit_edge:                   ; preds = %if.end59.i.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.end.i.i183:                                    ; preds = %if.end59.i.i177
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user, i32 %argc, i32 -1226833920) #11, !srcloc !27
  %asmresult.i.i181 = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i181)
  %cmp.i6.i182 = icmp eq i32 %asmresult.i.i181, 0
  br i1 %cmp.i6.i182, label %if.then2.i.i, label %if.end.i.i183.done_crit_edge

if.end.i.i183.done_crit_edge:                     ; preds = %if.end.i.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then2.i.i:                                     ; preds = %if.end.i.i183
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i184 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call9.i, i32 noundef %argc) #7
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %user, ptr noundef nonnull %call9.i, i32 noundef %argc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %phi.cmp = icmp eq i32 %call.i12.i.i, 0
  %phi.sel = select i1 %phi.cmp, i32 %ret.1, i32 -14
  br label %done

done:                                             ; preds = %if.then2.i.i, %if.end.i.i183.done_crit_edge, %if.end59.i.i177.done_crit_edge, %if.then46, %land.lhs.true10.done_crit_edge, %land.lhs.true.done_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.done_crit_edge, %if.end8.i.done_crit_edge
  %retval.1.i192 = phi ptr [ null, %if.end8.i.done_crit_edge ], [ %call9.i, %if.then46 ], [ %call9.i, %land.rhs16.i.i.done_crit_edge ], [ %call9.i, %if.then27.i.i ], [ %call9.i, %if.then11.i.i ], [ %call9.i, %land.lhs.true.done_crit_edge ], [ %call9.i, %land.lhs.true10.done_crit_edge ], [ %call9.i, %if.end59.i.i177.done_crit_edge ], [ %call9.i, %if.end.i.i183.done_crit_edge ], [ %call9.i, %if.then2.i.i ]
  %ret.2 = phi i32 [ -12, %if.end8.i.done_crit_edge ], [ %ret.0245, %if.then46 ], [ -14, %land.rhs16.i.i.done_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %if.then11.i.i ], [ -38, %land.lhs.true.done_crit_edge ], [ -38, %land.lhs.true10.done_crit_edge ], [ -14, %if.end59.i.i177.done_crit_edge ], [ -14, %if.end.i.i183.done_crit_edge ], [ %phi.sel, %if.then2.i.i ]
  tail call void @kfree(ptr noundef %retval.1.i192) #7
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_usif(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usif_object_new(ptr noundef readonly %f, ptr nocapture noundef %data, i32 noundef %size, ptr noundef %argv, i32 noundef %argc, i1 noundef zeroext %parent_abi16) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %f, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %size)
  %cmp1 = icmp ugt i32 %size, 31
  br i1 %cmp1, label %land.lhs.true5, label %nouveau_cli.exit.cleanup69_crit_edge

nouveau_cli.exit.cleanup69_crit_edge:             ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

land.lhs.true5:                                   ; preds = %nouveau_cli.exit
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8 = icmp eq i8 %3, 0
  br i1 %cmp8, label %if.end14, label %land.lhs.true5.cleanup69_crit_edge

land.lhs.true5.cleanup69_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end14:                                         ; preds = %land.lhs.true5
  %oclass = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %oclass, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %5, label %sw.default [
    i32 2, label %if.end14.cleanup69_crit_edge
    i32 3, label %if.end14.cleanup69_crit_edge118
    i32 61, label %if.end14.cleanup69_crit_edge119
    i32 128, label %if.end48
  ]

if.end14.cleanup69_crit_edge119:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end14.cleanup69_crit_edge118:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end14.cleanup69_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end48:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %priv = getelementptr i8, ptr %data, i32 33
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %priv, align 1
  br label %sw.epilog

sw.default:                                       ; preds = %if.end14
  br i1 %parent_abi16, label %sw.default.sw.epilog_crit_edge, label %sw.default.cleanup69_crit_edge

sw.default.cleanup69_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default.sw.epilog_crit_edge, %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 32) #12
  %tobool53.not = icmp eq ptr %call7.i, null
  br i1 %tobool53.not, label %sw.epilog.cleanup69_crit_edge, label %if.end55

sw.epilog.cleanup69_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup69

if.end55:                                         ; preds = %sw.epilog
  %objects = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 10
  %9 = ptrtoint ptr %objects to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %objects, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %objects, ptr noundef %10) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end55.list_add.exit_crit_edge

if.end55.list_add.exit_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %objects, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %objects to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i, ptr %objects, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end55.list_add.exit_crit_edge
  %route = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %route, align 1
  %route56 = getelementptr inbounds %struct.usif_object, ptr %call7.i, i32 0, i32 2
  %17 = ptrtoint ptr %route56 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %route56, align 8
  %token = getelementptr inbounds %struct.nvif_ioctl_new_v0, ptr %data, i32 0, i32 3
  %18 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %token, align 8
  %token57 = getelementptr inbounds %struct.usif_object, ptr %call7.i, i32 0, i32 3
  %20 = ptrtoint ptr %token57 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %token57, align 8
  store i8 1, ptr %route, align 1
  %21 = ptrtoint ptr %call7.i to i32
  %conv59 = zext i32 %21 to i64
  store i64 %conv59, ptr %token, align 8
  %call61 = tail call i32 @nvif_client_ioctl(ptr noundef %cond.i, ptr noundef %argv, i32 noundef %argc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.then63

if.then63:                                        ; preds = %list_add.exit
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then63.usif_object_dtor.exit_crit_edge

if.then63.usif_object_dtor.exit_crit_edge:        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %usif_object_dtor.exit

if.end.i.i.i:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %usif_object_dtor.exit

usif_object_dtor.exit:                            ; preds = %if.end.i.i.i, %if.then63.usif_object_dtor.exit_crit_edge
  %28 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup69

if.end64:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %token57 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %token57, align 8
  %32 = ptrtoint ptr %token to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %token, align 8
  %33 = ptrtoint ptr %route56 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %route56, align 8
  %35 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %route, align 1
  br label %cleanup69

cleanup69:                                        ; preds = %if.end64, %usif_object_dtor.exit, %sw.epilog.cleanup69_crit_edge, %sw.default.cleanup69_crit_edge, %if.end14.cleanup69_crit_edge, %if.end14.cleanup69_crit_edge118, %if.end14.cleanup69_crit_edge119, %land.lhs.true5.cleanup69_crit_edge, %nouveau_cli.exit.cleanup69_crit_edge
  %retval.1 = phi i32 [ %call61, %usif_object_dtor.exit ], [ 0, %if.end64 ], [ -22, %if.end14.cleanup69_crit_edge ], [ -22, %if.end14.cleanup69_crit_edge118 ], [ -22, %if.end14.cleanup69_crit_edge119 ], [ -22, %sw.default.cleanup69_crit_edge ], [ -12, %sw.epilog.cleanup69_crit_edge ], [ -38, %land.lhs.true5.cleanup69_crit_edge ], [ -38, %nouveau_cli.exit.cleanup69_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usif_notify_new(ptr noundef readonly %f, ptr nocapture noundef %data, i32 noundef %size, ptr noundef %argv, i32 noundef %argc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %f, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp1 = icmp ugt i32 %size, 7
  br i1 %cmp1, label %land.lhs.true5, label %nouveau_cli.exit.cleanup_crit_edge

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true5:                                   ; preds = %nouveau_cli.exit
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8 = icmp eq i8 %3, 0
  br i1 %cmp8, label %if.then13, label %land.lhs.true5.cleanup_crit_edge

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true5
  %add.ptr = getelementptr i8, ptr %data, i32 8
  %index = getelementptr inbounds %struct.nvif_ioctl_ntfy_new_v0, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv14 = zext i8 %5 to i32
  br i1 %tobool.not.i, label %if.then13.nouveau_cli.exit.i_crit_edge, label %cond.true.i.i

if.then13.nouveau_cli.exit.i_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %nouveau_cli.exit.i

cond.true.i.i:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i.i = getelementptr inbounds %struct.drm_file, ptr %f, i32 0, i32 19
  %6 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_priv.i.i, align 4
  br label %nouveau_cli.exit.i

nouveau_cli.exit.i:                               ; preds = %cond.true.i.i, %if.then13.nouveau_cli.exit.i_crit_edge
  %cond.i.i = phi ptr [ %7, %cond.true.i.i ], [ null, %if.then13.nouveau_cli.exit.i_crit_edge ]
  %notifys.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i.i, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %nouveau_cli.exit.i
  %ntfy.0.in.i = phi ptr [ %notifys.i, %nouveau_cli.exit.i ], [ %ntfy.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %ntfy.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %ntfy.0.i = load ptr, ptr %ntfy.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %ntfy.0.i, %notifys.i
  br i1 %cmp.not.i, label %for.cond.i.if.end19_crit_edge, label %for.body.i

for.cond.i.if.end19_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

for.body.i:                                       ; preds = %for.cond.i
  %handle2.i = getelementptr inbounds %struct.usif_notify, ptr %ntfy.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %handle2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle2.i, align 4
  %cmp3.i = icmp eq i32 %10, %conv14
  br i1 %cmp3.i, label %usif_notify_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

usif_notify_find.exit:                            ; preds = %for.body.i
  %tobool16.not = icmp eq ptr %ntfy.0.i, null
  br i1 %tobool16.not, label %usif_notify_find.exit.if.end19_crit_edge, label %usif_notify_find.exit.cleanup_crit_edge

usif_notify_find.exit.cleanup_crit_edge:          ; preds = %usif_notify_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

usif_notify_find.exit.if.end19_crit_edge:         ; preds = %usif_notify_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %usif_notify_find.exit.if.end19_crit_edge, %for.cond.i.if.end19_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 40) #12
  %tobool21.not = icmp eq ptr %call7.i, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %enabled = getelementptr inbounds %struct.usif_notify, ptr %call7.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled, i32 noundef 4) #7
  %12 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 0, ptr %enabled, align 8
  %13 = add i32 %size, -24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %13)
  %cmp32 = icmp ult i32 %13, -16
  br i1 %cmp32, label %if.end51, label %if.end23.if.then76_crit_edge

if.end23.if.then76_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

if.end51:                                         ; preds = %if.end23
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp42 = icmp eq i8 %15, 0
  br i1 %cmp42, label %if.end70, label %if.end51.if.then76_crit_edge

if.end51.if.then76_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

if.end70:                                         ; preds = %if.end51
  %reply = getelementptr i8, ptr %data, i32 9
  %16 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reply, align 1
  %conv55 = zext i8 %17 to i16
  %add = add nuw nsw i16 %conv55, 16
  %reply57 = getelementptr inbounds %struct.usif_notify, ptr %call7.i, i32 0, i32 3
  %18 = ptrtoint ptr %reply57 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %add, ptr %reply57, align 8
  %route = getelementptr i8, ptr %data, i32 15
  %19 = ptrtoint ptr %route to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %route, align 1
  %route58 = getelementptr inbounds %struct.usif_notify, ptr %call7.i, i32 0, i32 4
  %21 = ptrtoint ptr %route58 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %route58, align 2
  %token = getelementptr i8, ptr %data, i32 16
  %22 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %token, align 8
  %token59 = getelementptr inbounds %struct.usif_notify, ptr %call7.i, i32 0, i32 5
  %24 = ptrtoint ptr %token59 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %token59, align 8
  store i8 1, ptr %route, align 1
  %25 = ptrtoint ptr %call7.i to i32
  %conv61 = zext i32 %25 to i64
  store i64 %conv61, ptr %token, align 8
  %call63 = tail call i32 @nvif_client_ioctl(ptr noundef %cond.i, ptr noundef %argv, i32 noundef %argc) #7
  %26 = ptrtoint ptr %token59 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %token59, align 8
  %28 = ptrtoint ptr %token to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %token, align 8
  %29 = ptrtoint ptr %route58 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %route58, align 2
  %31 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %route, align 1
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %index, align 1
  %conv69 = zext i8 %33 to i32
  %handle = getelementptr inbounds %struct.usif_notify, ptr %call7.i, i32 0, i32 2
  %34 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv69, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cond = icmp eq i32 %call63, 0
  br i1 %cond, label %if.then73, label %if.end70.if.then76_crit_edge

if.end70.if.then76_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then76

if.then73:                                        ; preds = %if.end70
  %notifys = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 11
  %35 = ptrtoint ptr %notifys to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %notifys, align 4
  %call.i.i125 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i, ptr noundef %notifys, ptr noundef %36) #7
  br i1 %call.i.i125, label %if.end.i.i, label %if.then73.cleanup_crit_edge

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i, ptr %prev1.i.i, align 4
  %38 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %36, ptr %call7.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %notifys, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %notifys to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i, ptr %notifys, align 4
  br label %cleanup

if.then76:                                        ; preds = %if.end70.if.then76_crit_edge, %if.end51.if.then76_crit_edge, %if.end23.if.then76_crit_edge
  %ret.0136 = phi i32 [ %call63, %if.end70.if.then76_crit_edge ], [ -38, %if.end23.if.then76_crit_edge ], [ -38, %if.end51.if.then76_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end.i.i, %if.then73.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %usif_notify_find.exit.cleanup_crit_edge, %land.lhs.true5.cleanup_crit_edge, %nouveau_cli.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %usif_notify_find.exit.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ %ret.0136, %if.then76 ], [ 0, %if.then73.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ -38, %land.lhs.true5.cleanup_crit_edge ], [ -38, %nouveau_cli.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usif_notify_del(ptr noundef readonly %f, ptr nocapture noundef readonly %data, i32 noundef %size, ptr noundef %argv, i32 noundef %argc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %f, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp1 = icmp ugt i32 %size, 7
  br i1 %cmp1, label %if.end11, label %nouveau_cli.exit.cleanup_crit_edge

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %nouveau_cli.exit
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8 = icmp eq i8 %3, 0
  br i1 %cmp8, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %index = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv14 = zext i8 %5 to i32
  br i1 %tobool.not.i, label %if.then13.nouveau_cli.exit.i_crit_edge, label %cond.true.i.i

if.then13.nouveau_cli.exit.i_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %nouveau_cli.exit.i

cond.true.i.i:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i.i = getelementptr inbounds %struct.drm_file, ptr %f, i32 0, i32 19
  %6 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_priv.i.i, align 4
  br label %nouveau_cli.exit.i

nouveau_cli.exit.i:                               ; preds = %cond.true.i.i, %if.then13.nouveau_cli.exit.i_crit_edge
  %cond.i.i = phi ptr [ %7, %cond.true.i.i ], [ null, %if.then13.nouveau_cli.exit.i_crit_edge ]
  %notifys.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i.i, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %nouveau_cli.exit.i
  %ntfy.0.in.i = phi ptr [ %notifys.i, %nouveau_cli.exit.i ], [ %ntfy.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %ntfy.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %ntfy.0.i = load ptr, ptr %ntfy.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %ntfy.0.i, %notifys.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %handle2.i = getelementptr inbounds %struct.usif_notify, ptr %ntfy.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %handle2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle2.i, align 4
  %cmp3.i = icmp eq i32 %10, %conv14
  br i1 %cmp3.i, label %usif_notify_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

usif_notify_find.exit:                            ; preds = %for.body.i
  %tobool16.not = icmp eq ptr %ntfy.0.i, null
  br i1 %tobool16.not, label %usif_notify_find.exit.cleanup_crit_edge, label %if.end19

usif_notify_find.exit.cleanup_crit_edge:          ; preds = %usif_notify_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %usif_notify_find.exit
  %call20 = tail call i32 @nvif_client_ioctl(ptr noundef %cond.i, ptr noundef %argv, i32 noundef %argc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %ntfy.0.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then23.usif_notify_dtor.exit_crit_edge

if.then23.usif_notify_dtor.exit_crit_edge:        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %usif_notify_dtor.exit

if.end.i.i.i:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ntfy.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %ntfy.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ntfy.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %usif_notify_dtor.exit

usif_notify_dtor.exit:                            ; preds = %if.end.i.i.i, %if.then23.usif_notify_dtor.exit_crit_edge
  %17 = ptrtoint ptr %ntfy.0.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %ntfy.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ntfy.0.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %ntfy.0.i) #7
  br label %cleanup

cleanup:                                          ; preds = %usif_notify_dtor.exit, %if.end19.cleanup_crit_edge, %usif_notify_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %nouveau_cli.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %usif_notify_find.exit.cleanup_crit_edge ], [ -38, %if.end11.cleanup_crit_edge ], [ 0, %usif_notify_dtor.exit ], [ %call20, %if.end19.cleanup_crit_edge ], [ -38, %nouveau_cli.exit.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usif_notify_get(ptr noundef %f, ptr nocapture noundef readonly %data, i32 noundef %size, ptr noundef %argv, i32 noundef %argc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %f, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp1 = icmp ugt i32 %size, 7
  br i1 %cmp1, label %if.end11, label %nouveau_cli.exit.cleanup_crit_edge

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %nouveau_cli.exit
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8 = icmp eq i8 %3, 0
  br i1 %cmp8, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %index = getelementptr inbounds %struct.nvif_ioctl_ntfy_del_v0, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv14 = zext i8 %5 to i32
  br i1 %tobool.not.i, label %if.then13.nouveau_cli.exit.i_crit_edge, label %cond.true.i.i

if.then13.nouveau_cli.exit.i_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %nouveau_cli.exit.i

cond.true.i.i:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i.i = getelementptr inbounds %struct.drm_file, ptr %f, i32 0, i32 19
  %6 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_priv.i.i, align 4
  br label %nouveau_cli.exit.i

nouveau_cli.exit.i:                               ; preds = %cond.true.i.i, %if.then13.nouveau_cli.exit.i_crit_edge
  %cond.i.i = phi ptr [ %7, %cond.true.i.i ], [ null, %if.then13.nouveau_cli.exit.i_crit_edge ]
  %notifys.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i.i, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %nouveau_cli.exit.i
  %ntfy.0.in.i = phi ptr [ %notifys.i, %nouveau_cli.exit.i ], [ %ntfy.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %ntfy.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %ntfy.0.i = load ptr, ptr %ntfy.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %ntfy.0.i, %notifys.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %handle2.i = getelementptr inbounds %struct.usif_notify, ptr %ntfy.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %handle2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle2.i, align 4
  %cmp3.i = icmp eq i32 %10, %conv14
  br i1 %cmp3.i, label %usif_notify_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

usif_notify_find.exit:                            ; preds = %for.body.i
  %tobool16.not = icmp eq ptr %ntfy.0.i, null
  br i1 %tobool16.not, label %usif_notify_find.exit.cleanup_crit_edge, label %if.end19

usif_notify_find.exit.cleanup_crit_edge:          ; preds = %usif_notify_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %usif_notify_find.exit
  %enabled = getelementptr inbounds %struct.usif_notify, ptr %ntfy.0.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @llvm.prefetch.p0(ptr %enabled, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %enabled) #7, !srcloc !29
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool21.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  %reply = getelementptr inbounds %struct.usif_notify, ptr %ntfy.0.i, i32 0, i32 3
  %12 = ptrtoint ptr %reply to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reply, align 8
  %conv24 = zext i16 %13 to i32
  %add = add nuw nsw i32 %conv24, 44
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #10
  %p = getelementptr inbounds %struct.usif_notify, ptr %ntfy.0.i, i32 0, i32 6
  %14 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i, ptr %p, align 8
  %tobool27.not = icmp eq ptr %call9.i, null
  br i1 %tobool27.not, label %if.end23.if.then47_crit_edge, label %done

if.end23.if.then47_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

done:                                             ; preds = %if.end23
  %e = getelementptr inbounds %struct.usif_notify_p, ptr %call9.i, i32 0, i32 1
  %event = getelementptr inbounds %struct.drm_pending_event, ptr %call9.i, i32 0, i32 2
  %15 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %e, ptr %event, align 8
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p, align 8
  %file_priv = getelementptr inbounds %struct.drm_pending_event, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %file_priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %f, ptr %file_priv, align 4
  %19 = load ptr, ptr %p, align 8
  %e37 = getelementptr inbounds %struct.usif_notify_p, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %e37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -2147483648, ptr %e37, align 4
  %21 = ptrtoint ptr %reply to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reply, align 8
  %conv40 = zext i16 %22 to i32
  %add41 = add nuw nsw i32 %conv40, 8
  %23 = load ptr, ptr %p, align 8
  %length = getelementptr inbounds %struct.usif_notify_p, ptr %23, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add41, ptr %length, align 4
  %call45 = tail call i32 @nvif_client_ioctl(ptr noundef %cond.i, ptr noundef %argv, i32 noundef %argc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %done.cleanup_crit_edge, label %done.if.then47_crit_edge

done.if.then47_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then47

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %done.if.then47_crit_edge, %if.end23.if.then47_crit_edge
  %ret.087 = phi i32 [ %call45, %done.if.then47_crit_edge ], [ -12, %if.end23.if.then47_crit_edge ]
  %call.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled, i32 noundef 4) #7
  %25 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %enabled, align 4
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p, align 8
  tail call void @kfree(ptr noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %done.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %usif_notify_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %nouveau_cli.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %usif_notify_find.exit.cleanup_crit_edge ], [ -38, %if.end11.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %ret.087, %if.then47 ], [ 0, %done.cleanup_crit_edge ], [ -38, %nouveau_cli.exit.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usif_notify_put(ptr noundef readonly %f, ptr nocapture noundef readonly %data, i32 noundef %size, ptr noundef %argv, i32 noundef %argc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %f, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %f, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp1 = icmp ugt i32 %size, 7
  br i1 %cmp1, label %if.end11, label %nouveau_cli.exit.cleanup_crit_edge

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %nouveau_cli.exit
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp8 = icmp eq i8 %3, 0
  br i1 %cmp8, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %index = getelementptr inbounds %struct.nvif_ioctl_ntfy_put_v0, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 1
  %conv14 = zext i8 %5 to i32
  br i1 %tobool.not.i, label %if.then13.nouveau_cli.exit.i_crit_edge, label %cond.true.i.i

if.then13.nouveau_cli.exit.i_crit_edge:           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %nouveau_cli.exit.i

cond.true.i.i:                                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %driver_priv.i.i = getelementptr inbounds %struct.drm_file, ptr %f, i32 0, i32 19
  %6 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_priv.i.i, align 4
  br label %nouveau_cli.exit.i

nouveau_cli.exit.i:                               ; preds = %cond.true.i.i, %if.then13.nouveau_cli.exit.i_crit_edge
  %cond.i.i = phi ptr [ %7, %cond.true.i.i ], [ null, %if.then13.nouveau_cli.exit.i_crit_edge ]
  %notifys.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i.i, i32 0, i32 11
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %nouveau_cli.exit.i
  %ntfy.0.in.i = phi ptr [ %notifys.i, %nouveau_cli.exit.i ], [ %ntfy.0.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %ntfy.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %ntfy.0.i = load ptr, ptr %ntfy.0.in.i, align 8
  %cmp.not.i = icmp eq ptr %ntfy.0.i, %notifys.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %handle2.i = getelementptr inbounds %struct.usif_notify, ptr %ntfy.0.i, i32 0, i32 2
  %9 = ptrtoint ptr %handle2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle2.i, align 4
  %cmp3.i = icmp eq i32 %10, %conv14
  br i1 %cmp3.i, label %usif_notify_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

usif_notify_find.exit:                            ; preds = %for.body.i
  %tobool16.not = icmp eq ptr %ntfy.0.i, null
  br i1 %tobool16.not, label %usif_notify_find.exit.cleanup_crit_edge, label %if.end19

usif_notify_find.exit.cleanup_crit_edge:          ; preds = %usif_notify_find.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %usif_notify_find.exit
  %call20 = tail call i32 @nvif_client_ioctl(ptr noundef %cond.i, ptr noundef %argv, i32 noundef %argc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %land.lhs.true23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end19
  %enabled = getelementptr inbounds %struct.usif_notify, ptr %ntfy.0.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %enabled, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @llvm.prefetch.p0(ptr %enabled, i32 1, i32 3, i32 1) #7
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %enabled) #7, !srcloc !29
  %asmresult.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool25.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool25.not, label %land.lhs.true23.cleanup_crit_edge, label %if.then26

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #9
  %p = getelementptr inbounds %struct.usif_notify, ptr %ntfy.0.i, i32 0, i32 6
  %12 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p, align 8
  tail call void @kfree(ptr noundef %13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true23.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %usif_notify_find.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %nouveau_cli.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %usif_notify_find.exit.cleanup_crit_edge ], [ -38, %if.end11.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ %call20, %if.end19.cleanup_crit_edge ], [ -38, %nouveau_cli.exit.cleanup_crit_edge ], [ -2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_client_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usif_client_fini(ptr noundef readonly %cli) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %notifys = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 11
  %0 = ptrtoint ptr %notifys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notifys, align 8
  %cmp.not48 = icmp eq ptr %1, %notifys
  br i1 %cmp.not48, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %usif_notify_dtor.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %notify.049 = phi ptr [ %ntemp.0, %usif_notify_dtor.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %notify.049 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ntemp.0 = load ptr, ptr %notify.049, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %notify.049) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.usif_notify_dtor.exit_crit_edge

for.body.usif_notify_dtor.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %usif_notify_dtor.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %notify.049, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %notify.049 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %notify.049, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %usif_notify_dtor.exit

usif_notify_dtor.exit:                            ; preds = %if.end.i.i.i, %for.body.usif_notify_dtor.exit_crit_edge
  %9 = ptrtoint ptr %notify.049 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %notify.049, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %notify.049, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %notify.049) #7
  %cmp.not = icmp eq ptr %ntemp.0, %notifys
  br i1 %cmp.not, label %usif_notify_dtor.exit.for.end_crit_edge, label %usif_notify_dtor.exit.for.body_crit_edge

usif_notify_dtor.exit.for.body_crit_edge:         ; preds = %usif_notify_dtor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

usif_notify_dtor.exit.for.end_crit_edge:          ; preds = %usif_notify_dtor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %usif_notify_dtor.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %objects = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 10
  %11 = ptrtoint ptr %objects to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %objects, align 8
  %cmp24.not51 = icmp eq ptr %12, %objects
  br i1 %cmp24.not51, label %for.end.for.end33_crit_edge, label %for.end.for.body26_crit_edge

for.end.for.body26_crit_edge:                     ; preds = %for.end
  br label %for.body26

for.end.for.end33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end33

for.body26:                                       ; preds = %usif_object_dtor.exit.for.body26_crit_edge, %for.end.for.body26_crit_edge
  %object.052 = phi ptr [ %otemp.0, %usif_object_dtor.exit.for.body26_crit_edge ], [ %12, %for.end.for.body26_crit_edge ]
  %13 = ptrtoint ptr %object.052 to i32
  call void @__asan_load4_noabort(i32 %13)
  %otemp.0 = load ptr, ptr %object.052, align 8
  %call.i.i.i43 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %object.052) #7
  br i1 %call.i.i.i43, label %if.end.i.i.i46, label %for.body26.usif_object_dtor.exit_crit_edge

for.body26.usif_object_dtor.exit_crit_edge:       ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %usif_object_dtor.exit

if.end.i.i.i46:                                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %object.052, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i44, align 4
  %16 = ptrtoint ptr %object.052 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %object.052, align 4
  %prev1.i.i.i.i45 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i45, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %usif_object_dtor.exit

usif_object_dtor.exit:                            ; preds = %if.end.i.i.i46, %for.body26.usif_object_dtor.exit_crit_edge
  %20 = ptrtoint ptr %object.052 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %object.052, align 4
  %prev.i.i47 = getelementptr inbounds %struct.list_head, ptr %object.052, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i47 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i47, align 4
  tail call void @kfree(ptr noundef %object.052) #7
  %cmp24.not = icmp eq ptr %otemp.0, %objects
  br i1 %cmp24.not, label %usif_object_dtor.exit.for.end33_crit_edge, label %usif_object_dtor.exit.for.body26_crit_edge

usif_object_dtor.exit.for.body26_crit_edge:       ; preds = %usif_object_dtor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26

usif_object_dtor.exit.for.end33_crit_edge:        ; preds = %usif_object_dtor.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end33

for.end33:                                        ; preds = %usif_object_dtor.exit.for.end33_crit_edge, %for.end.for.end33_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usif_client_init(ptr noundef %cli) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %objects = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 10
  %0 = ptrtoint ptr %objects to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %objects, ptr %objects, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 10, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %objects, ptr %prev.i, align 4
  %notifys = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 11
  %2 = ptrtoint ptr %notifys to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %notifys, ptr %notifys, align 4
  %prev.i2 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %notifys, ptr %prev.i2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_usif.c", i32 87, i32 7}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2157130209, i64 2157130711, i64 2157130246, i64 2157130302, i64 2157130336, i64 2157130360, i64 2157130401, i64 2157130422, i64 2157130450, i64 2157130484}
!22 = !{i64 2157132792, i64 2157133295, i64 2157132829, i64 2157132885, i64 2157132919, i64 2157132943, i64 2157132984, i64 2157133005, i64 2157133033, i64 2157133067}
!23 = !{i64 2153900633, i64 2153900658}
!24 = !{i64 6396188}
!25 = !{i64 6396385}
!26 = !{i64 2153881618}
!27 = !{i64 2153901314, i64 2153901339}
!28 = !{i64 2148645034}
!29 = !{i64 891962, i64 891979, i64 892003, i64 892029, i64 892047}
!30 = !{i64 2148645404}
