; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/corec37d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/corec37d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.114, ptr, ptr, ptr, ptr, ptr }
%struct.anon.114 = type { ptr }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.nv50_outp_func = type { ptr, ptr }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.97, %struct.anon.98, %struct.anon.99, ptr, %struct.anon.100, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.101, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.113 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.97 = type { ptr, i32, i32, i8 }
%struct.anon.98 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.99 = type { i64, i64 }
%struct.anon.100 = type { i32, i64 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/corec37d.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.corec37d_wndw_owner = private unnamed_addr constant [20 x i8] c"corec37d_wndw_owner\00", align 1
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_WINDOW_SET_CONTROL(i)\0A\00", [40 x i8] zeroinitializer }, align 32
@__func__.corec37d_update = private unnamed_addr constant [16 x i8] c"corec37d_update\00", align 1
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_SET_NOTIFIER_CONTROL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_SET_INTERLOCK_FLAGS\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_SET_WINDOW_INTERLOCK_FLAGS\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_UPDATE\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dispCaps\00", [23 x i8] zeroinitializer }, align 32
@corec37d_caps_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 112, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed to init notifier caps region: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"corec37d_caps_init\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@corec37d_caps_init._entry_ptr = internal global ptr @corec37d_caps_init._entry, section ".printk_index", align 4
@corec37d_caps_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.14, ptr @.str, i32 120, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Failed to map notifier caps region: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@corec37d_caps_init._entry_ptr.19 = internal global ptr @corec37d_caps_init._entry.17, section ".printk_index", align 4
@corec37d = internal constant { %struct.nv50_core_func, [52 x i8] } { %struct.nv50_core_func { ptr @corec37d_init, ptr @corec37d_ntfy_init, ptr @corec37d_caps_init, ptr @corec37d_ntfy_wait_done, ptr @corec37d_update, %struct.anon.114 { ptr @corec37d_wndw_owner }, ptr @headc37d, ptr @crcc37d, ptr null, ptr null, ptr @sorc37d }, [52 x i8] zeroinitializer }, align 32
@headc37d = external dso_local constant %struct.nv50_head_func, align 4
@crcc37d = external dso_local constant %struct.nv50_crc_func, align 4
@sorc37d = external dso_local constant %struct.nv50_outp_func, align 4
@__func__.corec37d_init = private unnamed_addr constant [14 x i8] c"corec37d_init\00", align 1
@.str.20 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_SET_CONTEXT_DMA_NOTIFIER\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_WINDOW_SET_WINDOW_FORMAT_USAGE_BOUNDS(i)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_WINDOW_SET_WINDOW_ROTATED_FORMAT_USAGE_BOUNDS(i)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_WINDOW_SET_WINDOW_USAGE_BOUNDS(i)\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 44, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 61, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 67, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 69, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 107, i32 46 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 110, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 118, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [9 x i8] c"corec37d\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 161, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 137, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 140, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 149, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @corec37d_caps_init._entry, ptr @corec37d_caps_init._entry.17, ptr @corec37d_caps_init._entry_ptr, ptr @corec37d_caps_init._entry_ptr.19, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @corec37d, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corec37d_caps_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corec37d_caps_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @corec37d to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @corec37d_wndw_owner(ptr nocapture noundef readonly %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push1 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %push1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push1, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 16
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.PUSH_WAIT.exit_crit_edge, label %if.then.i

entry.PUSH_WAIT.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %PUSH_WAIT.exit

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.PUSH_WAIT.exit_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.PUSH_WAIT.exit_crit_edge:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %PUSH_WAIT.exit

PUSH_WAIT.exit:                                   ; preds = %if.then.i.PUSH_WAIT.exit_crit_edge, %entry.PUSH_WAIT.exit_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 16
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %name148 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  br label %do.body3

do.body3:                                         ; preds = %if.end238.do.body3_crit_edge, %PUSH_WAIT.exit
  %i.0328 = phi i32 [ 0, %PUSH_WAIT.exit ], [ %inc, %if.end238.do.body3_crit_edge ]
  %mul = shl nuw nsw i32 %i.0328, 7
  %add = add nuw nsw i32 %mul, 4096
  %11 = or i32 %add, 262144
  %12 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur.i, align 4
  %14 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %seg.i, align 8
  %cmp68.not = icmp ult ptr %13, %15
  br i1 %cmp68.not, label %do.body3.if.end93_crit_edge, label %do.end87, !prof !50

do.body3.if.end93_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end93

do.end87:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end93

if.end93:                                         ; preds = %do.end87, %do.body3.if.end93_crit_edge
  %16 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur.i, align 4
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %cmp106.not = icmp ult ptr %17, %19
  br i1 %cmp106.not, label %if.end93.if.end131_crit_edge, label %do.end125, !prof !50

if.end93.if.end131_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end131

do.end125:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end131

if.end131:                                        ; preds = %do.end125, %if.end93.if.end131_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %22 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %23 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %24 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mem, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %30 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 8
  %34 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %handle, align 4
  %36 = ptrtoint ptr %name148 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name148, align 8
  tail call void (ptr, ptr, ...) %29(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %33, i32 noundef %35, ptr noundef %37, i32 noundef %sub.ptr.sub, i32 noundef %11, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.corec37d_wndw_owner) #5
  %38 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %39, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %11, ptr %39, align 4
  %41 = lshr i32 %i.0328, 1
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %seg.i, align 8
  %cmp174.not = icmp ult ptr %42, %44
  br i1 %cmp174.not, label %if.end131.if.end199_crit_edge, label %do.end193, !prof !50

if.end131.if.end199_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end199

do.end193:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end199

if.end199:                                        ; preds = %do.end193, %if.end131.if.end199_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i, align 4
  %cmp213.not = icmp ult ptr %46, %48
  br i1 %cmp213.not, label %if.end199.if.end238_crit_edge, label %do.end232, !prof !50

if.end199.if.end238_crit_edge:                    ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

do.end232:                                        ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end238

if.end238:                                        ; preds = %do.end232, %if.end199.if.end238_crit_edge
  %49 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cur.i, align 4
  %51 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast256 = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast257 = ptrtoint ptr %52 to i32
  %sub.ptr.sub258 = sub i32 %sub.ptr.lhs.cast256, %sub.ptr.rhs.cast257
  %53 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mem, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %59 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client, align 4
  %name270 = getelementptr inbounds %struct.nvif_object, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %name270 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name270, align 8
  %63 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %handle, align 4
  %65 = ptrtoint ptr %name148 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name148, align 8
  tail call void (ptr, ptr, ...) %58(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %62, i32 noundef %64, ptr noundef %66, i32 noundef %sub.ptr.sub258, i32 noundef %41) #5
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %incdec.ptr279 = getelementptr i32, ptr %68, i32 1
  store ptr %incdec.ptr279, ptr %cur.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %41, ptr %68, align 4
  %inc = add nuw nsw i32 %i.0328, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %if.end238.cleanup_crit_edge, label %if.end238.do.body3_crit_edge

if.end238.do.body3_crit_edge:                     ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

if.end238.cleanup_crit_edge:                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end238.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.i.cleanup_crit_edge ], [ 0, %if.end238.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @corec37d_update(ptr nocapture noundef readonly %core, ptr nocapture noundef readonly %interlock, i1 noundef zeroext %ntfy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push1 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %push1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push1, align 8
  %add = select i1 %ntfy, i32 9, i32 5
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 %add
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 %add
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  br i1 %ntfy, label %if.end46, label %if.end.if.end342_crit_edge

if.end.if.end342_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end342

if.end46:                                         ; preds = %if.end
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %12, %14
  br i1 %cmp.not, label %if.end46.if.end82_crit_edge, label %do.end76, !prof !50

if.end46.if.end82_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end82

do.end76:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end82

if.end82:                                         ; preds = %do.end76, %if.end46.if.end82_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i, align 4
  %cmp95.not = icmp ult ptr %16, %18
  br i1 %cmp95.not, label %if.end82.if.end119_crit_edge, label %do.end113, !prof !50

if.end82.if.end119_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end119

do.end113:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end119

if.end119:                                        ; preds = %do.end113, %if.end82.if.end119_crit_edge
  %19 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %21 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %22 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %23 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mem, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %29 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %33 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handle, align 4
  %name136 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %35 = ptrtoint ptr %name136 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name136, align 8
  tail call void (ptr, ptr, ...) %28(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %32, i32 noundef %34, ptr noundef %36, i32 noundef %sub.ptr.sub, i32 noundef 262668, i32 noundef 524, i32 noundef 1, ptr noundef nonnull @__func__.corec37d_update) #5
  %37 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %38, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 262668, ptr %38, align 4
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seg.i, align 8
  %cmp153.not = icmp ult ptr %40, %42
  br i1 %cmp153.not, label %if.end119.if.end177_crit_edge, label %do.end171, !prof !50

if.end119.if.end177_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end177

do.end171:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end177

if.end177:                                        ; preds = %do.end171, %if.end119.if.end177_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i, align 4
  %cmp191.not = icmp ult ptr %44, %46
  br i1 %cmp191.not, label %if.end177.if.end215_crit_edge, label %do.end209, !prof !50

if.end177.if.end215_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end215

do.end209:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end215

if.end215:                                        ; preds = %do.end209, %if.end177.if.end215_crit_edge
  %47 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cur.i, align 4
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast233 = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast234 = ptrtoint ptr %50 to i32
  %sub.ptr.sub235 = sub i32 %sub.ptr.lhs.cast233, %sub.ptr.rhs.cast234
  %51 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mem, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %57 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %client, align 4
  %name247 = getelementptr inbounds %struct.nvif_object, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %name247 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name247, align 8
  %61 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %handle, align 4
  %63 = ptrtoint ptr %name136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name136, align 8
  tail call void (ptr, ptr, ...) %56(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef %sub.ptr.sub235, i32 noundef 4096) #5
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %incdec.ptr256 = getelementptr i32, ptr %66, i32 1
  store ptr %incdec.ptr256, ptr %cur.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4096, ptr %66, align 4
  br label %if.end342

if.end342:                                        ; preds = %if.end215, %if.end.if.end342_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %seg.i, align 8
  %cmp359.not = icmp ult ptr %69, %71
  br i1 %cmp359.not, label %if.end342.if.end383_crit_edge, label %do.end377, !prof !50

if.end342.if.end383_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end383

do.end377:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end383

if.end383:                                        ; preds = %do.end377, %if.end342.if.end383_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %cmp397.not = icmp ult ptr %73, %75
  br i1 %cmp397.not, label %if.end383.if.end421_crit_edge, label %do.end415, !prof !50

if.end383.if.end421_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end421

do.end415:                                        ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end421

if.end421:                                        ; preds = %do.end415, %if.end383.if.end421_crit_edge
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %mem435 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map437 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %78 = ptrtoint ptr %map437 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %map437, align 8
  %sub.ptr.lhs.cast439 = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast440 = ptrtoint ptr %79 to i32
  %sub.ptr.sub441 = sub i32 %sub.ptr.lhs.cast439, %sub.ptr.rhs.cast440
  %80 = ptrtoint ptr %mem435 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mem435, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %client451 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %86 = ptrtoint ptr %client451 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client451, align 4
  %name453 = getelementptr inbounds %struct.nvif_object, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %name453 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %name453, align 8
  %handle454 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %90 = ptrtoint ptr %handle454 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %handle454, align 4
  %name455 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %92 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name455, align 8
  tail call void (ptr, ptr, ...) %85(ptr noundef %mem435, ptr noundef nonnull @.str.5, ptr noundef %89, i32 noundef %91, ptr noundef %93, i32 noundef %sub.ptr.sub441, i32 noundef 524824, i32 noundef 536, i32 noundef 2, ptr noundef nonnull @__func__.corec37d_update) #5
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %incdec.ptr462 = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr462, ptr %cur.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 524824, ptr %95, align 4
  %arrayidx = getelementptr i32, ptr %interlock, i32 1
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx, align 4
  %99 = load ptr, ptr %cur.i, align 4
  %100 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %seg.i, align 8
  %cmp474.not = icmp ult ptr %99, %101
  br i1 %cmp474.not, label %if.end421.if.end498_crit_edge, label %do.end492, !prof !50

if.end421.if.end498_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end498

do.end492:                                        ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end498

if.end498:                                        ; preds = %do.end492, %if.end421.if.end498_crit_edge
  %102 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cur.i, align 4
  %104 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %end.i, align 4
  %cmp512.not = icmp ult ptr %103, %105
  br i1 %cmp512.not, label %if.end498.if.end536_crit_edge, label %do.end530, !prof !50

if.end498.if.end536_crit_edge:                    ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end536

do.end530:                                        ; preds = %if.end498
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end536

if.end536:                                        ; preds = %do.end530, %if.end498.if.end536_crit_edge
  %106 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cur.i, align 4
  %108 = ptrtoint ptr %map437 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %map437, align 8
  %sub.ptr.lhs.cast554 = ptrtoint ptr %107 to i32
  %sub.ptr.rhs.cast555 = ptrtoint ptr %109 to i32
  %sub.ptr.sub556 = sub i32 %sub.ptr.lhs.cast554, %sub.ptr.rhs.cast555
  %110 = ptrtoint ptr %mem435 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mem435, align 8
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %116 = ptrtoint ptr %client451 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %client451, align 4
  %name568 = getelementptr inbounds %struct.nvif_object, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %name568 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name568, align 8
  %120 = ptrtoint ptr %handle454 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %handle454, align 4
  %122 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name455, align 8
  tail call void (ptr, ptr, ...) %115(ptr noundef %mem435, ptr noundef nonnull @.str.9, ptr noundef %119, i32 noundef %121, ptr noundef %123, i32 noundef %sub.ptr.sub556, i32 noundef %98) #5
  %124 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %cur.i, align 4
  %incdec.ptr577 = getelementptr i32, ptr %125, i32 1
  store ptr %incdec.ptr577, ptr %cur.i, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %98, ptr %125, align 4
  %arrayidx585 = getelementptr i32, ptr %interlock, i32 4
  %127 = ptrtoint ptr %arrayidx585 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx585, align 4
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %seg.i, align 8
  %cmp590.not = icmp ult ptr %129, %131
  br i1 %cmp590.not, label %if.end536.if.end614_crit_edge, label %do.end608, !prof !50

if.end536.if.end614_crit_edge:                    ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end614

do.end608:                                        ; preds = %if.end536
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end614

if.end614:                                        ; preds = %do.end608, %if.end536.if.end614_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i, align 4
  %cmp628.not = icmp ult ptr %133, %135
  br i1 %cmp628.not, label %if.end614.if.end652_crit_edge, label %do.end646, !prof !50

if.end614.if.end652_crit_edge:                    ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end652

do.end646:                                        ; preds = %if.end614
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end652

if.end652:                                        ; preds = %do.end646, %if.end614.if.end652_crit_edge
  %136 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur.i, align 4
  %138 = ptrtoint ptr %map437 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map437, align 8
  %sub.ptr.lhs.cast670 = ptrtoint ptr %137 to i32
  %sub.ptr.rhs.cast671 = ptrtoint ptr %139 to i32
  %sub.ptr.sub672 = sub i32 %sub.ptr.lhs.cast670, %sub.ptr.rhs.cast671
  %140 = ptrtoint ptr %mem435 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %mem435, align 8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %141, align 4
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %143, align 4
  %146 = ptrtoint ptr %client451 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %client451, align 4
  %name684 = getelementptr inbounds %struct.nvif_object, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %name684 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name684, align 8
  %150 = ptrtoint ptr %handle454 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %handle454, align 4
  %152 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name455, align 8
  tail call void (ptr, ptr, ...) %145(ptr noundef %mem435, ptr noundef nonnull @.str.10, ptr noundef %149, i32 noundef %151, ptr noundef %153, i32 noundef %sub.ptr.sub672, i32 noundef %128) #5
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %incdec.ptr693 = getelementptr i32, ptr %155, i32 1
  store ptr %incdec.ptr693, ptr %cur.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %128, ptr %155, align 4
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %seg.i, align 8
  %cmp765.not = icmp ult ptr %157, %159
  br i1 %cmp765.not, label %if.end652.if.end789_crit_edge, label %do.end783, !prof !50

if.end652.if.end789_crit_edge:                    ; preds = %if.end652
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end789

do.end783:                                        ; preds = %if.end652
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end789

if.end789:                                        ; preds = %do.end783, %if.end652.if.end789_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %162 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %end.i, align 4
  %cmp803.not = icmp ult ptr %161, %163
  br i1 %cmp803.not, label %if.end789.if.end827_crit_edge, label %do.end821, !prof !50

if.end789.if.end827_crit_edge:                    ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end827

do.end821:                                        ; preds = %if.end789
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end827

if.end827:                                        ; preds = %do.end821, %if.end789.if.end827_crit_edge
  %164 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %cur.i, align 4
  %166 = ptrtoint ptr %map437 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %map437, align 8
  %sub.ptr.lhs.cast845 = ptrtoint ptr %165 to i32
  %sub.ptr.rhs.cast846 = ptrtoint ptr %167 to i32
  %sub.ptr.sub847 = sub i32 %sub.ptr.lhs.cast845, %sub.ptr.rhs.cast846
  %168 = ptrtoint ptr %mem435 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mem435, align 8
  %170 = ptrtoint ptr %169 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %169, align 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %171, align 4
  %174 = ptrtoint ptr %client451 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %client451, align 4
  %name859 = getelementptr inbounds %struct.nvif_object, ptr %175, i32 0, i32 2
  %176 = ptrtoint ptr %name859 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name859, align 8
  %178 = ptrtoint ptr %handle454 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %handle454, align 4
  %180 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %name455, align 8
  tail call void (ptr, ptr, ...) %173(ptr noundef %mem435, ptr noundef nonnull @.str.5, ptr noundef %177, i32 noundef %179, ptr noundef %181, i32 noundef %sub.ptr.sub847, i32 noundef 262656, i32 noundef 512, i32 noundef 1, ptr noundef nonnull @__func__.corec37d_update) #5
  %182 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cur.i, align 4
  %incdec.ptr868 = getelementptr i32, ptr %183, i32 1
  store ptr %incdec.ptr868, ptr %cur.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 262656, ptr %183, align 4
  %185 = load ptr, ptr %cur.i, align 4
  %186 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %seg.i, align 8
  %cmp880.not = icmp ult ptr %185, %187
  br i1 %cmp880.not, label %if.end827.if.end904_crit_edge, label %do.end898, !prof !50

if.end827.if.end904_crit_edge:                    ; preds = %if.end827
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end904

do.end898:                                        ; preds = %if.end827
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end904

if.end904:                                        ; preds = %do.end898, %if.end827.if.end904_crit_edge
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %end.i, align 4
  %cmp918.not = icmp ult ptr %189, %191
  br i1 %cmp918.not, label %if.end904.if.end942_crit_edge, label %do.end936, !prof !50

if.end904.if.end942_crit_edge:                    ; preds = %if.end904
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end942

do.end936:                                        ; preds = %if.end904
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end942

if.end942:                                        ; preds = %do.end936, %if.end904.if.end942_crit_edge
  %192 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %cur.i, align 4
  %194 = ptrtoint ptr %map437 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %map437, align 8
  %sub.ptr.lhs.cast960 = ptrtoint ptr %193 to i32
  %sub.ptr.rhs.cast961 = ptrtoint ptr %195 to i32
  %sub.ptr.sub962 = sub i32 %sub.ptr.lhs.cast960, %sub.ptr.rhs.cast961
  %196 = ptrtoint ptr %mem435 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mem435, align 8
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %202 = ptrtoint ptr %client451 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %client451, align 4
  %name974 = getelementptr inbounds %struct.nvif_object, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %name974 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name974, align 8
  %206 = ptrtoint ptr %handle454 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %handle454, align 4
  %208 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %name455, align 8
  tail call void (ptr, ptr, ...) %201(ptr noundef %mem435, ptr noundef nonnull @.str.11, ptr noundef %205, i32 noundef %207, ptr noundef %209, i32 noundef %sub.ptr.sub962, i32 noundef 1) #5
  %210 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %cur.i, align 4
  %incdec.ptr983 = getelementptr i32, ptr %211, i32 1
  store ptr %incdec.ptr983, ptr %cur.i, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 1, ptr %211, align 4
  br i1 %ntfy, label %if.end1040, label %if.end942.if.end1280_crit_edge

if.end942.if.end1280_crit_edge:                   ; preds = %if.end942
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1280

if.end1040:                                       ; preds = %if.end942
  %213 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cur.i, align 4
  %215 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %seg.i, align 8
  %cmp1057.not = icmp ult ptr %214, %216
  br i1 %cmp1057.not, label %if.end1040.if.end1081_crit_edge, label %do.end1075, !prof !50

if.end1040.if.end1081_crit_edge:                  ; preds = %if.end1040
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1081

do.end1075:                                       ; preds = %if.end1040
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1081

if.end1081:                                       ; preds = %do.end1075, %if.end1040.if.end1081_crit_edge
  %217 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %cur.i, align 4
  %219 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %end.i, align 4
  %cmp1095.not = icmp ult ptr %218, %220
  br i1 %cmp1095.not, label %if.end1081.if.end1119_crit_edge, label %do.end1113, !prof !50

if.end1081.if.end1119_crit_edge:                  ; preds = %if.end1081
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1119

do.end1113:                                       ; preds = %if.end1081
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1119

if.end1119:                                       ; preds = %do.end1113, %if.end1081.if.end1119_crit_edge
  %221 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %cur.i, align 4
  %223 = ptrtoint ptr %map437 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %map437, align 8
  %sub.ptr.lhs.cast1137 = ptrtoint ptr %222 to i32
  %sub.ptr.rhs.cast1138 = ptrtoint ptr %224 to i32
  %sub.ptr.sub1139 = sub i32 %sub.ptr.lhs.cast1137, %sub.ptr.rhs.cast1138
  %225 = ptrtoint ptr %mem435 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %mem435, align 8
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %231 = ptrtoint ptr %client451 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %client451, align 4
  %name1151 = getelementptr inbounds %struct.nvif_object, ptr %232, i32 0, i32 2
  %233 = ptrtoint ptr %name1151 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %name1151, align 8
  %235 = ptrtoint ptr %handle454 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %handle454, align 4
  %237 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %name455, align 8
  tail call void (ptr, ptr, ...) %230(ptr noundef %mem435, ptr noundef nonnull @.str.5, ptr noundef %234, i32 noundef %236, ptr noundef %238, i32 noundef %sub.ptr.sub1139, i32 noundef 262668, i32 noundef 524, i32 noundef 1, ptr noundef nonnull @__func__.corec37d_update) #5
  %239 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1160 = getelementptr i32, ptr %240, i32 1
  store ptr %incdec.ptr1160, ptr %cur.i, align 4
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 262668, ptr %240, align 4
  %242 = load ptr, ptr %cur.i, align 4
  %243 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %seg.i, align 8
  %cmp1172.not = icmp ult ptr %242, %244
  br i1 %cmp1172.not, label %if.end1119.if.end1196_crit_edge, label %do.end1190, !prof !50

if.end1119.if.end1196_crit_edge:                  ; preds = %if.end1119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1196

do.end1190:                                       ; preds = %if.end1119
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end1196

if.end1196:                                       ; preds = %do.end1190, %if.end1119.if.end1196_crit_edge
  %245 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %cur.i, align 4
  %247 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %end.i, align 4
  %cmp1210.not = icmp ult ptr %246, %248
  br i1 %cmp1210.not, label %if.end1196.if.end1234_crit_edge, label %do.end1228, !prof !50

if.end1196.if.end1234_crit_edge:                  ; preds = %if.end1196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1234

do.end1228:                                       ; preds = %if.end1196
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1234

if.end1234:                                       ; preds = %do.end1228, %if.end1196.if.end1234_crit_edge
  %249 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %cur.i, align 4
  %251 = ptrtoint ptr %map437 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %map437, align 8
  %sub.ptr.lhs.cast1252 = ptrtoint ptr %250 to i32
  %sub.ptr.rhs.cast1253 = ptrtoint ptr %252 to i32
  %sub.ptr.sub1254 = sub i32 %sub.ptr.lhs.cast1252, %sub.ptr.rhs.cast1253
  %253 = ptrtoint ptr %mem435 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %mem435, align 8
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %254, align 4
  %257 = ptrtoint ptr %256 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %256, align 4
  %259 = ptrtoint ptr %client451 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %client451, align 4
  %name1266 = getelementptr inbounds %struct.nvif_object, ptr %260, i32 0, i32 2
  %261 = ptrtoint ptr %name1266 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %name1266, align 8
  %263 = ptrtoint ptr %handle454 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %handle454, align 4
  %265 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %name455, align 8
  tail call void (ptr, ptr, ...) %258(ptr noundef %mem435, ptr noundef nonnull @.str.7, ptr noundef %262, i32 noundef %264, ptr noundef %266, i32 noundef %sub.ptr.sub1254, i32 noundef 0) #5
  %267 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1275 = getelementptr i32, ptr %268, i32 1
  store ptr %incdec.ptr1275, ptr %cur.i, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 0, ptr %268, align 4
  br label %if.end1280

if.end1280:                                       ; preds = %if.end1234, %if.end942.if.end1280_crit_edge
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %270 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %kick.i, align 4
  tail call void %271(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end1280, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1280 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @corec37d_ntfy_wait_done(ptr noundef %bo, i32 noundef %offset, ptr noundef %device) #0 align 64 {
entry:
  %_wait = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #5
  %0 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %device, i64 noundef 2000000000, ptr noundef nonnull %_wait) #5
  %div9 = lshr i32 %offset, 2
  %call11 = call i32 @nouveau_bo_rd32(ptr noundef %bo, i32 noundef %div9) #5
  %shr.mask12 = and i32 %call11, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %shr.mask12)
  %cmp13 = icmp eq i32 %shr.mask12, -2147483648
  br i1 %cmp13, label %entry.do.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.body:                                          ; preds = %if.end
  %call = call i32 @nouveau_bo_rd32(ptr noundef %bo, i32 noundef %div9) #5
  %shr.mask = and i32 %call, -1073741824
  %cmp = icmp eq i32 %shr.mask, -2147483648
  br i1 %cmp, label %do.body.do.end_crit_edge, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %entry.if.end_crit_edge
  call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #5
  %call2 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait) #5
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call2)
  %cmp3 = icmp sgt i64 %call2, -1
  br i1 %cmp3, label %do.body, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge, %entry.do.end_crit_edge
  %_taken.1 = phi i64 [ 0, %entry.do.end_crit_edge ], [ %call2, %do.body.do.end_crit_edge ], [ %call2, %if.end.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #5
  %1 = call i64 @llvm.smin.i64(i64 %_taken.1, i64 0)
  %2 = trunc i64 %1 to i32
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @corec37d_ntfy_init(ptr noundef %bo, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div13 = lshr i32 %offset, 2
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %div13, i32 noundef 0) #5
  %add2 = add nuw nsw i32 %div13, 1
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %add2, i32 noundef 0) #5
  %add4 = add nuw nsw i32 %div13, 2
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %add4, i32 noundef 0) #5
  %add6 = add nuw nsw i32 %div13, 3
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %add6, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @corec37d_caps_init(ptr noundef %drm, ptr noundef %disp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %disp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disp, align 8
  %caps = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 2
  %call = tail call i32 @nvif_object_ctor(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 50035, ptr noundef null, i32 noundef 0, ptr noundef %caps) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %drm3 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %drm3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm3, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef %name, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call i32 @nvif_object_map(ptr noundef %caps, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %do.body11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %drm17 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %drm17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drm17, align 8
  %dev18 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev18, align 8
  %dev19 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev19, align 4
  %name20 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.18, ptr noundef %name20, i32 noundef %call8) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %if.end.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ %call, %do.body ], [ %call8, %do.body11 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @corec37d_new(ptr noundef %drm, i32 noundef %oclass, ptr noundef %pcore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @core507d_new_(ptr noundef nonnull @corec37d, ptr noundef %drm, i32 noundef %oclass, ptr noundef %pcore) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @core507d_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @corec37d_init(ptr nocapture noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %push1 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %push1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push1, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 42
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end43_crit_edge, label %if.then.i

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 42) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end43_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i.if.end43_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end43:                                         ; preds = %if.then.i.if.end43_crit_edge, %entry.if.end43_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 42
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end43.if.end79_crit_edge, label %do.end73, !prof !50

if.end43.if.end79_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79

do.end73:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.end43.if.end79_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp92.not = icmp ult ptr %12, %14
  br i1 %cmp92.not, label %if.end79.if.end116_crit_edge, label %do.end110, !prof !50

if.end79.if.end116_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

do.end110:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end116

if.end116:                                        ; preds = %do.end110, %if.end79.if.end116_crit_edge
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
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %handle, align 4
  %name133 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262664, i32 noundef 520, i32 noundef 1, ptr noundef nonnull @__func__.corec37d_init) #5
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262664, ptr %34, align 4
  %handle147 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 4, i32 3
  %36 = ptrtoint ptr %handle147 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle147, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp152.not = icmp ult ptr %38, %40
  br i1 %cmp152.not, label %if.end116.if.end176_crit_edge, label %do.end170, !prof !50

if.end116.if.end176_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end176

do.end170:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end176

if.end176:                                        ; preds = %do.end170, %if.end116.if.end176_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp190.not = icmp ult ptr %42, %44
  br i1 %cmp190.not, label %if.end176.if.end214_crit_edge, label %do.end208, !prof !50

if.end176.if.end214_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end214

do.end208:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end214

if.end214:                                        ; preds = %do.end208, %if.end176.if.end214_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast232 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast233 = ptrtoint ptr %48 to i32
  %sub.ptr.sub234 = sub i32 %sub.ptr.lhs.cast232, %sub.ptr.rhs.cast233
  %49 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mem, align 8
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client, align 4
  %name246 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name246 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name246, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.20, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub234, i32 noundef %37) #5
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr255 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr255, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %64, align 4
  br label %do.body262

do.body262:                                       ; preds = %if.end1001.do.body262_crit_edge, %if.end214
  %i.01184 = phi i32 [ 0, %if.end214 ], [ %inc, %if.end1001.do.body262_crit_edge ]
  %mul264 = shl nuw nsw i32 %i.01184, 7
  %add266 = add nuw nsw i32 %mul264, 4100
  %66 = or i32 %add266, 524288
  %67 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cur.i, align 4
  %69 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %seg.i, align 8
  %cmp384.not = icmp ult ptr %68, %70
  br i1 %cmp384.not, label %do.body262.if.end409_crit_edge, label %do.end403, !prof !50

do.body262.if.end409_crit_edge:                   ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end409

do.end403:                                        ; preds = %do.body262
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end409

if.end409:                                        ; preds = %do.end403, %do.body262.if.end409_crit_edge
  %71 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cur.i, align 4
  %73 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i, align 4
  %cmp423.not = icmp ult ptr %72, %74
  br i1 %cmp423.not, label %if.end409.if.end448_crit_edge, label %do.end442, !prof !50

if.end409.if.end448_crit_edge:                    ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end448

do.end442:                                        ; preds = %if.end409
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end448

if.end448:                                        ; preds = %do.end442, %if.end409.if.end448_crit_edge
  %75 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cur.i, align 4
  %77 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast466 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast467 = ptrtoint ptr %78 to i32
  %sub.ptr.sub468 = sub i32 %sub.ptr.lhs.cast466, %sub.ptr.rhs.cast467
  %79 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mem, align 8
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %client, align 4
  %name480 = getelementptr inbounds %struct.nvif_object, ptr %86, i32 0, i32 2
  %87 = ptrtoint ptr %name480 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name480, align 8
  %89 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %handle, align 4
  %91 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %84(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %88, i32 noundef %90, ptr noundef %92, i32 noundef %sub.ptr.sub468, i32 noundef %66, i32 noundef %add266, i32 noundef 2, ptr noundef nonnull @__func__.corec37d_init) #5
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %incdec.ptr491 = getelementptr i32, ptr %94, i32 1
  store ptr %incdec.ptr491, ptr %cur.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %66, ptr %94, align 4
  %96 = load ptr, ptr %cur.i, align 4
  %97 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %seg.i, align 8
  %cmp503.not = icmp ult ptr %96, %98
  br i1 %cmp503.not, label %if.end448.if.end528_crit_edge, label %do.end522, !prof !50

if.end448.if.end528_crit_edge:                    ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end528

do.end522:                                        ; preds = %if.end448
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end528

if.end528:                                        ; preds = %do.end522, %if.end448.if.end528_crit_edge
  %99 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %cur.i, align 4
  %101 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i, align 4
  %cmp542.not = icmp ult ptr %100, %102
  br i1 %cmp542.not, label %if.end528.if.end567_crit_edge, label %do.end561, !prof !50

if.end528.if.end567_crit_edge:                    ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end567

do.end561:                                        ; preds = %if.end528
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end567

if.end567:                                        ; preds = %do.end561, %if.end528.if.end567_crit_edge
  %103 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %cur.i, align 4
  %105 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast585 = ptrtoint ptr %104 to i32
  %sub.ptr.rhs.cast586 = ptrtoint ptr %106 to i32
  %sub.ptr.sub587 = sub i32 %sub.ptr.lhs.cast585, %sub.ptr.rhs.cast586
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
  %name599 = getelementptr inbounds %struct.nvif_object, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %name599 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %name599, align 8
  %117 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %handle, align 4
  %119 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %112(ptr noundef %mem, ptr noundef nonnull @.str.21, ptr noundef %116, i32 noundef %118, ptr noundef %120, i32 noundef %sub.ptr.sub587, i32 noundef 31) #5
  %121 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %cur.i, align 4
  %incdec.ptr608 = getelementptr i32, ptr %122, i32 1
  store ptr %incdec.ptr608, ptr %cur.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 31, ptr %122, align 4
  %124 = load ptr, ptr %cur.i, align 4
  %125 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %seg.i, align 8
  %cmp620.not = icmp ult ptr %124, %126
  br i1 %cmp620.not, label %if.end567.if.end645_crit_edge, label %do.end639, !prof !50

if.end567.if.end645_crit_edge:                    ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end645

do.end639:                                        ; preds = %if.end567
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end645

if.end645:                                        ; preds = %do.end639, %if.end567.if.end645_crit_edge
  %127 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %cur.i, align 4
  %129 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %end.i, align 4
  %cmp659.not = icmp ult ptr %128, %130
  br i1 %cmp659.not, label %if.end645.if.end793_crit_edge, label %do.end678, !prof !50

if.end645.if.end793_crit_edge:                    ; preds = %if.end645
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end793

do.end678:                                        ; preds = %if.end645
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end793

if.end793:                                        ; preds = %do.end678, %if.end645.if.end793_crit_edge
  %131 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %cur.i, align 4
  %133 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast702 = ptrtoint ptr %132 to i32
  %sub.ptr.rhs.cast703 = ptrtoint ptr %134 to i32
  %sub.ptr.sub704 = sub i32 %sub.ptr.lhs.cast702, %sub.ptr.rhs.cast703
  %135 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %mem, align 8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %138, align 4
  %141 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %client, align 4
  %name716 = getelementptr inbounds %struct.nvif_object, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %name716 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %name716, align 8
  %145 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %handle, align 4
  %147 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %140(ptr noundef %mem, ptr noundef nonnull @.str.22, ptr noundef %144, i32 noundef %146, ptr noundef %148, i32 noundef %sub.ptr.sub704, i32 noundef 0) #5
  %149 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %cur.i, align 4
  %incdec.ptr725 = getelementptr i32, ptr %150, i32 1
  store ptr %incdec.ptr725, ptr %cur.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %150, align 4
  %add735 = add nuw nsw i32 %mul264, 4112
  %152 = or i32 %add735, 262144
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %seg.i, align 8
  %cmp818.not = icmp ult ptr %153, %155
  br i1 %cmp818.not, label %if.end793.if.end843_crit_edge, label %do.end837, !prof !50

if.end793.if.end843_crit_edge:                    ; preds = %if.end793
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end843

do.end837:                                        ; preds = %if.end793
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end843

if.end843:                                        ; preds = %do.end837, %if.end793.if.end843_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i, align 4
  %cmp857.not = icmp ult ptr %157, %159
  br i1 %cmp857.not, label %if.end843.if.end882_crit_edge, label %do.end876, !prof !50

if.end843.if.end882_crit_edge:                    ; preds = %if.end843
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end882

do.end876:                                        ; preds = %if.end843
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end882

if.end882:                                        ; preds = %do.end876, %if.end843.if.end882_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %162 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast900 = ptrtoint ptr %161 to i32
  %sub.ptr.rhs.cast901 = ptrtoint ptr %163 to i32
  %sub.ptr.sub902 = sub i32 %sub.ptr.lhs.cast900, %sub.ptr.rhs.cast901
  %164 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mem, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %170 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %client, align 4
  %name914 = getelementptr inbounds %struct.nvif_object, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %name914 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name914, align 8
  %174 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %handle, align 4
  %176 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %169(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %173, i32 noundef %175, ptr noundef %177, i32 noundef %sub.ptr.sub902, i32 noundef %152, i32 noundef %add735, i32 noundef 1, ptr noundef nonnull @__func__.corec37d_init) #5
  %178 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cur.i, align 4
  %incdec.ptr925 = getelementptr i32, ptr %179, i32 1
  store ptr %incdec.ptr925, ptr %cur.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %152, ptr %179, align 4
  %181 = load ptr, ptr %cur.i, align 4
  %182 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %seg.i, align 8
  %cmp937.not = icmp ult ptr %181, %183
  br i1 %cmp937.not, label %if.end882.if.end962_crit_edge, label %do.end956, !prof !50

if.end882.if.end962_crit_edge:                    ; preds = %if.end882
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end962

do.end956:                                        ; preds = %if.end882
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef nonnull @.str.3) #5
  br label %if.end962

if.end962:                                        ; preds = %do.end956, %if.end882.if.end962_crit_edge
  %184 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cur.i, align 4
  %186 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %end.i, align 4
  %cmp976.not = icmp ult ptr %185, %187
  br i1 %cmp976.not, label %if.end962.if.end1001_crit_edge, label %do.end995, !prof !50

if.end962.if.end1001_crit_edge:                   ; preds = %if.end962
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end1001

do.end995:                                        ; preds = %if.end962
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 9, ptr noundef nonnull @.str.4) #5
  br label %if.end1001

if.end1001:                                       ; preds = %do.end995, %if.end962.if.end1001_crit_edge
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast1019 = ptrtoint ptr %189 to i32
  %sub.ptr.rhs.cast1020 = ptrtoint ptr %191 to i32
  %sub.ptr.sub1021 = sub i32 %sub.ptr.lhs.cast1019, %sub.ptr.rhs.cast1020
  %192 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mem, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %client, align 4
  %name1033 = getelementptr inbounds %struct.nvif_object, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %name1033 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %name1033, align 8
  %202 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %handle, align 4
  %204 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %197(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %201, i32 noundef %203, ptr noundef %205, i32 noundef %sub.ptr.sub1021, i32 noundef 1212415) #5
  %206 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1042 = getelementptr i32, ptr %207, i32 1
  store ptr %incdec.ptr1042, ptr %cur.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 1212415, ptr %207, align 4
  %inc = add nuw nsw i32 %i.01184, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %if.end1001.do.body262_crit_edge

if.end1001.do.body262_crit_edge:                  ; preds = %if.end1001
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body262

for.end:                                          ; preds = %if.end1001
  call void @__sanitizer_cov_trace_pc() #7
  %assign_windows = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 2
  %209 = ptrtoint ptr %assign_windows to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 1, ptr %assign_windows, align 8
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %210 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %kick.i, align 4
  tail call void %211(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 44, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.corec37d_wndw_owner, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.corec37d_update, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 61, i32 3}
!11 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 67, i32 2}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 69, i32 2}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 107, i32 46}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 110, i32 3}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @corec37d_caps_init._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @corec37d_caps_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 118, i32 3}
!29 = !{ptr @corec37d_caps_init._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @corec37d_caps_init._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @corec37d, !32, !"corec37d", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 161, i32 1}
!33 = !{ptr @__func__.corec37d_init, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 137, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 140, i32 3}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/dispnv50/corec37d.c", i32 149, i32 3}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 2000, i32 1}
