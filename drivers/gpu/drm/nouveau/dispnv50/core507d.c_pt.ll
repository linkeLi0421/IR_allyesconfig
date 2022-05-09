; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/core507d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/core507d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.114, ptr, ptr, ptr, ptr, ptr }
%struct.anon.114 = type { ptr }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nv50_disp_core_channel_dma_v0 = type { i8, [7 x i8], i64 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/core507d.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.core507d_update = private unnamed_addr constant [16 x i8] c"core507d_update\00", align 1
@.str.6 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_SET_NOTIFIER_CONTROL\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_UPDATE\0A\00", [55 x i8] zeroinitializer }, align 32
@__func__.core507d_read_caps = private unnamed_addr constant [19 x i8] c"core507d_read_caps\00", align 1
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_GET_CAPABILITIES\0A\00", [45 x i8] zeroinitializer }, align 32
@core507d_caps_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str, i32 125, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: core caps notifier timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"core507d_caps_init\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@core507d_caps_init._entry_ptr = internal global ptr @core507d_caps_init._entry, section ".printk_index", align 4
@__func__.core507d_init = private unnamed_addr constant [14 x i8] c"core507d_init\00", align 1
@.str.14 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_SET_CONTEXT_DMA_NOTIFIER\0A\00", [37 x i8] zeroinitializer }, align 32
@core507d_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 173, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: core%04x allocation failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core507d_new_\00", [18 x i8] zeroinitializer }, align 32
@core507d_new_._entry_ptr = internal global ptr @core507d_new_._entry, section ".printk_index", align 4
@core507d = internal constant { %struct.nv50_core_func, [52 x i8] } { %struct.nv50_core_func { ptr @core507d_init, ptr @core507d_ntfy_init, ptr @core507d_caps_init, ptr @core507d_ntfy_wait_done, ptr @core507d_update, %struct.anon.114 zeroinitializer, ptr @head507d, ptr null, ptr @dac507d, ptr @pior507d, ptr @sor507d }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@head507d = external dso_local constant %struct.nv50_head_func, align 4
@dac507d = external dso_local constant %struct.nv50_outp_func, align 4
@pior507d = external dso_local constant %struct.nv50_outp_func, align 4
@sor507d = external dso_local constant %struct.nv50_outp_func, align 4
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 43, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 49, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 95, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 125, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 139, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 173, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"core507d\00", align 1
@___asan_gen_.66 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/core507d.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 144, i32 1 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @core507d_caps_init._entry, ptr @core507d_caps_init._entry_ptr, ptr @core507d_new_._entry, ptr @core507d_new_._entry_ptr, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @core507d], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core507d_caps_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core507d_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core507d to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core507d_update(ptr nocapture noundef readonly %core, ptr nocapture noundef readonly %interlock, i1 noundef zeroext %ntfy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push1 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %push1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push1, align 8
  %add = select i1 %ntfy, i32 5, i32 3
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef %add) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end342

if.end46:                                         ; preds = %if.end
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %12, %14
  br i1 %cmp.not, label %if.end46.if.end82_crit_edge, label %do.end76, !prof !42

if.end46.if.end82_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

do.end76:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end82

if.end82:                                         ; preds = %do.end76, %if.end46.if.end82_crit_edge
  %15 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cur.i, align 4
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %end.i, align 4
  %cmp95.not = icmp ult ptr %16, %18
  br i1 %cmp95.not, label %if.end82.if.end119_crit_edge, label %do.end113, !prof !42

if.end82.if.end119_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end119

do.end113:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %28(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %32, i32 noundef %34, ptr noundef %36, i32 noundef %sub.ptr.sub, i32 noundef 262276, i32 noundef 132, i32 noundef 1, ptr noundef nonnull @__func__.core507d_update) #6
  %37 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %38, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 262276, ptr %38, align 4
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %seg.i, align 8
  %cmp153.not = icmp ult ptr %40, %42
  br i1 %cmp153.not, label %if.end119.if.end177_crit_edge, label %do.end171, !prof !42

if.end119.if.end177_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end177

do.end171:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end177

if.end177:                                        ; preds = %do.end171, %if.end119.if.end177_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %45 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %end.i, align 4
  %cmp191.not = icmp ult ptr %44, %46
  br i1 %cmp191.not, label %if.end177.if.end215_crit_edge, label %do.end209, !prof !42

if.end177.if.end215_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end215

do.end209:                                        ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %56(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %60, i32 noundef %62, ptr noundef %64, i32 noundef %sub.ptr.sub235, i32 noundef -2147483648) #6
  %65 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cur.i, align 4
  %incdec.ptr256 = getelementptr i32, ptr %66, i32 1
  store ptr %incdec.ptr256, ptr %cur.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -2147483648, ptr %66, align 4
  br label %if.end342

if.end342:                                        ; preds = %if.end215, %if.end.if.end342_crit_edge
  %68 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i, align 4
  %70 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %seg.i, align 8
  %cmp359.not = icmp ult ptr %69, %71
  br i1 %cmp359.not, label %if.end342.if.end383_crit_edge, label %do.end377, !prof !42

if.end342.if.end383_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end383

do.end377:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end383

if.end383:                                        ; preds = %do.end377, %if.end342.if.end383_crit_edge
  %72 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %end.i, align 4
  %cmp397.not = icmp ult ptr %73, %75
  br i1 %cmp397.not, label %if.end383.if.end421_crit_edge, label %do.end415, !prof !42

if.end383.if.end421_crit_edge:                    ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end421

do.end415:                                        ; preds = %if.end383
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %85(ptr noundef %mem435, ptr noundef nonnull @.str.5, ptr noundef %89, i32 noundef %91, ptr noundef %93, i32 noundef %sub.ptr.sub441, i32 noundef 524416, i32 noundef 128, i32 noundef 2, ptr noundef nonnull @__func__.core507d_update) #6
  %94 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cur.i, align 4
  %incdec.ptr462 = getelementptr i32, ptr %95, i32 1
  store ptr %incdec.ptr462, ptr %cur.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 524416, ptr %95, align 4
  %arrayidx = getelementptr i32, ptr %interlock, i32 2
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx, align 4
  %arrayidx470 = getelementptr i32, ptr %interlock, i32 3
  %99 = ptrtoint ptr %arrayidx470 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx470, align 4
  %or = or i32 %100, %98
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %seg.i, align 8
  %cmp479.not = icmp ult ptr %101, %103
  br i1 %cmp479.not, label %if.end421.if.end504_crit_edge, label %do.end498, !prof !42

if.end421.if.end504_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end504

do.end498:                                        ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end504

if.end504:                                        ; preds = %do.end498, %if.end421.if.end504_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %end.i, align 4
  %cmp518.not = icmp ult ptr %105, %107
  br i1 %cmp518.not, label %if.end504.if.end543_crit_edge, label %do.end537, !prof !42

if.end504.if.end543_crit_edge:                    ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end543

do.end537:                                        ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end543

if.end543:                                        ; preds = %do.end537, %if.end504.if.end543_crit_edge
  %108 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cur.i, align 4
  %110 = ptrtoint ptr %map437 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %map437, align 8
  %sub.ptr.lhs.cast561 = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast562 = ptrtoint ptr %111 to i32
  %sub.ptr.sub563 = sub i32 %sub.ptr.lhs.cast561, %sub.ptr.rhs.cast562
  %112 = ptrtoint ptr %mem435 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mem435, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %118 = ptrtoint ptr %client451 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %client451, align 4
  %name575 = getelementptr inbounds %struct.nvif_object, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %name575 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name575, align 8
  %122 = ptrtoint ptr %handle454 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %handle454, align 4
  %124 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %name455, align 8
  tail call void (ptr, ptr, ...) %117(ptr noundef %mem435, ptr noundef nonnull @.str.8, ptr noundef %121, i32 noundef %123, ptr noundef %125, i32 noundef %sub.ptr.sub563, i32 noundef %or) #6
  %126 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %cur.i, align 4
  %incdec.ptr584 = getelementptr i32, ptr %127, i32 1
  store ptr %incdec.ptr584, ptr %cur.i, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %or, ptr %127, align 4
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %seg.i, align 8
  %cmp596.not = icmp ult ptr %129, %131
  br i1 %cmp596.not, label %if.end543.if.end621_crit_edge, label %do.end615, !prof !42

if.end543.if.end621_crit_edge:                    ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end621

do.end615:                                        ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end621

if.end621:                                        ; preds = %do.end615, %if.end543.if.end621_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %end.i, align 4
  %cmp635.not = icmp ult ptr %133, %135
  br i1 %cmp635.not, label %if.end621.if.end660_crit_edge, label %do.end654, !prof !42

if.end621.if.end660_crit_edge:                    ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end660

do.end654:                                        ; preds = %if.end621
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end660

if.end660:                                        ; preds = %do.end654, %if.end621.if.end660_crit_edge
  %136 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %cur.i, align 4
  %138 = ptrtoint ptr %map437 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map437, align 8
  %sub.ptr.lhs.cast678 = ptrtoint ptr %137 to i32
  %sub.ptr.rhs.cast679 = ptrtoint ptr %139 to i32
  %sub.ptr.sub680 = sub i32 %sub.ptr.lhs.cast678, %sub.ptr.rhs.cast679
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
  %name692 = getelementptr inbounds %struct.nvif_object, ptr %147, i32 0, i32 2
  %148 = ptrtoint ptr %name692 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name692, align 8
  %150 = ptrtoint ptr %handle454 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %handle454, align 4
  %152 = ptrtoint ptr %name455 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %name455, align 8
  tail call void (ptr, ptr, ...) %145(ptr noundef %mem435, ptr noundef nonnull @.str.6, ptr noundef %149, i32 noundef %151, ptr noundef %153, i32 noundef %sub.ptr.sub680, i32 noundef 0) #6
  %154 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %cur.i, align 4
  %incdec.ptr701 = getelementptr i32, ptr %155, i32 1
  store ptr %incdec.ptr701, ptr %cur.i, align 4
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 0, ptr %155, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %157 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %kick.i, align 4
  tail call void %158(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end660, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end660 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core507d_ntfy_wait_done(ptr noundef %bo, i32 noundef %offset, ptr noundef %device) #0 align 64 {
entry:
  %_wait = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %0 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %device, i64 noundef 2000000000, ptr noundef nonnull %_wait) #6
  %div9 = lshr i32 %offset, 2
  %call11 = call i32 @nouveau_bo_rd32(ptr noundef %bo, i32 noundef %div9) #6
  %1 = and i32 %call11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not12 = icmp eq i32 %1, 0
  br i1 %cmp.not12, label %entry.if.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

do.body:                                          ; preds = %if.end
  %call = call i32 @nouveau_bo_rd32(ptr noundef %bo, i32 noundef %div9) #6
  %2 = and i32 %call, 1
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %do.body.if.end_crit_edge, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %do.body.if.end_crit_edge, %entry.if.end_crit_edge
  call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %call2 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call2)
  %cmp3 = icmp sgt i64 %call2, -1
  br i1 %cmp3, label %do.body, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %do.body.do.end_crit_edge, %entry.do.end_crit_edge
  %_taken.1 = phi i64 [ 0, %entry.do.end_crit_edge ], [ %call2, %do.body.do.end_crit_edge ], [ %call2, %if.end.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  %3 = call i64 @llvm.smin.i64(i64 %_taken.1, i64 0)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @core507d_ntfy_init(ptr noundef %bo, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = lshr i32 %offset, 2
  tail call void @nouveau_bo_wr32(ptr noundef %bo, i32 noundef %div1, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core507d_read_caps(ptr nocapture noundef readonly %disp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %push1 = getelementptr inbounds %struct.nv50_core, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %push1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %push1, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %5, i32 6
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %7
  br i1 %cmp.not.i, label %entry.if.end43_crit_edge, label %if.then.i

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %call.i = tail call i32 %9(ptr noundef %3, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end43_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end43_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end43:                                         ; preds = %if.then.i.if.end43_crit_edge, %entry.if.end43_crit_edge
  %10 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %11, i32 6
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %11, %add.ptr4.i
  br i1 %cmp.not, label %if.end43.if.end79_crit_edge, label %do.end73, !prof !42

if.end43.if.end79_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

do.end73:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.end43.if.end79_crit_edge
  %13 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur.i, align 4
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i, align 4
  %cmp92.not = icmp ult ptr %14, %16
  br i1 %cmp92.not, label %if.end79.if.end116_crit_edge, label %do.end110, !prof !42

if.end79.if.end116_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end110:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end116

if.end116:                                        ; preds = %do.end110, %if.end79.if.end116_crit_edge
  %17 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2, i32 0, i32 6
  %19 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %20 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %21 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mem, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2, i32 0, i32 1
  %27 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2, i32 0, i32 3
  %31 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %handle, align 4
  %name133 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 2, i32 0, i32 2
  %33 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %26(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %30, i32 noundef %32, ptr noundef %34, i32 noundef %sub.ptr.sub, i32 noundef 262276, i32 noundef 132, i32 noundef 1, ptr noundef nonnull @__func__.core507d_read_caps) #6
  %35 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %36, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 262276, ptr %36, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp150.not = icmp ult ptr %38, %40
  br i1 %cmp150.not, label %if.end116.if.end174_crit_edge, label %do.end168, !prof !42

if.end116.if.end174_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

do.end168:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end174

if.end174:                                        ; preds = %do.end168, %if.end116.if.end174_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp188.not = icmp ult ptr %42, %44
  br i1 %cmp188.not, label %if.end174.if.end212_crit_edge, label %do.end206, !prof !42

if.end174.if.end212_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end212

do.end206:                                        ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 93, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end212

if.end212:                                        ; preds = %do.end206, %if.end174.if.end212_crit_edge
  %45 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cur.i, align 4
  %47 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast230 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast231 = ptrtoint ptr %48 to i32
  %sub.ptr.sub232 = sub i32 %sub.ptr.lhs.cast230, %sub.ptr.rhs.cast231
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
  %name244 = getelementptr inbounds %struct.nvif_object, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %name244 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name244, align 8
  %59 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %handle, align 4
  %61 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub232, i32 noundef -2147483648) #6
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr253 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr253, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -2147483648, ptr %64, align 4
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %seg.i, align 8
  %cmp325.not = icmp ult ptr %66, %68
  br i1 %cmp325.not, label %if.end212.if.end349_crit_edge, label %do.end343, !prof !42

if.end212.if.end349_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end349

do.end343:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end349

if.end349:                                        ; preds = %do.end343, %if.end212.if.end349_crit_edge
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %71 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i, align 4
  %cmp363.not = icmp ult ptr %70, %72
  br i1 %cmp363.not, label %if.end349.if.end387_crit_edge, label %do.end381, !prof !42

if.end349.if.end387_crit_edge:                    ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end387

do.end381:                                        ; preds = %if.end349
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end387

if.end387:                                        ; preds = %do.end381, %if.end349.if.end387_crit_edge
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast405 = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast406 = ptrtoint ptr %76 to i32
  %sub.ptr.sub407 = sub i32 %sub.ptr.lhs.cast405, %sub.ptr.rhs.cast406
  %77 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mem, align 8
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %client, align 4
  %name419 = getelementptr inbounds %struct.nvif_object, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %name419 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name419, align 8
  %87 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %handle, align 4
  %89 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %82(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %86, i32 noundef %88, ptr noundef %90, i32 noundef %sub.ptr.sub407, i32 noundef 262284, i32 noundef 140, i32 noundef 1, ptr noundef nonnull @__func__.core507d_read_caps) #6
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %incdec.ptr428 = getelementptr i32, ptr %92, i32 1
  store ptr %incdec.ptr428, ptr %cur.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 262284, ptr %92, align 4
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %seg.i, align 8
  %cmp440.not = icmp ult ptr %94, %96
  br i1 %cmp440.not, label %if.end387.if.end464_crit_edge, label %do.end458, !prof !42

if.end387.if.end464_crit_edge:                    ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end464

do.end458:                                        ; preds = %if.end387
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end464

if.end464:                                        ; preds = %do.end458, %if.end387.if.end464_crit_edge
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i, align 4
  %cmp478.not = icmp ult ptr %98, %100
  br i1 %cmp478.not, label %if.end464.if.end502_crit_edge, label %do.end496, !prof !42

if.end464.if.end502_crit_edge:                    ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end502

do.end496:                                        ; preds = %if.end464
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end502

if.end502:                                        ; preds = %do.end496, %if.end464.if.end502_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %103 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast520 = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast521 = ptrtoint ptr %104 to i32
  %sub.ptr.sub522 = sub i32 %sub.ptr.lhs.cast520, %sub.ptr.rhs.cast521
  %105 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mem, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %111 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %client, align 4
  %name534 = getelementptr inbounds %struct.nvif_object, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %name534 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name534, align 8
  %115 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %handle, align 4
  %117 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %110(ptr noundef %mem, ptr noundef nonnull @.str.9, ptr noundef %114, i32 noundef %116, ptr noundef %118, i32 noundef %sub.ptr.sub522, i32 noundef 0) #6
  %119 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cur.i, align 4
  %incdec.ptr543 = getelementptr i32, ptr %120, i32 1
  store ptr %incdec.ptr543, ptr %cur.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %120, align 4
  %122 = load ptr, ptr %cur.i, align 4
  %123 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %seg.i, align 8
  %cmp615.not = icmp ult ptr %122, %124
  br i1 %cmp615.not, label %if.end502.if.end639_crit_edge, label %do.end633, !prof !42

if.end502.if.end639_crit_edge:                    ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end639

do.end633:                                        ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end639

if.end639:                                        ; preds = %do.end633, %if.end502.if.end639_crit_edge
  %125 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cur.i, align 4
  %127 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %end.i, align 4
  %cmp653.not = icmp ult ptr %126, %128
  br i1 %cmp653.not, label %if.end639.if.end677_crit_edge, label %do.end671, !prof !42

if.end639.if.end677_crit_edge:                    ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end677

do.end671:                                        ; preds = %if.end639
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end677

if.end677:                                        ; preds = %do.end671, %if.end639.if.end677_crit_edge
  %129 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cur.i, align 4
  %131 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast695 = ptrtoint ptr %130 to i32
  %sub.ptr.rhs.cast696 = ptrtoint ptr %132 to i32
  %sub.ptr.sub697 = sub i32 %sub.ptr.lhs.cast695, %sub.ptr.rhs.cast696
  %133 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mem, align 8
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %139 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %client, align 4
  %name709 = getelementptr inbounds %struct.nvif_object, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %name709 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name709, align 8
  %143 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %handle, align 4
  %145 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %138(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %142, i32 noundef %144, ptr noundef %146, i32 noundef %sub.ptr.sub697, i32 noundef 262276, i32 noundef 132, i32 noundef 1, ptr noundef nonnull @__func__.core507d_read_caps) #6
  %147 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cur.i, align 4
  %incdec.ptr718 = getelementptr i32, ptr %148, i32 1
  store ptr %incdec.ptr718, ptr %cur.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 262276, ptr %148, align 4
  %150 = load ptr, ptr %cur.i, align 4
  %151 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %seg.i, align 8
  %cmp730.not = icmp ult ptr %150, %152
  br i1 %cmp730.not, label %if.end677.if.end754_crit_edge, label %do.end748, !prof !42

if.end677.if.end754_crit_edge:                    ; preds = %if.end677
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end754

do.end748:                                        ; preds = %if.end677
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end754

if.end754:                                        ; preds = %do.end748, %if.end677.if.end754_crit_edge
  %153 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %cur.i, align 4
  %155 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %end.i, align 4
  %cmp768.not = icmp ult ptr %154, %156
  br i1 %cmp768.not, label %if.end754.if.end792_crit_edge, label %do.end786, !prof !42

if.end754.if.end792_crit_edge:                    ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end792

do.end786:                                        ; preds = %if.end754
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 9, ptr noundef nonnull @.str.4) #6
  br label %if.end792

if.end792:                                        ; preds = %do.end786, %if.end754.if.end792_crit_edge
  %157 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %cur.i, align 4
  %159 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast810 = ptrtoint ptr %158 to i32
  %sub.ptr.rhs.cast811 = ptrtoint ptr %160 to i32
  %sub.ptr.sub812 = sub i32 %sub.ptr.lhs.cast810, %sub.ptr.rhs.cast811
  %161 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %mem, align 8
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %162, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %164, align 4
  %167 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %client, align 4
  %name824 = getelementptr inbounds %struct.nvif_object, ptr %168, i32 0, i32 2
  %169 = ptrtoint ptr %name824 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %name824, align 8
  %171 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %handle, align 4
  %173 = ptrtoint ptr %name133 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %name133, align 8
  tail call void (ptr, ptr, ...) %166(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %170, i32 noundef %172, ptr noundef %174, i32 noundef %sub.ptr.sub812, i32 noundef 0) #6
  %175 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cur.i, align 4
  %incdec.ptr833 = getelementptr i32, ptr %176, i32 1
  store ptr %incdec.ptr833, ptr %cur.i, align 4
  %177 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %176, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 1
  %178 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %kick.i, align 4
  tail call void %179(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end792, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end792 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core507d_caps_init(ptr noundef %drm, ptr nocapture noundef readonly %disp) #0 align 64 {
entry:
  %_wait = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %core1 = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1
  %0 = ptrtoint ptr %core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core1, align 4
  %sync = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 3
  %2 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sync, align 8
  tail call void @nouveau_bo_wr32(ptr noundef %3, i32 noundef 1, i32 noundef 0) #6
  %call = tail call i32 @core507d_read_caps(ptr noundef %disp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  %device = getelementptr inbounds %struct.nv50_core, ptr %1, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 8
  call void @nvif_timer_wait_init(ptr noundef %6, i64 noundef 2000000000, ptr noundef nonnull %_wait) #6
  br label %do.body

do.body:                                          ; preds = %if.end6.do.body_crit_edge, %if.end
  %call2 = call i32 @nouveau_bo_rd32(ptr noundef %3, i32 noundef 1) #6
  %7 = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp eq i32 %7, 0
  br i1 %cmp3.not, label %if.end6, label %do.end

if.end6:                                          ; preds = %do.body
  call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #6
  %call7 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait) #6
  %cmp8 = icmp sgt i64 %call7, -1
  br i1 %cmp8, label %if.end6.do.body_crit_edge, label %do.body13

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  br label %cleanup

do.body13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  %drm17 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %drm17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drm17, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.10, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %do.body13 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core507d_init(ptr nocapture noundef readonly %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %push1 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %push1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push1, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %3, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %5
  br i1 %cmp.not.i, label %entry.if.end43_crit_edge, label %if.then.i

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %7(ptr noundef %1, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end43_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.if.end43_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.end43:                                         ; preds = %if.then.i.if.end43_crit_edge, %entry.if.end43_crit_edge
  %8 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %9, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %9, %add.ptr4.i
  br i1 %cmp.not, label %if.end43.if.end79_crit_edge, label %do.end73, !prof !42

if.end43.if.end79_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

do.end73:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end79

if.end79:                                         ; preds = %do.end73, %if.end43.if.end79_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %cmp92.not = icmp ult ptr %12, %14
  br i1 %cmp92.not, label %if.end79.if.end116_crit_edge, label %do.end110, !prof !42

if.end79.if.end116_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end110:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %24(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %28, i32 noundef %30, ptr noundef %32, i32 noundef %sub.ptr.sub, i32 noundef 262280, i32 noundef 136, i32 noundef 1, ptr noundef nonnull @__func__.core507d_init) #6
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %34, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 262280, ptr %34, align 4
  %handle147 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 4, i32 3
  %36 = ptrtoint ptr %handle147 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle147, align 4
  %38 = load ptr, ptr %cur.i, align 4
  %39 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %seg.i, align 8
  %cmp152.not = icmp ult ptr %38, %40
  br i1 %cmp152.not, label %if.end116.if.end176_crit_edge, label %do.end170, !prof !42

if.end116.if.end176_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end176

do.end170:                                        ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef nonnull @.str.3) #6
  br label %if.end176

if.end176:                                        ; preds = %do.end170, %if.end116.if.end176_crit_edge
  %41 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cur.i, align 4
  %43 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %end.i, align 4
  %cmp190.not = icmp ult ptr %42, %44
  br i1 %cmp190.not, label %if.end176.if.end214_crit_edge, label %do.end208, !prof !42

if.end176.if.end214_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end214

do.end208:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef nonnull @.str.4) #6
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
  tail call void (ptr, ptr, ...) %54(ptr noundef %mem, ptr noundef nonnull @.str.14, ptr noundef %58, i32 noundef %60, ptr noundef %62, i32 noundef %sub.ptr.sub234, i32 noundef %37) #6
  %63 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cur.i, align 4
  %incdec.ptr255 = getelementptr i32, ptr %64, i32 1
  store ptr %incdec.ptr255, ptr %cur.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %37, ptr %64, align 4
  %kick.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %kick.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %kick.i, align 4
  tail call void %67(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end214, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end214 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core507d_new_(ptr noundef %func, ptr noundef %drm, i32 noundef %oclass, ptr nocapture noundef writeonly %pcore) local_unnamed_addr #0 align 64 {
entry:
  %oclass.addr = alloca i32, align 4
  %args = alloca %struct.nv50_disp_core_channel_dma_v0, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oclass.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %oclass, ptr %oclass.addr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #6
  %1 = call ptr @memset(ptr %args, i32 0, i32 16)
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %display.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 344) #10
  %11 = ptrtoint ptr %pcore to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %pcore, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %func, ptr %call7.i.i, align 8
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 8
  %sync = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 3
  %15 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sync, align 8
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %offset, align 8
  %chan = getelementptr inbounds %struct.nv50_core, ptr %call7.i.i, i32 0, i32 1
  %call4 = call i32 @nv50_dmac_create(ptr noundef %device, ptr noundef %14, ptr noundef nonnull %oclass.addr, i8 noundef zeroext 0, ptr noundef nonnull %args, i32 noundef 16, i64 noundef %18, ptr noundef %chan) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %drm9 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %drm9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drm9, align 8
  %dev10 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev10, align 8
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev11, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  %25 = ptrtoint ptr %oclass.addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %oclass.addr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %26, i32 noundef %call4) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.body ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dmac_create(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @core507d_new(ptr noundef %drm, i32 noundef %oclass, ptr nocapture noundef writeonly %pcore) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @core507d_new_(ptr noundef nonnull @core507d, ptr noundef %drm, i32 noundef %oclass, ptr noundef %pcore)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/core507d.c", i32 43, i32 3}
!2 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.core507d_update, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/dispnv50/core507d.c", i32 49, i32 2}
!11 = !{ptr @.str.8, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__func__.core507d_read_caps, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/dispnv50/core507d.c", i32 90, i32 2}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/dispnv50/core507d.c", i32 95, i32 2}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/dispnv50/core507d.c", i32 125, i32 3}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @core507d_caps_init._entry, !17, !"_entry", i1 false, i1 false}
!22 = !{ptr @core507d_caps_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__func__.core507d_init, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/dispnv50/core507d.c", i32 139, i32 2}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/dispnv50/core507d.c", i32 173, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @core507d_new_._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @core507d_new_._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @core507d, !32, !"core507d", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/dispnv50/core507d.c", i32 144, i32 1}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
