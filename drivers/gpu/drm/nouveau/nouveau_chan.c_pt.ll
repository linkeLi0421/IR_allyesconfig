; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_chan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_chan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.193 = type { %struct.nv_device_info_v1, %struct.anon.194 }
%struct.nv_device_info_v1 = type { i8, i8, [6 x i8], [0 x %struct.nv_device_info_v1_data] }
%struct.nv_device_info_v1_data = type { i64, i64 }
%struct.anon.194 = type { %struct.nv_device_info_v1_data }
%struct.nouveau_channel = type { %struct.anon.87, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.116, i8, ptr, %struct.anon.117, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.87 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.116 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.117 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.88 }
%struct.anon.88 = type { ptr, i64 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.98, %struct.anon.99, %struct.anon.101, ptr, %struct.anon.102, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.103, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.115 }
%struct.nvif_parent = type { ptr }
%struct.anon.98 = type { ptr, i32, i32, i8 }
%struct.anon.99 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.100] }
%struct.anon.100 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.101 = type { i64, i64 }
%struct.anon.102 = type { i32, i64 }
%struct.anon.103 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.113 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.104, i8 }
%union.anon.104 = type { %struct.anon.108 }
%struct.anon.108 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.110 = type { i32 }
%struct.anon.111 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.112 = type { i16, i16 }
%struct.anon.113 = type { i16, i16, i16, %struct.anon.114, i16 }
%struct.anon.114 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, %struct.mutex, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.93, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.97, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.93 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.97 = type { i32, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.nv03_channel_dma_v0 = type { i8, i8, [2 x i8], i32, i64 }
%union.anon.195 = type { %struct.volta_channel_gpfifo_a_v0 }
%struct.volta_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64, i32 }
%struct.nv50_channel_gpfifo_v0 = type { i8, i8, [2 x i8], i32, i64, i64, i64 }
%struct.kepler_channel_gpfifo_a_v0 = type { i8, i8, i16, i32, i64, i64, i64, i64 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.anon.196 = type { %struct.nvkm_object, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@__UNIQUE_ID_vram_pushbuf321 = internal constant [58 x i8] c"nouveau.parm=vram_pushbuf:Create DMA push buffers in VRAM\00", section ".modinfo", align 1
@__param_str_vram_pushbuf = internal constant [21 x i8] c"nouveau.vram_pushbuf\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_vram_pushbuf = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vram_pushbuf = internal constant %struct.kernel_param { ptr @__param_str_vram_pushbuf, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_vram_pushbuf } }, section "__param", align 4
@__UNIQUE_ID_vram_pushbuftype322 = internal constant [34 x i8] c"nouveau.parmtype=vram_pushbuf:int\00", section ".modinfo", align 1
@nouveau_channel_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 76, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: failed to idle channel %d [%s]\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nouveau_channel_idle\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/nouveau_chan.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_channel_idle._entry_ptr = internal global ptr @nouveau_channel_idle._entry, section ".printk_index", align 4
@nouveau_channel_new.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nouveau\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nouveau_channel_new\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: ib channel create, %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nouveau_channel_new.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: dma channel create, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nouveau_channel_new._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 523, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: channel failed to initialise, %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nouveau_channel_new._entry_ptr = internal global ptr @nouveau_channel_new._entry, section ".printk_index", align 4
@__const.nouveau_channels_init.args = private unnamed_addr constant %struct.anon.193 { %struct.nv_device_info_v1 { i8 1, i8 1, [6 x i8] zeroinitializer, [0 x %struct.nv_device_info_v1_data] zeroinitializer }, %struct.anon.194 { %struct.nv_device_info_v1_data { i64 4294967297, i64 0 } } }, align 8
@nouveau_channel_ind.oclasses = internal constant { [11 x i16], [42 x i8] } { [11 x i16] [i16 -14481, i16 -15249, i16 -15505, i16 -16273, i16 -20369, i16 -24209, i16 -24465, i16 -28561, i16 -32145, i16 20591, i16 0], [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"abi16ChanUser\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"chanPush\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"abi16PushCtxDma\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"abi16ChanKilled\00", [16 x i8] zeroinitializer }, align 32
@nouveau_channel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: Failed to request channel kill notification: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nouveau_channel_init\00", [43 x i8] zeroinitializer }, align 32
@nouveau_channel_init._entry_ptr = internal global ptr @nouveau_channel_init._entry, section ".printk_index", align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"abi16ChanVramCtxDma\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"abi16ChanGartCtxDma\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s/%08x:%s] %08x: %08x data - %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abi16NvswFence\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0000\0A\00", [62 x i8] zeroinitializer }, align 32
@nouveau_channel_killed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 53, ptr @.str.29, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: channel %d killed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nouveau_channel_killed\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nouveau_channel_killed._entry_ptr = internal global ptr @nouveau_channel_killed._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 107, i64 110]
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"nouveau_vram_pushbuf\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 45, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 75, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 513, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 516, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 523, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"oclasses\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 253, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 316, i32 43 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 176, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 238, i32 42 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 392, i32 39 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 399, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 419, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 444, i32 39 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 480, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 484, i32 39 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 494, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/nouveau_chan.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 53, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_vram_pushbuf321, ptr @__UNIQUE_ID_vram_pushbuftype322, ptr @__param_vram_pushbuf, ptr @nouveau_channel_idle._entry, ptr @nouveau_channel_idle._entry_ptr, ptr @nouveau_channel_init._entry, ptr @nouveau_channel_init._entry_ptr, ptr @nouveau_channel_killed._entry, ptr @nouveau_channel_killed._entry_ptr, ptr @nouveau_channel_new._entry, ptr @nouveau_channel_new._entry_ptr, ptr @nouveau_vram_pushbuf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nouveau_channel_ind.oclasses, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_vram_pushbuf to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_channel_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_channel_new._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_channel_ind.oclasses to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_channel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_channel_killed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_channel_idle(ptr noundef %chan) local_unnamed_addr #0 align 64 {
entry:
  %fence6 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true, !prof !76

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.lhs.true:                                    ; preds = %entry
  %fence = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 12
  %0 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fence, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %land.rhs, !prof !76

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

land.rhs:                                         ; preds = %land.lhs.true
  %killed = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %killed, i32 noundef 4) #5
  %2 = ptrtoint ptr %killed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %killed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.then, label %land.rhs.return_crit_edge, !prof !77

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %land.rhs
  %client = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 17, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence6) #5
  %6 = ptrtoint ptr %fence6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fence6, align 4
  %call7 = call i32 @nouveau_fence_new(ptr noundef nonnull %chan, i1 noundef zeroext false, ptr noundef nonnull %fence6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %fence6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fence6, align 4
  %call10 = call i32 @nouveau_fence_wait(ptr noundef %8, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @nouveau_fence_unref(ptr noundef nonnull %fence6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %cleanup.thread, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence6) #5
  br label %return

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %ret.035 = phi i32 [ %call10, %if.end.cleanup_crit_edge ], [ %call7, %if.then.cleanup_crit_edge ]
  %drm = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 4
  %name = getelementptr inbounds %struct.nouveau_cli, ptr %5, i32 0, i32 12
  %chid = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 4
  %15 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chid, align 4
  %priv = getelementptr inbounds %struct.nvif_object, ptr %5, i32 0, i32 5
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %name15 = getelementptr inbounds %struct.nvkm_client, ptr %18, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %16, ptr noundef %name15) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence6) #5
  br label %return

return:                                           ; preds = %cleanup, %cleanup.thread, %land.rhs.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ %ret.035, %cleanup ], [ 0, %cleanup.thread ], [ 0, %entry.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %land.rhs.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_new(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_channel_del(ptr nocapture noundef %pchan) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pchan, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end24_crit_edge, label %if.then

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then:                                          ; preds = %entry
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 17
  %fence = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fence, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %drm = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm, align 4
  %fence3 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %fence3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fence3, align 8
  %context_del = getelementptr inbounds %struct.nouveau_fence_priv, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %context_del to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context_del, align 4
  tail call void %9(ptr noundef nonnull %1) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.then.if.end6_crit_edge
  %nvsw = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 9
  tail call void @nvif_object_dtor(ptr noundef %nvsw) #5
  %gart = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 8
  tail call void @nvif_object_dtor(ptr noundef %gart) #5
  %vram = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 7
  tail call void @nvif_object_dtor(ptr noundef %vram) #5
  %kill = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 18
  %call = tail call i32 @nvif_notify_dtor(ptr noundef %kill) #5
  tail call void @nvif_object_dtor(ptr noundef %user) #5
  %push = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 10
  %ctxdma = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 10, i32 2
  tail call void @nvif_object_dtor(ptr noundef %ctxdma) #5
  %vma = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 10, i32 1
  tail call void @nouveau_vma_del(ptr noundef %vma) #5
  %10 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push, align 8
  tail call void @nouveau_bo_unmap(ptr noundef %11) #5
  %12 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %push, align 8
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end6.if.end20_crit_edge, label %land.lhs.true

if.end6.if.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end6
  %pin_count = getelementptr inbounds %struct.ttm_buffer_object, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %pin_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pin_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool15.not = icmp eq i32 %15, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end20_crit_edge, label %if.then16

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %13) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %land.lhs.true.if.end20_crit_edge, %if.end6.if.end20_crit_edge
  %tobool.not.i = icmp eq ptr %push, null
  br i1 %tobool.not.i, label %if.end20.nouveau_bo_ref.exit_crit_edge, label %if.end.i

if.end20.nouveau_bo_ref.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_bo_ref.exit

if.end.i:                                         ; preds = %if.end20
  %16 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %push, align 4
  store ptr null, ptr %push, align 4
  %tobool5.not.i = icmp eq ptr %17, null
  br i1 %tobool5.not.i, label %if.end.i.nouveau_bo_ref.exit_crit_edge, label %if.then6.i

if.end.i.nouveau_bo_ref.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_bo_ref.exit

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ttm_bo_put(ptr noundef nonnull %17) #5
  br label %nouveau_bo_ref.exit

nouveau_bo_ref.exit:                              ; preds = %if.then6.i, %if.end.i.nouveau_bo_ref.exit_crit_edge, %if.end20.nouveau_bo_ref.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %if.end24

if.end24:                                         ; preds = %nouveau_bo_ref.exit, %entry.if.end24_crit_edge
  %18 = ptrtoint ptr %pchan to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %pchan, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_channel_new(ptr noundef %drm, ptr noundef %device, i32 noundef %arg0, i32 noundef %arg1, i1 noundef zeroext %priv, ptr nocapture noundef %pchan) local_unnamed_addr #0 align 64 {
entry:
  %args.i100 = alloca %struct.nv_dma_v0, align 8
  %args.i92 = alloca %struct.nv03_channel_dma_v0, align 8
  %chan.i93 = alloca ptr, align 4
  %args.i = alloca %union.anon.195, align 8
  %chan.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvif_object, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %conv = zext i32 %arg0 to i64
  %frombool.i = zext i1 %priv to i8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %args.i) #5
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan.i) #5
  %3 = ptrtoint ptr %chan.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %chan.i, align 4, !annotation !78
  %call.i = call fastcc i32 @nouveau_channel_prep(ptr noundef %drm, ptr noundef %device, i32 noundef 73728, ptr noundef nonnull %chan.i) #5
  %4 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan.i, align 4
  %6 = ptrtoint ptr %pchan to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pchan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.preheader.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body.preheader.i:                              ; preds = %entry
  %user.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 17
  %ilength49.i = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %args.i, i32 0, i32 3
  %addr51.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 10, i32 3
  %ioffset53.i = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %args.i, i32 0, i32 4
  %ctxdma.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 10, i32 2
  %7 = ptrtoint ptr %ctxdma.i to i32
  %conv55.i = zext i32 %7 to i64
  %pushbuf.i = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %args.i, i32 0, i32 5
  %vmm56.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 3
  %vmm60.i = getelementptr inbounds %struct.nv50_channel_gpfifo_v0, ptr %args.i, i32 0, i32 6
  %priv29.i = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %args.i, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %do.body.preheader.i
  %8 = phi i16 [ %66, %do.cond.i.do.body.i_crit_edge ], [ -14481, %do.body.preheader.i ]
  %oclass.0.i = phi ptr [ %incdec.ptr.i, %do.cond.i.do.body.i_crit_edge ], [ @nouveau_channel_ind.oclasses, %do.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15506, i16 %8)
  %cmp.i = icmp ugt i16 %8, -15506
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %args.i, align 8
  %10 = ptrtoint ptr %ilength49.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8192, ptr %ilength49.i, align 4
  %11 = ptrtoint ptr %addr51.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %addr51.i, align 8
  %add.i = add i64 %12, 65536
  %13 = ptrtoint ptr %ioffset53.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add.i, ptr %ioffset53.i, align 8
  %14 = ptrtoint ptr %pushbuf.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv, ptr %pushbuf.i, align 8
  %15 = ptrtoint ptr %vmm56.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vmm56.i, align 8
  %vmm4.i = getelementptr inbounds %struct.nouveau_vmm, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %vmm4.i to i32
  %conv5.i = zext i32 %17 to i64
  %18 = ptrtoint ptr %vmm60.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv5.i, ptr %vmm60.i, align 8
  %19 = ptrtoint ptr %priv29.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool.i, ptr %priv29.i, align 1
  br label %if.end63.i

if.else.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24466, i16 %8)
  %cmp12.i = icmp ugt i16 %8, -24466
  br i1 %cmp12.i, label %if.then14.i, label %if.else30.i

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %args.i, align 8
  %21 = ptrtoint ptr %ilength49.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8192, ptr %ilength49.i, align 4
  %22 = ptrtoint ptr %addr51.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %addr51.i, align 8
  %add19.i = add i64 %23, 65536
  %24 = ptrtoint ptr %ioffset53.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add19.i, ptr %ioffset53.i, align 8
  %25 = ptrtoint ptr %pushbuf.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %pushbuf.i, align 8
  %26 = ptrtoint ptr %vmm56.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vmm56.i, align 8
  %vmm23.i = getelementptr inbounds %struct.nouveau_vmm, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %vmm23.i to i32
  %conv25.i = zext i32 %28 to i64
  %29 = ptrtoint ptr %vmm60.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv25.i, ptr %vmm60.i, align 8
  %30 = ptrtoint ptr %priv29.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool.i, ptr %priv29.i, align 1
  br label %if.end63.i

if.else30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28562, i16 %8)
  %cmp33.i = icmp ugt i16 %8, -28562
  %31 = ptrtoint ptr %args.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %args.i, align 8
  %32 = ptrtoint ptr %ilength49.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 8192, ptr %ilength49.i, align 4
  %33 = ptrtoint ptr %addr51.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %addr51.i, align 8
  %add40.i = add i64 %34, 65536
  %35 = ptrtoint ptr %ioffset53.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %add40.i, ptr %ioffset53.i, align 8
  br i1 %cmp33.i, label %if.then35.i, label %if.else47.i

if.then35.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %vmm56.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vmm56.i, align 8
  %vmm43.i = getelementptr inbounds %struct.nouveau_vmm, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %vmm43.i to i32
  %conv45.i = zext i32 %38 to i64
  %39 = ptrtoint ptr %pushbuf.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv45.i, ptr %pushbuf.i, align 8
  br label %if.end63.i

if.else47.i:                                      ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %pushbuf.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv55.i, ptr %pushbuf.i, align 8
  %41 = ptrtoint ptr %vmm56.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vmm56.i, align 8
  %vmm57.i = getelementptr inbounds %struct.nouveau_vmm, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %vmm57.i to i32
  %conv59.i = zext i32 %43 to i64
  %44 = ptrtoint ptr %vmm60.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv59.i, ptr %vmm60.i, align 8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else47.i, %if.then35.i, %if.then14.i, %if.then2.i
  %size.0.i = phi i32 [ 48, %if.then2.i ], [ 40, %if.then14.i ], [ 24, %if.then35.i ], [ 32, %if.else47.i ]
  %conv65.i = zext i16 %8 to i32
  %call66.i = call i32 @nvif_object_ctor(ptr noundef %device, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef %conv65.i, ptr noundef nonnull %args.i, i32 noundef %size.0.i, ptr noundef %user.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp eq i32 %call66.i, 0
  br i1 %cmp67.i, label %if.then69.i, label %do.cond.i

if.then69.i:                                      ; preds = %if.end63.i
  %oclass71.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 17, i32 4
  %45 = ptrtoint ptr %oclass71.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %oclass71.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50030, i32 %46)
  %cmp72.i = icmp sgt i32 %46, 50030
  br i1 %cmp72.i, label %if.then74.i, label %if.else79.i

if.then74.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  %chid.i = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %args.i, i32 0, i32 2
  %47 = ptrtoint ptr %chid.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %chid.i, align 2
  %conv75.i = zext i16 %48 to i32
  %chid76.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 4
  %49 = ptrtoint ptr %chid76.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv75.i, ptr %chid76.i, align 4
  %inst.i = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %args.i, i32 0, i32 7
  %50 = ptrtoint ptr %inst.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %inst.i, align 8
  %inst77.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 5
  %52 = ptrtoint ptr %inst77.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %inst77.i, align 8
  %token.i = getelementptr inbounds %struct.volta_channel_gpfifo_a_v0, ptr %args.i, i32 0, i32 8
  %53 = ptrtoint ptr %token.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %token.i, align 8
  %token78.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 6
  %55 = ptrtoint ptr %token78.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %token78.i, align 8
  br label %nouveau_channel_ind.exit.thread

if.else79.i:                                      ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 41070, i32 %46)
  %cmp82.i = icmp sgt i32 %46, 41070
  br i1 %cmp82.i, label %if.then84.i, label %if.else90.i

if.then84.i:                                      ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #7
  %chid85.i = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %args.i, i32 0, i32 2
  %56 = ptrtoint ptr %chid85.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %chid85.i, align 2
  %conv86.i = zext i16 %57 to i32
  %chid87.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 4
  %58 = ptrtoint ptr %chid87.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv86.i, ptr %chid87.i, align 4
  %inst88.i = getelementptr inbounds %struct.kepler_channel_gpfifo_a_v0, ptr %args.i, i32 0, i32 7
  %59 = ptrtoint ptr %inst88.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %inst88.i, align 8
  %inst89.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 5
  %61 = ptrtoint ptr %inst89.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %inst89.i, align 8
  br label %nouveau_channel_ind.exit.thread

if.else90.i:                                      ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %priv29.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %priv29.i, align 1
  %conv97.i = zext i8 %63 to i32
  %chid98.i = getelementptr inbounds %struct.nouveau_channel, ptr %5, i32 0, i32 4
  %64 = ptrtoint ptr %chid98.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv97.i, ptr %chid98.i, align 4
  br label %nouveau_channel_ind.exit.thread

do.cond.i:                                        ; preds = %if.end63.i
  %incdec.ptr.i = getelementptr i16, ptr %oclass.0.i, i32 1
  %65 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %incdec.ptr.i, align 2
  %tobool107.not.i = icmp eq i16 %66, 0
  br i1 %tobool107.not.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @nouveau_channel_del(ptr noundef %pchan) #5
  br label %do.body

nouveau_channel_ind.exit.thread:                  ; preds = %if.else90.i, %if.then84.i, %if.then74.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args.i) #5
  br label %if.end42

do.body:                                          ; preds = %do.end.i, %entry.do.body_crit_edge
  %retval.0.i91 = phi i32 [ %call66.i, %do.end.i ], [ %call.i, %entry.do.body_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i) #5
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %args.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nouveau_channel_new.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nouveau_channel_new, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !79

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %drm9 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %drm9 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %drm9, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev, align 8
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev10, align 4
  %name = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nouveau_channel_new.__UNIQUE_ID_ddebug323, ptr noundef %72, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %retval.0.i91) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i92) #5
  %73 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %args.i92, i32 0, i32 1
  %74 = ptrtoint ptr %args.i92 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 -1, ptr %args.i92, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chan.i93) #5
  %75 = ptrtoint ptr %chan.i93 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 -1 to ptr), ptr %chan.i93, align 4, !annotation !78
  %call.i94 = call fastcc i32 @nouveau_channel_prep(ptr noundef %drm, ptr noundef %device, i32 noundef 65536, ptr noundef nonnull %chan.i93) #5
  %76 = ptrtoint ptr %chan.i93 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chan.i93, align 4
  %78 = ptrtoint ptr %pchan to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %pchan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %tobool.not.i95 = icmp eq i32 %call.i94, 0
  br i1 %tobool.not.i95, label %if.end.i, label %do.end.do.body16_crit_edge

do.end.do.body16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

if.end.i:                                         ; preds = %do.end
  %79 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %args.i92, i32 0, i32 4
  %80 = getelementptr inbounds %struct.nv03_channel_dma_v0, ptr %args.i92, i32 0, i32 3
  %81 = ptrtoint ptr %args.i92 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %args.i92, align 8
  %ctxdma.i96 = getelementptr inbounds %struct.nouveau_channel, ptr %77, i32 0, i32 10, i32 2
  %82 = ptrtoint ptr %ctxdma.i96 to i32
  %conv.i = zext i32 %82 to i64
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %conv.i, ptr %79, align 8
  %addr.i = getelementptr inbounds %struct.nouveau_channel, ptr %77, i32 0, i32 10, i32 3
  %84 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %addr.i, align 8
  %conv2.i = trunc i64 %85 to i32
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv2.i, ptr %80, align 4
  %user.i97 = getelementptr inbounds %struct.nouveau_channel, ptr %77, i32 0, i32 17
  %call4.i = call i32 @nvif_object_ctor(ptr noundef %device, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 16494, ptr noundef nonnull %args.i92, i32 noundef 16, ptr noundef %user.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i98 = icmp eq i32 %call4.i, 0
  br i1 %cmp.i98, label %if.end.i.nouveau_channel_dma.exit_crit_edge, label %land.rhs.i

if.end.i.nouveau_channel_dma.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_dma.exit

land.rhs.i:                                       ; preds = %if.end.i
  %call4.1.i = call i32 @nvif_object_ctor(ptr noundef %device, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 5998, ptr noundef nonnull %args.i92, i32 noundef 16, ptr noundef %user.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1.i)
  %cmp.1.i = icmp eq i32 %call4.1.i, 0
  br i1 %cmp.1.i, label %land.rhs.i.nouveau_channel_dma.exit_crit_edge, label %land.rhs.1.i

land.rhs.i.nouveau_channel_dma.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_dma.exit

land.rhs.1.i:                                     ; preds = %land.rhs.i
  %call4.2.i = call i32 @nvif_object_ctor(ptr noundef %device, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 110, ptr noundef nonnull %args.i92, i32 noundef 16, ptr noundef %user.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2.i)
  %cmp.2.i = icmp eq i32 %call4.2.i, 0
  br i1 %cmp.2.i, label %land.rhs.1.i.nouveau_channel_dma.exit_crit_edge, label %land.rhs.2.i

land.rhs.1.i.nouveau_channel_dma.exit_crit_edge:  ; preds = %land.rhs.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_dma.exit

land.rhs.2.i:                                     ; preds = %land.rhs.1.i
  %call4.3.i = call i32 @nvif_object_ctor(ptr noundef %device, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 107, ptr noundef nonnull %args.i92, i32 noundef 16, ptr noundef %user.i97) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3.i)
  %cmp.3.i = icmp eq i32 %call4.3.i, 0
  br i1 %cmp.3.i, label %land.rhs.2.i.nouveau_channel_dma.exit_crit_edge, label %land.rhs.3.i

land.rhs.2.i.nouveau_channel_dma.exit_crit_edge:  ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_dma.exit

land.rhs.3.i:                                     ; preds = %land.rhs.2.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @nouveau_channel_del(ptr noundef %pchan) #5
  br label %do.body16

nouveau_channel_dma.exit:                         ; preds = %land.rhs.2.i.nouveau_channel_dma.exit_crit_edge, %land.rhs.1.i.nouveau_channel_dma.exit_crit_edge, %land.rhs.i.nouveau_channel_dma.exit_crit_edge, %if.end.i.nouveau_channel_dma.exit_crit_edge
  %87 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %73, align 1
  %conv7.i = zext i8 %88 to i32
  %chid8.i = getelementptr inbounds %struct.nouveau_channel, ptr %77, i32 0, i32 4
  %89 = ptrtoint ptr %chid8.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %conv7.i, ptr %chid8.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i93) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i92) #5
  br label %if.end42

do.body16:                                        ; preds = %land.rhs.3.i, %do.end.do.body16_crit_edge
  %retval.0.i99.ph = phi i32 [ %call.i94, %do.end.do.body16_crit_edge ], [ %call4.3.i, %land.rhs.3.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chan.i93) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i92) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nouveau_channel_new.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nouveau_channel_new, %if.then30)) #5
          to label %cleanup [label %if.then30], !srcloc !79

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %drm31 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 1
  %90 = ptrtoint ptr %drm31 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %drm31, align 8
  %dev32 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev32, align 8
  %dev33 = getelementptr inbounds %struct.drm_device, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev33, align 4
  %name34 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nouveau_channel_new.__UNIQUE_ID_ddebug324, ptr noundef %95, ptr noundef nonnull @.str.8, ptr noundef %name34, i32 noundef %retval.0.i99.ph) #5
  br label %cleanup

if.end42:                                         ; preds = %nouveau_channel_dma.exit, %nouveau_channel_ind.exit.thread
  %96 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %pchan, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device1.i, align 8
  %drm2.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 2
  %100 = ptrtoint ptr %drm2.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %drm2.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args.i100) #5
  %102 = call ptr @memset(ptr %args.i100, i32 0, i32 24)
  %user.i101 = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 17
  %call.i102 = call i32 @nvif_object_map(ptr noundef %user.i101, ptr noundef null, i32 noundef 0) #5
  %oclass.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 17, i32 4
  %103 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %oclass.i, align 8
  %105 = add i32 %104, -36975
  call void @__sanitizer_cov_trace_const_cmp4(i32 14080, i32 %105)
  %106 = icmp ult i32 %105, 14080
  br i1 %106, label %if.then.i, label %if.end42.if.end20.i_crit_edge

if.end42.if.end20.i_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

if.then.i:                                        ; preds = %if.end42
  %kill.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 18
  %call8.i = call i32 @nvif_notify_ctor(ptr noundef %user.i101, ptr noundef nonnull @.str.13, ptr noundef nonnull @nouveau_channel_killed, i1 noundef zeroext true, i8 noundef zeroext 1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %kill.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i104, label %if.then.i.do.body.i105_crit_edge

if.then.i.do.body.i105_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i105

if.end.i104:                                      ; preds = %if.then.i
  %call12.i = call i32 @nvif_notify_get(ptr noundef %kill.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i103 = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i103, label %if.end.i104.if.end20.i_crit_edge, label %if.end.i104.do.body.i105_crit_edge

if.end.i104.do.body.i105_crit_edge:               ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i105

if.end.i104.if.end20.i_crit_edge:                 ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20.i

do.body.i105:                                     ; preds = %if.end.i104.do.body.i105_crit_edge, %if.then.i.do.body.i105_crit_edge
  %ret.0705.i = phi i32 [ %call12.i, %if.end.i104.do.body.i105_crit_edge ], [ %call8.i, %if.then.i.do.body.i105_crit_edge ]
  %drm15.i = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 1
  %107 = ptrtoint ptr %drm15.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %drm15.i, align 8
  %dev.i = getelementptr inbounds %struct.nouveau_drm, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 8
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev16.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %ret.0705.i) #8
  br label %nouveau_channel_init.exit.thread

if.end20.i:                                       ; preds = %if.end.i104.if.end20.i_crit_edge, %if.end42.if.end20.i_crit_edge
  %family.i = getelementptr inbounds %struct.nvif_device, ptr %99, i32 0, i32 1, i32 4
  %113 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %114)
  %cmp21.i = icmp ult i8 %114, 7
  br i1 %cmp21.i, label %if.then23.i, label %if.end20.i.if.end94.i_crit_edge

if.end20.i.if.end94.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %114)
  %cmp27.i = icmp eq i8 %114, 6
  br i1 %cmp27.i, label %if.then29.i, label %if.else.i106

if.then29.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  %vmm.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 3
  %115 = ptrtoint ptr %vmm.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vmm.i, align 8
  %limit.i = getelementptr inbounds %struct.nouveau_vmm, ptr %116, i32 0, i32 1, i32 2
  br label %if.end38.i

if.else.i106:                                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  %ram_user.i = getelementptr inbounds %struct.nvif_device, ptr %99, i32 0, i32 1, i32 7
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else.i106, %if.then29.i
  %.sink711.i = phi i8 [ 0, %if.then29.i ], [ 1, %if.else.i106 ]
  %.sink.i = phi i8 [ 0, %if.then29.i ], [ 3, %if.else.i106 ]
  %sub36.sink.in.in.i = phi ptr [ %limit.i, %if.then29.i ], [ %ram_user.i, %if.else.i106 ]
  %117 = ptrtoint ptr %sub36.sink.in.in.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %sub36.sink.in.i = load i64, ptr %sub36.sink.in.in.i, align 8
  %sub36.sink.i = add i64 %sub36.sink.in.i, -1
  %118 = getelementptr inbounds %struct.nv_dma_v0, ptr %args.i100, i32 0, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %.sink711.i, ptr %118, align 1
  %120 = getelementptr inbounds %struct.nv_dma_v0, ptr %args.i100, i32 0, i32 2
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %.sink.i, ptr %120, align 2
  %122 = getelementptr inbounds %struct.nv_dma_v0, ptr %args.i100, i32 0, i32 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 0, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nv_dma_v0, ptr %args.i100, i32 0, i32 5
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %sub36.sink.i, ptr %124, align 8
  %vram40.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 7
  %call41.i = call i32 @nvif_object_ctor(ptr noundef %user.i101, ptr noundef nonnull @.str.16, i32 noundef %arg0, i32 noundef 61, ptr noundef nonnull %args.i100, i32 noundef 24, ptr noundef %vram40.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end38.i.nouveau_channel_init.exit.thread_crit_edge

if.end38.i.nouveau_channel_init.exit.thread_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_init.exit.thread

if.end44.i:                                       ; preds = %if.end38.i
  %126 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %127)
  %cmp48.i = icmp ugt i8 %127, 5
  br i1 %cmp48.i, label %if.then50.i, label %if.else59.i

if.then50.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #7
  %128 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %118, align 1
  %129 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %120, align 2
  %130 = ptrtoint ptr %122 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 0, ptr %122, align 8
  %vmm54.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 3
  %131 = ptrtoint ptr %vmm54.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vmm54.i, align 8
  %limit56.i = getelementptr inbounds %struct.nouveau_vmm, ptr %132, i32 0, i32 1, i32 2
  %133 = ptrtoint ptr %limit56.i to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %limit56.i, align 8
  %sub57.i = add i64 %134, -1
  br label %if.end87.i

if.else59.i:                                      ; preds = %if.end44.i
  %135 = ptrtoint ptr %drm2.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %drm2.i, align 4
  %agp.i = getelementptr inbounds %struct.nouveau_drm, ptr %136, i32 0, i32 7
  %137 = ptrtoint ptr %agp.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %agp.i, align 4
  %tobool61.not.i = icmp eq ptr %138, null
  br i1 %tobool61.not.i, label %if.else77.i, label %if.then62.i

if.then62.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 4, ptr %118, align 1
  %140 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 3, ptr %120, align 2
  %base.i = getelementptr inbounds %struct.nouveau_drm, ptr %136, i32 0, i32 7, i32 1
  %141 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %base.i, align 4
  %conv67.i = zext i32 %142 to i64
  %143 = ptrtoint ptr %122 to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %conv67.i, ptr %122, align 8
  %size.i = getelementptr inbounds %struct.nouveau_drm, ptr %136, i32 0, i32 7, i32 2
  %144 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %size.i, align 4
  %add.i107 = add i32 %142, -1
  %sub74.i = add i32 %add.i107, %145
  %conv75.i108 = zext i32 %sub74.i to i64
  br label %if.end87.i

if.else77.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %118, align 1
  %147 = ptrtoint ptr %120 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 3, ptr %120, align 2
  %148 = ptrtoint ptr %122 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 0, ptr %122, align 8
  %vmm81.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 3
  %149 = ptrtoint ptr %vmm81.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %vmm81.i, align 8
  %limit83.i = getelementptr inbounds %struct.nouveau_vmm, ptr %150, i32 0, i32 1, i32 2
  %151 = ptrtoint ptr %limit83.i to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %limit83.i, align 8
  %sub84.i = add i64 %152, -1
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.else77.i, %if.then62.i, %if.then50.i
  %conv75.sink.i = phi i64 [ %conv75.i108, %if.then62.i ], [ %sub84.i, %if.else77.i ], [ %sub57.i, %if.then50.i ]
  %153 = ptrtoint ptr %124 to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 %conv75.sink.i, ptr %124, align 8
  %gart89.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 8
  %call90.i = call i32 @nvif_object_ctor(ptr noundef %user.i101, ptr noundef nonnull @.str.17, i32 noundef %arg1, i32 noundef 61, ptr noundef nonnull %args.i100, i32 noundef 24, ptr noundef %gart89.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %if.end87.i.if.end94.i_crit_edge, label %if.end87.i.nouveau_channel_init.exit.thread_crit_edge

if.end87.i.nouveau_channel_init.exit.thread_crit_edge: ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_init.exit.thread

if.end87.i.if.end94.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.end87.i.if.end94.i_crit_edge, %if.end20.i.if.end94.i_crit_edge
  %154 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %oclass.i, align 8
  %trunc.i = trunc i32 %155 to i8
  %156 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %sw.default.i [
    i8 107, label %if.end94.i.sw.bb.i_crit_edge
    i8 110, label %if.end94.i.sw.bb.i_crit_edge127
  ]

if.end94.i.sw.bb.i_crit_edge127:                  ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end94.i.sw.bb.i_crit_edge:                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end94.i.sw.bb.i_crit_edge, %if.end94.i.sw.bb.i_crit_edge127
  %user_put.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 16
  %157 = ptrtoint ptr %user_put.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 64, ptr %user_put.i, align 8
  %user_get.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 15
  %158 = ptrtoint ptr %user_get.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 68, ptr %user_get.i, align 4
  %dma.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13
  %159 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 16382, ptr %dma.i, align 8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  %user_put97.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 16
  %160 = ptrtoint ptr %user_put97.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 64, ptr %user_put97.i, align 8
  %user_get98.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 15
  %161 = ptrtoint ptr %user_get98.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 68, ptr %user_get98.i, align 4
  %user_get_hi.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 14
  %162 = ptrtoint ptr %user_get_hi.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 96, ptr %user_get_hi.i, align 8
  %dma99.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13
  %ib_base.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13, i32 4
  %163 = ptrtoint ptr %ib_base.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 16384, ptr %ib_base.i, align 8
  %ib_max.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13, i32 5
  %164 = ptrtoint ptr %ib_max.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 1023, ptr %ib_max.i, align 4
  %ib_put.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13, i32 7
  %165 = ptrtoint ptr %ib_put.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 0, ptr %ib_put.i, align 4
  %ib_free.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13, i32 6
  %166 = ptrtoint ptr %ib_free.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1023, ptr %ib_free.i, align 8
  %167 = ptrtoint ptr %dma99.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 16384, ptr %dma99.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i
  %dma112.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13
  %put.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13, i32 3
  %168 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %put.i, align 4
  %cur.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13, i32 2
  %169 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %cur.i, align 8
  %170 = ptrtoint ptr %dma112.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %dma112.i, align 8
  %free.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 13, i32 1
  %172 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %free.i, align 4
  %push.i = getelementptr inbounds %struct.anon.87, ptr %97, i32 0, i32 1
  %173 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %push.i, align 8
  %cur.i.i = getelementptr inbounds %struct.nvif_push, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %cur.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %176, i32 32
  %end.i.i = getelementptr inbounds %struct.nvif_push, ptr %174, i32 0, i32 6
  %177 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %end.i.i, align 4
  %cmp.not.i.i = icmp ult ptr %add.ptr.i.i, %178
  br i1 %cmp.not.i.i, label %sw.epilog.i.PUSH_WAIT.exit.i_crit_edge, label %if.then.i.i

sw.epilog.i.PUSH_WAIT.exit.i_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %PUSH_WAIT.exit.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  %179 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %174, align 8
  %call.i.i = call i32 %180(ptr noundef %174, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.PUSH_WAIT.exit.i_crit_edge, label %if.then.i.i.nouveau_channel_init.exit.thread_crit_edge

if.then.i.i.nouveau_channel_init.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_init.exit.thread

if.then.i.i.PUSH_WAIT.exit.i_crit_edge:           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %PUSH_WAIT.exit.i

PUSH_WAIT.exit.i:                                 ; preds = %if.then.i.i.PUSH_WAIT.exit.i_crit_edge, %sw.epilog.i.PUSH_WAIT.exit.i_crit_edge
  %181 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur.i.i, align 4
  %add.ptr4.i.i = getelementptr i32, ptr %182, i32 32
  %seg.i.i = getelementptr inbounds %struct.nvif_push, ptr %174, i32 0, i32 5
  %183 = ptrtoint ptr %seg.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %add.ptr4.i.i, ptr %seg.i.i, align 8
  br label %do.body129.i

do.body129.i:                                     ; preds = %if.end191.i.do.body129.i_crit_edge, %PUSH_WAIT.exit.i
  %i.0710.i = phi i32 [ 0, %PUSH_WAIT.exit.i ], [ %inc.i, %if.end191.i.do.body129.i_crit_edge ]
  %184 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %push.i, align 8
  %cur133.i = getelementptr inbounds %struct.nvif_push, ptr %185, i32 0, i32 4
  %186 = ptrtoint ptr %cur133.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %cur133.i, align 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %185, i32 0, i32 5
  %188 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %seg.i, align 8
  %cmp134.not.i = icmp ult ptr %187, %189
  br i1 %cmp134.not.i, label %do.body129.i.if.end154.i_crit_edge, label %do.end148.i, !prof !77

do.body129.i.if.end154.i_crit_edge:               ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154.i

do.end148.i:                                      ; preds = %do.body129.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 480, i32 noundef 9, ptr noundef nonnull @.str.18) #5
  br label %if.end154.i

if.end154.i:                                      ; preds = %do.end148.i, %do.body129.i.if.end154.i_crit_edge
  %190 = ptrtoint ptr %cur133.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %cur133.i, align 4
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %185, i32 0, i32 6
  %192 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %end.i, align 4
  %cmp166.not.i = icmp ult ptr %191, %193
  br i1 %cmp166.not.i, label %if.end154.i.if.end191.i_crit_edge, label %do.end185.i, !prof !77

if.end154.i.if.end191.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end191.i

do.end185.i:                                      ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 480, i32 noundef 9, ptr noundef nonnull @.str.19) #5
  br label %if.end191.i

if.end191.i:                                      ; preds = %do.end185.i, %if.end154.i.if.end191.i_crit_edge
  %194 = ptrtoint ptr %cur133.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %cur133.i, align 4
  %mem.i = getelementptr inbounds %struct.nvif_push, ptr %185, i32 0, i32 2
  %map.i = getelementptr inbounds %struct.nvif_push, ptr %185, i32 0, i32 2, i32 0, i32 6
  %196 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %map.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %195 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %197 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %198 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %mem.i, align 8
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %199, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %client207.i = getelementptr inbounds %struct.nvif_push, ptr %185, i32 0, i32 2, i32 0, i32 1
  %204 = ptrtoint ptr %client207.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %client207.i, align 4
  %name209.i = getelementptr inbounds %struct.nvif_object, ptr %205, i32 0, i32 2
  %206 = ptrtoint ptr %name209.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %name209.i, align 8
  %handle.i = getelementptr inbounds %struct.nvif_push, ptr %185, i32 0, i32 2, i32 0, i32 3
  %208 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %handle.i, align 4
  %name210.i = getelementptr inbounds %struct.nvif_push, ptr %185, i32 0, i32 2, i32 0, i32 2
  %210 = ptrtoint ptr %name210.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %name210.i, align 8
  call void (ptr, ptr, ...) %203(ptr noundef %mem.i, ptr noundef nonnull @.str.20, ptr noundef %207, i32 noundef %209, ptr noundef %211, i32 noundef %sub.ptr.sub.i, i32 noundef 0, ptr noundef nonnull @.str.15) #5
  %212 = ptrtoint ptr %cur133.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %cur133.i, align 4
  %incdec.ptr.i109 = getelementptr i32, ptr %213, i32 1
  store ptr %incdec.ptr.i109, ptr %cur133.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %213, align 4
  %inc.i = add nuw nsw i32 %i.0710.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %if.end191.i.do.body129.i_crit_edge

if.end191.i.do.body129.i_crit_edge:               ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body129.i

for.end.i:                                        ; preds = %if.end191.i
  %215 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %216)
  %cmp221.i = icmp ult i8 %216, 2
  br i1 %cmp221.i, label %if.then223.i, label %for.end.i.nouveau_channel_init.exit_crit_edge

for.end.i.nouveau_channel_init.exit_crit_edge:    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_init.exit

if.then223.i:                                     ; preds = %for.end.i
  %nvsw.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 9
  %call225.i = call i32 @nvif_object_ctor(ptr noundef %user.i101, ptr noundef nonnull @.str.21, i32 noundef 110, i32 noundef -4, ptr noundef null, i32 noundef 0, ptr noundef %nvsw.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call225.i)
  %tobool226.not.i = icmp eq i32 %call225.i, 0
  br i1 %tobool226.not.i, label %if.end228.i, label %if.then223.i.nouveau_channel_init.exit.thread_crit_edge

if.then223.i.nouveau_channel_init.exit.thread_crit_edge: ; preds = %if.then223.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_init.exit.thread

if.end228.i:                                      ; preds = %if.then223.i
  %217 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %push.i, align 8
  %cur.i691.i = getelementptr inbounds %struct.nvif_push, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %cur.i691.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cur.i691.i, align 4
  %add.ptr.i692.i = getelementptr i32, ptr %220, i32 2
  %end.i693.i = getelementptr inbounds %struct.nvif_push, ptr %218, i32 0, i32 6
  %221 = ptrtoint ptr %end.i693.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %end.i693.i, align 4
  %cmp.not.i694.i = icmp ult ptr %add.ptr.i692.i, %222
  br i1 %cmp.not.i694.i, label %if.end228.i.if.end314.i_crit_edge, label %if.then.i697.i

if.end228.i.if.end314.i_crit_edge:                ; preds = %if.end228.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end314.i

if.then.i697.i:                                   ; preds = %if.end228.i
  %223 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %218, align 8
  %call.i695.i = call i32 %224(ptr noundef %218, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i695.i)
  %tobool.not.i696.i = icmp eq i32 %call.i695.i, 0
  br i1 %tobool.not.i696.i, label %if.then.i697.i.if.end314.i_crit_edge, label %if.then.i697.i.nouveau_channel_init.exit.thread_crit_edge

if.then.i697.i.nouveau_channel_init.exit.thread_crit_edge: ; preds = %if.then.i697.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nouveau_channel_init.exit.thread

if.then.i697.i.if.end314.i_crit_edge:             ; preds = %if.then.i697.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end314.i

if.end314.i:                                      ; preds = %if.then.i697.i.if.end314.i_crit_edge, %if.end228.i.if.end314.i_crit_edge
  %225 = ptrtoint ptr %cur.i691.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %cur.i691.i, align 4
  %add.ptr4.i698.i = getelementptr i32, ptr %226, i32 2
  %seg.i699.i = getelementptr inbounds %struct.nvif_push, ptr %218, i32 0, i32 5
  %227 = ptrtoint ptr %seg.i699.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %add.ptr4.i698.i, ptr %seg.i699.i, align 8
  %228 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %push.i, align 8
  %cur331.i = getelementptr inbounds %struct.nvif_push, ptr %229, i32 0, i32 4
  %230 = ptrtoint ptr %cur331.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %cur331.i, align 4
  %seg332.i = getelementptr inbounds %struct.nvif_push, ptr %229, i32 0, i32 5
  %232 = ptrtoint ptr %seg332.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %seg332.i, align 8
  %cmp333.not.i = icmp ult ptr %231, %233
  br i1 %cmp333.not.i, label %if.end314.i.if.end358.i_crit_edge, label %do.end352.i, !prof !77

if.end314.i.if.end358.i_crit_edge:                ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end358.i

do.end352.i:                                      ; preds = %if.end314.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 494, i32 noundef 9, ptr noundef nonnull @.str.18) #5
  br label %if.end358.i

if.end358.i:                                      ; preds = %do.end352.i, %if.end314.i.if.end358.i_crit_edge
  %234 = ptrtoint ptr %cur331.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %cur331.i, align 4
  %end371.i = getelementptr inbounds %struct.nvif_push, ptr %229, i32 0, i32 6
  %236 = ptrtoint ptr %end371.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %end371.i, align 4
  %cmp372.not.i = icmp ult ptr %235, %237
  br i1 %cmp372.not.i, label %if.end358.i.if.end397.i_crit_edge, label %do.end391.i, !prof !77

if.end358.i.if.end397.i_crit_edge:                ; preds = %if.end358.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end397.i

do.end391.i:                                      ; preds = %if.end358.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 494, i32 noundef 9, ptr noundef nonnull @.str.19) #5
  br label %if.end397.i

if.end397.i:                                      ; preds = %do.end391.i, %if.end358.i.if.end397.i_crit_edge
  %238 = ptrtoint ptr %cur331.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %cur331.i, align 4
  %mem411.i = getelementptr inbounds %struct.nvif_push, ptr %229, i32 0, i32 2
  %map413.i = getelementptr inbounds %struct.nvif_push, ptr %229, i32 0, i32 2, i32 0, i32 6
  %240 = ptrtoint ptr %map413.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %map413.i, align 8
  %sub.ptr.lhs.cast415.i = ptrtoint ptr %239 to i32
  %sub.ptr.rhs.cast416.i = ptrtoint ptr %241 to i32
  %sub.ptr.sub417.i = sub i32 %sub.ptr.lhs.cast415.i, %sub.ptr.rhs.cast416.i
  %242 = ptrtoint ptr %mem411.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %mem411.i, align 8
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %243, align 4
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %245, align 4
  %client427.i = getelementptr inbounds %struct.nvif_push, ptr %229, i32 0, i32 2, i32 0, i32 1
  %248 = ptrtoint ptr %client427.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %client427.i, align 4
  %name429.i = getelementptr inbounds %struct.nvif_object, ptr %249, i32 0, i32 2
  %250 = ptrtoint ptr %name429.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %name429.i, align 8
  %handle430.i = getelementptr inbounds %struct.nvif_push, ptr %229, i32 0, i32 2, i32 0, i32 3
  %252 = ptrtoint ptr %handle430.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %handle430.i, align 4
  %name431.i = getelementptr inbounds %struct.nvif_push, ptr %229, i32 0, i32 2, i32 0, i32 2
  %254 = ptrtoint ptr %name431.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %name431.i, align 8
  call void (ptr, ptr, ...) %247(ptr noundef %mem411.i, ptr noundef nonnull @.str.25, ptr noundef %251, i32 noundef %253, ptr noundef %255, i32 noundef %sub.ptr.sub417.i, i32 noundef 270336, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.15) #5
  %256 = ptrtoint ptr %cur331.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %cur331.i, align 4
  %incdec.ptr438.i = getelementptr i32, ptr %257, i32 1
  store ptr %incdec.ptr438.i, ptr %cur331.i, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_store4_noabort(i32 %258)
  store i32 270336, ptr %257, align 4
  %259 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %push.i, align 8
  %handle449.i = getelementptr inbounds %struct.nouveau_channel, ptr %97, i32 0, i32 9, i32 3
  %261 = ptrtoint ptr %handle449.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %handle449.i, align 4
  %cur452.i = getelementptr inbounds %struct.nvif_push, ptr %260, i32 0, i32 4
  %263 = ptrtoint ptr %cur452.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %cur452.i, align 4
  %seg453.i = getelementptr inbounds %struct.nvif_push, ptr %260, i32 0, i32 5
  %265 = ptrtoint ptr %seg453.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %seg453.i, align 8
  %cmp454.not.i = icmp ult ptr %264, %266
  br i1 %cmp454.not.i, label %if.end397.i.if.end479.i_crit_edge, label %do.end473.i, !prof !77

if.end397.i.if.end479.i_crit_edge:                ; preds = %if.end397.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end479.i

do.end473.i:                                      ; preds = %if.end397.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 494, i32 noundef 9, ptr noundef nonnull @.str.18) #5
  br label %if.end479.i

if.end479.i:                                      ; preds = %do.end473.i, %if.end397.i.if.end479.i_crit_edge
  %267 = ptrtoint ptr %cur452.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %cur452.i, align 4
  %end492.i = getelementptr inbounds %struct.nvif_push, ptr %260, i32 0, i32 6
  %269 = ptrtoint ptr %end492.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %end492.i, align 4
  %cmp493.not.i = icmp ult ptr %268, %270
  br i1 %cmp493.not.i, label %if.end479.i.if.end518.i_crit_edge, label %do.end512.i, !prof !77

if.end479.i.if.end518.i_crit_edge:                ; preds = %if.end479.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end518.i

do.end512.i:                                      ; preds = %if.end479.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 494, i32 noundef 9, ptr noundef nonnull @.str.19) #5
  br label %if.end518.i

if.end518.i:                                      ; preds = %do.end512.i, %if.end479.i.if.end518.i_crit_edge
  %271 = ptrtoint ptr %cur452.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %cur452.i, align 4
  %mem532.i = getelementptr inbounds %struct.nvif_push, ptr %260, i32 0, i32 2
  %map534.i = getelementptr inbounds %struct.nvif_push, ptr %260, i32 0, i32 2, i32 0, i32 6
  %273 = ptrtoint ptr %map534.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %map534.i, align 8
  %sub.ptr.lhs.cast536.i = ptrtoint ptr %272 to i32
  %sub.ptr.rhs.cast537.i = ptrtoint ptr %274 to i32
  %sub.ptr.sub538.i = sub i32 %sub.ptr.lhs.cast536.i, %sub.ptr.rhs.cast537.i
  %275 = ptrtoint ptr %mem532.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mem532.i, align 8
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %278, align 4
  %client548.i = getelementptr inbounds %struct.nvif_push, ptr %260, i32 0, i32 2, i32 0, i32 1
  %281 = ptrtoint ptr %client548.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %client548.i, align 4
  %name550.i = getelementptr inbounds %struct.nvif_object, ptr %282, i32 0, i32 2
  %283 = ptrtoint ptr %name550.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %name550.i, align 8
  %handle551.i = getelementptr inbounds %struct.nvif_push, ptr %260, i32 0, i32 2, i32 0, i32 3
  %285 = ptrtoint ptr %handle551.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %handle551.i, align 4
  %name552.i = getelementptr inbounds %struct.nvif_push, ptr %260, i32 0, i32 2, i32 0, i32 2
  %287 = ptrtoint ptr %name552.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %name552.i, align 8
  call void (ptr, ptr, ...) %280(ptr noundef %mem532.i, ptr noundef nonnull @.str.26, ptr noundef %284, i32 noundef %286, ptr noundef %288, i32 noundef %sub.ptr.sub538.i, i32 noundef %262) #5
  %289 = ptrtoint ptr %cur452.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %cur452.i, align 4
  %incdec.ptr559.i = getelementptr i32, ptr %290, i32 1
  store ptr %incdec.ptr559.i, ptr %cur452.i, align 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %262, ptr %290, align 4
  %292 = ptrtoint ptr %push.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %push.i, align 8
  %kick.i.i = getelementptr inbounds %struct.nvif_push, ptr %293, i32 0, i32 1
  %294 = ptrtoint ptr %kick.i.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %kick.i.i, align 4
  call void %295(ptr noundef %293) #5
  br label %nouveau_channel_init.exit

nouveau_channel_init.exit.thread:                 ; preds = %if.then.i697.i.nouveau_channel_init.exit.thread_crit_edge, %if.then223.i.nouveau_channel_init.exit.thread_crit_edge, %if.then.i.i.nouveau_channel_init.exit.thread_crit_edge, %if.end87.i.nouveau_channel_init.exit.thread_crit_edge, %if.end38.i.nouveau_channel_init.exit.thread_crit_edge, %do.body.i105
  %retval.0.i110.ph = phi i32 [ %call.i.i, %if.then.i.i.nouveau_channel_init.exit.thread_crit_edge ], [ %call.i695.i, %if.then.i697.i.nouveau_channel_init.exit.thread_crit_edge ], [ %call225.i, %if.then223.i.nouveau_channel_init.exit.thread_crit_edge ], [ %call90.i, %if.end87.i.nouveau_channel_init.exit.thread_crit_edge ], [ %call41.i, %if.end38.i.nouveau_channel_init.exit.thread_crit_edge ], [ %ret.0705.i, %do.body.i105 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i100) #5
  br label %do.body46

nouveau_channel_init.exit:                        ; preds = %if.end518.i, %for.end.i.nouveau_channel_init.exit_crit_edge
  %296 = ptrtoint ptr %drm2.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %drm2.i, align 4
  %fence.i = getelementptr inbounds %struct.nouveau_drm, ptr %297, i32 0, i32 10
  %298 = ptrtoint ptr %fence.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %fence.i, align 8
  %context_new.i = getelementptr inbounds %struct.nouveau_fence_priv, ptr %299, i32 0, i32 3
  %300 = ptrtoint ptr %context_new.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %context_new.i, align 4
  %call569.i = call i32 %301(ptr noundef %97) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args.i100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call569.i)
  %tobool44.not = icmp eq i32 %call569.i, 0
  br i1 %tobool44.not, label %nouveau_channel_init.exit.cleanup_crit_edge, label %nouveau_channel_init.exit.do.body46_crit_edge

nouveau_channel_init.exit.do.body46_crit_edge:    ; preds = %nouveau_channel_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body46

nouveau_channel_init.exit.cleanup_crit_edge:      ; preds = %nouveau_channel_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body46:                                        ; preds = %nouveau_channel_init.exit.do.body46_crit_edge, %nouveau_channel_init.exit.thread
  %retval.0.i110120 = phi i32 [ %retval.0.i110.ph, %nouveau_channel_init.exit.thread ], [ %call569.i, %nouveau_channel_init.exit.do.body46_crit_edge ]
  %drm51 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 1
  %302 = ptrtoint ptr %drm51 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %drm51, align 8
  %dev52 = getelementptr inbounds %struct.nouveau_drm, ptr %303, i32 0, i32 3
  %304 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev52, align 8
  %dev53 = getelementptr inbounds %struct.drm_device, ptr %305, i32 0, i32 2
  %306 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev53, align 4
  %name54 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %307, ptr noundef nonnull @.str.9, ptr noundef %name54, i32 noundef %retval.0.i110120) #8
  call void @nouveau_channel_del(ptr noundef %pchan)
  br label %cleanup

cleanup:                                          ; preds = %do.body46, %nouveau_channel_init.exit.cleanup_crit_edge, %if.then30, %do.body16
  %retval.0 = phi i32 [ %retval.0.i110120, %do.body46 ], [ %retval.0.i99.ph, %if.then30 ], [ %retval.0.i99.ph, %do.body16 ], [ 0, %nouveau_channel_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_channels_init(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.anon.193, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #5
  %0 = call ptr @memcpy(ptr %args, ptr @__const.nouveau_channels_init.args, i32 24)
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3
  %call = call i32 @nvif_object_mthd(ptr noundef %device1, i32 noundef 0, ptr noundef nonnull %args, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %v = getelementptr inbounds %struct.anon.193, ptr %args, i32 0, i32 1
  %1 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %2)
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.anon.193, ptr %args, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data, align 8
  %conv = trunc i64 %4 to i32
  %chan = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 11
  %5 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %chan, align 8
  %call6 = call i64 @dma_fence_context_alloc(i32 noundef %conv) #5
  %context_base = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %context_base to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call6, ptr %context_base, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dma_fence_context_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_channel_prep(ptr noundef %drm, ptr noundef %device, i32 noundef %size, ptr nocapture noundef %pchan) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nv_dma_v0, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvif_object, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #5
  %2 = call ptr @memset(ptr %args, i32 0, i32 24)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 488) #9
  %4 = ptrtoint ptr %pchan to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %pchan, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %device1 = getelementptr inbounds %struct.nouveau_channel, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %device1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %device, ptr %device1, align 8
  %drm2 = getelementptr inbounds %struct.nouveau_channel, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %drm2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %drm, ptr %drm2, align 4
  %svm = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %svm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %svm, align 8
  %tobool4.not = icmp eq ptr %8, null
  %vmm = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 5
  %cond = select i1 %tobool4.not, ptr %vmm, ptr %svm
  %vmm6 = getelementptr inbounds %struct.nouveau_channel, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %vmm6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond, ptr %vmm6, align 8
  %killed = getelementptr inbounds %struct.nouveau_channel, ptr %call7.i.i, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %killed, i32 noundef 4) #5
  %10 = ptrtoint ptr %killed to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %killed, align 8
  %11 = load i32, ptr @nouveau_vram_pushbuf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  %spec.store.select = select i1 %tobool7.not, i32 20, i32 2
  %conv = zext i32 %size to i64
  %push = getelementptr inbounds %struct.nouveau_channel, ptr %call7.i.i, i32 0, i32 10
  %call10 = tail call i32 @nouveau_bo_new(ptr noundef %1, i64 noundef %conv, i32 noundef 0, i32 noundef %spec.store.select, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %push) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then12, label %if.end.if.then25_crit_edge

if.end.if.then25_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

if.then12:                                        ; preds = %if.end
  %12 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %push, align 8
  %call15 = tail call i32 @nouveau_bo_pin(ptr noundef %13, i32 noundef %spec.store.select, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.end23, label %if.then12.if.then25_crit_edge

if.then12.if.then25_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

if.end23:                                         ; preds = %if.then12
  %14 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %push, align 8
  %call21 = tail call i32 @nouveau_bo_map(ptr noundef %15) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool24.not = icmp eq i32 %call21, 0
  br i1 %tobool24.not, label %if.end26, label %if.end23.if.then25_crit_edge

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then25

if.then25:                                        ; preds = %if.end23.if.then25_crit_edge, %if.then12.if.then25_crit_edge, %if.end.if.then25_crit_edge
  %ret.0224 = phi i32 [ %call21, %if.end23.if.then25_crit_edge ], [ %call10, %if.end.if.then25_crit_edge ], [ %call15, %if.then12.if.then25_crit_edge ]
  tail call void @nouveau_channel_del(ptr noundef %pchan)
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %mem = getelementptr inbounds %struct.nvif_push, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %mem, align 8
  %client36 = getelementptr inbounds %struct.nvif_push, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %19 = ptrtoint ptr %client36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %client36, align 4
  %name = getelementptr inbounds %struct.nvif_push, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %20 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.11, ptr %name, align 8
  %21 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %push, align 8
  %kmap = getelementptr inbounds %struct.nouveau_bo, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kmap, align 8
  %map = getelementptr inbounds %struct.nvif_push, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 6
  %25 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %map, align 8
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @nouveau_channel_wait, ptr %call7.i.i, align 8
  %kick = getelementptr inbounds %struct.nvif_push, ptr %call7.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %kick to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @nouveau_channel_kick, ptr %kick, align 4
  %push54 = getelementptr inbounds %struct.anon.87, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %push54 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %push54, align 8
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %22, i32 0, i32 13
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %offset, align 8
  %addr = getelementptr inbounds %struct.nouveau_channel, ptr %call7.i.i, i32 0, i32 10, i32 3
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %addr, align 8
  %family = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %33)
  %cmp59 = icmp ugt i8 %33, 5
  br i1 %cmp59, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end26
  %34 = ptrtoint ptr %vmm6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vmm6, align 8
  %vma = getelementptr inbounds %struct.nouveau_channel, ptr %call7.i.i, i32 0, i32 10, i32 1
  %call66 = tail call i32 @nouveau_vma_new(ptr noundef %22, ptr noundef %35, ptr noundef %vma) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.then68

if.then68:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nouveau_channel_del(ptr noundef %pchan)
  br label %cleanup

if.end69:                                         ; preds = %if.then61
  %36 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vma, align 4
  %addr72 = getelementptr inbounds %struct.nouveau_vma, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %addr72 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %addr72, align 8
  %40 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %addr, align 8
  %41 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %42)
  %cmp78 = icmp ugt i8 %42, 6
  br i1 %cmp78, label %if.end69.cleanup_crit_edge, label %if.end81

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end81:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  %target82 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 1
  %43 = ptrtoint ptr %target82 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %target82, align 1
  %access = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 2
  %44 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %access, align 2
  %start = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 4
  %45 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 0, ptr %start, align 8
  %46 = ptrtoint ptr %vmm6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vmm6, align 8
  %limit = getelementptr inbounds %struct.nouveau_vmm, ptr %47, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %limit to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %limit, align 8
  %sub = add i64 %49, -1
  br label %if.end155

if.else:                                          ; preds = %if.end26
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %22, i32 0, i32 6
  %50 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %cmp88 = icmp eq i32 %53, 2
  br i1 %cmp88, label %if.then90, label %if.else123

if.then90:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp94 = icmp eq i8 %33, 1
  %target97 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 1
  br i1 %cmp94, label %if.then96, label %if.else114

if.then96:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %target97 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %target97, align 1
  %access98 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 2
  %55 = ptrtoint ptr %access98 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 3, ptr %access98, align 2
  %priv = getelementptr inbounds %struct.nvif_object, ptr %device, i32 0, i32 5
  %56 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %priv, align 4
  %device100 = getelementptr inbounds %struct.anon.196, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %device100 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device100, align 8
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 8
  %resource_addr = getelementptr inbounds %struct.nvkm_device_func, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %resource_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %resource_addr, align 4
  %call107 = tail call i32 %63(ptr noundef %59, i32 noundef 1) #5
  %conv108 = zext i32 %call107 to i64
  %start109 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 4
  %64 = ptrtoint ptr %start109 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv108, ptr %start109, align 8
  %ram_user = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 1, i32 7
  %65 = ptrtoint ptr %ram_user to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %ram_user, align 8
  %add = add nsw i64 %conv108, -1
  %sub112 = add i64 %add, %66
  br label %if.end155

if.else114:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %target97 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %target97, align 1
  %access116 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 2
  %68 = ptrtoint ptr %access116 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 3, ptr %access116, align 2
  %start117 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 4
  %69 = ptrtoint ptr %start117 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %start117, align 8
  %ram_user119 = getelementptr inbounds %struct.nvif_device, ptr %device, i32 0, i32 1, i32 7
  %70 = ptrtoint ptr %ram_user119 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %ram_user119, align 8
  %sub120 = add i64 %71, -1
  br label %if.end155

if.else123:                                       ; preds = %if.else
  %72 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %drm2, align 4
  %agp = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %agp, align 4
  %tobool125.not = icmp eq ptr %75, null
  %target145 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 1
  br i1 %tobool125.not, label %if.else144, label %if.then126

if.then126:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %target145 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 4, ptr %target145, align 1
  %access128 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 2
  %77 = ptrtoint ptr %access128 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 3, ptr %access128, align 2
  %base131 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %base131 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %base131, align 4
  %conv132 = zext i32 %79 to i64
  %start133 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 4
  %80 = ptrtoint ptr %start133 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %conv132, ptr %start133, align 8
  %size139 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 7, i32 2
  %81 = ptrtoint ptr %size139 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %size139, align 4
  %add140 = add i32 %79, -1
  %sub141 = add i32 %add140, %82
  %conv142 = zext i32 %sub141 to i64
  br label %if.end155

if.else144:                                       ; preds = %if.else123
  call void @__sanitizer_cov_trace_pc() #7
  %83 = ptrtoint ptr %target145 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %target145, align 1
  %access146 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 2
  %84 = ptrtoint ptr %access146 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 3, ptr %access146, align 2
  %start147 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 4
  %85 = ptrtoint ptr %start147 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 0, ptr %start147, align 8
  %86 = ptrtoint ptr %vmm6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vmm6, align 8
  %limit150 = getelementptr inbounds %struct.nouveau_vmm, ptr %87, i32 0, i32 1, i32 2
  %88 = ptrtoint ptr %limit150 to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %limit150, align 8
  %sub151 = add i64 %89, -1
  br label %if.end155

if.end155:                                        ; preds = %if.else144, %if.then126, %if.else114, %if.then96, %if.end81
  %sub120.sink = phi i64 [ %sub120, %if.else114 ], [ %sub112, %if.then96 ], [ %sub151, %if.else144 ], [ %conv142, %if.then126 ], [ %sub, %if.end81 ]
  %limit121 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 5
  %90 = ptrtoint ptr %limit121 to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %sub120.sink, ptr %limit121, align 8
  %ctxdma = getelementptr inbounds %struct.nouveau_channel, ptr %call7.i.i, i32 0, i32 10, i32 2
  %call158 = call i32 @nvif_object_ctor(ptr noundef %device, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %args, i32 noundef 24, ptr noundef %ctxdma) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end155.cleanup_crit_edge, label %if.then160

if.end155.cleanup_crit_edge:                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then160:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #7
  call void @nouveau_channel_del(ptr noundef %pchan)
  br label %cleanup

cleanup:                                          ; preds = %if.then160, %if.end155.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %if.then68, %if.then25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0224, %if.then25 ], [ %call66, %if.then68 ], [ %call158, %if.then160 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ], [ 0, %if.end155.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_channel_wait(ptr noundef %push, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur, align 8
  %cur2 = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 4
  %2 = ptrtoint ptr %cur2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur2, align 4
  %bgn = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 3
  %4 = ptrtoint ptr %bgn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bgn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %add = add i32 %sub.ptr.div, %1
  store i32 %add, ptr %cur, align 8
  %call.i = tail call i32 @nouveau_dma_wait(ptr noundef %push, i32 noundef 1, i32 noundef %size) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %free.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %free.i, align 4
  %sub.i = sub i32 %7, %size
  store i32 %sub.i, ptr %free.i, align 4
  %map = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 2, i32 0, i32 6
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 8
  %10 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur, align 8
  %add.ptr17 = getelementptr i32, ptr %9, i32 %11
  %12 = ptrtoint ptr %bgn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr17, ptr %bgn, align 8
  %13 = ptrtoint ptr %cur2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr17, ptr %cur2, align 4
  %add.ptr30 = getelementptr i32, ptr %add.ptr17, i32 %size
  %end = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 6
  %14 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr30, ptr %end, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_channel_kick(ptr noundef %push) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cur = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 13, i32 2
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur, align 8
  %cur2 = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 4
  %2 = ptrtoint ptr %cur2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur2, align 4
  %bgn = getelementptr inbounds %struct.nvif_push, ptr %push, i32 0, i32 3
  %4 = ptrtoint ptr %bgn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bgn, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %add = add i32 %sub.ptr.div, %1
  store i32 %add, ptr %cur, align 8
  %put.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 13, i32 3
  %6 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %put.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %7)
  %cmp.i = icmp eq i32 %add, %7
  br i1 %cmp.i, label %entry.FIRE_RING.exit_crit_edge, label %if.end.i

entry.FIRE_RING.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %FIRE_RING.exit

if.end.i:                                         ; preds = %entry
  %accel_done.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 11
  %8 = ptrtoint ptr %accel_done.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %accel_done.i, align 8
  %ib_max.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 13, i32 5
  %9 = ptrtoint ptr %ib_max.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ib_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.body11.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %addr.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 10, i32 3
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %addr.i, align 8
  %shl.i = shl i32 %7, 2
  %conv.i = sext i32 %shl.i to i64
  %add.i = add i64 %12, %conv.i
  %sub.i = sub i32 %add, %7
  %shl10.i = shl i32 %sub.i, 2
  tail call void @nv50_dma_push(ptr noundef %push, i64 noundef %add.i, i32 noundef %shl10.i) #5
  br label %if.end43.i

do.body11.i:                                      ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %push12.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 10
  %13 = ptrtoint ptr %push12.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %push12.i, align 8
  %call.i = tail call i32 @nouveau_bo_rd32(ptr noundef %14, i32 noundef 0) #5
  %map.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 17, i32 6
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 8
  %tobool13.not.i = icmp eq ptr %16, null
  br i1 %tobool13.not.i, label %if.else29.i, label %do.body17.i, !prof !76

do.body17.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur, align 8
  %shl21.i = shl i32 %18, 2
  %addr24.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %addr24.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %addr24.i, align 8
  %21 = trunc i64 %20 to i32
  %conv26.i = add i32 %shl21.i, %21
  %22 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i, align 8
  %user_put.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 16
  %24 = ptrtoint ptr %user_put.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %user_put.i, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %conv26.i) #5, !srcloc !82
  br label %if.end43.i

if.else29.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  %user.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 17
  %user_put30.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 16
  %26 = ptrtoint ptr %user_put30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %user_put30.i, align 8
  %conv31.i = zext i32 %27 to i64
  %28 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur, align 8
  %shl34.i = shl i32 %29, 2
  %addr37.i = getelementptr inbounds %struct.nouveau_channel, ptr %push, i32 0, i32 10, i32 3
  %30 = ptrtoint ptr %addr37.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %addr37.i, align 8
  %32 = trunc i64 %31 to i32
  %conv39.i = add i32 %shl34.i, %32
  tail call void @nvif_object_wr(ptr noundef %user.i, i32 noundef 4, i64 noundef %conv31.i, i32 noundef %conv39.i) #5
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else29.i, %do.body17.i, %if.then3.i
  %33 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cur, align 8
  %35 = ptrtoint ptr %put.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %put.i, align 4
  br label %FIRE_RING.exit

FIRE_RING.exit:                                   ; preds = %if.end43.i, %entry.FIRE_RING.exit_crit_edge
  %36 = ptrtoint ptr %cur2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur2, align 4
  %38 = ptrtoint ptr %bgn to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %bgn, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_dma_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_dma_push(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_channel_killed(ptr noundef %ntfy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr i8, ptr %ntfy, i32 -36
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %drm = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %name = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 12
  %chid = getelementptr i8, ptr %ntfy, i32 -292
  %8 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chid, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.27, ptr noundef %name, i32 noundef %9) #8
  %killed = getelementptr i8, ptr %ntfy, i32 80
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %killed, i32 noundef 4) #5
  %10 = ptrtoint ptr %killed to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %killed, align 4
  %fence = getelementptr i8, ptr %ntfy, i32 -92
  %11 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fence, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nouveau_fence_context_kill(ptr noundef nonnull %12, i32 noundef -19) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_context_kill(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !52, !53, !55, !57, !58, !59, !60, !61, !63, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__UNIQUE_ID_vram_pushbuf321, !1, !"__UNIQUE_ID_vram_pushbuf321", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 44, i32 1}
!2 = !{ptr @__param_vram_pushbuf, !3, !"__param_vram_pushbuf", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 46, i32 1}
!4 = !{ptr @__UNIQUE_ID_vram_pushbuftype322, !3, !"__UNIQUE_ID_vram_pushbuftype322", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 75, i32 4}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nouveau_channel_idle._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @nouveau_channel_idle._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 513, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nouveau_channel_new.__UNIQUE_ID_ddebug323, !14, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 516, i32 4}
!20 = !{ptr @nouveau_channel_new.__UNIQUE_ID_ddebug324, !19, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 523, i32 3}
!23 = !{ptr @nouveau_channel_new._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @nouveau_channel_new._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @nouveau_vram_pushbuf, !26, !"nouveau_vram_pushbuf", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 45, i32 5}
!27 = !{ptr @__param_str_vram_pushbuf, !3, !"__param_str_vram_pushbuf", i1 false, i1 false}
!28 = !{ptr @nouveau_channel_ind.oclasses, !29, !"oclasses", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 253, i32 19}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 316, i32 43}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 176, i32 37}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 238, i32 42}
!36 = distinct !{null, !37, !"oclasses", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 345, i32 19}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 392, i32 39}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 399, i32 4}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @nouveau_channel_init._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @nouveau_channel_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 419, i32 39}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 444, i32 39}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 480, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 484, i32 39}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 494, i32 3}
!57 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nouveau_chan.c", i32 53, i32 2}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @nouveau_channel_killed._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @nouveau_channel_killed._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{!"auto-init"}
!79 = !{i64 2148243035, i64 2148243040, i64 2148243053, i64 2148243097, i64 2148243131, i64 2148243152}
!80 = !{i64 2157177292}
!81 = !{i64 2157178383}
!82 = !{i64 5413844}
