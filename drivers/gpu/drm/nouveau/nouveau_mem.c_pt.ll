; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_mem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.anon.114 = type { %struct.nv50_vmm_map_v0 }
%struct.nv50_vmm_map_v0 = type { i8, i8, i8, i8, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_vma = type { i64, i64 }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.94, %struct.anon.95, %struct.anon.97, ptr, %struct.anon.98, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.99, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.111 }
%struct.nvif_parent = type { ptr }
%struct.anon.94 = type { ptr, i32, i32, i8 }
%struct.anon.95 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.96] }
%struct.anon.96 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.97 = type { i64, i64 }
%struct.anon.98 = type { i32, i64 }
%struct.anon.99 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.100, i8 }
%union.anon.100 = type { %struct.anon.104 }
%struct.anon.104 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.106 = type { i32 }
%struct.anon.107 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.108 = type { i16, i16 }
%struct.anon.109 = type { i16, i16, i16, %struct.anon.110, i16 }
%struct.anon.110 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.111 = type { ptr, %struct.mutex, i8 }
%struct.nvif_mem_ram_v0 = type { i8, [7 x i8], ptr, ptr }
%struct.anon.2 = type { i8, i8 }
%struct.ttm_tt = type { ptr, i32, i32, ptr, ptr, ptr, i32 }
%struct.gf100_mem_v0 = type { i8, i8 }
%struct.nv50_mem_v0 = type { i8, i8, i8 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/nouveau/nouveau_mem.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ttmHostMem\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ttmVram\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2147483661, i64 2147504141, i64 2147520525, i64 2147528717, i64 2147532813]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2147504139, i64 2147520523]
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 70, i32 3 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 117, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/nouveau_mem.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 137, i32 33 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_mem_map(ptr noundef %mem, ptr noundef %vmm, ptr nocapture noundef readonly %vma) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %union.anon.114, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %args) #4
  %0 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %args, i32 0, i32 2
  %2 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %args, i32 0, i32 3
  %3 = getelementptr inbounds %struct.nv50_vmm_map_v0, ptr %args, i32 0, i32 4
  %oclass = getelementptr inbounds %struct.nvif_object, ptr %vmm, i32 0, i32 4
  %4 = call ptr @memset(ptr %args, i32 255, i32 5)
  %5 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oclass, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end [
    i32 -2147483635, label %entry.sw.epilog_crit_edge
    i32 -2147463155, label %sw.bb
    i32 -2147446771, label %entry.sw.bb3_crit_edge
    i32 -2147438579, label %entry.sw.bb3_crit_edge38
    i32 -2147434483, label %entry.sw.bb3_crit_edge39
  ]

entry.sw.bb3_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %args, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %0, align 1
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %1, align 1
  %kind = getelementptr inbounds %struct.nouveau_mem, ptr %mem, i32 0, i32 2
  %11 = ptrtoint ptr %kind to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %kind, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %2, align 1
  %comp = getelementptr inbounds %struct.nouveau_mem, ptr %mem, i32 0, i32 3
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge38, %entry.sw.bb3_crit_edge39
  %14 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %args, align 1
  %type = getelementptr inbounds %struct.nouveau_mem, ptr %mem, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %0, align 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %1, align 1
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %2, align 1
  %kind9 = getelementptr inbounds %struct.nouveau_mem, ptr %mem, i32 0, i32 2
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb3, %sw.bb
  %.sink.in = phi ptr [ %kind9, %sw.bb3 ], [ %comp, %sw.bb ]
  %22 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load1_noabort(i32 %22)
  %.sink = load i8, ptr %.sink.in, align 1
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %3, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %argc.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 5, %sw.epilog.sink.split ]
  %24 = ptrtoint ptr %vma to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %vma, align 8
  %mem28 = getelementptr inbounds %struct.nouveau_mem, ptr %mem, i32 0, i32 4
  %size = getelementptr inbounds %struct.nouveau_mem, ptr %mem, i32 0, i32 4, i32 4
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size, align 8
  %call = call i32 @nvif_vmm_map(ptr noundef %vmm, i64 noundef %25, i64 noundef %27, ptr noundef nonnull %args, i32 noundef %argc.0, ptr noundef %mem28, i64 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -38, %do.end ], [ %call, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %args) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_map(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_mem_fini(ptr noundef %mem) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cli = getelementptr inbounds %struct.nouveau_mem, ptr %mem, i32 0, i32 1
  %0 = ptrtoint ptr %cli to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cli, align 8
  %drm = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 8
  %vmm1 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 5, i32 1
  %vma = getelementptr inbounds %struct.nouveau_mem, ptr %mem, i32 0, i32 5
  %arrayidx = getelementptr %struct.nouveau_mem, ptr %mem, i32 0, i32 5, i32 1
  tail call void @nvif_vmm_put(ptr noundef %vmm1, ptr noundef %arrayidx) #4
  %4 = ptrtoint ptr %cli to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cli, align 8
  %drm3 = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %drm3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drm3, align 8
  %vmm6 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 5, i32 1
  tail call void @nvif_vmm_put(ptr noundef %vmm6, ptr noundef %vma) #4
  %8 = ptrtoint ptr %cli to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cli, align 8
  %drm10 = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %drm10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drm10, align 8
  %lock = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 1, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %mem11 = getelementptr inbounds %struct.nouveau_mem, ptr %mem, i32 0, i32 4
  tail call void @nvif_mem_dtor(ptr noundef %mem11) #4
  %12 = ptrtoint ptr %cli to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cli, align 8
  %drm13 = getelementptr inbounds %struct.nouveau_cli, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %drm13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drm13, align 8
  %lock15 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 1, i32 15
  tail call void @mutex_unlock(ptr noundef %lock15) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mem_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_mem_host(ptr noundef %reg, ptr nocapture noundef readonly %tt) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nvif_mem_ram_v0, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cli1 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 1
  %0 = ptrtoint ptr %cli1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cli1, align 8
  %drm2 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #4
  %4 = call ptr @memset(ptr %args, i32 0, i32 16)
  %type.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 4, i32 8
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type.i, align 8
  %type_host.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %type_host.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type_host.i, align 8
  %arrayidx2.i = getelementptr %struct.anon.2, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not.i = icmp sgt i8 %10, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %kind = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 2
  %11 = ptrtoint ptr %kind to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool = icmp ne i8 %12, 0
  %lnot.ext = zext i1 %tobool to i32
  %arrayidx = getelementptr %struct.nouveau_drm, ptr %3, i32 0, i32 8, i32 8, i32 %lnot.ext
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %type.0.in.in = phi ptr [ %arrayidx, %if.then ], [ %type_host.i, %entry.if.end_crit_edge ]
  %13 = ptrtoint ptr %type.0.in.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %type.0.in = load i32, ptr %type.0.in.in, align 4
  %kind9 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 2
  %14 = ptrtoint ptr %kind9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %kind9, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %if.end.if.end19_crit_edge, label %land.lhs.true

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %type12 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 4, i32 8
  %16 = ptrtoint ptr %type12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type12, align 8
  %idxprom = and i32 %type.0.in, 255
  %arrayidx13 = getelementptr %struct.anon.2, ptr %17, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13, align 1
  %20 = and i8 %19, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  br i1 %tobool16.not, label %if.then17, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %kind9 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %kind9, align 4
  %comp = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 3
  %22 = ptrtoint ptr %comp to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %comp, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %land.lhs.true.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %comp20 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 3
  %23 = ptrtoint ptr %comp20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %comp20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool22.not = icmp eq i8 %24, 0
  br i1 %tobool22.not, label %if.end19.if.end41_crit_edge, label %land.lhs.true23

if.end19.if.end41_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

land.lhs.true23:                                  ; preds = %if.end19
  %type24 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 4, i32 8
  %25 = ptrtoint ptr %type24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type24, align 8
  %idxprom25 = and i32 %type.0.in, 255
  %arrayidx26 = getelementptr %struct.anon.2, ptr %26, i32 %idxprom25
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx26, align 1
  %29 = and i8 %28, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool30.not = icmp eq i8 %29, 0
  br i1 %tobool30.not, label %if.then31, label %land.lhs.true23.if.end41_crit_edge

land.lhs.true23.if.end41_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then31:                                        ; preds = %land.lhs.true23
  %oclass = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 4, i32 0, i32 4
  %30 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147446776, i32 %31)
  %cmp = icmp ugt i32 %31, -2147446776
  br i1 %cmp, label %if.then33, label %if.then31.if.end39_crit_edge

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #6
  %kind34 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %kind34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %kind34, align 4
  %34 = ptrtoint ptr %kind9 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %kind9, align 4
  %idxprom36 = zext i8 %35 to i32
  %arrayidx37 = getelementptr i8, ptr %33, i32 %idxprom36
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx37, align 1
  store i8 %37, ptr %kind9, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.then31.if.end39_crit_edge
  %38 = ptrtoint ptr %comp20 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %comp20, align 1
  br label %if.end41

if.end41:                                         ; preds = %if.end39, %land.lhs.true23.if.end41_crit_edge, %if.end19.if.end41_crit_edge
  %sg = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 3
  %39 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sg, align 4
  %tobool42.not = icmp eq ptr %40, null
  br i1 %tobool42.not, label %if.else46, label %if.then43

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %sgl45 = getelementptr inbounds %struct.nvif_mem_ram_v0, ptr %args, i32 0, i32 3
  %43 = ptrtoint ptr %sgl45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %sgl45, align 4
  br label %if.end47

if.else46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %dma_address = getelementptr inbounds %struct.ttm_tt, ptr %tt, i32 0, i32 4
  %44 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_address, align 4
  %dma = getelementptr inbounds %struct.nvif_mem_ram_v0, ptr %args, i32 0, i32 2
  %46 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %dma, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then43
  %mmu3 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 4
  %lock = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 1, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %mem48 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %mem48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem48, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %conv50 = and i32 %type.0.in, 255
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %reg, i32 0, i32 1
  %51 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_pages, align 4
  %shl = shl i32 %52, 12
  %conv51 = zext i32 %shl to i64
  %mem52 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 4
  %call53 = call i32 @nvif_mem_ctor_type(ptr noundef %mmu3, ptr noundef nonnull @.str.1, i32 noundef %50, i32 noundef %conv50, i8 noundef zeroext 12, i64 noundef %conv51, ptr noundef nonnull %args, i32 noundef 16, ptr noundef %mem52) #4
  call void @mutex_unlock(ptr noundef %lock) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #4
  ret i32 %call53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mem_ctor_type(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_mem_vram(ptr noundef %reg, i1 noundef zeroext %contig, i8 noundef zeroext %page) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.gf100_mem_v0, align 1
  %.compoundliteral21 = alloca %struct.nv50_mem_v0, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %contig to i8
  %cli1 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 1
  %0 = ptrtoint ptr %cli1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cli1, align 8
  %drm2 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm2, align 8
  %mmu3 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pages, align 4
  %shl = shl i32 %5, 12
  %conv = zext i8 %page to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %add = add i32 %shl, %sub
  %and = and i32 %add, %notmask
  %conv8 = zext i32 %and to i64
  %lock = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 1, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %mem9 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %mem9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem9, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %9, label %do.end [
    i32 -2147446773, label %sw.bb
    i32 -2147463157, label %sw.bb16
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %type_vram = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 8, i32 6
  %11 = ptrtoint ptr %type_vram to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type_vram, align 4
  %13 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %.compoundliteral, align 1
  %contig12 = getelementptr inbounds %struct.gf100_mem_v0, ptr %.compoundliteral, i32 0, i32 1
  %14 = ptrtoint ptr %contig12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %contig12, align 1
  %mem14 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 4
  %call15 = call i32 @nvif_mem_ctor_type(ptr noundef %mmu3, ptr noundef nonnull @.str.2, i32 noundef -2147446773, i32 noundef %12, i8 noundef zeroext %page, i64 noundef %conv8, ptr noundef nonnull %.compoundliteral, i32 noundef 2, ptr noundef %mem14) #4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %type_vram20 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 8, i32 6
  %15 = ptrtoint ptr %type_vram20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type_vram20, align 4
  %17 = ptrtoint ptr %.compoundliteral21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %.compoundliteral21, align 1
  %bankswz = getelementptr inbounds %struct.nv50_mem_v0, ptr %.compoundliteral21, i32 0, i32 1
  %kind = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 4, i32 9
  %18 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %kind, align 4
  %kind23 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 2
  %20 = ptrtoint ptr %kind23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %kind23, align 4
  %idxprom = zext i8 %21 to i32
  %arrayidx = getelementptr i8, ptr %19, i32 %idxprom
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %23)
  %cmp = icmp eq i8 %23, 2
  %conv26 = zext i1 %cmp to i8
  %24 = ptrtoint ptr %bankswz to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv26, ptr %bankswz, align 1
  %contig27 = getelementptr inbounds %struct.nv50_mem_v0, ptr %.compoundliteral21, i32 0, i32 2
  %25 = ptrtoint ptr %contig27 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %contig27, align 1
  %mem30 = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 4
  %call31 = call i32 @nvif_mem_ctor_type(ptr noundef %mmu3, ptr noundef nonnull @.str.2, i32 noundef -2147463157, i32 noundef %16, i8 noundef zeroext %page, i64 noundef %conv8, ptr noundef nonnull %.compoundliteral21, i32 noundef 3, ptr noundef %mem30) #4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 9, ptr noundef null) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb16, %sw.bb
  %ret.0 = phi i32 [ -38, %do.end ], [ %call31, %sw.bb16 ], [ %call15, %sw.bb ]
  call void @mutex_unlock(ptr noundef %lock) #4
  %addr = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 4, i32 3
  %26 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %addr, align 8
  %shr = lshr i64 %27, 12
  %conv50 = trunc i64 %shr to i32
  %28 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv50, ptr %reg, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_mem_del(ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cli.i = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 1
  %0 = ptrtoint ptr %cli.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cli.i, align 8
  %drm.i = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm.i, align 8
  %vmm1.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 5, i32 1
  %vma.i = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.nouveau_mem, ptr %reg, i32 0, i32 5, i32 1
  tail call void @nvif_vmm_put(ptr noundef %vmm1.i, ptr noundef %arrayidx.i) #4
  %4 = ptrtoint ptr %cli.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cli.i, align 8
  %drm3.i = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %drm3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drm3.i, align 8
  %vmm6.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 5, i32 1
  tail call void @nvif_vmm_put(ptr noundef %vmm6.i, ptr noundef %vma.i) #4
  %8 = ptrtoint ptr %cli.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cli.i, align 8
  %drm10.i = getelementptr inbounds %struct.nouveau_cli, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %drm10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drm10.i, align 8
  %lock.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 1, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %mem11.i = getelementptr inbounds %struct.nouveau_mem, ptr %reg, i32 0, i32 4
  tail call void @nvif_mem_dtor(ptr noundef %mem11.i) #4
  %12 = ptrtoint ptr %cli.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cli.i, align 8
  %drm13.i = getelementptr inbounds %struct.nouveau_cli, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %drm13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drm13.i, align 8
  %lock15.i = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 1, i32 15
  tail call void @mutex_unlock(ptr noundef %lock15.i) #4
  tail call void @kfree(ptr noundef %reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_mem_new(ptr noundef %cli, i8 noundef zeroext %kind, i8 noundef zeroext %comp, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 136) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cli1 = getelementptr inbounds %struct.nouveau_mem, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %cli1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cli, ptr %cli1, align 8
  %kind2 = getelementptr inbounds %struct.nouveau_mem, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %kind2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %kind, ptr %kind2, align 4
  %comp3 = getelementptr inbounds %struct.nouveau_mem, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %comp3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %comp, ptr %comp3, align 1
  %4 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %res, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_mem.c", i32 70, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nouveau_mem.c", i32 117, i32 32}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nouveau_mem.c", i32 137, i32 33}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
