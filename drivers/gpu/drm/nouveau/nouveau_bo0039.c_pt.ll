; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_bo0039.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo0039.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nouveau_channel = type { %struct.anon, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.113, i8, ptr, %struct.anon.114, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.113 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.114 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.95, %struct.anon.96, %struct.anon.98, ptr, %struct.anon.99, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.100, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.112 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.95 = type { ptr, i32, i32, i8 }
%struct.anon.96 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.97] }
%struct.anon.97 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.98 = type { i64, i64 }
%struct.anon.99 = type { i32, i64 }
%struct.anon.100 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.101, i8 }
%union.anon.101 = type { %struct.anon.105 }
%struct.anon.105 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.107 = type { i32 }
%struct.anon.108 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.109 = type { i16, i16 }
%struct.anon.110 = type { i16, i16, i16, %struct.anon.111, i16 }
%struct.anon.111 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.112 = type { ptr, %struct.mutex, i8 }

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/nouveau/nouveau_bo0039.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nv04_bo_move_m2mf = private unnamed_addr constant [18 x i8] c"nv04_bo_move_m2mf\00", align 1
@.str.8 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_SET_CONTEXT_DMA_BUFFER_IN\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_SET_CONTEXT_DMA_BUFFER_OUT\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_OFFSET_IN\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_OFFSET_OUT\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_PITCH_IN\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_PITCH_OUT\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_LINE_LENGTH_IN\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_LINE_COUNT\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_FORMAT\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_BUFFER_NOTIFY\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_NO_OPERATION\0A\00", [50 x i8] zeroinitializer }, align 32
@__func__.nv04_bo_move_init = private unnamed_addr constant [18 x i8] c"nv04_bo_move_init\00", align 1
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_SET_OBJECT\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV039_SET_CONTEXT_DMA_NOTIFIES\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 62, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 73, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 86, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 106, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [44 x i8] c"../drivers/gpu/drm/nouveau/nouveau_bo0039.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 107, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_bo_move_m2mf(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %bo, ptr nocapture noundef readonly %old_reg, ptr nocapture noundef readonly %new_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %mem_type.i = getelementptr inbounds %struct.ttm_resource, ptr %old_reg, i32 0, i32 2
  %2 = ptrtoint ptr %mem_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %entry.nouveau_bo_mem_ctxdma.exit_crit_edge, label %if.end.i

entry.nouveau_bo_mem_ctxdma.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %nouveau_bo_mem_ctxdma.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %handle.i = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 7, i32 3
  %4 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle.i, align 4
  br label %nouveau_bo_mem_ctxdma.exit

nouveau_bo_mem_ctxdma.exit:                       ; preds = %if.end.i, %entry.nouveau_bo_mem_ctxdma.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.end.i ], [ -2147483645, %entry.nouveau_bo_mem_ctxdma.exit_crit_edge ]
  %6 = ptrtoint ptr %old_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old_reg, align 4
  %shl = shl i32 %7, 12
  %mem_type.i2368 = getelementptr inbounds %struct.ttm_resource, ptr %new_reg, i32 0, i32 2
  %8 = ptrtoint ptr %mem_type.i2368 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mem_type.i2368, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i2369 = icmp eq i32 %9, 1
  br i1 %cmp.i2369, label %nouveau_bo_mem_ctxdma.exit.nouveau_bo_mem_ctxdma.exit2373_crit_edge, label %if.end.i2371

nouveau_bo_mem_ctxdma.exit.nouveau_bo_mem_ctxdma.exit2373_crit_edge: ; preds = %nouveau_bo_mem_ctxdma.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %nouveau_bo_mem_ctxdma.exit2373

if.end.i2371:                                     ; preds = %nouveau_bo_mem_ctxdma.exit
  call void @__sanitizer_cov_trace_pc() #5
  %handle.i2370 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %handle.i2370 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle.i2370, align 4
  br label %nouveau_bo_mem_ctxdma.exit2373

nouveau_bo_mem_ctxdma.exit2373:                   ; preds = %if.end.i2371, %nouveau_bo_mem_ctxdma.exit.nouveau_bo_mem_ctxdma.exit2373_crit_edge
  %retval.0.i2372 = phi i32 [ %11, %if.end.i2371 ], [ -2147483645, %nouveau_bo_mem_ctxdma.exit.nouveau_bo_mem_ctxdma.exit2373_crit_edge ]
  %12 = ptrtoint ptr %new_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_reg, align 4
  %shl5 = shl i32 %13, 12
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %new_reg, i32 0, i32 1
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 3
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %nouveau_bo_mem_ctxdma.exit2373.if.end107_crit_edge, label %if.then.i

nouveau_bo_mem_ctxdma.exit2373.if.end107_crit_edge: ; preds = %nouveau_bo_mem_ctxdma.exit2373
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end107

if.then.i:                                        ; preds = %nouveau_bo_mem_ctxdma.exit2373
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %19(ptr noundef %1, i32 noundef 3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end107_crit_edge, label %if.then.i.cleanup2100_crit_edge

if.then.i.cleanup2100_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup2100

if.then.i.if.end107_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end107

if.end107:                                        ; preds = %if.then.i.if.end107_crit_edge, %nouveau_bo_mem_ctxdma.exit2373.if.end107_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 3
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %21, %add.ptr4.i
  br i1 %cmp.not, label %if.end107.if.end143_crit_edge, label %do.end137, !prof !43

if.end107.if.end143_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end143

do.end137:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end143

if.end143:                                        ; preds = %do.end137, %if.end107.if.end143_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %cmp156.not = icmp ult ptr %24, %26
  br i1 %cmp156.not, label %if.end143.if.end180_crit_edge, label %do.end174, !prof !43

if.end143.if.end180_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end180

do.end174:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end180

if.end180:                                        ; preds = %do.end174, %if.end143.if.end180_crit_edge
  %27 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %29 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %37 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %41 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %handle, align 4
  %name197 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %43 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %36(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %40, i32 noundef %42, ptr noundef %44, i32 noundef %sub.ptr.sub, i32 noundef 557444, i32 noundef 4, i32 noundef 388, i32 noundef 2, ptr noundef nonnull @__func__.nv04_bo_move_m2mf) #3
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %46, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 557444, ptr %46, align 4
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %seg.i, align 8
  %cmp214.not = icmp ult ptr %48, %50
  br i1 %cmp214.not, label %if.end180.if.end238_crit_edge, label %do.end232, !prof !43

if.end180.if.end238_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end238

do.end232:                                        ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end238

if.end238:                                        ; preds = %do.end232, %if.end180.if.end238_crit_edge
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i, align 4
  %cmp252.not = icmp ult ptr %52, %54
  br i1 %cmp252.not, label %if.end238.if.end276_crit_edge, label %do.end270, !prof !43

if.end238.if.end276_crit_edge:                    ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end276

do.end270:                                        ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end276

if.end276:                                        ; preds = %do.end270, %if.end238.if.end276_crit_edge
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast294 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast295 = ptrtoint ptr %58 to i32
  %sub.ptr.sub296 = sub i32 %sub.ptr.lhs.cast294, %sub.ptr.rhs.cast295
  %59 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mem, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client, align 4
  %name308 = getelementptr inbounds %struct.nvif_object, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %name308 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name308, align 8
  %69 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %handle, align 4
  %71 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %64(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %68, i32 noundef %70, ptr noundef %72, i32 noundef %sub.ptr.sub296, i32 noundef %retval.0.i) #3
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %incdec.ptr317 = getelementptr i32, ptr %74, i32 1
  store ptr %incdec.ptr317, ptr %cur.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i, ptr %74, align 4
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %seg.i, align 8
  %cmp329.not = icmp ult ptr %76, %78
  br i1 %cmp329.not, label %if.end276.if.end353_crit_edge, label %do.end347, !prof !43

if.end276.if.end353_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end353

do.end347:                                        ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end353

if.end353:                                        ; preds = %do.end347, %if.end276.if.end353_crit_edge
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %81 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i, align 4
  %cmp367.not = icmp ult ptr %80, %82
  br i1 %cmp367.not, label %if.end353.if.end391_crit_edge, label %do.end385, !prof !43

if.end353.if.end391_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end391

do.end385:                                        ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end391

if.end391:                                        ; preds = %do.end385, %if.end353.if.end391_crit_edge
  %83 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur.i, align 4
  %85 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast409 = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast410 = ptrtoint ptr %86 to i32
  %sub.ptr.sub411 = sub i32 %sub.ptr.lhs.cast409, %sub.ptr.rhs.cast410
  %87 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mem, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %client, align 4
  %name423 = getelementptr inbounds %struct.nvif_object, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %name423 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name423, align 8
  %97 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %handle, align 4
  %99 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %92(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %96, i32 noundef %98, ptr noundef %100, i32 noundef %sub.ptr.sub411, i32 noundef %retval.0.i2372) #3
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %incdec.ptr432 = getelementptr i32, ptr %102, i32 1
  store ptr %incdec.ptr432, ptr %cur.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %retval.0.i2372, ptr %102, align 4
  %104 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool438.not2397 = icmp eq i32 %105, 0
  br i1 %tobool438.not2397, label %if.end391.cleanup2100_crit_edge, label %if.end391.while.body_crit_edge

if.end391.while.body_crit_edge:                   ; preds = %if.end391
  br label %while.body

if.end391.cleanup2100_crit_edge:                  ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup2100

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end391.while.body_crit_edge
  %src_offset.02400 = phi i32 [ %add, %cleanup.while.body_crit_edge ], [ %shl, %if.end391.while.body_crit_edge ]
  %dst_offset.02399 = phi i32 [ %add2099, %cleanup.while.body_crit_edge ], [ %shl5, %if.end391.while.body_crit_edge ]
  %page_count.02398 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %105, %if.end391.while.body_crit_edge ]
  %106 = tail call i32 @llvm.umin.i32(i32 %page_count.02398, i32 2047)
  %107 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur.i, align 4
  %add.ptr.i2375 = getelementptr i32, ptr %108, i32 11
  %109 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %end.i, align 4
  %cmp.not.i2377 = icmp ult ptr %add.ptr.i2375, %110
  br i1 %cmp.not.i2377, label %while.body.if.end733_crit_edge, label %if.then.i2380

while.body.if.end733_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end733

if.then.i2380:                                    ; preds = %while.body
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 8
  %call.i2378 = tail call i32 %112(ptr noundef %1, i32 noundef 11) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2378)
  %tobool.not.i2379 = icmp eq i32 %call.i2378, 0
  br i1 %tobool.not.i2379, label %if.then.i2380.if.end733_crit_edge, label %if.then.i2380.cleanup2100_crit_edge

if.then.i2380.cleanup2100_crit_edge:              ; preds = %if.then.i2380
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup2100

if.then.i2380.if.end733_crit_edge:                ; preds = %if.then.i2380
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end733

if.end733:                                        ; preds = %if.then.i2380.if.end733_crit_edge, %while.body.if.end733_crit_edge
  %113 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i2381 = getelementptr i32, ptr %114, i32 11
  %115 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %add.ptr4.i2381, ptr %seg.i, align 8
  %cmp750.not = icmp ult ptr %114, %add.ptr4.i2381
  br i1 %cmp750.not, label %if.end733.if.end774_crit_edge, label %do.end768, !prof !43

if.end733.if.end774_crit_edge:                    ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end774

do.end768:                                        ; preds = %if.end733
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end774

if.end774:                                        ; preds = %do.end768, %if.end733.if.end774_crit_edge
  %116 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %cur.i, align 4
  %118 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %end.i, align 4
  %cmp788.not = icmp ult ptr %117, %119
  br i1 %cmp788.not, label %if.end774.if.end812_crit_edge, label %do.end806, !prof !43

if.end774.if.end812_crit_edge:                    ; preds = %if.end774
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end812

do.end806:                                        ; preds = %if.end774
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end812

if.end812:                                        ; preds = %do.end806, %if.end774.if.end812_crit_edge
  %120 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cur.i, align 4
  %122 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast830 = ptrtoint ptr %121 to i32
  %sub.ptr.rhs.cast831 = ptrtoint ptr %123 to i32
  %sub.ptr.sub832 = sub i32 %sub.ptr.lhs.cast830, %sub.ptr.rhs.cast831
  %124 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mem, align 8
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %127, align 4
  %130 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %client, align 4
  %name844 = getelementptr inbounds %struct.nvif_object, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %name844 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name844, align 8
  %134 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %handle, align 4
  %136 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %129(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %133, i32 noundef %135, ptr noundef %137, i32 noundef %sub.ptr.sub832, i32 noundef 2130700, i32 noundef 4, i32 noundef 780, i32 noundef 8, ptr noundef nonnull @__func__.nv04_bo_move_m2mf) #3
  %138 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %cur.i, align 4
  %incdec.ptr853 = getelementptr i32, ptr %139, i32 1
  store ptr %incdec.ptr853, ptr %cur.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 2130700, ptr %139, align 4
  %141 = load ptr, ptr %cur.i, align 4
  %142 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %seg.i, align 8
  %cmp865.not = icmp ult ptr %141, %143
  br i1 %cmp865.not, label %if.end812.if.end889_crit_edge, label %do.end883, !prof !43

if.end812.if.end889_crit_edge:                    ; preds = %if.end812
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end889

do.end883:                                        ; preds = %if.end812
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end889

if.end889:                                        ; preds = %do.end883, %if.end812.if.end889_crit_edge
  %144 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %cur.i, align 4
  %146 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end.i, align 4
  %cmp903.not = icmp ult ptr %145, %147
  br i1 %cmp903.not, label %if.end889.if.end927_crit_edge, label %do.end921, !prof !43

if.end889.if.end927_crit_edge:                    ; preds = %if.end889
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end927

do.end921:                                        ; preds = %if.end889
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end927

if.end927:                                        ; preds = %do.end921, %if.end889.if.end927_crit_edge
  %148 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %cur.i, align 4
  %150 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast945 = ptrtoint ptr %149 to i32
  %sub.ptr.rhs.cast946 = ptrtoint ptr %151 to i32
  %sub.ptr.sub947 = sub i32 %sub.ptr.lhs.cast945, %sub.ptr.rhs.cast946
  %152 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %mem, align 8
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %155, align 4
  %158 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %client, align 4
  %name959 = getelementptr inbounds %struct.nvif_object, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %name959 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name959, align 8
  %162 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %handle, align 4
  %164 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %157(ptr noundef %mem, ptr noundef nonnull @.str.16, ptr noundef %161, i32 noundef %163, ptr noundef %165, i32 noundef %sub.ptr.sub947, i32 noundef %src_offset.02400) #3
  %166 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %cur.i, align 4
  %incdec.ptr968 = getelementptr i32, ptr %167, i32 1
  store ptr %incdec.ptr968, ptr %cur.i, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %src_offset.02400, ptr %167, align 4
  %169 = load ptr, ptr %cur.i, align 4
  %170 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %seg.i, align 8
  %cmp980.not = icmp ult ptr %169, %171
  br i1 %cmp980.not, label %if.end927.if.end1004_crit_edge, label %do.end998, !prof !43

if.end927.if.end1004_crit_edge:                   ; preds = %if.end927
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1004

do.end998:                                        ; preds = %if.end927
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1004

if.end1004:                                       ; preds = %do.end998, %if.end927.if.end1004_crit_edge
  %172 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %cur.i, align 4
  %174 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %end.i, align 4
  %cmp1018.not = icmp ult ptr %173, %175
  br i1 %cmp1018.not, label %if.end1004.if.end1042_crit_edge, label %do.end1036, !prof !43

if.end1004.if.end1042_crit_edge:                  ; preds = %if.end1004
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1042

do.end1036:                                       ; preds = %if.end1004
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1042

if.end1042:                                       ; preds = %do.end1036, %if.end1004.if.end1042_crit_edge
  %176 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %cur.i, align 4
  %178 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1060 = ptrtoint ptr %177 to i32
  %sub.ptr.rhs.cast1061 = ptrtoint ptr %179 to i32
  %sub.ptr.sub1062 = sub i32 %sub.ptr.lhs.cast1060, %sub.ptr.rhs.cast1061
  %180 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mem, align 8
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %181, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %183, align 4
  %186 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %client, align 4
  %name1074 = getelementptr inbounds %struct.nvif_object, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %name1074 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %name1074, align 8
  %190 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %handle, align 4
  %192 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %185(ptr noundef %mem, ptr noundef nonnull @.str.17, ptr noundef %189, i32 noundef %191, ptr noundef %193, i32 noundef %sub.ptr.sub1062, i32 noundef %dst_offset.02399) #3
  %194 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1083 = getelementptr i32, ptr %195, i32 1
  store ptr %incdec.ptr1083, ptr %cur.i, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %dst_offset.02399, ptr %195, align 4
  %197 = load ptr, ptr %cur.i, align 4
  %198 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %seg.i, align 8
  %cmp1095.not = icmp ult ptr %197, %199
  br i1 %cmp1095.not, label %if.end1042.if.end1119_crit_edge, label %do.end1113, !prof !43

if.end1042.if.end1119_crit_edge:                  ; preds = %if.end1042
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1119

do.end1113:                                       ; preds = %if.end1042
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1119

if.end1119:                                       ; preds = %do.end1113, %if.end1042.if.end1119_crit_edge
  %200 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %cur.i, align 4
  %202 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %end.i, align 4
  %cmp1133.not = icmp ult ptr %201, %203
  br i1 %cmp1133.not, label %if.end1119.if.end1157_crit_edge, label %do.end1151, !prof !43

if.end1119.if.end1157_crit_edge:                  ; preds = %if.end1119
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1157

do.end1151:                                       ; preds = %if.end1119
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1157

if.end1157:                                       ; preds = %do.end1151, %if.end1119.if.end1157_crit_edge
  %204 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cur.i, align 4
  %206 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1175 = ptrtoint ptr %205 to i32
  %sub.ptr.rhs.cast1176 = ptrtoint ptr %207 to i32
  %sub.ptr.sub1177 = sub i32 %sub.ptr.lhs.cast1175, %sub.ptr.rhs.cast1176
  %208 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mem, align 8
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %209, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %214 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %client, align 4
  %name1189 = getelementptr inbounds %struct.nvif_object, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %name1189 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %name1189, align 8
  %218 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %handle, align 4
  %220 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %213(ptr noundef %mem, ptr noundef nonnull @.str.18, ptr noundef %217, i32 noundef %219, ptr noundef %221, i32 noundef %sub.ptr.sub1177, i32 noundef 4096) #3
  %222 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1198 = getelementptr i32, ptr %223, i32 1
  store ptr %incdec.ptr1198, ptr %cur.i, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 4096, ptr %223, align 4
  %225 = load ptr, ptr %cur.i, align 4
  %226 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %seg.i, align 8
  %cmp1210.not = icmp ult ptr %225, %227
  br i1 %cmp1210.not, label %if.end1157.if.end1234_crit_edge, label %do.end1228, !prof !43

if.end1157.if.end1234_crit_edge:                  ; preds = %if.end1157
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1234

do.end1228:                                       ; preds = %if.end1157
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1234

if.end1234:                                       ; preds = %do.end1228, %if.end1157.if.end1234_crit_edge
  %228 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %cur.i, align 4
  %230 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %end.i, align 4
  %cmp1248.not = icmp ult ptr %229, %231
  br i1 %cmp1248.not, label %if.end1234.if.end1272_crit_edge, label %do.end1266, !prof !43

if.end1234.if.end1272_crit_edge:                  ; preds = %if.end1234
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1272

do.end1266:                                       ; preds = %if.end1234
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1272

if.end1272:                                       ; preds = %do.end1266, %if.end1234.if.end1272_crit_edge
  %232 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %cur.i, align 4
  %234 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1290 = ptrtoint ptr %233 to i32
  %sub.ptr.rhs.cast1291 = ptrtoint ptr %235 to i32
  %sub.ptr.sub1292 = sub i32 %sub.ptr.lhs.cast1290, %sub.ptr.rhs.cast1291
  %236 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %mem, align 8
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %239, align 4
  %242 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %client, align 4
  %name1304 = getelementptr inbounds %struct.nvif_object, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %name1304 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %name1304, align 8
  %246 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %handle, align 4
  %248 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %241(ptr noundef %mem, ptr noundef nonnull @.str.19, ptr noundef %245, i32 noundef %247, ptr noundef %249, i32 noundef %sub.ptr.sub1292, i32 noundef 4096) #3
  %250 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1313 = getelementptr i32, ptr %251, i32 1
  store ptr %incdec.ptr1313, ptr %cur.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 4096, ptr %251, align 4
  %253 = load ptr, ptr %cur.i, align 4
  %254 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %seg.i, align 8
  %cmp1325.not = icmp ult ptr %253, %255
  br i1 %cmp1325.not, label %if.end1272.if.end1349_crit_edge, label %do.end1343, !prof !43

if.end1272.if.end1349_crit_edge:                  ; preds = %if.end1272
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1349

do.end1343:                                       ; preds = %if.end1272
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1349

if.end1349:                                       ; preds = %do.end1343, %if.end1272.if.end1349_crit_edge
  %256 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cur.i, align 4
  %258 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %end.i, align 4
  %cmp1363.not = icmp ult ptr %257, %259
  br i1 %cmp1363.not, label %if.end1349.if.end1387_crit_edge, label %do.end1381, !prof !43

if.end1349.if.end1387_crit_edge:                  ; preds = %if.end1349
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1387

do.end1381:                                       ; preds = %if.end1349
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1387

if.end1387:                                       ; preds = %do.end1381, %if.end1349.if.end1387_crit_edge
  %260 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cur.i, align 4
  %262 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1405 = ptrtoint ptr %261 to i32
  %sub.ptr.rhs.cast1406 = ptrtoint ptr %263 to i32
  %sub.ptr.sub1407 = sub i32 %sub.ptr.lhs.cast1405, %sub.ptr.rhs.cast1406
  %264 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %mem, align 8
  %266 = ptrtoint ptr %265 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %265, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %267, align 4
  %270 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %client, align 4
  %name1419 = getelementptr inbounds %struct.nvif_object, ptr %271, i32 0, i32 2
  %272 = ptrtoint ptr %name1419 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %name1419, align 8
  %274 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %handle, align 4
  %276 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %269(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %273, i32 noundef %275, ptr noundef %277, i32 noundef %sub.ptr.sub1407, i32 noundef 4096) #3
  %278 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1428 = getelementptr i32, ptr %279, i32 1
  store ptr %incdec.ptr1428, ptr %cur.i, align 4
  %280 = ptrtoint ptr %279 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 4096, ptr %279, align 4
  %281 = load ptr, ptr %cur.i, align 4
  %282 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %seg.i, align 8
  %cmp1440.not = icmp ult ptr %281, %283
  br i1 %cmp1440.not, label %if.end1387.if.end1464_crit_edge, label %do.end1458, !prof !43

if.end1387.if.end1464_crit_edge:                  ; preds = %if.end1387
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1464

do.end1458:                                       ; preds = %if.end1387
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1464

if.end1464:                                       ; preds = %do.end1458, %if.end1387.if.end1464_crit_edge
  %284 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %cur.i, align 4
  %286 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %end.i, align 4
  %cmp1478.not = icmp ult ptr %285, %287
  br i1 %cmp1478.not, label %if.end1464.if.end1502_crit_edge, label %do.end1496, !prof !43

if.end1464.if.end1502_crit_edge:                  ; preds = %if.end1464
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1502

do.end1496:                                       ; preds = %if.end1464
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1502

if.end1502:                                       ; preds = %do.end1496, %if.end1464.if.end1502_crit_edge
  %288 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %cur.i, align 4
  %290 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1520 = ptrtoint ptr %289 to i32
  %sub.ptr.rhs.cast1521 = ptrtoint ptr %291 to i32
  %sub.ptr.sub1522 = sub i32 %sub.ptr.lhs.cast1520, %sub.ptr.rhs.cast1521
  %292 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mem, align 8
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %293, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %295, align 4
  %298 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %client, align 4
  %name1534 = getelementptr inbounds %struct.nvif_object, ptr %299, i32 0, i32 2
  %300 = ptrtoint ptr %name1534 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %name1534, align 8
  %302 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %handle, align 4
  %304 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %297(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %301, i32 noundef %303, ptr noundef %305, i32 noundef %sub.ptr.sub1522, i32 noundef %106) #3
  %306 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1543 = getelementptr i32, ptr %307, i32 1
  store ptr %incdec.ptr1543, ptr %cur.i, align 4
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %106, ptr %307, align 4
  %309 = load ptr, ptr %cur.i, align 4
  %310 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %seg.i, align 8
  %cmp1555.not = icmp ult ptr %309, %311
  br i1 %cmp1555.not, label %if.end1502.if.end1579_crit_edge, label %do.end1573, !prof !43

if.end1502.if.end1579_crit_edge:                  ; preds = %if.end1502
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1579

do.end1573:                                       ; preds = %if.end1502
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1579

if.end1579:                                       ; preds = %do.end1573, %if.end1502.if.end1579_crit_edge
  %312 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %cur.i, align 4
  %314 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %end.i, align 4
  %cmp1593.not = icmp ult ptr %313, %315
  br i1 %cmp1593.not, label %if.end1579.if.end1617_crit_edge, label %do.end1611, !prof !43

if.end1579.if.end1617_crit_edge:                  ; preds = %if.end1579
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1617

do.end1611:                                       ; preds = %if.end1579
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1617

if.end1617:                                       ; preds = %do.end1611, %if.end1579.if.end1617_crit_edge
  %316 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %cur.i, align 4
  %318 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1635 = ptrtoint ptr %317 to i32
  %sub.ptr.rhs.cast1636 = ptrtoint ptr %319 to i32
  %sub.ptr.sub1637 = sub i32 %sub.ptr.lhs.cast1635, %sub.ptr.rhs.cast1636
  %320 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %mem, align 8
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %321, align 4
  %324 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %323, align 4
  %326 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %client, align 4
  %name1649 = getelementptr inbounds %struct.nvif_object, ptr %327, i32 0, i32 2
  %328 = ptrtoint ptr %name1649 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %name1649, align 8
  %330 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %handle, align 4
  %332 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %325(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %329, i32 noundef %331, ptr noundef %333, i32 noundef %sub.ptr.sub1637, i32 noundef 257) #3
  %334 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1658 = getelementptr i32, ptr %335, i32 1
  store ptr %incdec.ptr1658, ptr %cur.i, align 4
  %336 = ptrtoint ptr %335 to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 257, ptr %335, align 4
  %337 = load ptr, ptr %cur.i, align 4
  %338 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %seg.i, align 8
  %cmp1670.not = icmp ult ptr %337, %339
  br i1 %cmp1670.not, label %if.end1617.if.end1694_crit_edge, label %do.end1688, !prof !43

if.end1617.if.end1694_crit_edge:                  ; preds = %if.end1617
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1694

do.end1688:                                       ; preds = %if.end1617
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1694

if.end1694:                                       ; preds = %do.end1688, %if.end1617.if.end1694_crit_edge
  %340 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %cur.i, align 4
  %342 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %end.i, align 4
  %cmp1708.not = icmp ult ptr %341, %343
  br i1 %cmp1708.not, label %if.end1694.if.end1732_crit_edge, label %do.end1726, !prof !43

if.end1694.if.end1732_crit_edge:                  ; preds = %if.end1694
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1732

do.end1726:                                       ; preds = %if.end1694
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1732

if.end1732:                                       ; preds = %do.end1726, %if.end1694.if.end1732_crit_edge
  %344 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %cur.i, align 4
  %346 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1750 = ptrtoint ptr %345 to i32
  %sub.ptr.rhs.cast1751 = ptrtoint ptr %347 to i32
  %sub.ptr.sub1752 = sub i32 %sub.ptr.lhs.cast1750, %sub.ptr.rhs.cast1751
  %348 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %mem, align 8
  %350 = ptrtoint ptr %349 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %349, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %351, align 4
  %354 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %client, align 4
  %name1764 = getelementptr inbounds %struct.nvif_object, ptr %355, i32 0, i32 2
  %356 = ptrtoint ptr %name1764 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %name1764, align 8
  %358 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %handle, align 4
  %360 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %353(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %357, i32 noundef %359, ptr noundef %361, i32 noundef %sub.ptr.sub1752, i32 noundef 0) #3
  %362 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1773 = getelementptr i32, ptr %363, i32 1
  store ptr %incdec.ptr1773, ptr %cur.i, align 4
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 0, ptr %363, align 4
  %365 = load ptr, ptr %cur.i, align 4
  %366 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %seg.i, align 8
  %cmp1874.not = icmp ult ptr %365, %367
  br i1 %cmp1874.not, label %if.end1732.if.end1898_crit_edge, label %do.end1892, !prof !43

if.end1732.if.end1898_crit_edge:                  ; preds = %if.end1732
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1898

do.end1892:                                       ; preds = %if.end1732
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end1898

if.end1898:                                       ; preds = %do.end1892, %if.end1732.if.end1898_crit_edge
  %368 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %cur.i, align 4
  %370 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %end.i, align 4
  %cmp1912.not = icmp ult ptr %369, %371
  br i1 %cmp1912.not, label %if.end1898.if.end1936_crit_edge, label %do.end1930, !prof !43

if.end1898.if.end1936_crit_edge:                  ; preds = %if.end1898
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1936

do.end1930:                                       ; preds = %if.end1898
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end1936

if.end1936:                                       ; preds = %do.end1930, %if.end1898.if.end1936_crit_edge
  %372 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %cur.i, align 4
  %374 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1954 = ptrtoint ptr %373 to i32
  %sub.ptr.rhs.cast1955 = ptrtoint ptr %375 to i32
  %sub.ptr.sub1956 = sub i32 %sub.ptr.lhs.cast1954, %sub.ptr.rhs.cast1955
  %376 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %mem, align 8
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %377, align 4
  %380 = ptrtoint ptr %379 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %379, align 4
  %382 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %client, align 4
  %name1968 = getelementptr inbounds %struct.nvif_object, ptr %383, i32 0, i32 2
  %384 = ptrtoint ptr %name1968 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %name1968, align 8
  %386 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %handle, align 4
  %388 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %381(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %385, i32 noundef %387, ptr noundef %389, i32 noundef %sub.ptr.sub1956, i32 noundef 295168, i32 noundef 4, i32 noundef 256, i32 noundef 1, ptr noundef nonnull @__func__.nv04_bo_move_m2mf) #3
  %390 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1977 = getelementptr i32, ptr %391, i32 1
  store ptr %incdec.ptr1977, ptr %cur.i, align 4
  %392 = ptrtoint ptr %391 to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 295168, ptr %391, align 4
  %393 = load ptr, ptr %cur.i, align 4
  %394 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %seg.i, align 8
  %cmp1989.not = icmp ult ptr %393, %395
  br i1 %cmp1989.not, label %if.end1936.if.end2013_crit_edge, label %do.end2007, !prof !43

if.end1936.if.end2013_crit_edge:                  ; preds = %if.end1936
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2013

do.end2007:                                       ; preds = %if.end1936
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end2013

if.end2013:                                       ; preds = %do.end2007, %if.end1936.if.end2013_crit_edge
  %396 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %cur.i, align 4
  %398 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %end.i, align 4
  %cmp2027.not = icmp ult ptr %397, %399
  br i1 %cmp2027.not, label %if.end2013.cleanup_crit_edge, label %do.end2045, !prof !43

if.end2013.cleanup_crit_edge:                     ; preds = %if.end2013
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end2045:                                       ; preds = %if.end2013
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end2045, %if.end2013.cleanup_crit_edge
  %400 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %cur.i, align 4
  %402 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast2069 = ptrtoint ptr %401 to i32
  %sub.ptr.rhs.cast2070 = ptrtoint ptr %403 to i32
  %sub.ptr.sub2071 = sub i32 %sub.ptr.lhs.cast2069, %sub.ptr.rhs.cast2070
  %404 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %mem, align 8
  %406 = ptrtoint ptr %405 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %405, align 4
  %408 = ptrtoint ptr %407 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %407, align 4
  %410 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %client, align 4
  %name2083 = getelementptr inbounds %struct.nvif_object, ptr %411, i32 0, i32 2
  %412 = ptrtoint ptr %name2083 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %name2083, align 8
  %414 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %handle, align 4
  %416 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %name197, align 8
  tail call void (ptr, ptr, ...) %409(ptr noundef %mem, ptr noundef nonnull @.str.24, ptr noundef %413, i32 noundef %415, ptr noundef %417, i32 noundef %sub.ptr.sub2071, i32 noundef 0) #3
  %418 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2092 = getelementptr i32, ptr %419, i32 1
  store ptr %incdec.ptr2092, ptr %cur.i, align 4
  %420 = ptrtoint ptr %419 to i32
  call void @__asan_store4_noabort(i32 %420)
  store i32 0, ptr %419, align 4
  %sub = sub i32 %page_count.02398, %106
  %mul2097 = shl nuw nsw i32 %106, 12
  %add = add i32 %src_offset.02400, %mul2097
  %add2099 = add i32 %mul2097, %dst_offset.02399
  %tobool438.not = icmp eq i32 %sub, 0
  br i1 %tobool438.not, label %cleanup.cleanup2100_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup.cleanup2100_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup2100

cleanup2100:                                      ; preds = %cleanup.cleanup2100_crit_edge, %if.then.i2380.cleanup2100_crit_edge, %if.end391.cleanup2100_crit_edge, %if.then.i.cleanup2100_crit_edge
  %retval.2 = phi i32 [ %call.i, %if.then.i.cleanup2100_crit_edge ], [ 0, %if.end391.cleanup2100_crit_edge ], [ 0, %cleanup.cleanup2100_crit_edge ], [ %call.i2378, %if.then.i2380.cleanup2100_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_bo_move_init(ptr nocapture noundef readonly %chan, i32 noundef %handle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 4
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end73_crit_edge, label %if.then.i

entry.if.end73_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end73_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.if.end73_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

if.end73:                                         ; preds = %if.then.i.if.end73_crit_edge, %entry.if.end73_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end73.if.end109_crit_edge, label %do.end103, !prof !43

if.end73.if.end109_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end109

do.end103:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %if.end73.if.end109_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp122.not = icmp ult ptr %12, %14
  br i1 %cmp122.not, label %if.end109.if.end146_crit_edge, label %do.end140, !prof !43

if.end109.if.end146_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

do.end140:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end146

if.end146:                                        ; preds = %do.end140, %if.end109.if.end146_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %17 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %19 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mem, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 8
  %handle163 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle163, align 4
  %name164 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 294912, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @__func__.nv04_bo_move_init) #3
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 294912, ptr %34, align 4
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp181.not = icmp ult ptr %36, %38
  br i1 %cmp181.not, label %if.end146.if.end205_crit_edge, label %do.end199, !prof !43

if.end146.if.end205_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end205

do.end199:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end205

if.end205:                                        ; preds = %do.end199, %if.end146.if.end205_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp219.not = icmp ult ptr %40, %42
  br i1 %cmp219.not, label %if.end205.if.end243_crit_edge, label %do.end237, !prof !43

if.end205.if.end243_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end243

do.end237:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end243

if.end243:                                        ; preds = %do.end237, %if.end205.if.end243_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast261 = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast262 = ptrtoint ptr %46 to i32
  %sub.ptr.sub263 = sub i32 %sub.ptr.lhs.cast261, %sub.ptr.rhs.cast262
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name275 = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name275 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name275, align 8
  %57 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle163, align 4
  %59 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.25, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub263, i32 noundef %handle) #3
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr284 = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr284, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %handle, ptr %62, align 4
  %64 = load ptr, ptr %cur.i, align 4
  %65 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %seg.i, align 8
  %cmp385.not = icmp ult ptr %64, %66
  br i1 %cmp385.not, label %if.end243.if.end409_crit_edge, label %do.end403, !prof !43

if.end243.if.end409_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end409

do.end403:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end409

if.end409:                                        ; preds = %do.end403, %if.end243.if.end409_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i, align 4
  %cmp423.not = icmp ult ptr %68, %70
  br i1 %cmp423.not, label %if.end409.if.end447_crit_edge, label %do.end441, !prof !43

if.end409.if.end447_crit_edge:                    ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end447

do.end441:                                        ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end447

if.end447:                                        ; preds = %do.end441, %if.end409.if.end447_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast465 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast466 = ptrtoint ptr %74 to i32
  %sub.ptr.sub467 = sub i32 %sub.ptr.lhs.cast465, %sub.ptr.rhs.cast466
  %75 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mem, align 8
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client, align 4
  %name479 = getelementptr inbounds %struct.nvif_object, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %name479 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name479, align 8
  %85 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %handle163, align 4
  %87 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %80(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %84, i32 noundef %86, ptr noundef %88, i32 noundef %sub.ptr.sub467, i32 noundef 295296, i32 noundef 4, i32 noundef 384, i32 noundef 1, ptr noundef nonnull @__func__.nv04_bo_move_init) #3
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %incdec.ptr488 = getelementptr i32, ptr %90, i32 1
  store ptr %incdec.ptr488, ptr %cur.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 295296, ptr %90, align 4
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %92 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %drm, align 4
  %handle496 = getelementptr inbounds %struct.nouveau_drm, ptr %93, i32 0, i32 16, i32 3
  %94 = ptrtoint ptr %handle496 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %handle496, align 4
  %96 = load ptr, ptr %cur.i, align 4
  %97 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %seg.i, align 8
  %cmp501.not = icmp ult ptr %96, %98
  br i1 %cmp501.not, label %if.end447.if.end525_crit_edge, label %do.end519, !prof !43

if.end447.if.end525_crit_edge:                    ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end525

do.end519:                                        ; preds = %if.end447
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.5) #3
  br label %if.end525

if.end525:                                        ; preds = %do.end519, %if.end447.if.end525_crit_edge
  %99 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cur.i, align 4
  %101 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i, align 4
  %cmp539.not = icmp ult ptr %100, %102
  br i1 %cmp539.not, label %if.end525.if.end563_crit_edge, label %do.end557, !prof !43

if.end525.if.end563_crit_edge:                    ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end563

do.end557:                                        ; preds = %if.end525
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.6) #3
  br label %if.end563

if.end563:                                        ; preds = %do.end557, %if.end525.if.end563_crit_edge
  %103 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cur.i, align 4
  %105 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast581 = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast582 = ptrtoint ptr %106 to i32
  %sub.ptr.sub583 = sub i32 %sub.ptr.lhs.cast581, %sub.ptr.rhs.cast582
  %107 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mem, align 8
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %client, align 4
  %name595 = getelementptr inbounds %struct.nvif_object, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %name595 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name595, align 8
  %117 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %handle163, align 4
  %119 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %112(ptr noundef %mem, ptr noundef nonnull @.str.26, ptr noundef %116, i32 noundef %118, ptr noundef %120, i32 noundef %sub.ptr.sub583, i32 noundef %95) #3
  %121 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cur.i, align 4
  %incdec.ptr604 = getelementptr i32, ptr %122, i32 1
  store ptr %incdec.ptr604, ptr %cur.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %95, ptr %122, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end563, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end563 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo0039.c", i32 62, i32 2}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.nv04_bo_move_m2mf, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo0039.c", i32 73, i32 3}
!14 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.16, !13, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.17, !13, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.18, !13, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.19, !13, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.20, !13, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.21, !13, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.22, !13, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.23, !13, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.24, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo0039.c", i32 86, i32 3}
!29 = !{ptr @__func__.nv04_bo_move_init, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo0039.c", i32 106, i32 2}
!31 = !{ptr @.str.25, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.26, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo0039.c", i32 107, i32 2}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 2000, i32 1}
