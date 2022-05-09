; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_bo5039.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_bo5039.c"
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
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.nvif_vma = type { i64, i64 }
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

@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/nouveau/nouveau_bo5039.c\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.nv50_bo_move_m2mf = private unnamed_addr constant [18 x i8] c"nv50_bo_move_m2mf\00", align 1
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_SRC_MEMORY_LAYOUT\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_SRC_BLOCK_SIZE\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_SRC_WIDTH\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_SRC_HEIGHT\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_SRC_DEPTH\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_SRC_LAYER\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_SRC_ORIGIN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_DST_MEMORY_LAYOUT\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_DST_BLOCK_SIZE\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_DST_WIDTH\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_DST_HEIGHT\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_DST_DEPTH\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_DST_LAYER\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_DST_ORIGIN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_OFFSET_IN_UPPER\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_OFFSET_OUT_UPPER\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_OFFSET_IN\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_OFFSET_OUT\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_PITCH_IN\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_PITCH_OUT\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_LINE_LENGTH_IN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_LINE_COUNT\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_FORMAT\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_BUFFER_NOTIFY\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_NO_OPERATION\0A\00", [49 x i8] zeroinitializer }, align 32
@__func__.nv50_bo_move_init = private unnamed_addr constant [18 x i8] c"nv50_bo_move_init\00", align 1
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_OBJECT\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_CONTEXT_DMA_NOTIFY\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_CONTEXT_DMA_BUFFER_IN\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NV5039_SET_CONTEXT_DMA_BUFFER_OUT\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 63, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 85, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 106, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 112, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 126, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 146, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [44 x i8] c"../drivers/gpu/drm/nouveau/nouveau_bo5039.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 147, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @.str, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_bo_move_m2mf(ptr nocapture noundef readonly %chan, ptr nocapture noundef readnone %bo, ptr nocapture noundef readonly %old_reg, ptr nocapture noundef readonly %new_reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %push2 = getelementptr inbounds %struct.anon, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push2, align 8
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %new_reg, i32 0, i32 1
  %2 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages, align 4
  %shl = shl i32 %3, 12
  %kind = getelementptr inbounds %struct.nouveau_mem, ptr %old_reg, i32 0, i32 2
  %4 = ptrtoint ptr %kind to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool = icmp ne i8 %5, 0
  %kind8 = getelementptr inbounds %struct.nouveau_mem, ptr %new_reg, i32 0, i32 2
  %6 = ptrtoint ptr %kind8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %kind8, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9 = icmp ne i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool14.not5853 = icmp eq i32 %shl, 0
  br i1 %tobool14.not5853, label %entry.cleanup5224_crit_edge, label %while.body.lr.ph

entry.cleanup5224_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup5224

while.body.lr.ph:                                 ; preds = %entry
  %conv = zext i32 %shl to i64
  %lnot.ext13 = zext i1 %tobool9 to i32
  %lnot.ext = zext i1 %tobool to i32
  %arrayidx4 = getelementptr %struct.nouveau_mem, ptr %old_reg, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx4, align 8
  %vma = getelementptr inbounds %struct.nouveau_mem, ptr %old_reg, i32 0, i32 5
  %10 = ptrtoint ptr %vma to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vma, align 8
  %add = add nuw nsw i32 %lnot.ext13, %lnot.ext
  %mul = mul nuw nsw i32 %add, 6
  %add15 = add nuw nsw i32 %mul, 18
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %mem1374 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map1376 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %client1390 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %handle1393 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %name1394 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %length.05856 = phi i64 [ %conv, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %src_offset.05855 = phi i64 [ %11, %while.body.lr.ph ], [ %add5219, %cleanup.while.body_crit_edge ]
  %dst_offset.05854 = phi i64 [ %9, %while.body.lr.ph ], [ %add5221, %cleanup.while.body_crit_edge ]
  %12 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %13, i32 %add15
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %15
  br i1 %cmp.not.i, label %while.body.if.end_crit_edge, label %if.then.i

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then.i:                                        ; preds = %while.body
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %17(ptr noundef %1, i32 noundef %add15) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup5224_crit_edge

if.then.i.cleanup5224_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup5224

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %while.body.if.end_crit_edge
  %18 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %19, i32 %add15
  %20 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %21 = tail call i64 @llvm.umin.i64(i64 %length.05856, i64 4194304)
  %22 = trunc i64 %21 to i32
  %div5842 = lshr i32 %22, 6
  %cmp289.not = icmp ult ptr %19, %add.ptr4.i
  br i1 %tobool, label %if.end276, label %if.end1279

if.end276:                                        ; preds = %if.end
  br i1 %cmp289.not, label %if.end276.if.end314_crit_edge, label %do.end308, !prof !61

if.end276.if.end314_crit_edge:                    ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end314

do.end308:                                        ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end314

if.end314:                                        ; preds = %do.end308, %if.end276.if.end314_crit_edge
  %23 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur.i, align 4
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %cmp327.not = icmp ult ptr %24, %26
  br i1 %cmp327.not, label %if.end314.if.end352_crit_edge, label %do.end346, !prof !61

if.end314.if.end352_crit_edge:                    ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end352

do.end346:                                        ; preds = %if.end314
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end352

if.end352:                                        ; preds = %do.end346, %if.end314.if.end352_crit_edge
  %27 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur.i, align 4
  %29 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %31 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mem1374, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %37 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client1390, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 8
  %41 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %handle1393, align 4
  %43 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %36(ptr noundef %mem1374, ptr noundef nonnull @.str.12, ptr noundef %40, i32 noundef %42, ptr noundef %44, i32 noundef %sub.ptr.sub, i32 noundef 1868288, i32 noundef 4, i32 noundef 512, i32 noundef 7, ptr noundef nonnull @__func__.nv50_bo_move_m2mf) #3
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %46, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1868288, ptr %46, align 4
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %seg.i, align 8
  %cmp388.not = icmp ult ptr %48, %50
  br i1 %cmp388.not, label %if.end352.if.end413_crit_edge, label %do.end407, !prof !61

if.end352.if.end413_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end413

do.end407:                                        ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end413

if.end413:                                        ; preds = %do.end407, %if.end352.if.end413_crit_edge
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %end.i, align 4
  %cmp427.not = icmp ult ptr %52, %54
  br i1 %cmp427.not, label %if.end413.if.end452_crit_edge, label %do.end446, !prof !61

if.end413.if.end452_crit_edge:                    ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end452

do.end446:                                        ; preds = %if.end413
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end452

if.end452:                                        ; preds = %do.end446, %if.end413.if.end452_crit_edge
  %55 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cur.i, align 4
  %57 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast470 = ptrtoint ptr %56 to i32
  %sub.ptr.rhs.cast471 = ptrtoint ptr %58 to i32
  %sub.ptr.sub472 = sub i32 %sub.ptr.lhs.cast470, %sub.ptr.rhs.cast471
  %59 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mem1374, align 8
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client1390, align 4
  %name484 = getelementptr inbounds %struct.nvif_object, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %name484 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name484, align 8
  %69 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %handle1393, align 4
  %71 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %64(ptr noundef %mem1374, ptr noundef nonnull @.str.13, ptr noundef %68, i32 noundef %70, ptr noundef %72, i32 noundef %sub.ptr.sub472, i32 noundef 0) #3
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %incdec.ptr493 = getelementptr i32, ptr %74, i32 1
  store ptr %incdec.ptr493, ptr %cur.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %74, align 4
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %seg.i, align 8
  %cmp505.not = icmp ult ptr %76, %78
  br i1 %cmp505.not, label %if.end452.if.end530_crit_edge, label %do.end524, !prof !61

if.end452.if.end530_crit_edge:                    ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end530

do.end524:                                        ; preds = %if.end452
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end530

if.end530:                                        ; preds = %do.end524, %if.end452.if.end530_crit_edge
  %79 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cur.i, align 4
  %81 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %end.i, align 4
  %cmp544.not = icmp ult ptr %80, %82
  br i1 %cmp544.not, label %if.end530.if.end569_crit_edge, label %do.end563, !prof !61

if.end530.if.end569_crit_edge:                    ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end569

do.end563:                                        ; preds = %if.end530
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end569

if.end569:                                        ; preds = %do.end563, %if.end530.if.end569_crit_edge
  %83 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cur.i, align 4
  %85 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast587 = ptrtoint ptr %84 to i32
  %sub.ptr.rhs.cast588 = ptrtoint ptr %86 to i32
  %sub.ptr.sub589 = sub i32 %sub.ptr.lhs.cast587, %sub.ptr.rhs.cast588
  %87 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mem1374, align 8
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %client1390, align 4
  %name601 = getelementptr inbounds %struct.nvif_object, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %name601 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name601, align 8
  %97 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %handle1393, align 4
  %99 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %92(ptr noundef %mem1374, ptr noundef nonnull @.str.14, ptr noundef %96, i32 noundef %98, ptr noundef %100, i32 noundef %sub.ptr.sub589, i32 noundef 0) #3
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %incdec.ptr610 = getelementptr i32, ptr %102, i32 1
  store ptr %incdec.ptr610, ptr %cur.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %102, align 4
  %104 = load ptr, ptr %cur.i, align 4
  %105 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %seg.i, align 8
  %cmp622.not = icmp ult ptr %104, %106
  br i1 %cmp622.not, label %if.end569.if.end647_crit_edge, label %do.end641, !prof !61

if.end569.if.end647_crit_edge:                    ; preds = %if.end569
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end647

do.end641:                                        ; preds = %if.end569
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end647

if.end647:                                        ; preds = %do.end641, %if.end569.if.end647_crit_edge
  %107 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cur.i, align 4
  %109 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %end.i, align 4
  %cmp661.not = icmp ult ptr %108, %110
  br i1 %cmp661.not, label %if.end647.if.end686_crit_edge, label %do.end680, !prof !61

if.end647.if.end686_crit_edge:                    ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end686

do.end680:                                        ; preds = %if.end647
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end686

if.end686:                                        ; preds = %do.end680, %if.end647.if.end686_crit_edge
  %111 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cur.i, align 4
  %113 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast704 = ptrtoint ptr %112 to i32
  %sub.ptr.rhs.cast705 = ptrtoint ptr %114 to i32
  %sub.ptr.sub706 = sub i32 %sub.ptr.lhs.cast704, %sub.ptr.rhs.cast705
  %115 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mem1374, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %121 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %client1390, align 4
  %name718 = getelementptr inbounds %struct.nvif_object, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %name718 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %name718, align 8
  %125 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %handle1393, align 4
  %127 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %120(ptr noundef %mem1374, ptr noundef nonnull @.str.15, ptr noundef %124, i32 noundef %126, ptr noundef %128, i32 noundef %sub.ptr.sub706, i32 noundef 64) #3
  %129 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cur.i, align 4
  %incdec.ptr727 = getelementptr i32, ptr %130, i32 1
  store ptr %incdec.ptr727, ptr %cur.i, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 64, ptr %130, align 4
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %seg.i, align 8
  %cmp739.not = icmp ult ptr %132, %134
  br i1 %cmp739.not, label %if.end686.if.end764_crit_edge, label %do.end758, !prof !61

if.end686.if.end764_crit_edge:                    ; preds = %if.end686
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end764

do.end758:                                        ; preds = %if.end686
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end764

if.end764:                                        ; preds = %do.end758, %if.end686.if.end764_crit_edge
  %135 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %cur.i, align 4
  %137 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %end.i, align 4
  %cmp778.not = icmp ult ptr %136, %138
  br i1 %cmp778.not, label %if.end764.if.end803_crit_edge, label %do.end797, !prof !61

if.end764.if.end803_crit_edge:                    ; preds = %if.end764
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end803

do.end797:                                        ; preds = %if.end764
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end803

if.end803:                                        ; preds = %do.end797, %if.end764.if.end803_crit_edge
  %139 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %cur.i, align 4
  %141 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast821 = ptrtoint ptr %140 to i32
  %sub.ptr.rhs.cast822 = ptrtoint ptr %142 to i32
  %sub.ptr.sub823 = sub i32 %sub.ptr.lhs.cast821, %sub.ptr.rhs.cast822
  %143 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mem1374, align 8
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %144, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %149 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %client1390, align 4
  %name835 = getelementptr inbounds %struct.nvif_object, ptr %150, i32 0, i32 2
  %151 = ptrtoint ptr %name835 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %name835, align 8
  %153 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %handle1393, align 4
  %155 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %148(ptr noundef %mem1374, ptr noundef nonnull @.str.16, ptr noundef %152, i32 noundef %154, ptr noundef %156, i32 noundef %sub.ptr.sub823, i32 noundef %div5842) #3
  %157 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cur.i, align 4
  %incdec.ptr844 = getelementptr i32, ptr %158, i32 1
  store ptr %incdec.ptr844, ptr %cur.i, align 4
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %div5842, ptr %158, align 4
  %160 = load ptr, ptr %cur.i, align 4
  %161 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %seg.i, align 8
  %cmp856.not = icmp ult ptr %160, %162
  br i1 %cmp856.not, label %if.end803.if.end881_crit_edge, label %do.end875, !prof !61

if.end803.if.end881_crit_edge:                    ; preds = %if.end803
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end881

do.end875:                                        ; preds = %if.end803
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end881

if.end881:                                        ; preds = %do.end875, %if.end803.if.end881_crit_edge
  %163 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cur.i, align 4
  %165 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %end.i, align 4
  %cmp895.not = icmp ult ptr %164, %166
  br i1 %cmp895.not, label %if.end881.if.end920_crit_edge, label %do.end914, !prof !61

if.end881.if.end920_crit_edge:                    ; preds = %if.end881
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end920

do.end914:                                        ; preds = %if.end881
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end920

if.end920:                                        ; preds = %do.end914, %if.end881.if.end920_crit_edge
  %167 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %cur.i, align 4
  %169 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast938 = ptrtoint ptr %168 to i32
  %sub.ptr.rhs.cast939 = ptrtoint ptr %170 to i32
  %sub.ptr.sub940 = sub i32 %sub.ptr.lhs.cast938, %sub.ptr.rhs.cast939
  %171 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mem1374, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %172, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %177 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %client1390, align 4
  %name952 = getelementptr inbounds %struct.nvif_object, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %name952 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %name952, align 8
  %181 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %handle1393, align 4
  %183 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %176(ptr noundef %mem1374, ptr noundef nonnull @.str.17, ptr noundef %180, i32 noundef %182, ptr noundef %184, i32 noundef %sub.ptr.sub940, i32 noundef 1) #3
  %185 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cur.i, align 4
  %incdec.ptr961 = getelementptr i32, ptr %186, i32 1
  store ptr %incdec.ptr961, ptr %cur.i, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 1, ptr %186, align 4
  %188 = load ptr, ptr %cur.i, align 4
  %189 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %seg.i, align 8
  %cmp973.not = icmp ult ptr %188, %190
  br i1 %cmp973.not, label %if.end920.if.end998_crit_edge, label %do.end992, !prof !61

if.end920.if.end998_crit_edge:                    ; preds = %if.end920
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end998

do.end992:                                        ; preds = %if.end920
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end998

if.end998:                                        ; preds = %do.end992, %if.end920.if.end998_crit_edge
  %191 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cur.i, align 4
  %193 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %end.i, align 4
  %cmp1012.not = icmp ult ptr %192, %194
  br i1 %cmp1012.not, label %if.end998.if.end1037_crit_edge, label %do.end1031, !prof !61

if.end998.if.end1037_crit_edge:                   ; preds = %if.end998
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1037

do.end1031:                                       ; preds = %if.end998
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1037

if.end1037:                                       ; preds = %do.end1031, %if.end998.if.end1037_crit_edge
  %195 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %cur.i, align 4
  %197 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast1055 = ptrtoint ptr %196 to i32
  %sub.ptr.rhs.cast1056 = ptrtoint ptr %198 to i32
  %sub.ptr.sub1057 = sub i32 %sub.ptr.lhs.cast1055, %sub.ptr.rhs.cast1056
  %199 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mem1374, align 8
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %203 = ptrtoint ptr %202 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %202, align 4
  %205 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %client1390, align 4
  %name1069 = getelementptr inbounds %struct.nvif_object, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %name1069 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name1069, align 8
  %209 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %handle1393, align 4
  %211 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %204(ptr noundef %mem1374, ptr noundef nonnull @.str.18, ptr noundef %208, i32 noundef %210, ptr noundef %212, i32 noundef %sub.ptr.sub1057, i32 noundef 0) #3
  %213 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1078 = getelementptr i32, ptr %214, i32 1
  store ptr %incdec.ptr1078, ptr %cur.i, align 4
  %215 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %214, align 4
  %216 = load ptr, ptr %cur.i, align 4
  %217 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %seg.i, align 8
  %cmp1090.not = icmp ult ptr %216, %218
  br i1 %cmp1090.not, label %if.end1037.if.end1115_crit_edge, label %do.end1109, !prof !61

if.end1037.if.end1115_crit_edge:                  ; preds = %if.end1037
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1115

do.end1109:                                       ; preds = %if.end1037
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end1115

if.end1115:                                       ; preds = %do.end1109, %if.end1037.if.end1115_crit_edge
  %219 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cur.i, align 4
  %221 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %end.i, align 4
  %cmp1129.not = icmp ult ptr %220, %222
  br i1 %cmp1129.not, label %if.end1115.if.end1154_crit_edge, label %do.end1148, !prof !61

if.end1115.if.end1154_crit_edge:                  ; preds = %if.end1115
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1154

do.end1148:                                       ; preds = %if.end1115
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 78, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1154

if.end1154:                                       ; preds = %do.end1148, %if.end1115.if.end1154_crit_edge
  %223 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %cur.i, align 4
  %225 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast1172 = ptrtoint ptr %224 to i32
  %sub.ptr.rhs.cast1173 = ptrtoint ptr %226 to i32
  %sub.ptr.sub1174 = sub i32 %sub.ptr.lhs.cast1172, %sub.ptr.rhs.cast1173
  %227 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %mem1374, align 8
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %230, align 4
  %233 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %client1390, align 4
  %name1186 = getelementptr inbounds %struct.nvif_object, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %name1186 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %name1186, align 8
  %237 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %handle1393, align 4
  %239 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %232(ptr noundef %mem1374, ptr noundef nonnull @.str.19, ptr noundef %236, i32 noundef %238, ptr noundef %240, i32 noundef %sub.ptr.sub1174, i32 noundef 0) #3
  %241 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1195 = getelementptr i32, ptr %242, i32 1
  store ptr %incdec.ptr1195, ptr %cur.i, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 0, ptr %242, align 4
  br label %if.end1523

if.end1279:                                       ; preds = %if.end
  br i1 %cmp289.not, label %if.end1279.if.end1321_crit_edge, label %do.end1315, !prof !61

if.end1279.if.end1321_crit_edge:                  ; preds = %if.end1279
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1321

do.end1315:                                       ; preds = %if.end1279
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end1321

if.end1321:                                       ; preds = %do.end1315, %if.end1279.if.end1321_crit_edge
  %244 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %cur.i, align 4
  %246 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %end.i, align 4
  %cmp1335.not = icmp ult ptr %245, %247
  br i1 %cmp1335.not, label %if.end1321.if.end1360_crit_edge, label %do.end1354, !prof !61

if.end1321.if.end1360_crit_edge:                  ; preds = %if.end1321
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1360

do.end1354:                                       ; preds = %if.end1321
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1360

if.end1360:                                       ; preds = %do.end1354, %if.end1321.if.end1360_crit_edge
  %248 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %cur.i, align 4
  %250 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast1378 = ptrtoint ptr %249 to i32
  %sub.ptr.rhs.cast1379 = ptrtoint ptr %251 to i32
  %sub.ptr.sub1380 = sub i32 %sub.ptr.lhs.cast1378, %sub.ptr.rhs.cast1379
  %252 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mem1374, align 8
  %254 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %253, align 4
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 4
  %258 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %client1390, align 4
  %name1392 = getelementptr inbounds %struct.nvif_object, ptr %259, i32 0, i32 2
  %260 = ptrtoint ptr %name1392 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %name1392, align 8
  %262 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %handle1393, align 4
  %264 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %257(ptr noundef %mem1374, ptr noundef nonnull @.str.12, ptr noundef %261, i32 noundef %263, ptr noundef %265, i32 noundef %sub.ptr.sub1380, i32 noundef 295424, i32 noundef 4, i32 noundef 512, i32 noundef 1, ptr noundef nonnull @__func__.nv50_bo_move_m2mf) #3
  %266 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1401 = getelementptr i32, ptr %267, i32 1
  store ptr %incdec.ptr1401, ptr %cur.i, align 4
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 295424, ptr %267, align 4
  %269 = load ptr, ptr %cur.i, align 4
  %270 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %seg.i, align 8
  %cmp1413.not = icmp ult ptr %269, %271
  br i1 %cmp1413.not, label %if.end1360.if.end1438_crit_edge, label %do.end1432, !prof !61

if.end1360.if.end1438_crit_edge:                  ; preds = %if.end1360
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1438

do.end1432:                                       ; preds = %if.end1360
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end1438

if.end1438:                                       ; preds = %do.end1432, %if.end1360.if.end1438_crit_edge
  %272 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %cur.i, align 4
  %274 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %end.i, align 4
  %cmp1452.not = icmp ult ptr %273, %275
  br i1 %cmp1452.not, label %if.end1438.if.end1477_crit_edge, label %do.end1471, !prof !61

if.end1438.if.end1477_crit_edge:                  ; preds = %if.end1438
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1477

do.end1471:                                       ; preds = %if.end1438
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1477

if.end1477:                                       ; preds = %do.end1471, %if.end1438.if.end1477_crit_edge
  %276 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %cur.i, align 4
  %278 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast1495 = ptrtoint ptr %277 to i32
  %sub.ptr.rhs.cast1496 = ptrtoint ptr %279 to i32
  %sub.ptr.sub1497 = sub i32 %sub.ptr.lhs.cast1495, %sub.ptr.rhs.cast1496
  %280 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %mem1374, align 8
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %281, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %283, align 4
  %286 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %client1390, align 4
  %name1509 = getelementptr inbounds %struct.nvif_object, ptr %287, i32 0, i32 2
  %288 = ptrtoint ptr %name1509 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %name1509, align 8
  %290 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %handle1393, align 4
  %292 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %285(ptr noundef %mem1374, ptr noundef nonnull @.str.13, ptr noundef %289, i32 noundef %291, ptr noundef %293, i32 noundef %sub.ptr.sub1497, i32 noundef 1) #3
  %294 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1518 = getelementptr i32, ptr %295, i32 1
  store ptr %incdec.ptr1518, ptr %cur.i, align 4
  %296 = ptrtoint ptr %295 to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 1, ptr %295, align 4
  br label %if.end1523

if.end1523:                                       ; preds = %if.end1477, %if.end1154
  %297 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %cur.i, align 4
  %299 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %seg.i, align 8
  %cmp1802.not = icmp ult ptr %298, %300
  br i1 %tobool9, label %if.end1785, label %if.end2811

if.end1785:                                       ; preds = %if.end1523
  br i1 %cmp1802.not, label %if.end1785.if.end1827_crit_edge, label %do.end1821, !prof !61

if.end1785.if.end1827_crit_edge:                  ; preds = %if.end1785
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1827

do.end1821:                                       ; preds = %if.end1785
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end1827

if.end1827:                                       ; preds = %do.end1821, %if.end1785.if.end1827_crit_edge
  %301 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %cur.i, align 4
  %303 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %end.i, align 4
  %cmp1841.not = icmp ult ptr %302, %304
  br i1 %cmp1841.not, label %if.end1827.if.end1866_crit_edge, label %do.end1860, !prof !61

if.end1827.if.end1866_crit_edge:                  ; preds = %if.end1827
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1866

do.end1860:                                       ; preds = %if.end1827
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1866

if.end1866:                                       ; preds = %do.end1860, %if.end1827.if.end1866_crit_edge
  %305 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %cur.i, align 4
  %307 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast1884 = ptrtoint ptr %306 to i32
  %sub.ptr.rhs.cast1885 = ptrtoint ptr %308 to i32
  %sub.ptr.sub1886 = sub i32 %sub.ptr.lhs.cast1884, %sub.ptr.rhs.cast1885
  %309 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %mem1374, align 8
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %310, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %312, align 4
  %315 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %client1390, align 4
  %name1898 = getelementptr inbounds %struct.nvif_object, ptr %316, i32 0, i32 2
  %317 = ptrtoint ptr %name1898 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %name1898, align 8
  %319 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %handle1393, align 4
  %321 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %314(ptr noundef %mem1374, ptr noundef nonnull @.str.12, ptr noundef %318, i32 noundef %320, ptr noundef %322, i32 noundef %sub.ptr.sub1886, i32 noundef 1868316, i32 noundef 4, i32 noundef 540, i32 noundef 7, ptr noundef nonnull @__func__.nv50_bo_move_m2mf) #3
  %323 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1907 = getelementptr i32, ptr %324, i32 1
  store ptr %incdec.ptr1907, ptr %cur.i, align 4
  %325 = ptrtoint ptr %324 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 1868316, ptr %324, align 4
  %326 = load ptr, ptr %cur.i, align 4
  %327 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %seg.i, align 8
  %cmp1919.not = icmp ult ptr %326, %328
  br i1 %cmp1919.not, label %if.end1866.if.end1944_crit_edge, label %do.end1938, !prof !61

if.end1866.if.end1944_crit_edge:                  ; preds = %if.end1866
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1944

do.end1938:                                       ; preds = %if.end1866
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end1944

if.end1944:                                       ; preds = %do.end1938, %if.end1866.if.end1944_crit_edge
  %329 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %cur.i, align 4
  %331 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %end.i, align 4
  %cmp1958.not = icmp ult ptr %330, %332
  br i1 %cmp1958.not, label %if.end1944.if.end1983_crit_edge, label %do.end1977, !prof !61

if.end1944.if.end1983_crit_edge:                  ; preds = %if.end1944
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1983

do.end1977:                                       ; preds = %if.end1944
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end1983

if.end1983:                                       ; preds = %do.end1977, %if.end1944.if.end1983_crit_edge
  %333 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %cur.i, align 4
  %335 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast2001 = ptrtoint ptr %334 to i32
  %sub.ptr.rhs.cast2002 = ptrtoint ptr %336 to i32
  %sub.ptr.sub2003 = sub i32 %sub.ptr.lhs.cast2001, %sub.ptr.rhs.cast2002
  %337 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %mem1374, align 8
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %338, align 4
  %341 = ptrtoint ptr %340 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %340, align 4
  %343 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %client1390, align 4
  %name2015 = getelementptr inbounds %struct.nvif_object, ptr %344, i32 0, i32 2
  %345 = ptrtoint ptr %name2015 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %name2015, align 8
  %347 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %handle1393, align 4
  %349 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %342(ptr noundef %mem1374, ptr noundef nonnull @.str.20, ptr noundef %346, i32 noundef %348, ptr noundef %350, i32 noundef %sub.ptr.sub2003, i32 noundef 0) #3
  %351 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2024 = getelementptr i32, ptr %352, i32 1
  store ptr %incdec.ptr2024, ptr %cur.i, align 4
  %353 = ptrtoint ptr %352 to i32
  call void @__asan_store4_noabort(i32 %353)
  store i32 0, ptr %352, align 4
  %354 = load ptr, ptr %cur.i, align 4
  %355 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %seg.i, align 8
  %cmp2036.not = icmp ult ptr %354, %356
  br i1 %cmp2036.not, label %if.end1983.if.end2061_crit_edge, label %do.end2055, !prof !61

if.end1983.if.end2061_crit_edge:                  ; preds = %if.end1983
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2061

do.end2055:                                       ; preds = %if.end1983
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end2061

if.end2061:                                       ; preds = %do.end2055, %if.end1983.if.end2061_crit_edge
  %357 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %cur.i, align 4
  %359 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %end.i, align 4
  %cmp2075.not = icmp ult ptr %358, %360
  br i1 %cmp2075.not, label %if.end2061.if.end2100_crit_edge, label %do.end2094, !prof !61

if.end2061.if.end2100_crit_edge:                  ; preds = %if.end2061
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2100

do.end2094:                                       ; preds = %if.end2061
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end2100

if.end2100:                                       ; preds = %do.end2094, %if.end2061.if.end2100_crit_edge
  %361 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %cur.i, align 4
  %363 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast2118 = ptrtoint ptr %362 to i32
  %sub.ptr.rhs.cast2119 = ptrtoint ptr %364 to i32
  %sub.ptr.sub2120 = sub i32 %sub.ptr.lhs.cast2118, %sub.ptr.rhs.cast2119
  %365 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %mem1374, align 8
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %366, align 4
  %369 = ptrtoint ptr %368 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %368, align 4
  %371 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %client1390, align 4
  %name2132 = getelementptr inbounds %struct.nvif_object, ptr %372, i32 0, i32 2
  %373 = ptrtoint ptr %name2132 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %name2132, align 8
  %375 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %handle1393, align 4
  %377 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %370(ptr noundef %mem1374, ptr noundef nonnull @.str.21, ptr noundef %374, i32 noundef %376, ptr noundef %378, i32 noundef %sub.ptr.sub2120, i32 noundef 0) #3
  %379 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2141 = getelementptr i32, ptr %380, i32 1
  store ptr %incdec.ptr2141, ptr %cur.i, align 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 0, ptr %380, align 4
  %382 = load ptr, ptr %cur.i, align 4
  %383 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %seg.i, align 8
  %cmp2153.not = icmp ult ptr %382, %384
  br i1 %cmp2153.not, label %if.end2100.if.end2178_crit_edge, label %do.end2172, !prof !61

if.end2100.if.end2178_crit_edge:                  ; preds = %if.end2100
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2178

do.end2172:                                       ; preds = %if.end2100
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end2178

if.end2178:                                       ; preds = %do.end2172, %if.end2100.if.end2178_crit_edge
  %385 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %cur.i, align 4
  %387 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %end.i, align 4
  %cmp2192.not = icmp ult ptr %386, %388
  br i1 %cmp2192.not, label %if.end2178.if.end2217_crit_edge, label %do.end2211, !prof !61

if.end2178.if.end2217_crit_edge:                  ; preds = %if.end2178
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2217

do.end2211:                                       ; preds = %if.end2178
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end2217

if.end2217:                                       ; preds = %do.end2211, %if.end2178.if.end2217_crit_edge
  %389 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %cur.i, align 4
  %391 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast2235 = ptrtoint ptr %390 to i32
  %sub.ptr.rhs.cast2236 = ptrtoint ptr %392 to i32
  %sub.ptr.sub2237 = sub i32 %sub.ptr.lhs.cast2235, %sub.ptr.rhs.cast2236
  %393 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %mem1374, align 8
  %395 = ptrtoint ptr %394 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %394, align 4
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %396, align 4
  %399 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %client1390, align 4
  %name2249 = getelementptr inbounds %struct.nvif_object, ptr %400, i32 0, i32 2
  %401 = ptrtoint ptr %name2249 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %name2249, align 8
  %403 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %handle1393, align 4
  %405 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %398(ptr noundef %mem1374, ptr noundef nonnull @.str.22, ptr noundef %402, i32 noundef %404, ptr noundef %406, i32 noundef %sub.ptr.sub2237, i32 noundef 64) #3
  %407 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2258 = getelementptr i32, ptr %408, i32 1
  store ptr %incdec.ptr2258, ptr %cur.i, align 4
  %409 = ptrtoint ptr %408 to i32
  call void @__asan_store4_noabort(i32 %409)
  store i32 64, ptr %408, align 4
  %410 = load ptr, ptr %cur.i, align 4
  %411 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %seg.i, align 8
  %cmp2270.not = icmp ult ptr %410, %412
  br i1 %cmp2270.not, label %if.end2217.if.end2295_crit_edge, label %do.end2289, !prof !61

if.end2217.if.end2295_crit_edge:                  ; preds = %if.end2217
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2295

do.end2289:                                       ; preds = %if.end2217
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end2295

if.end2295:                                       ; preds = %do.end2289, %if.end2217.if.end2295_crit_edge
  %413 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %cur.i, align 4
  %415 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %end.i, align 4
  %cmp2309.not = icmp ult ptr %414, %416
  br i1 %cmp2309.not, label %if.end2295.if.end2334_crit_edge, label %do.end2328, !prof !61

if.end2295.if.end2334_crit_edge:                  ; preds = %if.end2295
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2334

do.end2328:                                       ; preds = %if.end2295
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end2334

if.end2334:                                       ; preds = %do.end2328, %if.end2295.if.end2334_crit_edge
  %417 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %cur.i, align 4
  %419 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast2352 = ptrtoint ptr %418 to i32
  %sub.ptr.rhs.cast2353 = ptrtoint ptr %420 to i32
  %sub.ptr.sub2354 = sub i32 %sub.ptr.lhs.cast2352, %sub.ptr.rhs.cast2353
  %421 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %mem1374, align 8
  %423 = ptrtoint ptr %422 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %422, align 4
  %425 = ptrtoint ptr %424 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %424, align 4
  %427 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %client1390, align 4
  %name2366 = getelementptr inbounds %struct.nvif_object, ptr %428, i32 0, i32 2
  %429 = ptrtoint ptr %name2366 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %name2366, align 8
  %431 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %handle1393, align 4
  %433 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %426(ptr noundef %mem1374, ptr noundef nonnull @.str.23, ptr noundef %430, i32 noundef %432, ptr noundef %434, i32 noundef %sub.ptr.sub2354, i32 noundef %div5842) #3
  %435 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2375 = getelementptr i32, ptr %436, i32 1
  store ptr %incdec.ptr2375, ptr %cur.i, align 4
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_store4_noabort(i32 %437)
  store i32 %div5842, ptr %436, align 4
  %438 = load ptr, ptr %cur.i, align 4
  %439 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %seg.i, align 8
  %cmp2387.not = icmp ult ptr %438, %440
  br i1 %cmp2387.not, label %if.end2334.if.end2412_crit_edge, label %do.end2406, !prof !61

if.end2334.if.end2412_crit_edge:                  ; preds = %if.end2334
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2412

do.end2406:                                       ; preds = %if.end2334
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end2412

if.end2412:                                       ; preds = %do.end2406, %if.end2334.if.end2412_crit_edge
  %441 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %cur.i, align 4
  %443 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %end.i, align 4
  %cmp2426.not = icmp ult ptr %442, %444
  br i1 %cmp2426.not, label %if.end2412.if.end2451_crit_edge, label %do.end2445, !prof !61

if.end2412.if.end2451_crit_edge:                  ; preds = %if.end2412
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2451

do.end2445:                                       ; preds = %if.end2412
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end2451

if.end2451:                                       ; preds = %do.end2445, %if.end2412.if.end2451_crit_edge
  %445 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %cur.i, align 4
  %447 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast2469 = ptrtoint ptr %446 to i32
  %sub.ptr.rhs.cast2470 = ptrtoint ptr %448 to i32
  %sub.ptr.sub2471 = sub i32 %sub.ptr.lhs.cast2469, %sub.ptr.rhs.cast2470
  %449 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %mem1374, align 8
  %451 = ptrtoint ptr %450 to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %450, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %452, align 4
  %455 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %client1390, align 4
  %name2483 = getelementptr inbounds %struct.nvif_object, ptr %456, i32 0, i32 2
  %457 = ptrtoint ptr %name2483 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %name2483, align 8
  %459 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %handle1393, align 4
  %461 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %454(ptr noundef %mem1374, ptr noundef nonnull @.str.24, ptr noundef %458, i32 noundef %460, ptr noundef %462, i32 noundef %sub.ptr.sub2471, i32 noundef 1) #3
  %463 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2492 = getelementptr i32, ptr %464, i32 1
  store ptr %incdec.ptr2492, ptr %cur.i, align 4
  %465 = ptrtoint ptr %464 to i32
  call void @__asan_store4_noabort(i32 %465)
  store i32 1, ptr %464, align 4
  %466 = load ptr, ptr %cur.i, align 4
  %467 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %seg.i, align 8
  %cmp2504.not = icmp ult ptr %466, %468
  br i1 %cmp2504.not, label %if.end2451.if.end2529_crit_edge, label %do.end2523, !prof !61

if.end2451.if.end2529_crit_edge:                  ; preds = %if.end2451
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2529

do.end2523:                                       ; preds = %if.end2451
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end2529

if.end2529:                                       ; preds = %do.end2523, %if.end2451.if.end2529_crit_edge
  %469 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %cur.i, align 4
  %471 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %end.i, align 4
  %cmp2543.not = icmp ult ptr %470, %472
  br i1 %cmp2543.not, label %if.end2529.if.end2568_crit_edge, label %do.end2562, !prof !61

if.end2529.if.end2568_crit_edge:                  ; preds = %if.end2529
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2568

do.end2562:                                       ; preds = %if.end2529
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end2568

if.end2568:                                       ; preds = %do.end2562, %if.end2529.if.end2568_crit_edge
  %473 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %cur.i, align 4
  %475 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast2586 = ptrtoint ptr %474 to i32
  %sub.ptr.rhs.cast2587 = ptrtoint ptr %476 to i32
  %sub.ptr.sub2588 = sub i32 %sub.ptr.lhs.cast2586, %sub.ptr.rhs.cast2587
  %477 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %mem1374, align 8
  %479 = ptrtoint ptr %478 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %478, align 4
  %481 = ptrtoint ptr %480 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %480, align 4
  %483 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %client1390, align 4
  %name2600 = getelementptr inbounds %struct.nvif_object, ptr %484, i32 0, i32 2
  %485 = ptrtoint ptr %name2600 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %name2600, align 8
  %487 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load i32, ptr %handle1393, align 4
  %489 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %482(ptr noundef %mem1374, ptr noundef nonnull @.str.25, ptr noundef %486, i32 noundef %488, ptr noundef %490, i32 noundef %sub.ptr.sub2588, i32 noundef 0) #3
  %491 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2609 = getelementptr i32, ptr %492, i32 1
  store ptr %incdec.ptr2609, ptr %cur.i, align 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_store4_noabort(i32 %493)
  store i32 0, ptr %492, align 4
  %494 = load ptr, ptr %cur.i, align 4
  %495 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %seg.i, align 8
  %cmp2621.not = icmp ult ptr %494, %496
  br i1 %cmp2621.not, label %if.end2568.if.end2646_crit_edge, label %do.end2640, !prof !61

if.end2568.if.end2646_crit_edge:                  ; preds = %if.end2568
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2646

do.end2640:                                       ; preds = %if.end2568
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end2646

if.end2646:                                       ; preds = %do.end2640, %if.end2568.if.end2646_crit_edge
  %497 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %cur.i, align 4
  %499 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %end.i, align 4
  %cmp2660.not = icmp ult ptr %498, %500
  br i1 %cmp2660.not, label %if.end2646.if.end2685_crit_edge, label %do.end2679, !prof !61

if.end2646.if.end2685_crit_edge:                  ; preds = %if.end2646
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2685

do.end2679:                                       ; preds = %if.end2646
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end2685

if.end2685:                                       ; preds = %do.end2679, %if.end2646.if.end2685_crit_edge
  %501 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %cur.i, align 4
  %503 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast2703 = ptrtoint ptr %502 to i32
  %sub.ptr.rhs.cast2704 = ptrtoint ptr %504 to i32
  %sub.ptr.sub2705 = sub i32 %sub.ptr.lhs.cast2703, %sub.ptr.rhs.cast2704
  %505 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %mem1374, align 8
  %507 = ptrtoint ptr %506 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %506, align 4
  %509 = ptrtoint ptr %508 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %508, align 4
  %511 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %client1390, align 4
  %name2717 = getelementptr inbounds %struct.nvif_object, ptr %512, i32 0, i32 2
  %513 = ptrtoint ptr %name2717 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %name2717, align 8
  %515 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %handle1393, align 4
  %517 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %510(ptr noundef %mem1374, ptr noundef nonnull @.str.26, ptr noundef %514, i32 noundef %516, ptr noundef %518, i32 noundef %sub.ptr.sub2705, i32 noundef 0) #3
  %519 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2726 = getelementptr i32, ptr %520, i32 1
  store ptr %incdec.ptr2726, ptr %cur.i, align 4
  %521 = ptrtoint ptr %520 to i32
  call void @__asan_store4_noabort(i32 %521)
  store i32 0, ptr %520, align 4
  br label %if.end3165

if.end2811:                                       ; preds = %if.end1523
  br i1 %cmp1802.not, label %if.end2811.if.end2853_crit_edge, label %do.end2847, !prof !61

if.end2811.if.end2853_crit_edge:                  ; preds = %if.end2811
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2853

do.end2847:                                       ; preds = %if.end2811
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end2853

if.end2853:                                       ; preds = %do.end2847, %if.end2811.if.end2853_crit_edge
  %522 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %cur.i, align 4
  %524 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %end.i, align 4
  %cmp2867.not = icmp ult ptr %523, %525
  br i1 %cmp2867.not, label %if.end2853.if.end2892_crit_edge, label %do.end2886, !prof !61

if.end2853.if.end2892_crit_edge:                  ; preds = %if.end2853
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2892

do.end2886:                                       ; preds = %if.end2853
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end2892

if.end2892:                                       ; preds = %do.end2886, %if.end2853.if.end2892_crit_edge
  %526 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %cur.i, align 4
  %528 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast2910 = ptrtoint ptr %527 to i32
  %sub.ptr.rhs.cast2911 = ptrtoint ptr %529 to i32
  %sub.ptr.sub2912 = sub i32 %sub.ptr.lhs.cast2910, %sub.ptr.rhs.cast2911
  %530 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %mem1374, align 8
  %532 = ptrtoint ptr %531 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %531, align 4
  %534 = ptrtoint ptr %533 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %533, align 4
  %536 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %client1390, align 4
  %name2924 = getelementptr inbounds %struct.nvif_object, ptr %537, i32 0, i32 2
  %538 = ptrtoint ptr %name2924 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %name2924, align 8
  %540 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load i32, ptr %handle1393, align 4
  %542 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %535(ptr noundef %mem1374, ptr noundef nonnull @.str.12, ptr noundef %539, i32 noundef %541, ptr noundef %543, i32 noundef %sub.ptr.sub2912, i32 noundef 295452, i32 noundef 4, i32 noundef 540, i32 noundef 1, ptr noundef nonnull @__func__.nv50_bo_move_m2mf) #3
  %544 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %cur.i, align 4
  %incdec.ptr2933 = getelementptr i32, ptr %545, i32 1
  store ptr %incdec.ptr2933, ptr %cur.i, align 4
  %546 = ptrtoint ptr %545 to i32
  call void @__asan_store4_noabort(i32 %546)
  store i32 295452, ptr %545, align 4
  %547 = load ptr, ptr %cur.i, align 4
  %548 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %seg.i, align 8
  %cmp2945.not = icmp ult ptr %547, %549
  br i1 %cmp2945.not, label %if.end2892.if.end2970_crit_edge, label %do.end2964, !prof !61

if.end2892.if.end2970_crit_edge:                  ; preds = %if.end2892
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end2970

do.end2964:                                       ; preds = %if.end2892
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end2970

if.end2970:                                       ; preds = %do.end2964, %if.end2892.if.end2970_crit_edge
  %550 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %cur.i, align 4
  %552 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %end.i, align 4
  %cmp2984.not = icmp ult ptr %551, %553
  br i1 %cmp2984.not, label %if.end2970.if.end3009_crit_edge, label %do.end3003, !prof !61

if.end2970.if.end3009_crit_edge:                  ; preds = %if.end2970
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3009

do.end3003:                                       ; preds = %if.end2970
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end3009

if.end3009:                                       ; preds = %do.end3003, %if.end2970.if.end3009_crit_edge
  %554 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %cur.i, align 4
  %556 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast3027 = ptrtoint ptr %555 to i32
  %sub.ptr.rhs.cast3028 = ptrtoint ptr %557 to i32
  %sub.ptr.sub3029 = sub i32 %sub.ptr.lhs.cast3027, %sub.ptr.rhs.cast3028
  %558 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %mem1374, align 8
  %560 = ptrtoint ptr %559 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %559, align 4
  %562 = ptrtoint ptr %561 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %561, align 4
  %564 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %client1390, align 4
  %name3041 = getelementptr inbounds %struct.nvif_object, ptr %565, i32 0, i32 2
  %566 = ptrtoint ptr %name3041 to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %name3041, align 8
  %568 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %handle1393, align 4
  %570 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %563(ptr noundef %mem1374, ptr noundef nonnull @.str.20, ptr noundef %567, i32 noundef %569, ptr noundef %571, i32 noundef %sub.ptr.sub3029, i32 noundef 1) #3
  %572 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3050 = getelementptr i32, ptr %573, i32 1
  store ptr %incdec.ptr3050, ptr %cur.i, align 4
  %574 = ptrtoint ptr %573 to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 1, ptr %573, align 4
  br label %if.end3165

if.end3165:                                       ; preds = %if.end3009, %if.end2685
  %575 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %cur.i, align 4
  %577 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %seg.i, align 8
  %cmp3182.not = icmp ult ptr %576, %578
  br i1 %cmp3182.not, label %if.end3165.if.end3207_crit_edge, label %do.end3201, !prof !61

if.end3165.if.end3207_crit_edge:                  ; preds = %if.end3165
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3207

do.end3201:                                       ; preds = %if.end3165
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end3207

if.end3207:                                       ; preds = %do.end3201, %if.end3165.if.end3207_crit_edge
  %579 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %cur.i, align 4
  %581 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %end.i, align 4
  %cmp3221.not = icmp ult ptr %580, %582
  br i1 %cmp3221.not, label %if.end3207.if.end3246_crit_edge, label %do.end3240, !prof !61

if.end3207.if.end3246_crit_edge:                  ; preds = %if.end3207
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3246

do.end3240:                                       ; preds = %if.end3207
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end3246

if.end3246:                                       ; preds = %do.end3240, %if.end3207.if.end3246_crit_edge
  %583 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %cur.i, align 4
  %585 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast3264 = ptrtoint ptr %584 to i32
  %sub.ptr.rhs.cast3265 = ptrtoint ptr %586 to i32
  %sub.ptr.sub3266 = sub i32 %sub.ptr.lhs.cast3264, %sub.ptr.rhs.cast3265
  %587 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %mem1374, align 8
  %589 = ptrtoint ptr %588 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %588, align 4
  %591 = ptrtoint ptr %590 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load ptr, ptr %590, align 4
  %593 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load ptr, ptr %client1390, align 4
  %name3278 = getelementptr inbounds %struct.nvif_object, ptr %594, i32 0, i32 2
  %595 = ptrtoint ptr %name3278 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %name3278, align 8
  %597 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load i32, ptr %handle1393, align 4
  %599 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %592(ptr noundef %mem1374, ptr noundef nonnull @.str.12, ptr noundef %596, i32 noundef %598, ptr noundef %600, i32 noundef %sub.ptr.sub3266, i32 noundef 557624, i32 noundef 4, i32 noundef 568, i32 noundef 2, ptr noundef nonnull @__func__.nv50_bo_move_m2mf) #3
  %601 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3287 = getelementptr i32, ptr %602, i32 1
  store ptr %incdec.ptr3287, ptr %cur.i, align 4
  %603 = ptrtoint ptr %602 to i32
  call void @__asan_store4_noabort(i32 %603)
  store i32 557624, ptr %602, align 4
  %shr = lshr i64 %src_offset.05855, 32
  %604 = trunc i64 %shr to i32
  %conv3299 = and i32 %604, 255
  %605 = load ptr, ptr %cur.i, align 4
  %606 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %seg.i, align 8
  %cmp3304.not = icmp ult ptr %605, %607
  br i1 %cmp3304.not, label %if.end3246.if.end3329_crit_edge, label %do.end3323, !prof !61

if.end3246.if.end3329_crit_edge:                  ; preds = %if.end3246
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3329

do.end3323:                                       ; preds = %if.end3246
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end3329

if.end3329:                                       ; preds = %do.end3323, %if.end3246.if.end3329_crit_edge
  %608 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %cur.i, align 4
  %610 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %end.i, align 4
  %cmp3343.not = icmp ult ptr %609, %611
  br i1 %cmp3343.not, label %if.end3329.if.end3368_crit_edge, label %do.end3362, !prof !61

if.end3329.if.end3368_crit_edge:                  ; preds = %if.end3329
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3368

do.end3362:                                       ; preds = %if.end3329
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end3368

if.end3368:                                       ; preds = %do.end3362, %if.end3329.if.end3368_crit_edge
  %612 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %cur.i, align 4
  %614 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast3386 = ptrtoint ptr %613 to i32
  %sub.ptr.rhs.cast3387 = ptrtoint ptr %615 to i32
  %sub.ptr.sub3388 = sub i32 %sub.ptr.lhs.cast3386, %sub.ptr.rhs.cast3387
  %616 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %mem1374, align 8
  %618 = ptrtoint ptr %617 to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load ptr, ptr %617, align 4
  %620 = ptrtoint ptr %619 to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %619, align 4
  %622 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %client1390, align 4
  %name3400 = getelementptr inbounds %struct.nvif_object, ptr %623, i32 0, i32 2
  %624 = ptrtoint ptr %name3400 to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %name3400, align 8
  %626 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %handle1393, align 4
  %628 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %621(ptr noundef %mem1374, ptr noundef nonnull @.str.27, ptr noundef %625, i32 noundef %627, ptr noundef %629, i32 noundef %sub.ptr.sub3388, i32 noundef %conv3299) #3
  %630 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3409 = getelementptr i32, ptr %631, i32 1
  store ptr %incdec.ptr3409, ptr %cur.i, align 4
  %632 = ptrtoint ptr %631 to i32
  call void @__asan_store4_noabort(i32 %632)
  store i32 %conv3299, ptr %631, align 4
  %shr3417 = lshr i64 %dst_offset.05854, 32
  %633 = trunc i64 %shr3417 to i32
  %conv3423 = and i32 %633, 255
  %634 = load ptr, ptr %cur.i, align 4
  %635 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %635)
  %636 = load ptr, ptr %seg.i, align 8
  %cmp3428.not = icmp ult ptr %634, %636
  br i1 %cmp3428.not, label %if.end3368.if.end3453_crit_edge, label %do.end3447, !prof !61

if.end3368.if.end3453_crit_edge:                  ; preds = %if.end3368
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3453

do.end3447:                                       ; preds = %if.end3368
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end3453

if.end3453:                                       ; preds = %do.end3447, %if.end3368.if.end3453_crit_edge
  %637 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %cur.i, align 4
  %639 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %end.i, align 4
  %cmp3467.not = icmp ult ptr %638, %640
  br i1 %cmp3467.not, label %if.end3453.if.end3492_crit_edge, label %do.end3486, !prof !61

if.end3453.if.end3492_crit_edge:                  ; preds = %if.end3453
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3492

do.end3486:                                       ; preds = %if.end3453
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end3492

if.end3492:                                       ; preds = %do.end3486, %if.end3453.if.end3492_crit_edge
  %641 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load ptr, ptr %cur.i, align 4
  %643 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast3510 = ptrtoint ptr %642 to i32
  %sub.ptr.rhs.cast3511 = ptrtoint ptr %644 to i32
  %sub.ptr.sub3512 = sub i32 %sub.ptr.lhs.cast3510, %sub.ptr.rhs.cast3511
  %645 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %mem1374, align 8
  %647 = ptrtoint ptr %646 to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %646, align 4
  %649 = ptrtoint ptr %648 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %648, align 4
  %651 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %client1390, align 4
  %name3524 = getelementptr inbounds %struct.nvif_object, ptr %652, i32 0, i32 2
  %653 = ptrtoint ptr %name3524 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %name3524, align 8
  %655 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %handle1393, align 4
  %657 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %650(ptr noundef %mem1374, ptr noundef nonnull @.str.28, ptr noundef %654, i32 noundef %656, ptr noundef %658, i32 noundef %sub.ptr.sub3512, i32 noundef %conv3423) #3
  %659 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3533 = getelementptr i32, ptr %660, i32 1
  store ptr %incdec.ptr3533, ptr %cur.i, align 4
  %661 = ptrtoint ptr %660 to i32
  call void @__asan_store4_noabort(i32 %661)
  store i32 %conv3423, ptr %660, align 4
  %662 = load ptr, ptr %cur.i, align 4
  %663 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %seg.i, align 8
  %cmp3844.not = icmp ult ptr %662, %664
  br i1 %cmp3844.not, label %if.end3492.if.end3869_crit_edge, label %do.end3863, !prof !61

if.end3492.if.end3869_crit_edge:                  ; preds = %if.end3492
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3869

do.end3863:                                       ; preds = %if.end3492
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end3869

if.end3869:                                       ; preds = %do.end3863, %if.end3492.if.end3869_crit_edge
  %665 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %cur.i, align 4
  %667 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %end.i, align 4
  %cmp3883.not = icmp ult ptr %666, %668
  br i1 %cmp3883.not, label %if.end3869.if.end3908_crit_edge, label %do.end3902, !prof !61

if.end3869.if.end3908_crit_edge:                  ; preds = %if.end3869
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3908

do.end3902:                                       ; preds = %if.end3869
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end3908

if.end3908:                                       ; preds = %do.end3902, %if.end3869.if.end3908_crit_edge
  %669 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %cur.i, align 4
  %671 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast3926 = ptrtoint ptr %670 to i32
  %sub.ptr.rhs.cast3927 = ptrtoint ptr %672 to i32
  %sub.ptr.sub3928 = sub i32 %sub.ptr.lhs.cast3926, %sub.ptr.rhs.cast3927
  %673 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %mem1374, align 8
  %675 = ptrtoint ptr %674 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %674, align 4
  %677 = ptrtoint ptr %676 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %676, align 4
  %679 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %client1390, align 4
  %name3940 = getelementptr inbounds %struct.nvif_object, ptr %680, i32 0, i32 2
  %681 = ptrtoint ptr %name3940 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %name3940, align 8
  %683 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %handle1393, align 4
  %685 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %678(ptr noundef %mem1374, ptr noundef nonnull @.str.12, ptr noundef %682, i32 noundef %684, ptr noundef %686, i32 noundef %sub.ptr.sub3928, i32 noundef 2130700, i32 noundef 4, i32 noundef 780, i32 noundef 8, ptr noundef nonnull @__func__.nv50_bo_move_m2mf) #3
  %687 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %cur.i, align 4
  %incdec.ptr3949 = getelementptr i32, ptr %688, i32 1
  store ptr %incdec.ptr3949, ptr %cur.i, align 4
  %689 = ptrtoint ptr %688 to i32
  call void @__asan_store4_noabort(i32 %689)
  store i32 2130700, ptr %688, align 4
  %conv3958 = trunc i64 %src_offset.05855 to i32
  %690 = load ptr, ptr %cur.i, align 4
  %691 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %seg.i, align 8
  %cmp3963.not = icmp ult ptr %690, %692
  br i1 %cmp3963.not, label %if.end3908.if.end3988_crit_edge, label %do.end3982, !prof !61

if.end3908.if.end3988_crit_edge:                  ; preds = %if.end3908
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3988

do.end3982:                                       ; preds = %if.end3908
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end3988

if.end3988:                                       ; preds = %do.end3982, %if.end3908.if.end3988_crit_edge
  %693 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %cur.i, align 4
  %695 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %end.i, align 4
  %cmp4002.not = icmp ult ptr %694, %696
  br i1 %cmp4002.not, label %if.end3988.if.end4027_crit_edge, label %do.end4021, !prof !61

if.end3988.if.end4027_crit_edge:                  ; preds = %if.end3988
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4027

do.end4021:                                       ; preds = %if.end3988
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end4027

if.end4027:                                       ; preds = %do.end4021, %if.end3988.if.end4027_crit_edge
  %697 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %cur.i, align 4
  %699 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast4045 = ptrtoint ptr %698 to i32
  %sub.ptr.rhs.cast4046 = ptrtoint ptr %700 to i32
  %sub.ptr.sub4047 = sub i32 %sub.ptr.lhs.cast4045, %sub.ptr.rhs.cast4046
  %701 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %mem1374, align 8
  %703 = ptrtoint ptr %702 to i32
  call void @__asan_load4_noabort(i32 %703)
  %704 = load ptr, ptr %702, align 4
  %705 = ptrtoint ptr %704 to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %704, align 4
  %707 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %client1390, align 4
  %name4059 = getelementptr inbounds %struct.nvif_object, ptr %708, i32 0, i32 2
  %709 = ptrtoint ptr %name4059 to i32
  call void @__asan_load4_noabort(i32 %709)
  %710 = load ptr, ptr %name4059, align 8
  %711 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %handle1393, align 4
  %713 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %706(ptr noundef %mem1374, ptr noundef nonnull @.str.30, ptr noundef %710, i32 noundef %712, ptr noundef %714, i32 noundef %sub.ptr.sub4047, i32 noundef %conv3958) #3
  %715 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4068 = getelementptr i32, ptr %716, i32 1
  store ptr %incdec.ptr4068, ptr %cur.i, align 4
  %717 = ptrtoint ptr %716 to i32
  call void @__asan_store4_noabort(i32 %717)
  store i32 %conv3958, ptr %716, align 4
  %conv4077 = trunc i64 %dst_offset.05854 to i32
  %718 = load ptr, ptr %cur.i, align 4
  %719 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %seg.i, align 8
  %cmp4082.not = icmp ult ptr %718, %720
  br i1 %cmp4082.not, label %if.end4027.if.end4107_crit_edge, label %do.end4101, !prof !61

if.end4027.if.end4107_crit_edge:                  ; preds = %if.end4027
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4107

do.end4101:                                       ; preds = %if.end4027
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end4107

if.end4107:                                       ; preds = %do.end4101, %if.end4027.if.end4107_crit_edge
  %721 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %cur.i, align 4
  %723 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %end.i, align 4
  %cmp4121.not = icmp ult ptr %722, %724
  br i1 %cmp4121.not, label %if.end4107.if.end4146_crit_edge, label %do.end4140, !prof !61

if.end4107.if.end4146_crit_edge:                  ; preds = %if.end4107
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4146

do.end4140:                                       ; preds = %if.end4107
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end4146

if.end4146:                                       ; preds = %do.end4140, %if.end4107.if.end4146_crit_edge
  %725 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %cur.i, align 4
  %727 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %727)
  %728 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast4164 = ptrtoint ptr %726 to i32
  %sub.ptr.rhs.cast4165 = ptrtoint ptr %728 to i32
  %sub.ptr.sub4166 = sub i32 %sub.ptr.lhs.cast4164, %sub.ptr.rhs.cast4165
  %729 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %729)
  %730 = load ptr, ptr %mem1374, align 8
  %731 = ptrtoint ptr %730 to i32
  call void @__asan_load4_noabort(i32 %731)
  %732 = load ptr, ptr %730, align 4
  %733 = ptrtoint ptr %732 to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load ptr, ptr %732, align 4
  %735 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load ptr, ptr %client1390, align 4
  %name4178 = getelementptr inbounds %struct.nvif_object, ptr %736, i32 0, i32 2
  %737 = ptrtoint ptr %name4178 to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %name4178, align 8
  %739 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load i32, ptr %handle1393, align 4
  %741 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %734(ptr noundef %mem1374, ptr noundef nonnull @.str.31, ptr noundef %738, i32 noundef %740, ptr noundef %742, i32 noundef %sub.ptr.sub4166, i32 noundef %conv4077) #3
  %743 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %744 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4187 = getelementptr i32, ptr %744, i32 1
  store ptr %incdec.ptr4187, ptr %cur.i, align 4
  %745 = ptrtoint ptr %744 to i32
  call void @__asan_store4_noabort(i32 %745)
  store i32 %conv4077, ptr %744, align 4
  %746 = load ptr, ptr %cur.i, align 4
  %747 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %747)
  %748 = load ptr, ptr %seg.i, align 8
  %cmp4199.not = icmp ult ptr %746, %748
  br i1 %cmp4199.not, label %if.end4146.if.end4224_crit_edge, label %do.end4218, !prof !61

if.end4146.if.end4224_crit_edge:                  ; preds = %if.end4146
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4224

do.end4218:                                       ; preds = %if.end4146
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end4224

if.end4224:                                       ; preds = %do.end4218, %if.end4146.if.end4224_crit_edge
  %749 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %749)
  %750 = load ptr, ptr %cur.i, align 4
  %751 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %751)
  %752 = load ptr, ptr %end.i, align 4
  %cmp4238.not = icmp ult ptr %750, %752
  br i1 %cmp4238.not, label %if.end4224.if.end4263_crit_edge, label %do.end4257, !prof !61

if.end4224.if.end4263_crit_edge:                  ; preds = %if.end4224
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4263

do.end4257:                                       ; preds = %if.end4224
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end4263

if.end4263:                                       ; preds = %do.end4257, %if.end4224.if.end4263_crit_edge
  %753 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %753)
  %754 = load ptr, ptr %cur.i, align 4
  %755 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast4281 = ptrtoint ptr %754 to i32
  %sub.ptr.rhs.cast4282 = ptrtoint ptr %756 to i32
  %sub.ptr.sub4283 = sub i32 %sub.ptr.lhs.cast4281, %sub.ptr.rhs.cast4282
  %757 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load ptr, ptr %mem1374, align 8
  %759 = ptrtoint ptr %758 to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %758, align 4
  %761 = ptrtoint ptr %760 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %760, align 4
  %763 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %client1390, align 4
  %name4295 = getelementptr inbounds %struct.nvif_object, ptr %764, i32 0, i32 2
  %765 = ptrtoint ptr %name4295 to i32
  call void @__asan_load4_noabort(i32 %765)
  %766 = load ptr, ptr %name4295, align 8
  %767 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %767)
  %768 = load i32, ptr %handle1393, align 4
  %769 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %769)
  %770 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %762(ptr noundef %mem1374, ptr noundef nonnull @.str.32, ptr noundef %766, i32 noundef %768, ptr noundef %770, i32 noundef %sub.ptr.sub4283, i32 noundef 64) #3
  %771 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4304 = getelementptr i32, ptr %772, i32 1
  store ptr %incdec.ptr4304, ptr %cur.i, align 4
  %773 = ptrtoint ptr %772 to i32
  call void @__asan_store4_noabort(i32 %773)
  store i32 64, ptr %772, align 4
  %774 = load ptr, ptr %cur.i, align 4
  %775 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %seg.i, align 8
  %cmp4316.not = icmp ult ptr %774, %776
  br i1 %cmp4316.not, label %if.end4263.if.end4341_crit_edge, label %do.end4335, !prof !61

if.end4263.if.end4341_crit_edge:                  ; preds = %if.end4263
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4341

do.end4335:                                       ; preds = %if.end4263
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end4341

if.end4341:                                       ; preds = %do.end4335, %if.end4263.if.end4341_crit_edge
  %777 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load ptr, ptr %cur.i, align 4
  %779 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load ptr, ptr %end.i, align 4
  %cmp4355.not = icmp ult ptr %778, %780
  br i1 %cmp4355.not, label %if.end4341.if.end4380_crit_edge, label %do.end4374, !prof !61

if.end4341.if.end4380_crit_edge:                  ; preds = %if.end4341
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4380

do.end4374:                                       ; preds = %if.end4341
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end4380

if.end4380:                                       ; preds = %do.end4374, %if.end4341.if.end4380_crit_edge
  %781 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load ptr, ptr %cur.i, align 4
  %783 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast4398 = ptrtoint ptr %782 to i32
  %sub.ptr.rhs.cast4399 = ptrtoint ptr %784 to i32
  %sub.ptr.sub4400 = sub i32 %sub.ptr.lhs.cast4398, %sub.ptr.rhs.cast4399
  %785 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %mem1374, align 8
  %787 = ptrtoint ptr %786 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %786, align 4
  %789 = ptrtoint ptr %788 to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %788, align 4
  %791 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %791)
  %792 = load ptr, ptr %client1390, align 4
  %name4412 = getelementptr inbounds %struct.nvif_object, ptr %792, i32 0, i32 2
  %793 = ptrtoint ptr %name4412 to i32
  call void @__asan_load4_noabort(i32 %793)
  %794 = load ptr, ptr %name4412, align 8
  %795 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load i32, ptr %handle1393, align 4
  %797 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %790(ptr noundef %mem1374, ptr noundef nonnull @.str.33, ptr noundef %794, i32 noundef %796, ptr noundef %798, i32 noundef %sub.ptr.sub4400, i32 noundef 64) #3
  %799 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4421 = getelementptr i32, ptr %800, i32 1
  store ptr %incdec.ptr4421, ptr %cur.i, align 4
  %801 = ptrtoint ptr %800 to i32
  call void @__asan_store4_noabort(i32 %801)
  store i32 64, ptr %800, align 4
  %802 = load ptr, ptr %cur.i, align 4
  %803 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load ptr, ptr %seg.i, align 8
  %cmp4433.not = icmp ult ptr %802, %804
  br i1 %cmp4433.not, label %if.end4380.if.end4458_crit_edge, label %do.end4452, !prof !61

if.end4380.if.end4458_crit_edge:                  ; preds = %if.end4380
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4458

do.end4452:                                       ; preds = %if.end4380
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end4458

if.end4458:                                       ; preds = %do.end4452, %if.end4380.if.end4458_crit_edge
  %805 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load ptr, ptr %cur.i, align 4
  %807 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load ptr, ptr %end.i, align 4
  %cmp4472.not = icmp ult ptr %806, %808
  br i1 %cmp4472.not, label %if.end4458.if.end4497_crit_edge, label %do.end4491, !prof !61

if.end4458.if.end4497_crit_edge:                  ; preds = %if.end4458
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4497

do.end4491:                                       ; preds = %if.end4458
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end4497

if.end4497:                                       ; preds = %do.end4491, %if.end4458.if.end4497_crit_edge
  %809 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %cur.i, align 4
  %811 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast4515 = ptrtoint ptr %810 to i32
  %sub.ptr.rhs.cast4516 = ptrtoint ptr %812 to i32
  %sub.ptr.sub4517 = sub i32 %sub.ptr.lhs.cast4515, %sub.ptr.rhs.cast4516
  %813 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load ptr, ptr %mem1374, align 8
  %815 = ptrtoint ptr %814 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load ptr, ptr %814, align 4
  %817 = ptrtoint ptr %816 to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load ptr, ptr %816, align 4
  %819 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load ptr, ptr %client1390, align 4
  %name4529 = getelementptr inbounds %struct.nvif_object, ptr %820, i32 0, i32 2
  %821 = ptrtoint ptr %name4529 to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load ptr, ptr %name4529, align 8
  %823 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load i32, ptr %handle1393, align 4
  %825 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %818(ptr noundef %mem1374, ptr noundef nonnull @.str.34, ptr noundef %822, i32 noundef %824, ptr noundef %826, i32 noundef %sub.ptr.sub4517, i32 noundef 64) #3
  %827 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4538 = getelementptr i32, ptr %828, i32 1
  store ptr %incdec.ptr4538, ptr %cur.i, align 4
  %829 = ptrtoint ptr %828 to i32
  call void @__asan_store4_noabort(i32 %829)
  store i32 64, ptr %828, align 4
  %830 = load ptr, ptr %cur.i, align 4
  %831 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load ptr, ptr %seg.i, align 8
  %cmp4550.not = icmp ult ptr %830, %832
  br i1 %cmp4550.not, label %if.end4497.if.end4575_crit_edge, label %do.end4569, !prof !61

if.end4497.if.end4575_crit_edge:                  ; preds = %if.end4497
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4575

do.end4569:                                       ; preds = %if.end4497
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end4575

if.end4575:                                       ; preds = %do.end4569, %if.end4497.if.end4575_crit_edge
  %833 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load ptr, ptr %cur.i, align 4
  %835 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load ptr, ptr %end.i, align 4
  %cmp4589.not = icmp ult ptr %834, %836
  br i1 %cmp4589.not, label %if.end4575.if.end4614_crit_edge, label %do.end4608, !prof !61

if.end4575.if.end4614_crit_edge:                  ; preds = %if.end4575
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4614

do.end4608:                                       ; preds = %if.end4575
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end4614

if.end4614:                                       ; preds = %do.end4608, %if.end4575.if.end4614_crit_edge
  %837 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load ptr, ptr %cur.i, align 4
  %839 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast4632 = ptrtoint ptr %838 to i32
  %sub.ptr.rhs.cast4633 = ptrtoint ptr %840 to i32
  %sub.ptr.sub4634 = sub i32 %sub.ptr.lhs.cast4632, %sub.ptr.rhs.cast4633
  %841 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %mem1374, align 8
  %843 = ptrtoint ptr %842 to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %842, align 4
  %845 = ptrtoint ptr %844 to i32
  call void @__asan_load4_noabort(i32 %845)
  %846 = load ptr, ptr %844, align 4
  %847 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load ptr, ptr %client1390, align 4
  %name4646 = getelementptr inbounds %struct.nvif_object, ptr %848, i32 0, i32 2
  %849 = ptrtoint ptr %name4646 to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load ptr, ptr %name4646, align 8
  %851 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %handle1393, align 4
  %853 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %846(ptr noundef %mem1374, ptr noundef nonnull @.str.35, ptr noundef %850, i32 noundef %852, ptr noundef %854, i32 noundef %sub.ptr.sub4634, i32 noundef %div5842) #3
  %855 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4655 = getelementptr i32, ptr %856, i32 1
  store ptr %incdec.ptr4655, ptr %cur.i, align 4
  %857 = ptrtoint ptr %856 to i32
  call void @__asan_store4_noabort(i32 %857)
  store i32 %div5842, ptr %856, align 4
  %858 = load ptr, ptr %cur.i, align 4
  %859 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load ptr, ptr %seg.i, align 8
  %cmp4667.not = icmp ult ptr %858, %860
  br i1 %cmp4667.not, label %if.end4614.if.end4692_crit_edge, label %do.end4686, !prof !61

if.end4614.if.end4692_crit_edge:                  ; preds = %if.end4614
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4692

do.end4686:                                       ; preds = %if.end4614
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end4692

if.end4692:                                       ; preds = %do.end4686, %if.end4614.if.end4692_crit_edge
  %861 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load ptr, ptr %cur.i, align 4
  %863 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load ptr, ptr %end.i, align 4
  %cmp4706.not = icmp ult ptr %862, %864
  br i1 %cmp4706.not, label %if.end4692.if.end4731_crit_edge, label %do.end4725, !prof !61

if.end4692.if.end4731_crit_edge:                  ; preds = %if.end4692
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4731

do.end4725:                                       ; preds = %if.end4692
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end4731

if.end4731:                                       ; preds = %do.end4725, %if.end4692.if.end4731_crit_edge
  %865 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %cur.i, align 4
  %867 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %867)
  %868 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast4749 = ptrtoint ptr %866 to i32
  %sub.ptr.rhs.cast4750 = ptrtoint ptr %868 to i32
  %sub.ptr.sub4751 = sub i32 %sub.ptr.lhs.cast4749, %sub.ptr.rhs.cast4750
  %869 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %869)
  %870 = load ptr, ptr %mem1374, align 8
  %871 = ptrtoint ptr %870 to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %870, align 4
  %873 = ptrtoint ptr %872 to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load ptr, ptr %872, align 4
  %875 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %client1390, align 4
  %name4763 = getelementptr inbounds %struct.nvif_object, ptr %876, i32 0, i32 2
  %877 = ptrtoint ptr %name4763 to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load ptr, ptr %name4763, align 8
  %879 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %handle1393, align 4
  %881 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %874(ptr noundef %mem1374, ptr noundef nonnull @.str.36, ptr noundef %878, i32 noundef %880, ptr noundef %882, i32 noundef %sub.ptr.sub4751, i32 noundef 257) #3
  %883 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4772 = getelementptr i32, ptr %884, i32 1
  store ptr %incdec.ptr4772, ptr %cur.i, align 4
  %885 = ptrtoint ptr %884 to i32
  call void @__asan_store4_noabort(i32 %885)
  store i32 257, ptr %884, align 4
  %886 = load ptr, ptr %cur.i, align 4
  %887 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %seg.i, align 8
  %cmp4784.not = icmp ult ptr %886, %888
  br i1 %cmp4784.not, label %if.end4731.if.end4809_crit_edge, label %do.end4803, !prof !61

if.end4731.if.end4809_crit_edge:                  ; preds = %if.end4731
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4809

do.end4803:                                       ; preds = %if.end4731
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end4809

if.end4809:                                       ; preds = %do.end4803, %if.end4731.if.end4809_crit_edge
  %889 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %890 = load ptr, ptr %cur.i, align 4
  %891 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %891)
  %892 = load ptr, ptr %end.i, align 4
  %cmp4823.not = icmp ult ptr %890, %892
  br i1 %cmp4823.not, label %if.end4809.if.end4848_crit_edge, label %do.end4842, !prof !61

if.end4809.if.end4848_crit_edge:                  ; preds = %if.end4809
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4848

do.end4842:                                       ; preds = %if.end4809
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end4848

if.end4848:                                       ; preds = %do.end4842, %if.end4809.if.end4848_crit_edge
  %893 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %893)
  %894 = load ptr, ptr %cur.i, align 4
  %895 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %895)
  %896 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast4866 = ptrtoint ptr %894 to i32
  %sub.ptr.rhs.cast4867 = ptrtoint ptr %896 to i32
  %sub.ptr.sub4868 = sub i32 %sub.ptr.lhs.cast4866, %sub.ptr.rhs.cast4867
  %897 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %897)
  %898 = load ptr, ptr %mem1374, align 8
  %899 = ptrtoint ptr %898 to i32
  call void @__asan_load4_noabort(i32 %899)
  %900 = load ptr, ptr %898, align 4
  %901 = ptrtoint ptr %900 to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load ptr, ptr %900, align 4
  %903 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load ptr, ptr %client1390, align 4
  %name4880 = getelementptr inbounds %struct.nvif_object, ptr %904, i32 0, i32 2
  %905 = ptrtoint ptr %name4880 to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %name4880, align 8
  %907 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load i32, ptr %handle1393, align 4
  %909 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %902(ptr noundef %mem1374, ptr noundef nonnull @.str.37, ptr noundef %906, i32 noundef %908, ptr noundef %910, i32 noundef %sub.ptr.sub4868, i32 noundef 0) #3
  %911 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %912 = load ptr, ptr %cur.i, align 4
  %incdec.ptr4889 = getelementptr i32, ptr %912, i32 1
  store ptr %incdec.ptr4889, ptr %cur.i, align 4
  %913 = ptrtoint ptr %912 to i32
  call void @__asan_store4_noabort(i32 %913)
  store i32 0, ptr %912, align 4
  %914 = load ptr, ptr %cur.i, align 4
  %915 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load ptr, ptr %seg.i, align 8
  %cmp4990.not = icmp ult ptr %914, %916
  br i1 %cmp4990.not, label %if.end4848.if.end5015_crit_edge, label %do.end5009, !prof !61

if.end4848.if.end5015_crit_edge:                  ; preds = %if.end4848
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5015

do.end5009:                                       ; preds = %if.end4848
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end5015

if.end5015:                                       ; preds = %do.end5009, %if.end4848.if.end5015_crit_edge
  %917 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load ptr, ptr %cur.i, align 4
  %919 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load ptr, ptr %end.i, align 4
  %cmp5029.not = icmp ult ptr %918, %920
  br i1 %cmp5029.not, label %if.end5015.if.end5054_crit_edge, label %do.end5048, !prof !61

if.end5015.if.end5054_crit_edge:                  ; preds = %if.end5015
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5054

do.end5048:                                       ; preds = %if.end5015
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end5054

if.end5054:                                       ; preds = %do.end5048, %if.end5015.if.end5054_crit_edge
  %921 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load ptr, ptr %cur.i, align 4
  %923 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast5072 = ptrtoint ptr %922 to i32
  %sub.ptr.rhs.cast5073 = ptrtoint ptr %924 to i32
  %sub.ptr.sub5074 = sub i32 %sub.ptr.lhs.cast5072, %sub.ptr.rhs.cast5073
  %925 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load ptr, ptr %mem1374, align 8
  %927 = ptrtoint ptr %926 to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %926, align 4
  %929 = ptrtoint ptr %928 to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %928, align 4
  %931 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %client1390, align 4
  %name5086 = getelementptr inbounds %struct.nvif_object, ptr %932, i32 0, i32 2
  %933 = ptrtoint ptr %name5086 to i32
  call void @__asan_load4_noabort(i32 %933)
  %934 = load ptr, ptr %name5086, align 8
  %935 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %935)
  %936 = load i32, ptr %handle1393, align 4
  %937 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %937)
  %938 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %930(ptr noundef %mem1374, ptr noundef nonnull @.str.12, ptr noundef %934, i32 noundef %936, ptr noundef %938, i32 noundef %sub.ptr.sub5074, i32 noundef 295168, i32 noundef 4, i32 noundef 256, i32 noundef 1, ptr noundef nonnull @__func__.nv50_bo_move_m2mf) #3
  %939 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %939)
  %940 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5095 = getelementptr i32, ptr %940, i32 1
  store ptr %incdec.ptr5095, ptr %cur.i, align 4
  %941 = ptrtoint ptr %940 to i32
  call void @__asan_store4_noabort(i32 %941)
  store i32 295168, ptr %940, align 4
  %942 = load ptr, ptr %cur.i, align 4
  %943 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %943)
  %944 = load ptr, ptr %seg.i, align 8
  %cmp5107.not = icmp ult ptr %942, %944
  br i1 %cmp5107.not, label %if.end5054.if.end5132_crit_edge, label %do.end5126, !prof !61

if.end5054.if.end5132_crit_edge:                  ; preds = %if.end5054
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5132

do.end5126:                                       ; preds = %if.end5054
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end5132

if.end5132:                                       ; preds = %do.end5126, %if.end5054.if.end5132_crit_edge
  %945 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %945)
  %946 = load ptr, ptr %cur.i, align 4
  %947 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load ptr, ptr %end.i, align 4
  %cmp5146.not = icmp ult ptr %946, %948
  br i1 %cmp5146.not, label %if.end5132.cleanup_crit_edge, label %do.end5165, !prof !61

if.end5132.cleanup_crit_edge:                     ; preds = %if.end5132
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end5165:                                       ; preds = %if.end5132
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %cleanup

cleanup:                                          ; preds = %do.end5165, %if.end5132.cleanup_crit_edge
  %949 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %949)
  %950 = load ptr, ptr %cur.i, align 4
  %951 = ptrtoint ptr %map1376 to i32
  call void @__asan_load4_noabort(i32 %951)
  %952 = load ptr, ptr %map1376, align 8
  %sub.ptr.lhs.cast5189 = ptrtoint ptr %950 to i32
  %sub.ptr.rhs.cast5190 = ptrtoint ptr %952 to i32
  %sub.ptr.sub5191 = sub i32 %sub.ptr.lhs.cast5189, %sub.ptr.rhs.cast5190
  %953 = ptrtoint ptr %mem1374 to i32
  call void @__asan_load4_noabort(i32 %953)
  %954 = load ptr, ptr %mem1374, align 8
  %955 = ptrtoint ptr %954 to i32
  call void @__asan_load4_noabort(i32 %955)
  %956 = load ptr, ptr %954, align 4
  %957 = ptrtoint ptr %956 to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load ptr, ptr %956, align 4
  %959 = ptrtoint ptr %client1390 to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load ptr, ptr %client1390, align 4
  %name5203 = getelementptr inbounds %struct.nvif_object, ptr %960, i32 0, i32 2
  %961 = ptrtoint ptr %name5203 to i32
  call void @__asan_load4_noabort(i32 %961)
  %962 = load ptr, ptr %name5203, align 8
  %963 = ptrtoint ptr %handle1393 to i32
  call void @__asan_load4_noabort(i32 %963)
  %964 = load i32, ptr %handle1393, align 4
  %965 = ptrtoint ptr %name1394 to i32
  call void @__asan_load4_noabort(i32 %965)
  %966 = load ptr, ptr %name1394, align 8
  tail call void (ptr, ptr, ...) %958(ptr noundef %mem1374, ptr noundef nonnull @.str.38, ptr noundef %962, i32 noundef %964, ptr noundef %966, i32 noundef %sub.ptr.sub5191, i32 noundef 0) #3
  %967 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %967)
  %968 = load ptr, ptr %cur.i, align 4
  %incdec.ptr5212 = getelementptr i32, ptr %968, i32 1
  store ptr %incdec.ptr5212, ptr %cur.i, align 4
  %969 = ptrtoint ptr %968 to i32
  call void @__asan_store4_noabort(i32 %969)
  store i32 0, ptr %968, align 4
  %sub = sub i64 %length.05856, %21
  %add5219 = add i64 %21, %src_offset.05855
  %add5221 = add i64 %21, %dst_offset.05854
  %tobool14.not = icmp eq i64 %sub, 0
  br i1 %tobool14.not, label %cleanup.cleanup5224_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body

cleanup.cleanup5224_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup5224

cleanup5224:                                      ; preds = %cleanup.cleanup5224_crit_edge, %if.then.i.cleanup5224_crit_edge, %entry.cleanup5224_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup5224_crit_edge ], [ %call.i, %if.then.i.cleanup5224_crit_edge ], [ 0, %cleanup.cleanup5224_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_bo_move_init(ptr nocapture noundef readonly %chan, i32 noundef %handle) local_unnamed_addr #0 align 64 {
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
  %add.ptr.i = getelementptr i32, ptr %3, i32 6
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
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 6) #3
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
  %add.ptr4.i = getelementptr i32, ptr %9, i32 6
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end73.if.end109_crit_edge, label %do.end103, !prof !61

if.end73.if.end109_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end109

do.end103:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end109

if.end109:                                        ; preds = %do.end103, %if.end73.if.end109_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp122.not = icmp ult ptr %12, %14
  br i1 %cmp122.not, label %if.end109.if.end146_crit_edge, label %do.end140, !prof !61

if.end109.if.end146_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end146

do.end140:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.11) #3
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 294912, i32 noundef 4, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @__func__.nv50_bo_move_init) #3
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
  br i1 %cmp181.not, label %if.end146.if.end205_crit_edge, label %do.end199, !prof !61

if.end146.if.end205_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end205

do.end199:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end205

if.end205:                                        ; preds = %do.end199, %if.end146.if.end205_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp219.not = icmp ult ptr %40, %42
  br i1 %cmp219.not, label %if.end205.if.end243_crit_edge, label %do.end237, !prof !61

if.end205.if.end243_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end243

do.end237:                                        ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 9, ptr noundef nonnull @.str.11) #3
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
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.39, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub263, i32 noundef %handle) #3
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
  %cmp445.not = icmp ult ptr %64, %66
  br i1 %cmp445.not, label %if.end243.if.end469_crit_edge, label %do.end463, !prof !61

if.end243.if.end469_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end469

do.end463:                                        ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end469

if.end469:                                        ; preds = %do.end463, %if.end243.if.end469_crit_edge
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %end.i, align 4
  %cmp483.not = icmp ult ptr %68, %70
  br i1 %cmp483.not, label %if.end469.if.end507_crit_edge, label %do.end501, !prof !61

if.end469.if.end507_crit_edge:                    ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end507

do.end501:                                        ; preds = %if.end469
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end507

if.end507:                                        ; preds = %do.end501, %if.end469.if.end507_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast525 = ptrtoint ptr %72 to i32
  %sub.ptr.rhs.cast526 = ptrtoint ptr %74 to i32
  %sub.ptr.sub527 = sub i32 %sub.ptr.lhs.cast525, %sub.ptr.rhs.cast526
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
  %name539 = getelementptr inbounds %struct.nvif_object, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %name539 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name539, align 8
  %85 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %handle163, align 4
  %87 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %80(ptr noundef %mem, ptr noundef nonnull @.str.12, ptr noundef %84, i32 noundef %86, ptr noundef %88, i32 noundef %sub.ptr.sub527, i32 noundef 819584, i32 noundef 4, i32 noundef 384, i32 noundef 3, ptr noundef nonnull @__func__.nv50_bo_move_init) #3
  %89 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur.i, align 4
  %incdec.ptr548 = getelementptr i32, ptr %90, i32 1
  store ptr %incdec.ptr548, ptr %cur.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 819584, ptr %90, align 4
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 2
  %92 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %drm, align 4
  %handle556 = getelementptr inbounds %struct.nouveau_drm, ptr %93, i32 0, i32 16, i32 3
  %94 = ptrtoint ptr %handle556 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %handle556, align 4
  %96 = load ptr, ptr %cur.i, align 4
  %97 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %seg.i, align 8
  %cmp561.not = icmp ult ptr %96, %98
  br i1 %cmp561.not, label %if.end507.if.end585_crit_edge, label %do.end579, !prof !61

if.end507.if.end585_crit_edge:                    ; preds = %if.end507
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end585

do.end579:                                        ; preds = %if.end507
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end585

if.end585:                                        ; preds = %do.end579, %if.end507.if.end585_crit_edge
  %99 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cur.i, align 4
  %101 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i, align 4
  %cmp599.not = icmp ult ptr %100, %102
  br i1 %cmp599.not, label %if.end585.if.end623_crit_edge, label %do.end617, !prof !61

if.end585.if.end623_crit_edge:                    ; preds = %if.end585
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end623

do.end617:                                        ; preds = %if.end585
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end623

if.end623:                                        ; preds = %do.end617, %if.end585.if.end623_crit_edge
  %103 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cur.i, align 4
  %105 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast641 = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast642 = ptrtoint ptr %106 to i32
  %sub.ptr.sub643 = sub i32 %sub.ptr.lhs.cast641, %sub.ptr.rhs.cast642
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
  %name655 = getelementptr inbounds %struct.nvif_object, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %name655 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name655, align 8
  %117 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %handle163, align 4
  %119 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %112(ptr noundef %mem, ptr noundef nonnull @.str.40, ptr noundef %116, i32 noundef %118, ptr noundef %120, i32 noundef %sub.ptr.sub643, i32 noundef %95) #3
  %121 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cur.i, align 4
  %incdec.ptr664 = getelementptr i32, ptr %122, i32 1
  store ptr %incdec.ptr664, ptr %cur.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %95, ptr %122, align 4
  %handle672 = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 7, i32 3
  %124 = ptrtoint ptr %handle672 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %handle672, align 4
  %126 = load ptr, ptr %cur.i, align 4
  %127 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %seg.i, align 8
  %cmp677.not = icmp ult ptr %126, %128
  br i1 %cmp677.not, label %if.end623.if.end701_crit_edge, label %do.end695, !prof !61

if.end623.if.end701_crit_edge:                    ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end701

do.end695:                                        ; preds = %if.end623
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end701

if.end701:                                        ; preds = %do.end695, %if.end623.if.end701_crit_edge
  %129 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cur.i, align 4
  %131 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i, align 4
  %cmp715.not = icmp ult ptr %130, %132
  br i1 %cmp715.not, label %if.end701.if.end739_crit_edge, label %do.end733, !prof !61

if.end701.if.end739_crit_edge:                    ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end739

do.end733:                                        ; preds = %if.end701
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end739

if.end739:                                        ; preds = %do.end733, %if.end701.if.end739_crit_edge
  %133 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %cur.i, align 4
  %135 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast757 = ptrtoint ptr %134 to i32
  %sub.ptr.rhs.cast758 = ptrtoint ptr %136 to i32
  %sub.ptr.sub759 = sub i32 %sub.ptr.lhs.cast757, %sub.ptr.rhs.cast758
  %137 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mem, align 8
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %143 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %client, align 4
  %name771 = getelementptr inbounds %struct.nvif_object, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %name771 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %name771, align 8
  %147 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %handle163, align 4
  %149 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %142(ptr noundef %mem, ptr noundef nonnull @.str.41, ptr noundef %146, i32 noundef %148, ptr noundef %150, i32 noundef %sub.ptr.sub759, i32 noundef %125) #3
  %151 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %cur.i, align 4
  %incdec.ptr780 = getelementptr i32, ptr %152, i32 1
  store ptr %incdec.ptr780, ptr %cur.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %125, ptr %152, align 4
  %154 = ptrtoint ptr %handle672 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %handle672, align 4
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %seg.i, align 8
  %cmp794.not = icmp ult ptr %156, %158
  br i1 %cmp794.not, label %if.end739.if.end818_crit_edge, label %do.end812, !prof !61

if.end739.if.end818_crit_edge:                    ; preds = %if.end739
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end818

do.end812:                                        ; preds = %if.end739
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.10) #3
  br label %if.end818

if.end818:                                        ; preds = %do.end812, %if.end739.if.end818_crit_edge
  %159 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur.i, align 4
  %161 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i, align 4
  %cmp832.not = icmp ult ptr %160, %162
  br i1 %cmp832.not, label %if.end818.if.end856_crit_edge, label %do.end850, !prof !61

if.end818.if.end856_crit_edge:                    ; preds = %if.end818
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end856

do.end850:                                        ; preds = %if.end818
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 9, ptr noundef nonnull @.str.11) #3
  br label %if.end856

if.end856:                                        ; preds = %do.end850, %if.end818.if.end856_crit_edge
  %163 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cur.i, align 4
  %165 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast874 = ptrtoint ptr %164 to i32
  %sub.ptr.rhs.cast875 = ptrtoint ptr %166 to i32
  %sub.ptr.sub876 = sub i32 %sub.ptr.lhs.cast874, %sub.ptr.rhs.cast875
  %167 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mem, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %173 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %client, align 4
  %name888 = getelementptr inbounds %struct.nvif_object, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %name888 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %name888, align 8
  %177 = ptrtoint ptr %handle163 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %handle163, align 4
  %179 = ptrtoint ptr %name164 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %name164, align 8
  tail call void (ptr, ptr, ...) %172(ptr noundef %mem, ptr noundef nonnull @.str.42, ptr noundef %176, i32 noundef %178, ptr noundef %180, i32 noundef %sub.ptr.sub876, i32 noundef %155) #3
  %181 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur.i, align 4
  %incdec.ptr897 = getelementptr i32, ptr %182, i32 1
  store ptr %incdec.ptr897, ptr %cur.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %155, ptr %182, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end856, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end856 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !45, !47, !48, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo5039.c", i32 63, i32 4}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!8 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__func__.nv50_bo_move_m2mf, !1, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.13, !1, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.14, !1, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.15, !1, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.16, !1, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.17, !1, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.18, !1, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.20, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo5039.c", i32 85, i32 4}
!24 = !{ptr @.str.21, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.22, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.23, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.24, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.25, !23, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.26, !23, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.27, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo5039.c", i32 106, i32 3}
!32 = !{ptr @.str.28, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo5039.c", i32 112, i32 3}
!35 = !{ptr @.str.30, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.31, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.32, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.33, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.34, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.35, !34, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.36, !34, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.37, !34, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.38, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo5039.c", i32 126, i32 3}
!45 = !{ptr @__func__.nv50_bo_move_init, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo5039.c", i32 146, i32 2}
!47 = !{ptr @.str.39, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.40, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nouveau_bo5039.c", i32 147, i32 2}
!50 = !{ptr @.str.41, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.42, !49, !"<string literal>", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 2000, i32 1}
