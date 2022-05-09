; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/ovly.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/ovly.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.142 = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.96, %struct.anon.97, %struct.anon.99, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.101, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.113 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.96 = type { ptr, i32, i32, i8 }
%struct.anon.97 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.98] }
%struct.anon.98 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.99 = type { i64, i64 }
%struct.anon.100 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.anon.101 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.102, i8 }
%union.anon.102 = type { %struct.anon.106 }
%struct.anon.106 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.108 = type { i32 }
%struct.anon.109 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.110 = type { i16, i16 }
%struct.anon.111 = type { i16, i16, i16, %struct.anon.112, i16 }
%struct.anon.112 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.95, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.95 = type { i32, ptr }
%struct.nvif_sclass = type { i32, i32, i32 }

@nv50_ovly_new.ovlys = internal constant { [7 x %struct.anon.142], [44 x i8] } { [7 x %struct.anon.142] [%struct.anon.142 { i32 37246, i32 0, ptr @ovly917e_new }, %struct.anon.142 { i32 36990, i32 0, ptr @ovly907e_new }, %struct.anon.142 { i32 34174, i32 0, ptr @ovly827e_new }, %struct.anon.142 { i32 33662, i32 0, ptr @ovly827e_new }, %struct.anon.142 { i32 33406, i32 0, ptr @ovly827e_new }, %struct.anon.142 { i32 20606, i32 0, ptr @ovly507e_new }, %struct.anon.142 zeroinitializer], [44 x i8] zeroinitializer }, align 32
@nv50_ovly_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: No supported overlay class\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nv50_ovly_new\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/dispnv50/ovly.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_ovly_new._entry_ptr = internal global ptr @nv50_ovly_new._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"ovlys\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 34, i32 4 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/ovly.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 48, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @nv50_ovly_new._entry, ptr @nv50_ovly_new._entry_ptr, ptr @nv50_ovly_new.ovlys, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ovly_new.ovlys to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_ovly_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_ovly_new(ptr noundef %drm, i32 noundef %head, ptr noundef %pwndw) local_unnamed_addr #0 align 64 {
entry:
  %sclass = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass) #4
  %10 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass, align 4, !annotation !19
  %call4 = call i32 @nvif_object_sclass_get(ptr noundef %9, ptr noundef nonnull %sclass) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp sgt i32 %call4, -1
  br i1 %cmp, label %for.cond.preheader, label %if.end26.thread

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp775.not = icmp eq i32 %call4, 0
  br i1 %cmp775.not, label %for.cond.preheader.for.inc23.5_crit_edge, label %for.body8.lr.ph

for.cond.preheader.for.inc23.5_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc23.5

if.end26.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #4
  br label %do.body

for.body8.lr.ph:                                  ; preds = %for.cond.preheader
  %11 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sclass, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %j.076 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.inc.for.body8_crit_edge ]
  %arrayidx11 = getelementptr %struct.nvif_sclass, ptr %12, i32 %j.076
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37246, i32 %14)
  %cmp13 = icmp eq i32 %14, 37246
  br i1 %cmp13, label %land.lhs.true, label %for.body8.for.inc_crit_edge

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body8
  %minver = getelementptr %struct.nvif_sclass, ptr %12, i32 %j.076, i32 1
  %15 = ptrtoint ptr %minver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp16.not = icmp sgt i32 %16, 0
  br i1 %cmp16.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true17

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true
  %maxver = getelementptr %struct.nvif_sclass, ptr %12, i32 %j.076, i32 2
  %17 = ptrtoint ptr %maxver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp21.not = icmp slt i32 %18, 0
  br i1 %cmp21.not, label %land.lhs.true17.for.inc_crit_edge, label %land.lhs.true17.if.end35_crit_edge

land.lhs.true17.if.end35_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true17.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body8.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.076, 1
  %exitcond.not = icmp eq i32 %inc, %call4
  br i1 %exitcond.not, label %for.inc23, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8

for.inc23:                                        ; preds = %for.inc
  br i1 %cmp775.not, label %for.inc23.for.inc23.5_crit_edge, label %for.body8.lr.ph.1

for.inc23.for.inc23.5_crit_edge:                  ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc23.5

for.body8.lr.ph.1:                                ; preds = %for.inc23
  %19 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sclass, align 4
  br label %for.body8.1

for.body8.1:                                      ; preds = %for.inc.1.for.body8.1_crit_edge, %for.body8.lr.ph.1
  %j.076.1 = phi i32 [ 0, %for.body8.lr.ph.1 ], [ %inc.1, %for.inc.1.for.body8.1_crit_edge ]
  %arrayidx11.1 = getelementptr %struct.nvif_sclass, ptr %20, i32 %j.076.1
  %21 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx11.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36990, i32 %22)
  %cmp13.1 = icmp eq i32 %22, 36990
  br i1 %cmp13.1, label %land.lhs.true.1, label %for.body8.1.for.inc.1_crit_edge

for.body8.1.for.inc.1_crit_edge:                  ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body8.1
  %minver.1 = getelementptr %struct.nvif_sclass, ptr %20, i32 %j.076.1, i32 1
  %23 = ptrtoint ptr %minver.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %minver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp16.not.1 = icmp sgt i32 %24, 0
  br i1 %cmp16.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true17.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

land.lhs.true17.1:                                ; preds = %land.lhs.true.1
  %maxver.1 = getelementptr %struct.nvif_sclass, ptr %20, i32 %j.076.1, i32 2
  %25 = ptrtoint ptr %maxver.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp21.not.1 = icmp slt i32 %26, 0
  br i1 %cmp21.not.1, label %land.lhs.true17.1.for.inc.1_crit_edge, label %land.lhs.true17.1.if.end35_crit_edge

land.lhs.true17.1.if.end35_crit_edge:             ; preds = %land.lhs.true17.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true17.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true17.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true17.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.body8.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.076.1, 1
  %exitcond.not.1 = icmp eq i32 %inc.1, %call4
  br i1 %exitcond.not.1, label %for.inc23.1, label %for.inc.1.for.body8.1_crit_edge

for.inc.1.for.body8.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.1

for.inc23.1:                                      ; preds = %for.inc.1
  br i1 %cmp775.not, label %for.inc23.1.for.inc23.5_crit_edge, label %for.body8.lr.ph.2

for.inc23.1.for.inc23.5_crit_edge:                ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc23.5

for.body8.lr.ph.2:                                ; preds = %for.inc23.1
  %27 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sclass, align 4
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.inc.2.for.body8.2_crit_edge, %for.body8.lr.ph.2
  %j.076.2 = phi i32 [ 0, %for.body8.lr.ph.2 ], [ %inc.2, %for.inc.2.for.body8.2_crit_edge ]
  %arrayidx11.2 = getelementptr %struct.nvif_sclass, ptr %28, i32 %j.076.2
  %29 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx11.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34174, i32 %30)
  %cmp13.2 = icmp eq i32 %30, 34174
  br i1 %cmp13.2, label %land.lhs.true.2, label %for.body8.2.for.inc.2_crit_edge

for.body8.2.for.inc.2_crit_edge:                  ; preds = %for.body8.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body8.2
  %minver.2 = getelementptr %struct.nvif_sclass, ptr %28, i32 %j.076.2, i32 1
  %31 = ptrtoint ptr %minver.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %minver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp16.not.2 = icmp sgt i32 %32, 0
  br i1 %cmp16.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true17.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

land.lhs.true17.2:                                ; preds = %land.lhs.true.2
  %maxver.2 = getelementptr %struct.nvif_sclass, ptr %28, i32 %j.076.2, i32 2
  %33 = ptrtoint ptr %maxver.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maxver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp21.not.2 = icmp slt i32 %34, 0
  br i1 %cmp21.not.2, label %land.lhs.true17.2.for.inc.2_crit_edge, label %land.lhs.true17.2.if.end35_crit_edge

land.lhs.true17.2.if.end35_crit_edge:             ; preds = %land.lhs.true17.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true17.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true17.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true17.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.body8.2.for.inc.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.076.2, 1
  %exitcond.not.2 = icmp eq i32 %inc.2, %call4
  br i1 %exitcond.not.2, label %for.inc23.2, label %for.inc.2.for.body8.2_crit_edge

for.inc.2.for.body8.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.2

for.inc23.2:                                      ; preds = %for.inc.2
  br i1 %cmp775.not, label %for.inc23.2.for.inc23.5_crit_edge, label %for.body8.lr.ph.3

for.inc23.2.for.inc23.5_crit_edge:                ; preds = %for.inc23.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc23.5

for.body8.lr.ph.3:                                ; preds = %for.inc23.2
  %35 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sclass, align 4
  br label %for.body8.3

for.body8.3:                                      ; preds = %for.inc.3.for.body8.3_crit_edge, %for.body8.lr.ph.3
  %j.076.3 = phi i32 [ 0, %for.body8.lr.ph.3 ], [ %inc.3, %for.inc.3.for.body8.3_crit_edge ]
  %arrayidx11.3 = getelementptr %struct.nvif_sclass, ptr %36, i32 %j.076.3
  %37 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx11.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33662, i32 %38)
  %cmp13.3 = icmp eq i32 %38, 33662
  br i1 %cmp13.3, label %land.lhs.true.3, label %for.body8.3.for.inc.3_crit_edge

for.body8.3.for.inc.3_crit_edge:                  ; preds = %for.body8.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.body8.3
  %minver.3 = getelementptr %struct.nvif_sclass, ptr %36, i32 %j.076.3, i32 1
  %39 = ptrtoint ptr %minver.3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %minver.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp16.not.3 = icmp sgt i32 %40, 0
  br i1 %cmp16.not.3, label %land.lhs.true.3.for.inc.3_crit_edge, label %land.lhs.true17.3

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

land.lhs.true17.3:                                ; preds = %land.lhs.true.3
  %maxver.3 = getelementptr %struct.nvif_sclass, ptr %36, i32 %j.076.3, i32 2
  %41 = ptrtoint ptr %maxver.3 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %maxver.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp21.not.3 = icmp slt i32 %42, 0
  br i1 %cmp21.not.3, label %land.lhs.true17.3.for.inc.3_crit_edge, label %land.lhs.true17.3.if.end35_crit_edge

land.lhs.true17.3.if.end35_crit_edge:             ; preds = %land.lhs.true17.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true17.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true17.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %land.lhs.true17.3.for.inc.3_crit_edge, %land.lhs.true.3.for.inc.3_crit_edge, %for.body8.3.for.inc.3_crit_edge
  %inc.3 = add nuw nsw i32 %j.076.3, 1
  %exitcond.not.3 = icmp eq i32 %inc.3, %call4
  br i1 %exitcond.not.3, label %for.inc23.3, label %for.inc.3.for.body8.3_crit_edge

for.inc.3.for.body8.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.3

for.inc23.3:                                      ; preds = %for.inc.3
  br i1 %cmp775.not, label %for.inc23.3.for.inc23.5_crit_edge, label %for.body8.lr.ph.4

for.inc23.3.for.inc23.5_crit_edge:                ; preds = %for.inc23.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc23.5

for.body8.lr.ph.4:                                ; preds = %for.inc23.3
  %43 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sclass, align 4
  br label %for.body8.4

for.body8.4:                                      ; preds = %for.inc.4.for.body8.4_crit_edge, %for.body8.lr.ph.4
  %j.076.4 = phi i32 [ 0, %for.body8.lr.ph.4 ], [ %inc.4, %for.inc.4.for.body8.4_crit_edge ]
  %arrayidx11.4 = getelementptr %struct.nvif_sclass, ptr %44, i32 %j.076.4
  %45 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx11.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33406, i32 %46)
  %cmp13.4 = icmp eq i32 %46, 33406
  br i1 %cmp13.4, label %land.lhs.true.4, label %for.body8.4.for.inc.4_crit_edge

for.body8.4.for.inc.4_crit_edge:                  ; preds = %for.body8.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.body8.4
  %minver.4 = getelementptr %struct.nvif_sclass, ptr %44, i32 %j.076.4, i32 1
  %47 = ptrtoint ptr %minver.4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %minver.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp16.not.4 = icmp sgt i32 %48, 0
  br i1 %cmp16.not.4, label %land.lhs.true.4.for.inc.4_crit_edge, label %land.lhs.true17.4

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

land.lhs.true17.4:                                ; preds = %land.lhs.true.4
  %maxver.4 = getelementptr %struct.nvif_sclass, ptr %44, i32 %j.076.4, i32 2
  %49 = ptrtoint ptr %maxver.4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %maxver.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp21.not.4 = icmp slt i32 %50, 0
  br i1 %cmp21.not.4, label %land.lhs.true17.4.for.inc.4_crit_edge, label %land.lhs.true17.4.if.end35_crit_edge

land.lhs.true17.4.if.end35_crit_edge:             ; preds = %land.lhs.true17.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true17.4.for.inc.4_crit_edge:            ; preds = %land.lhs.true17.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %land.lhs.true17.4.for.inc.4_crit_edge, %land.lhs.true.4.for.inc.4_crit_edge, %for.body8.4.for.inc.4_crit_edge
  %inc.4 = add nuw nsw i32 %j.076.4, 1
  %exitcond.not.4 = icmp eq i32 %inc.4, %call4
  br i1 %exitcond.not.4, label %for.inc23.4, label %for.inc.4.for.body8.4_crit_edge

for.inc.4.for.body8.4_crit_edge:                  ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.4

for.inc23.4:                                      ; preds = %for.inc.4
  br i1 %cmp775.not, label %for.inc23.4.for.inc23.5_crit_edge, label %for.body8.lr.ph.5

for.inc23.4.for.inc23.5_crit_edge:                ; preds = %for.inc23.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc23.5

for.body8.lr.ph.5:                                ; preds = %for.inc23.4
  %51 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sclass, align 4
  br label %for.body8.5

for.body8.5:                                      ; preds = %for.inc.5.for.body8.5_crit_edge, %for.body8.lr.ph.5
  %j.076.5 = phi i32 [ 0, %for.body8.lr.ph.5 ], [ %inc.5, %for.inc.5.for.body8.5_crit_edge ]
  %arrayidx11.5 = getelementptr %struct.nvif_sclass, ptr %52, i32 %j.076.5
  %53 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx11.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20606, i32 %54)
  %cmp13.5 = icmp eq i32 %54, 20606
  br i1 %cmp13.5, label %land.lhs.true.5, label %for.body8.5.for.inc.5_crit_edge

for.body8.5.for.inc.5_crit_edge:                  ; preds = %for.body8.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.body8.5
  %minver.5 = getelementptr %struct.nvif_sclass, ptr %52, i32 %j.076.5, i32 1
  %55 = ptrtoint ptr %minver.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %minver.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp16.not.5 = icmp sgt i32 %56, 0
  br i1 %cmp16.not.5, label %land.lhs.true.5.for.inc.5_crit_edge, label %land.lhs.true17.5

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

land.lhs.true17.5:                                ; preds = %land.lhs.true.5
  %maxver.5 = getelementptr %struct.nvif_sclass, ptr %52, i32 %j.076.5, i32 2
  %57 = ptrtoint ptr %maxver.5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %maxver.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp21.not.5 = icmp slt i32 %58, 0
  br i1 %cmp21.not.5, label %land.lhs.true17.5.for.inc.5_crit_edge, label %land.lhs.true17.5.if.end35_crit_edge

land.lhs.true17.5.if.end35_crit_edge:             ; preds = %land.lhs.true17.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true17.5.for.inc.5_crit_edge:            ; preds = %land.lhs.true17.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

for.inc.5:                                        ; preds = %land.lhs.true17.5.for.inc.5_crit_edge, %land.lhs.true.5.for.inc.5_crit_edge, %for.body8.5.for.inc.5_crit_edge
  %inc.5 = add nuw nsw i32 %j.076.5, 1
  %exitcond.not.5 = icmp eq i32 %inc.5, %call4
  br i1 %exitcond.not.5, label %for.inc.5.for.inc23.5_crit_edge, label %for.inc.5.for.body8.5_crit_edge

for.inc.5.for.body8.5_crit_edge:                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.5

for.inc.5.for.inc23.5_crit_edge:                  ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc23.5

for.inc23.5:                                      ; preds = %for.inc.5.for.inc23.5_crit_edge, %for.inc23.4.for.inc23.5_crit_edge, %for.inc23.3.for.inc23.5_crit_edge, %for.inc23.2.for.inc23.5_crit_edge, %for.inc23.1.for.inc23.5_crit_edge, %for.inc23.for.inc23.5_crit_edge, %for.cond.preheader.for.inc23.5_crit_edge
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #4
  br label %do.body

do.body:                                          ; preds = %for.inc23.5, %if.end26.thread
  %drm30 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %drm30 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %drm30, align 8
  %dev31 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev31, align 8
  %dev32 = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev32, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true17.5.if.end35_crit_edge, %land.lhs.true17.4.if.end35_crit_edge, %land.lhs.true17.3.if.end35_crit_edge, %land.lhs.true17.2.if.end35_crit_edge, %land.lhs.true17.1.if.end35_crit_edge, %land.lhs.true17.if.end35_crit_edge
  %i.08092.lcssa = phi i32 [ 0, %land.lhs.true17.if.end35_crit_edge ], [ 1, %land.lhs.true17.1.if.end35_crit_edge ], [ 2, %land.lhs.true17.2.if.end35_crit_edge ], [ 3, %land.lhs.true17.3.if.end35_crit_edge ], [ 4, %land.lhs.true17.4.if.end35_crit_edge ], [ 5, %land.lhs.true17.5.if.end35_crit_edge ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #4
  %arrayidx36 = getelementptr [7 x %struct.anon.142], ptr @nv50_ovly_new.ovlys, i32 0, i32 %i.08092.lcssa
  %new = getelementptr [7 x %struct.anon.142], ptr @nv50_ovly_new.ovlys, i32 0, i32 %i.08092.lcssa, i32 2
  %65 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %new, align 4
  %67 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx36, align 4
  %call39 = call i32 %66(ptr noundef %drm, i32 noundef %head, i32 noundef %68, ptr noundef %pwndw) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %69 = ptrtoint ptr %pwndw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pwndw, align 4
  %call43 = call i32 @nv50_oimm_init(ptr noundef %drm, ptr noundef %70) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end35.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ -19, %do.body ], [ %call43, %if.end42 ], [ %call39, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly917e_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly907e_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly827e_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly507e_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_oimm_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @nv50_ovly_new.ovlys, !1, !"ovlys", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly.c", i32 34, i32 4}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/ovly.c", i32 48, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nv50_ovly_new._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv50_ovly_new._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
