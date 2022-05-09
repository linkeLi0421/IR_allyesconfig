; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/crcc37d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.118, %struct.anon.119, %struct.anon.120, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.118 = type { i32, i8, i32, i32 }
%struct.anon.119 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.120 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.117 }
%struct.anon.117 = type { ptr, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.126, %struct.anon.127, %struct.anon.129, ptr, %struct.anon.130, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.131, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.143 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.126 = type { ptr, i32, i32, i8 }
%struct.anon.127 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.128] }
%struct.anon.128 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.129 = type { i64, i64 }
%struct.anon.130 = type { i32, i64 }
%struct.anon.131 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.138, %struct.anon.139, %struct.anon.140, %struct.anon.141 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.132, i8 }
%union.anon.132 = type { %struct.anon.136 }
%struct.anon.136 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.138 = type { i32 }
%struct.anon.139 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.140 = type { i16, i16 }
%struct.anon.141 = type { i16, i16, i16, %struct.anon.142, i16 }
%struct.anon.142 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, %struct.mutex, i8 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.crcc37d_notifier = type { i32, [28 x i8], [2047 x %struct.crcc37d_entry] }
%struct.crcc37d_entry = type { [2 x i32], i32, i32, i32, [2 x i32], i32 }

@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/dispnv50/crcc37d.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.crcc37d_set_ctx = private unnamed_addr constant [16 x i8] c"crcc37d_set_ctx\00", align 1
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_CONTEXT_DMA_CRC(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Front End\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Compositor\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RG\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CRC output 1\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CRC output 2\00", [19 x i8] zeroinitializer }, align 32
@crcc37d_ctx_finished._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 106, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: CRC notifier context for head %d overflowed on %s: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"crcc37d_ctx_finished\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@crcc37d_ctx_finished._entry_ptr = internal global ptr @crcc37d_ctx_finished._entry, section ".printk_index", align 4
@crcc37d_ctx_finished._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str, i32 110, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: CRC notifier context for head %d overflowed: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@crcc37d_ctx_finished._entry_ptr.18 = internal global ptr @crcc37d_ctx_finished._entry.16, section ".printk_index", align 4
@crcc37d_ctx_finished._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str, i32 114, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Head %d CRC context status: %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@crcc37d_ctx_finished._entry_ptr.22 = internal global ptr @crcc37d_ctx_finished._entry.19, section ".printk_index", align 4
@crcc37d = dso_local constant { %struct.nv50_crc_func, [40 x i8] } { %struct.nv50_crc_func { ptr @crcc37d_set_src, ptr @crcc37d_set_ctx, ptr @crcc37d_get_entry, ptr @crcc37d_ctx_finished, i16 2017, i16 2047, i32 65536 }, [40 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@__func__.crcc37d_set_src = private unnamed_addr constant [16 x i8] c"crcc37d_set_src\00", align 1
@.str.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NVC37D_HEAD_SET_CRC_CONTROL(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 4, i64 8, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 63, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 96, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 97, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 98, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 99, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 100, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 104, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 108, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 113, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [8 x i8] c"crcc37d\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 119, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 45, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @crcc37d_ctx_finished._entry, ptr @crcc37d_ctx_finished._entry.16, ptr @crcc37d_ctx_finished._entry.19, ptr @crcc37d_ctx_finished._entry_ptr, ptr @crcc37d_ctx_finished._entry_ptr.18, ptr @crcc37d_ctx_finished._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @crcc37d, ptr @.str.23], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crcc37d_ctx_finished._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crcc37d_ctx_finished._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crcc37d_ctx_finished._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crcc37d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crcc37d_set_ctx(ptr nocapture noundef readonly %head, ptr noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
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
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %15, i32 2
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %17
  br i1 %cmp.not.i, label %entry.do.body6_crit_edge, label %if.then.i

entry.do.body6_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body6

do.body6:                                         ; preds = %if.then.i.do.body6_crit_edge, %entry.do.body6_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %21, i32 2
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %13, 10
  %add = add i32 %mul, 8576
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add)
  %tobool7.not = icmp ult i32 %add, 16384
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !50

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 15744
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !50

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !50

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end133

if.end133:                                        ; preds = %do.end127, %if.end95.if.end133_crit_edge
  %33 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %35 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %34 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %37 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %47 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %handle, align 4
  %name150 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %49 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.crcc37d_set_ctx) #3
  %51 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %52, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %24, ptr %52, align 4
  %tobool166.not = icmp eq ptr %ctx, null
  br i1 %tobool166.not, label %if.end133.cond.end_crit_edge, label %cond.true

if.end133.cond.end_crit_edge:                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end

cond.true:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #5
  %handle167 = getelementptr inbounds %struct.nv50_crc_notifier_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %handle167 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %handle167, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end133.cond.end_crit_edge
  %cond = phi i32 [ %55, %cond.true ], [ 0, %if.end133.cond.end_crit_edge ]
  %56 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cur.i, align 4
  %58 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %seg.i, align 8
  %cmp172.not = icmp ult ptr %57, %59
  br i1 %cmp172.not, label %cond.end.if.end197_crit_edge, label %do.end191, !prof !50

cond.end.if.end197_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end197

do.end191:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end197

if.end197:                                        ; preds = %do.end191, %cond.end.if.end197_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %cmp211.not = icmp ult ptr %61, %63
  br i1 %cmp211.not, label %if.end197.if.end236_crit_edge, label %do.end230, !prof !50

if.end197.if.end236_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end236

do.end230:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end236

if.end236:                                        ; preds = %do.end230, %if.end197.if.end236_crit_edge
  %64 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cur.i, align 4
  %66 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast254 = ptrtoint ptr %65 to i32
  %sub.ptr.rhs.cast255 = ptrtoint ptr %67 to i32
  %sub.ptr.sub256 = sub i32 %sub.ptr.lhs.cast254, %sub.ptr.rhs.cast255
  %68 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mem, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %74 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client, align 4
  %name268 = getelementptr inbounds %struct.nvif_object, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %name268 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name268, align 8
  %78 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %handle, align 4
  %80 = ptrtoint ptr %name150 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name150, align 8
  tail call void (ptr, ptr, ...) %73(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %sub.ptr.sub256, i32 noundef %cond) #3
  %82 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur.i, align 4
  %incdec.ptr277 = getelementptr i32, ptr %83, i32 1
  store ptr %incdec.ptr277, ptr %cur.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %cond, ptr %83, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end236, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end236 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crcc37d_get_entry(ptr nocapture readnone %head, ptr nocapture noundef readonly %ctx, i32 noundef %source, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.nvif_object, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %source)
  %cmp = icmp eq i32 %source, 2
  %rg_crc = getelementptr %struct.crcc37d_notifier, ptr %1, i32 0, i32 2, i32 %idx, i32 3
  %output_crc = getelementptr %struct.crcc37d_notifier, ptr %1, i32 0, i32 2, i32 %idx, i32 4
  %crc_addr.0 = select i1 %cmp, ptr %rg_crc, ptr %output_crc
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %crc_addr.0) #3, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !52
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @crcc37d_ctx_finished(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %map = getelementptr inbounds %struct.nvif_object, ptr %ctx, i32 0, i32 6
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !53
  %and4 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %6, 126
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.body20 [
    i32 0, label %if.end.do.body37_crit_edge
    i32 4, label %if.end.do.body_crit_edge
    i32 8, label %sw.bb7
    i32 16, label %sw.bb8
    i32 32, label %sw.bb9
    i32 64, label %sw.bb10
  ]

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.end.do.body37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body37

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %if.end.do.body_crit_edge
  %engine.0.ph = phi ptr [ @.str.8, %sw.bb7 ], [ @.str.9, %sw.bb8 ], [ @.str.10, %sw.bb9 ], [ @.str.11, %sw.bb10 ], [ @.str.7, %if.end.do.body_crit_edge ]
  %drm14 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %drm14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drm14, align 8
  %dev15 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev15, align 8
  %dev16 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev16, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %15, ptr noundef nonnull %engine.0.ph, i32 noundef %6) #6
  br label %do.body37

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %drm26 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %drm26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drm26, align 8
  %dev27 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev27, align 8
  %dev28 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev28, align 4
  %name29 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %index32 = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %index32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index32, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, ptr noundef %name29, i32 noundef %23, i32 noundef %6) #6
  br label %do.body37

do.body37:                                        ; preds = %do.body20, %do.body, %if.end.do.body37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %24 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body37.cleanup_crit_edge, label %do.body40

do.body37.cleanup_crit_edge:                      ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body40:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #5
  %drm46 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %drm46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drm46, align 8
  %dev47 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev47, align 8
  %dev48 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev48, align 4
  %name49 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %index52 = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %index52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %index52, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.20, ptr noundef %name49, i32 noundef %32, i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body40, %do.body37.cleanup_crit_edge, %entry.cleanup_crit_edge
  %33 = xor i1 %tobool.not, true
  ret i1 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crcc37d_set_src(ptr nocapture noundef readonly %head, i32 noundef %or, i32 noundef %source, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
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
  %core = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %push2 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %push2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push2, align 8
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 8
  %mul = shl i32 %13, 2
  %14 = and i32 %mul, 28
  %15 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %source, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 5, label %sw.bb22
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add = shl i32 %or, 12
  %16 = add i32 %add, 327680
  %17 = and i32 %16, 1044480
  %or121424 = or i32 %14, %17
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add15 = shl i32 %or, 12
  %18 = add i32 %add15, 393216
  %19 = and i32 %18, 1044480
  %or201422 = or i32 %14, %19
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %20 = or i32 %14, 196608
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb22, %sw.bb14, %sw.bb, %entry.sw.epilog_crit_edge
  %crc_args.0 = phi i32 [ %14, %entry.sw.epilog_crit_edge ], [ %20, %sw.bb22 ], [ %or201422, %sw.bb14 ], [ %or121424, %sw.bb ]
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %21 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %22, i32 4
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %23 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %24
  br i1 %cmp.not.i, label %sw.epilog.if.end_crit_edge, label %if.then.i

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then.i:                                        ; preds = %sw.epilog
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %26(ptr noundef %11, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %27 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %28, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %29 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %source)
  %tobool27.not = icmp eq i32 %source, 0
  %mul632 = shl i32 %13, 10
  br i1 %tobool27.not, label %do.body630, label %do.body30

do.body30:                                        ; preds = %if.end
  %add32 = add i32 %mul632, 8576
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add32)
  %tobool35.not = icmp ult i32 %add32, 16384
  br i1 %tobool35.not, label %do.body30.if.end81_crit_edge, label %do.end, !prof !50

do.body30.if.end81_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end81

do.end:                                           ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %if.end81

if.end81:                                         ; preds = %do.end, %do.body30.if.end81_crit_edge
  %30 = and i32 %add32, 15744
  %31 = or i32 %30, 262144
  %32 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cur.i, align 4
  %34 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %33, %35
  br i1 %cmp.not, label %if.end81.if.end125_crit_edge, label %do.end119, !prof !50

if.end81.if.end125_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end125

do.end119:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end125

if.end125:                                        ; preds = %do.end119, %if.end81.if.end125_crit_edge
  %36 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cur.i, align 4
  %38 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i, align 4
  %cmp138.not = icmp ult ptr %37, %39
  br i1 %cmp138.not, label %if.end125.if.end163_crit_edge, label %do.end157, !prof !50

if.end125.if.end163_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end163

do.end157:                                        ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end163

if.end163:                                        ; preds = %do.end157, %if.end125.if.end163_crit_edge
  %40 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %42 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %43 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %44 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mem, align 8
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %50 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %54 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %handle, align 4
  %name180 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %56 = ptrtoint ptr %name180 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name180, align 8
  tail call void (ptr, ptr, ...) %49(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %53, i32 noundef %55, ptr noundef %57, i32 noundef %sub.ptr.sub, i32 noundef %31, i32 noundef %add32, i32 noundef 1, ptr noundef nonnull @__func__.crcc37d_set_src) #3
  %58 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %59, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %31, ptr %59, align 4
  %handle196 = getelementptr inbounds %struct.nv50_crc_notifier_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %61 = ptrtoint ptr %handle196 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %handle196, align 4
  %63 = load ptr, ptr %cur.i, align 4
  %64 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %seg.i, align 8
  %cmp201.not = icmp ult ptr %63, %65
  br i1 %cmp201.not, label %if.end163.if.end226_crit_edge, label %do.end220, !prof !50

if.end163.if.end226_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end226

do.end220:                                        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end226

if.end226:                                        ; preds = %do.end220, %if.end163.if.end226_crit_edge
  %66 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur.i, align 4
  %68 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i, align 4
  %cmp240.not = icmp ult ptr %67, %69
  br i1 %cmp240.not, label %if.end226.if.end265_crit_edge, label %do.end259, !prof !50

if.end226.if.end265_crit_edge:                    ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end265

do.end259:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end265

if.end265:                                        ; preds = %do.end259, %if.end226.if.end265_crit_edge
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %72 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast283 = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast284 = ptrtoint ptr %73 to i32
  %sub.ptr.sub285 = sub i32 %sub.ptr.lhs.cast283, %sub.ptr.rhs.cast284
  %74 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mem, align 8
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %80 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %client, align 4
  %name297 = getelementptr inbounds %struct.nvif_object, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %name297 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name297, align 8
  %84 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %handle, align 4
  %86 = ptrtoint ptr %name180 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name180, align 8
  tail call void (ptr, ptr, ...) %79(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %83, i32 noundef %85, ptr noundef %87, i32 noundef %sub.ptr.sub285, i32 noundef %62) #3
  %88 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cur.i, align 4
  %incdec.ptr306 = getelementptr i32, ptr %89, i32 1
  store ptr %incdec.ptr306, ptr %cur.i, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %62, ptr %89, align 4
  %add316 = add i32 %mul632, 8580
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add316)
  %tobool319.not = icmp ult i32 %add316, 16384
  br i1 %tobool319.not, label %if.end265.if.end374_crit_edge, label %do.end339, !prof !50

if.end265.if.end374_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end374

do.end339:                                        ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %if.end374

if.end374:                                        ; preds = %do.end339, %if.end265.if.end374_crit_edge
  %91 = and i32 %add316, 15748
  %92 = or i32 %91, 262144
  %93 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cur.i, align 4
  %95 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %seg.i, align 8
  %cmp399.not = icmp ult ptr %94, %96
  br i1 %cmp399.not, label %if.end374.if.end424_crit_edge, label %do.end418, !prof !50

if.end374.if.end424_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end424

do.end418:                                        ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end424

if.end424:                                        ; preds = %do.end418, %if.end374.if.end424_crit_edge
  %97 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cur.i, align 4
  %99 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %end.i, align 4
  %cmp438.not = icmp ult ptr %98, %100
  br i1 %cmp438.not, label %if.end424.if.end463_crit_edge, label %do.end457, !prof !50

if.end424.if.end463_crit_edge:                    ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end463

do.end457:                                        ; preds = %if.end424
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end463

if.end463:                                        ; preds = %do.end457, %if.end424.if.end463_crit_edge
  %101 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cur.i, align 4
  %103 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast481 = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast482 = ptrtoint ptr %104 to i32
  %sub.ptr.sub483 = sub i32 %sub.ptr.lhs.cast481, %sub.ptr.rhs.cast482
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
  %name495 = getelementptr inbounds %struct.nvif_object, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %name495 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name495, align 8
  %115 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %handle, align 4
  %117 = ptrtoint ptr %name180 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %name180, align 8
  tail call void (ptr, ptr, ...) %110(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %114, i32 noundef %116, ptr noundef %118, i32 noundef %sub.ptr.sub483, i32 noundef %92, i32 noundef %add316, i32 noundef 1, ptr noundef nonnull @__func__.crcc37d_set_src) #3
  %119 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %cur.i, align 4
  %incdec.ptr506 = getelementptr i32, ptr %120, i32 1
  store ptr %incdec.ptr506, ptr %cur.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %92, ptr %120, align 4
  %122 = load ptr, ptr %cur.i, align 4
  %123 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %seg.i, align 8
  %cmp518.not = icmp ult ptr %122, %124
  br i1 %cmp518.not, label %if.end463.if.end543_crit_edge, label %do.end537, !prof !50

if.end463.if.end543_crit_edge:                    ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end543

do.end537:                                        ; preds = %if.end463
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end543

if.end543:                                        ; preds = %do.end537, %if.end463.if.end543_crit_edge
  %125 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cur.i, align 4
  %127 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %end.i, align 4
  %cmp557.not = icmp ult ptr %126, %128
  br i1 %cmp557.not, label %if.end543.if.end582_crit_edge, label %do.end576, !prof !50

if.end543.if.end582_crit_edge:                    ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end582

do.end576:                                        ; preds = %if.end543
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end582

if.end582:                                        ; preds = %do.end576, %if.end543.if.end582_crit_edge
  %129 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %cur.i, align 4
  %131 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast600 = ptrtoint ptr %130 to i32
  %sub.ptr.rhs.cast601 = ptrtoint ptr %132 to i32
  %sub.ptr.sub602 = sub i32 %sub.ptr.lhs.cast600, %sub.ptr.rhs.cast601
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
  %name614 = getelementptr inbounds %struct.nvif_object, ptr %140, i32 0, i32 2
  %141 = ptrtoint ptr %name614 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name614, align 8
  %143 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %handle, align 4
  %145 = ptrtoint ptr %name180 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %name180, align 8
  tail call void (ptr, ptr, ...) %138(ptr noundef %mem, ptr noundef nonnull @.str.23, ptr noundef %142, i32 noundef %144, ptr noundef %146, i32 noundef %sub.ptr.sub602, i32 noundef %crc_args.0) #3
  %147 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %cur.i, align 4
  %incdec.ptr623 = getelementptr i32, ptr %148, i32 1
  store ptr %incdec.ptr623, ptr %cur.i, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %crc_args.0, ptr %148, align 4
  br label %cleanup

do.body630:                                       ; preds = %if.end
  %add633 = add i32 %mul632, 8580
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add633)
  %tobool636.not = icmp ult i32 %add633, 16384
  br i1 %tobool636.not, label %do.body630.if.end691_crit_edge, label %do.end656, !prof !50

do.body630.if.end691_crit_edge:                   ; preds = %do.body630
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end691

do.end656:                                        ; preds = %do.body630
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %if.end691

if.end691:                                        ; preds = %do.end656, %do.body630.if.end691_crit_edge
  %150 = and i32 %add633, 15748
  %151 = or i32 %150, 262144
  %152 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %cur.i, align 4
  %154 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %seg.i, align 8
  %cmp716.not = icmp ult ptr %153, %155
  br i1 %cmp716.not, label %if.end691.if.end741_crit_edge, label %do.end735, !prof !50

if.end691.if.end741_crit_edge:                    ; preds = %if.end691
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end741

do.end735:                                        ; preds = %if.end691
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end741

if.end741:                                        ; preds = %do.end735, %if.end691.if.end741_crit_edge
  %156 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cur.i, align 4
  %158 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i, align 4
  %cmp755.not = icmp ult ptr %157, %159
  br i1 %cmp755.not, label %if.end741.if.end780_crit_edge, label %do.end774, !prof !50

if.end741.if.end780_crit_edge:                    ; preds = %if.end741
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end780

do.end774:                                        ; preds = %if.end741
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end780

if.end780:                                        ; preds = %do.end774, %if.end741.if.end780_crit_edge
  %160 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %cur.i, align 4
  %mem794 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map796 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %162 = ptrtoint ptr %map796 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map796, align 8
  %sub.ptr.lhs.cast798 = ptrtoint ptr %161 to i32
  %sub.ptr.rhs.cast799 = ptrtoint ptr %163 to i32
  %sub.ptr.sub800 = sub i32 %sub.ptr.lhs.cast798, %sub.ptr.rhs.cast799
  %164 = ptrtoint ptr %mem794 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %mem794, align 8
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %client810 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %170 = ptrtoint ptr %client810 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %client810, align 4
  %name812 = getelementptr inbounds %struct.nvif_object, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %name812 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name812, align 8
  %handle813 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %174 = ptrtoint ptr %handle813 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %handle813, align 4
  %name814 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %176 = ptrtoint ptr %name814 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %name814, align 8
  tail call void (ptr, ptr, ...) %169(ptr noundef %mem794, ptr noundef nonnull @.str.5, ptr noundef %173, i32 noundef %175, ptr noundef %177, i32 noundef %sub.ptr.sub800, i32 noundef %151, i32 noundef %add633, i32 noundef 1, ptr noundef nonnull @__func__.crcc37d_set_src) #3
  %178 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %cur.i, align 4
  %incdec.ptr823 = getelementptr i32, ptr %179, i32 1
  store ptr %incdec.ptr823, ptr %cur.i, align 4
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %151, ptr %179, align 4
  %181 = load ptr, ptr %cur.i, align 4
  %182 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %seg.i, align 8
  %cmp835.not = icmp ult ptr %181, %183
  br i1 %cmp835.not, label %if.end780.if.end860_crit_edge, label %do.end854, !prof !50

if.end780.if.end860_crit_edge:                    ; preds = %if.end780
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end860

do.end854:                                        ; preds = %if.end780
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end860

if.end860:                                        ; preds = %do.end854, %if.end780.if.end860_crit_edge
  %184 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %cur.i, align 4
  %186 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %end.i, align 4
  %cmp874.not = icmp ult ptr %185, %187
  br i1 %cmp874.not, label %if.end860.if.end899_crit_edge, label %do.end893, !prof !50

if.end860.if.end899_crit_edge:                    ; preds = %if.end860
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end899

do.end893:                                        ; preds = %if.end860
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end899

if.end899:                                        ; preds = %do.end893, %if.end860.if.end899_crit_edge
  %188 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %cur.i, align 4
  %190 = ptrtoint ptr %map796 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %map796, align 8
  %sub.ptr.lhs.cast917 = ptrtoint ptr %189 to i32
  %sub.ptr.rhs.cast918 = ptrtoint ptr %191 to i32
  %sub.ptr.sub919 = sub i32 %sub.ptr.lhs.cast917, %sub.ptr.rhs.cast918
  %192 = ptrtoint ptr %mem794 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mem794, align 8
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %193, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %198 = ptrtoint ptr %client810 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %client810, align 4
  %name931 = getelementptr inbounds %struct.nvif_object, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %name931 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %name931, align 8
  %202 = ptrtoint ptr %handle813 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %handle813, align 4
  %204 = ptrtoint ptr %name814 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %name814, align 8
  tail call void (ptr, ptr, ...) %197(ptr noundef %mem794, ptr noundef nonnull @.str.23, ptr noundef %201, i32 noundef %203, ptr noundef %205, i32 noundef %sub.ptr.sub919, i32 noundef 0) #3
  %206 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %cur.i, align 4
  %incdec.ptr940 = getelementptr i32, ptr %207, i32 1
  store ptr %incdec.ptr940, ptr %cur.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %207, align 4
  %add950 = add i32 %mul632, 8576
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add950)
  %tobool953.not = icmp ult i32 %add950, 16384
  br i1 %tobool953.not, label %if.end899.if.end1008_crit_edge, label %do.end973, !prof !50

if.end899.if.end1008_crit_edge:                   ; preds = %if.end899
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1008

do.end973:                                        ; preds = %if.end899
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %if.end1008

if.end1008:                                       ; preds = %do.end973, %if.end899.if.end1008_crit_edge
  %209 = and i32 %add950, 15744
  %210 = or i32 %209, 262144
  %211 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cur.i, align 4
  %213 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %seg.i, align 8
  %cmp1033.not = icmp ult ptr %212, %214
  br i1 %cmp1033.not, label %if.end1008.if.end1058_crit_edge, label %do.end1052, !prof !50

if.end1008.if.end1058_crit_edge:                  ; preds = %if.end1008
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1058

do.end1052:                                       ; preds = %if.end1008
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end1058

if.end1058:                                       ; preds = %do.end1052, %if.end1008.if.end1058_crit_edge
  %215 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %cur.i, align 4
  %217 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %end.i, align 4
  %cmp1072.not = icmp ult ptr %216, %218
  br i1 %cmp1072.not, label %if.end1058.if.end1097_crit_edge, label %do.end1091, !prof !50

if.end1058.if.end1097_crit_edge:                  ; preds = %if.end1058
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1097

do.end1091:                                       ; preds = %if.end1058
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1097

if.end1097:                                       ; preds = %do.end1091, %if.end1058.if.end1097_crit_edge
  %219 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %cur.i, align 4
  %221 = ptrtoint ptr %map796 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %map796, align 8
  %sub.ptr.lhs.cast1115 = ptrtoint ptr %220 to i32
  %sub.ptr.rhs.cast1116 = ptrtoint ptr %222 to i32
  %sub.ptr.sub1117 = sub i32 %sub.ptr.lhs.cast1115, %sub.ptr.rhs.cast1116
  %223 = ptrtoint ptr %mem794 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %mem794, align 8
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %227 = ptrtoint ptr %226 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %226, align 4
  %229 = ptrtoint ptr %client810 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %client810, align 4
  %name1129 = getelementptr inbounds %struct.nvif_object, ptr %230, i32 0, i32 2
  %231 = ptrtoint ptr %name1129 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %name1129, align 8
  %233 = ptrtoint ptr %handle813 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %handle813, align 4
  %235 = ptrtoint ptr %name814 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %name814, align 8
  tail call void (ptr, ptr, ...) %228(ptr noundef %mem794, ptr noundef nonnull @.str.5, ptr noundef %232, i32 noundef %234, ptr noundef %236, i32 noundef %sub.ptr.sub1117, i32 noundef %210, i32 noundef %add950, i32 noundef 1, ptr noundef nonnull @__func__.crcc37d_set_src) #3
  %237 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1140 = getelementptr i32, ptr %238, i32 1
  store ptr %incdec.ptr1140, ptr %cur.i, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %210, ptr %238, align 4
  %240 = load ptr, ptr %cur.i, align 4
  %241 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %seg.i, align 8
  %cmp1152.not = icmp ult ptr %240, %242
  br i1 %cmp1152.not, label %if.end1097.if.end1177_crit_edge, label %do.end1171, !prof !50

if.end1097.if.end1177_crit_edge:                  ; preds = %if.end1097
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1177

do.end1171:                                       ; preds = %if.end1097
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.3) #3
  br label %if.end1177

if.end1177:                                       ; preds = %do.end1171, %if.end1097.if.end1177_crit_edge
  %243 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %cur.i, align 4
  %245 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %end.i, align 4
  %cmp1191.not = icmp ult ptr %244, %246
  br i1 %cmp1191.not, label %if.end1177.if.end1216_crit_edge, label %do.end1210, !prof !50

if.end1177.if.end1216_crit_edge:                  ; preds = %if.end1177
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end1216

do.end1210:                                       ; preds = %if.end1177
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef nonnull @.str.4) #3
  br label %if.end1216

if.end1216:                                       ; preds = %do.end1210, %if.end1177.if.end1216_crit_edge
  %247 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %cur.i, align 4
  %249 = ptrtoint ptr %map796 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %map796, align 8
  %sub.ptr.lhs.cast1234 = ptrtoint ptr %248 to i32
  %sub.ptr.rhs.cast1235 = ptrtoint ptr %250 to i32
  %sub.ptr.sub1236 = sub i32 %sub.ptr.lhs.cast1234, %sub.ptr.rhs.cast1235
  %251 = ptrtoint ptr %mem794 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mem794, align 8
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %252, align 4
  %255 = ptrtoint ptr %254 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %254, align 4
  %257 = ptrtoint ptr %client810 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %client810, align 4
  %name1248 = getelementptr inbounds %struct.nvif_object, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %name1248 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %name1248, align 8
  %261 = ptrtoint ptr %handle813 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %handle813, align 4
  %263 = ptrtoint ptr %name814 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %name814, align 8
  tail call void (ptr, ptr, ...) %256(ptr noundef %mem794, ptr noundef nonnull @.str.6, ptr noundef %260, i32 noundef %262, ptr noundef %264, i32 noundef %sub.ptr.sub1236, i32 noundef 0) #3
  %265 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1257 = getelementptr i32, ptr %266, i32 1
  store ptr %incdec.ptr1257, ptr %cur.i, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %266, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1216, %if.end582, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1216 ], [ 0, %if.end582 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 63, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__func__.crcc37d_set_ctx, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 96, i32 29}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 97, i32 29}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 98, i32 29}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 99, i32 29}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 100, i32 29}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 104, i32 4}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.15, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @crcc37d_ctx_finished._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @crcc37d_ctx_finished._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 108, i32 4}
!28 = !{ptr @crcc37d_ctx_finished._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @crcc37d_ctx_finished._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 113, i32 2}
!32 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @crcc37d_ctx_finished._entry.19, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @crcc37d_ctx_finished._entry_ptr.22, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @crcc37d, !36, !"crcc37d", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 119, i32 28}
!37 = !{ptr @__func__.crcc37d_set_src, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 44, i32 3}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c", i32 45, i32 3}
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
!51 = !{i64 6870698}
!52 = !{i64 2157888534}
!53 = !{i64 2157888845}
