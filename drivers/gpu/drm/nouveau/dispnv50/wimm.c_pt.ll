; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/wimm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/wimm.c"
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

@__const.nv50_wimm_init.wimms = private unnamed_addr constant [4 x %struct.anon.142] [%struct.anon.142 { i32 50811, i32 0, ptr @wimmc37b_init }, %struct.anon.142 { i32 50555, i32 0, ptr @wimmc37b_init }, %struct.anon.142 { i32 50043, i32 0, ptr @wimmc37b_init }, %struct.anon.142 zeroinitializer], align 4
@nv50_wimm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 44, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: No supported window immediate class\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nv50_wimm_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/dispnv50/wimm.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_wimm_init._entry_ptr = internal global ptr @nv50_wimm_init._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/wimm.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 44, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @nv50_wimm_init._entry, ptr @nv50_wimm_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_wimm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_wimm_init(ptr noundef %drm, ptr noundef %wndw) local_unnamed_addr #0 align 64 {
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
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass, align 4, !annotation !17
  %call3 = call i32 @nvif_object_sclass_get(ptr noundef %9, ptr noundef nonnull %sclass) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp sgt i32 %call3, -1
  br i1 %cmp, label %for.cond.preheader, label %if.end25.thread

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp668.not = icmp eq i32 %call3, 0
  br i1 %cmp668.not, label %for.cond.preheader.if.end25.thread65_crit_edge, label %for.body7.lr.ph

for.cond.preheader.if.end25.thread65_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.thread65

if.end25.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #4
  br label %do.body

for.body7.lr.ph:                                  ; preds = %for.cond.preheader
  %11 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sclass, align 4
  br label %for.body7

if.end25.thread65:                                ; preds = %for.inc.2.if.end25.thread65_crit_edge, %land.rhs.2.if.end25.thread65_crit_edge, %land.rhs.1.if.end25.thread65_crit_edge, %for.cond.preheader.if.end25.thread65_crit_edge
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #4
  br label %do.body

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.lr.ph
  %j.069 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %for.inc.for.body7_crit_edge ]
  %arrayidx10 = getelementptr %struct.nvif_sclass, ptr %12, i32 %j.069
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50811, i32 %14)
  %cmp12 = icmp eq i32 %14, 50811
  br i1 %cmp12, label %land.lhs.true, label %for.body7.for.inc_crit_edge

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body7
  %minver = getelementptr %struct.nvif_sclass, ptr %12, i32 %j.069, i32 1
  %15 = ptrtoint ptr %minver to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %minver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15.not = icmp sgt i32 %16, 0
  br i1 %cmp15.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true16

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true
  %maxver = getelementptr %struct.nvif_sclass, ptr %12, i32 %j.069, i32 2
  %17 = ptrtoint ptr %maxver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp20.not = icmp slt i32 %18, 0
  br i1 %cmp20.not, label %land.lhs.true16.for.inc_crit_edge, label %land.lhs.true16.if.end35_crit_edge

land.lhs.true16.if.end35_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true16.for.inc_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true16.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body7.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.069, 1
  %exitcond.not = icmp eq i32 %inc, %call3
  br i1 %exitcond.not, label %land.rhs.1, label %for.inc.for.body7_crit_edge

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

land.rhs.1:                                       ; preds = %for.inc
  br i1 %cmp668.not, label %land.rhs.1.if.end25.thread65_crit_edge, label %for.body7.lr.ph.1

land.rhs.1.if.end25.thread65_crit_edge:           ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.thread65

for.body7.lr.ph.1:                                ; preds = %land.rhs.1
  %19 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sclass, align 4
  br label %for.body7.1

for.body7.1:                                      ; preds = %for.inc.1.for.body7.1_crit_edge, %for.body7.lr.ph.1
  %j.069.1 = phi i32 [ 0, %for.body7.lr.ph.1 ], [ %inc.1, %for.inc.1.for.body7.1_crit_edge ]
  %arrayidx10.1 = getelementptr %struct.nvif_sclass, ptr %20, i32 %j.069.1
  %21 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx10.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50555, i32 %22)
  %cmp12.1 = icmp eq i32 %22, 50555
  br i1 %cmp12.1, label %land.lhs.true.1, label %for.body7.1.for.inc.1_crit_edge

for.body7.1.for.inc.1_crit_edge:                  ; preds = %for.body7.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body7.1
  %minver.1 = getelementptr %struct.nvif_sclass, ptr %20, i32 %j.069.1, i32 1
  %23 = ptrtoint ptr %minver.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %minver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp15.not.1 = icmp sgt i32 %24, 0
  br i1 %cmp15.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true16.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

land.lhs.true16.1:                                ; preds = %land.lhs.true.1
  %maxver.1 = getelementptr %struct.nvif_sclass, ptr %20, i32 %j.069.1, i32 2
  %25 = ptrtoint ptr %maxver.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %maxver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp20.not.1 = icmp slt i32 %26, 0
  br i1 %cmp20.not.1, label %land.lhs.true16.1.for.inc.1_crit_edge, label %land.lhs.true16.1.if.end35_crit_edge

land.lhs.true16.1.if.end35_crit_edge:             ; preds = %land.lhs.true16.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true16.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true16.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true16.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.body7.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.069.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %call3
  br i1 %exitcond.1.not, label %land.rhs.2, label %for.inc.1.for.body7.1_crit_edge

for.inc.1.for.body7.1_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7.1

land.rhs.2:                                       ; preds = %for.inc.1
  br i1 %cmp668.not, label %land.rhs.2.if.end25.thread65_crit_edge, label %for.body7.lr.ph.2

land.rhs.2.if.end25.thread65_crit_edge:           ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.thread65

for.body7.lr.ph.2:                                ; preds = %land.rhs.2
  %27 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sclass, align 4
  br label %for.body7.2

for.body7.2:                                      ; preds = %for.inc.2.for.body7.2_crit_edge, %for.body7.lr.ph.2
  %j.069.2 = phi i32 [ 0, %for.body7.lr.ph.2 ], [ %inc.2, %for.inc.2.for.body7.2_crit_edge ]
  %arrayidx10.2 = getelementptr %struct.nvif_sclass, ptr %28, i32 %j.069.2
  %29 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx10.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50043, i32 %30)
  %cmp12.2 = icmp eq i32 %30, 50043
  br i1 %cmp12.2, label %land.lhs.true.2, label %for.body7.2.for.inc.2_crit_edge

for.body7.2.for.inc.2_crit_edge:                  ; preds = %for.body7.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body7.2
  %minver.2 = getelementptr %struct.nvif_sclass, ptr %28, i32 %j.069.2, i32 1
  %31 = ptrtoint ptr %minver.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %minver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp15.not.2 = icmp sgt i32 %32, 0
  br i1 %cmp15.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true16.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

land.lhs.true16.2:                                ; preds = %land.lhs.true.2
  %maxver.2 = getelementptr %struct.nvif_sclass, ptr %28, i32 %j.069.2, i32 2
  %33 = ptrtoint ptr %maxver.2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maxver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp20.not.2 = icmp slt i32 %34, 0
  br i1 %cmp20.not.2, label %land.lhs.true16.2.for.inc.2_crit_edge, label %land.lhs.true16.2.if.end35_crit_edge

land.lhs.true16.2.if.end35_crit_edge:             ; preds = %land.lhs.true16.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

land.lhs.true16.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true16.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true16.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.body7.2.for.inc.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.069.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %call3
  br i1 %exitcond.2.not, label %for.inc.2.if.end25.thread65_crit_edge, label %for.inc.2.for.body7.2_crit_edge

for.inc.2.for.body7.2_crit_edge:                  ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7.2

for.inc.2.if.end25.thread65_crit_edge:            ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.thread65

do.body:                                          ; preds = %if.end25.thread65, %if.end25.thread
  %drm29 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %drm29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %drm29, align 8
  %dev30 = getelementptr inbounds %struct.nouveau_drm, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev30, align 8
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev31, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str, ptr noundef %name) #7
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true16.2.if.end35_crit_edge, %land.lhs.true16.1.if.end35_crit_edge, %land.lhs.true16.if.end35_crit_edge
  %ret.1.lcssa = phi i32 [ 2, %land.lhs.true16.2.if.end35_crit_edge ], [ 1, %land.lhs.true16.1.if.end35_crit_edge ], [ 0, %land.lhs.true16.if.end35_crit_edge ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #4
  %arrayidx36 = getelementptr [4 x %struct.anon.142], ptr @__const.nv50_wimm_init.wimms, i32 0, i32 %ret.1.lcssa
  %init = getelementptr [4 x %struct.anon.142], ptr @__const.nv50_wimm_init.wimms, i32 0, i32 %ret.1.lcssa, i32 2
  %41 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init, align 4
  %43 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx36, align 4
  %call39 = call i32 %42(ptr noundef %drm, i32 noundef %44, ptr noundef %wndw) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.body
  %retval.0 = phi i32 [ -19, %do.body ], [ %call39, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wimmc37b_init(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/wimm.c", i32 44, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv50_wimm_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv50_wimm_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
