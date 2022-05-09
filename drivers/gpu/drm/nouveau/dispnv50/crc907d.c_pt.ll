; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/crc907d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/crc907d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.crc907d_notifier = type { i32, i32, [255 x %struct.crc907d_entry] }
%struct.crc907d_entry = type { i32, i32, [2 x i32] }

@crc907d = dso_local constant { %struct.nv50_crc_func, [40 x i8] } { %struct.nv50_crc_func { ptr @crc907d_set_src, ptr @crc907d_set_ctx, ptr @crc907d_get_entry, ptr @crc907d_ctx_finished, i16 245, i16 255, i32 4088 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/dispnv50/crc907d.c\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.crc907d_set_src = private unnamed_addr constant [16 x i8] c"crc907d_set_src\00", align 1
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_CONTEXT_DMA_CRC(i)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"[%s/%08x:%s] %08x: %08x-> NV907D_HEAD_SET_CRC_CONTROL(i)\0A\00", [38 x i8] zeroinitializer }, align 32
@__func__.crc907d_set_ctx = private unnamed_addr constant [16 x i8] c"crc907d_set_ctx\00", align 1
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DSI\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Compositor\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CRC output 1\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CRC output 2\00", [19 x i8] zeroinitializer }, align 32
@crc907d_ctx_finished._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 121, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: CRC notifier context for head %d overflowed on %s: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"crc907d_ctx_finished\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@crc907d_ctx_finished._entry_ptr = internal global ptr @crc907d_ctx_finished._entry, section ".printk_index", align 4
@crc907d_ctx_finished._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str, i32 125, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: CRC notifier context for head %d overflowed: %x\0A\00", [43 x i8] zeroinitializer }, align 32
@crc907d_ctx_finished._entry_ptr.18 = internal global ptr @crc907d_ctx_finished._entry.16, section ".printk_index", align 4
@crc907d_ctx_finished._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str, i32 129, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Head %d CRC context status: %x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@crc907d_ctx_finished._entry_ptr.22 = internal global ptr @crc907d_ctx_finished._entry.19, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@switch.table.crc907d_ctx_finished = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.8, ptr @.str.10, ptr @.str.8, ptr @.str.8, ptr @.str.8, ptr @.str.11], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.23 = private unnamed_addr constant [8 x i8] c"crc907d\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 134, i32 28 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 64, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 65, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 112, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 113, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 114, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 115, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 119, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 123, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 128, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [34 x i8] c"switch.table.crc907d_ctx_finished\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @crc907d_ctx_finished._entry, ptr @crc907d_ctx_finished._entry.16, ptr @crc907d_ctx_finished._entry.19, ptr @crc907d_ctx_finished._entry_ptr, ptr @crc907d_ctx_finished._entry_ptr.18, ptr @crc907d_ctx_finished._entry_ptr.22, ptr @crc907d, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @switch.table.crc907d_ctx_finished], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc907d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc907d_ctx_finished._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc907d_ctx_finished._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc907d_ctx_finished._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.crc907d_ctx_finished to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc907d_set_src(ptr nocapture noundef readonly %head, i32 noundef %or, i32 noundef %source, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %14 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %source, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb16
    i32 4, label %sw.bb24
    i32 5, label %sw.bb32
    i32 0, label %sw.bb41
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl i32 %or, 12
  %15 = add i32 %mul, 986880
  %16 = or i32 %15, -1048512
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul8 = shl i32 %or, 16
  %17 = or i32 %mul8, -983232
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add17 = shl i32 %or, 8
  %18 = add i32 %add17, 1044480
  %19 = or i32 %18, -1048512
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add25 = shl i32 %13, 8
  %20 = add i32 %add25, 1046528
  %21 = or i32 %20, -1048512
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mul33 = shl i32 %13, 12
  %22 = add i32 %mul33, 1019648
  %23 = or i32 %22, -1048512
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb41, %sw.bb32, %sw.bb24, %sw.bb16, %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %crc_args.0 = phi i32 [ -1048512, %entry.sw.epilog_crit_edge ], [ -192, %sw.bb41 ], [ %23, %sw.bb32 ], [ %21, %sw.bb24 ], [ %19, %sw.bb16 ], [ %17, %sw.bb7 ], [ %16, %sw.bb ]
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 4
  %24 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %25, i32 4
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 6
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %27
  br i1 %cmp.not.i, label %sw.epilog.if.end_crit_edge, label %if.then.i

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %sw.epilog
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %29(ptr noundef %11, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %sw.epilog.if.end_crit_edge
  %30 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %31, i32 4
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 5
  %32 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %source)
  %tobool46.not = icmp eq i32 %source, 0
  %mul651 = mul i32 %13, 768
  br i1 %tobool46.not, label %do.body649, label %do.body49

do.body49:                                        ; preds = %if.end
  %add51 = add i32 %mul651, 1080
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add51)
  %tobool54.not = icmp ult i32 %add51, 4096
  br i1 %tobool54.not, label %do.body49.if.end100_crit_edge, label %do.end, !prof !48

do.body49.if.end100_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

do.end:                                           ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end100

if.end100:                                        ; preds = %do.end, %do.body49.if.end100_crit_edge
  %33 = and i32 %add51, 3896
  %34 = or i32 %33, 262144
  %35 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur.i, align 4
  %37 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %36, %38
  br i1 %cmp.not, label %if.end100.if.end144_crit_edge, label %do.end138, !prof !48

if.end100.if.end144_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end144

do.end138:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end144

if.end144:                                        ; preds = %do.end138, %if.end100.if.end144_crit_edge
  %39 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur.i, align 4
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %cmp157.not = icmp ult ptr %40, %42
  br i1 %cmp157.not, label %if.end144.if.end182_crit_edge, label %do.end176, !prof !48

if.end144.if.end182_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end182

do.end176:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end182

if.end182:                                        ; preds = %do.end176, %if.end144.if.end182_crit_edge
  %43 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %45 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %46 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %47 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mem, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %53 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 4
  %name199 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %59 = ptrtoint ptr %name199 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name199, align 8
  tail call void (ptr, ptr, ...) %52(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %56, i32 noundef %58, ptr noundef %60, i32 noundef %sub.ptr.sub, i32 noundef %34, i32 noundef %add51, i32 noundef 1, ptr noundef nonnull @__func__.crc907d_set_src) #4
  %61 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %62, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %34, ptr %62, align 4
  %handle215 = getelementptr inbounds %struct.nv50_crc_notifier_ctx, ptr %ctx, i32 0, i32 1, i32 3
  %64 = ptrtoint ptr %handle215 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %handle215, align 4
  %66 = load ptr, ptr %cur.i, align 4
  %67 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %seg.i, align 8
  %cmp220.not = icmp ult ptr %66, %68
  br i1 %cmp220.not, label %if.end182.if.end245_crit_edge, label %do.end239, !prof !48

if.end182.if.end245_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end245

do.end239:                                        ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end245

if.end245:                                        ; preds = %do.end239, %if.end182.if.end245_crit_edge
  %69 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cur.i, align 4
  %71 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %end.i, align 4
  %cmp259.not = icmp ult ptr %70, %72
  br i1 %cmp259.not, label %if.end245.if.end284_crit_edge, label %do.end278, !prof !48

if.end245.if.end284_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end284

do.end278:                                        ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end284

if.end284:                                        ; preds = %do.end278, %if.end245.if.end284_crit_edge
  %73 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cur.i, align 4
  %75 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast302 = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast303 = ptrtoint ptr %76 to i32
  %sub.ptr.sub304 = sub i32 %sub.ptr.lhs.cast302, %sub.ptr.rhs.cast303
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
  %name316 = getelementptr inbounds %struct.nvif_object, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %name316 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %name316, align 8
  %87 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %handle, align 4
  %89 = ptrtoint ptr %name199 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %name199, align 8
  tail call void (ptr, ptr, ...) %82(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %86, i32 noundef %88, ptr noundef %90, i32 noundef %sub.ptr.sub304, i32 noundef %65) #4
  %91 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cur.i, align 4
  %incdec.ptr325 = getelementptr i32, ptr %92, i32 1
  store ptr %incdec.ptr325, ptr %cur.i, align 4
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %65, ptr %92, align 4
  %add335 = add i32 %mul651, 1072
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add335)
  %tobool338.not = icmp ult i32 %add335, 4096
  br i1 %tobool338.not, label %if.end284.if.end393_crit_edge, label %do.end358, !prof !48

if.end284.if.end393_crit_edge:                    ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end393

do.end358:                                        ; preds = %if.end284
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end393

if.end393:                                        ; preds = %do.end358, %if.end284.if.end393_crit_edge
  %94 = and i32 %add335, 3888
  %95 = or i32 %94, 262144
  %96 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cur.i, align 4
  %98 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %seg.i, align 8
  %cmp418.not = icmp ult ptr %97, %99
  br i1 %cmp418.not, label %if.end393.if.end443_crit_edge, label %do.end437, !prof !48

if.end393.if.end443_crit_edge:                    ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end443

do.end437:                                        ; preds = %if.end393
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end443

if.end443:                                        ; preds = %do.end437, %if.end393.if.end443_crit_edge
  %100 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i, align 4
  %102 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %end.i, align 4
  %cmp457.not = icmp ult ptr %101, %103
  br i1 %cmp457.not, label %if.end443.if.end482_crit_edge, label %do.end476, !prof !48

if.end443.if.end482_crit_edge:                    ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end482

do.end476:                                        ; preds = %if.end443
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end482

if.end482:                                        ; preds = %do.end476, %if.end443.if.end482_crit_edge
  %104 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cur.i, align 4
  %106 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast500 = ptrtoint ptr %105 to i32
  %sub.ptr.rhs.cast501 = ptrtoint ptr %107 to i32
  %sub.ptr.sub502 = sub i32 %sub.ptr.lhs.cast500, %sub.ptr.rhs.cast501
  %108 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mem, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %114 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %client, align 4
  %name514 = getelementptr inbounds %struct.nvif_object, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %name514 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name514, align 8
  %118 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %handle, align 4
  %120 = ptrtoint ptr %name199 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %name199, align 8
  tail call void (ptr, ptr, ...) %113(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %117, i32 noundef %119, ptr noundef %121, i32 noundef %sub.ptr.sub502, i32 noundef %95, i32 noundef %add335, i32 noundef 1, ptr noundef nonnull @__func__.crc907d_set_src) #4
  %122 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cur.i, align 4
  %incdec.ptr525 = getelementptr i32, ptr %123, i32 1
  store ptr %incdec.ptr525, ptr %cur.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %95, ptr %123, align 4
  %125 = load ptr, ptr %cur.i, align 4
  %126 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %seg.i, align 8
  %cmp537.not = icmp ult ptr %125, %127
  br i1 %cmp537.not, label %if.end482.if.end562_crit_edge, label %do.end556, !prof !48

if.end482.if.end562_crit_edge:                    ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end562

do.end556:                                        ; preds = %if.end482
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end562

if.end562:                                        ; preds = %do.end556, %if.end482.if.end562_crit_edge
  %128 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %cur.i, align 4
  %130 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i, align 4
  %cmp576.not = icmp ult ptr %129, %131
  br i1 %cmp576.not, label %if.end562.if.end601_crit_edge, label %do.end595, !prof !48

if.end562.if.end601_crit_edge:                    ; preds = %if.end562
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end601

do.end595:                                        ; preds = %if.end562
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 65, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end601

if.end601:                                        ; preds = %do.end595, %if.end562.if.end601_crit_edge
  %132 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %cur.i, align 4
  %134 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast619 = ptrtoint ptr %133 to i32
  %sub.ptr.rhs.cast620 = ptrtoint ptr %135 to i32
  %sub.ptr.sub621 = sub i32 %sub.ptr.lhs.cast619, %sub.ptr.rhs.cast620
  %136 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mem, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %137, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %142 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %client, align 4
  %name633 = getelementptr inbounds %struct.nvif_object, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %name633 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %name633, align 8
  %146 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %handle, align 4
  %148 = ptrtoint ptr %name199 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %name199, align 8
  tail call void (ptr, ptr, ...) %141(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %145, i32 noundef %147, ptr noundef %149, i32 noundef %sub.ptr.sub621, i32 noundef %crc_args.0) #4
  %150 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cur.i, align 4
  %incdec.ptr642 = getelementptr i32, ptr %151, i32 1
  store ptr %incdec.ptr642, ptr %cur.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %crc_args.0, ptr %151, align 4
  br label %cleanup

do.body649:                                       ; preds = %if.end
  %add652 = add i32 %mul651, 1072
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add652)
  %tobool655.not = icmp ult i32 %add652, 4096
  br i1 %tobool655.not, label %do.body649.if.end710_crit_edge, label %do.end675, !prof !48

do.body649.if.end710_crit_edge:                   ; preds = %do.body649
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end710

do.end675:                                        ; preds = %do.body649
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end710

if.end710:                                        ; preds = %do.end675, %do.body649.if.end710_crit_edge
  %153 = and i32 %add652, 3888
  %154 = or i32 %153, 262144
  %155 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %cur.i, align 4
  %157 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %seg.i, align 8
  %cmp735.not = icmp ult ptr %156, %158
  br i1 %cmp735.not, label %if.end710.if.end760_crit_edge, label %do.end754, !prof !48

if.end710.if.end760_crit_edge:                    ; preds = %if.end710
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end760

do.end754:                                        ; preds = %if.end710
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end760

if.end760:                                        ; preds = %do.end754, %if.end710.if.end760_crit_edge
  %159 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %cur.i, align 4
  %161 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %end.i, align 4
  %cmp774.not = icmp ult ptr %160, %162
  br i1 %cmp774.not, label %if.end760.if.end799_crit_edge, label %do.end793, !prof !48

if.end760.if.end799_crit_edge:                    ; preds = %if.end760
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end799

do.end793:                                        ; preds = %if.end760
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end799

if.end799:                                        ; preds = %do.end793, %if.end760.if.end799_crit_edge
  %163 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %cur.i, align 4
  %mem813 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2
  %map815 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 6
  %165 = ptrtoint ptr %map815 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %map815, align 8
  %sub.ptr.lhs.cast817 = ptrtoint ptr %164 to i32
  %sub.ptr.rhs.cast818 = ptrtoint ptr %166 to i32
  %sub.ptr.sub819 = sub i32 %sub.ptr.lhs.cast817, %sub.ptr.rhs.cast818
  %167 = ptrtoint ptr %mem813 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mem813, align 8
  %169 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %168, align 4
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %170, align 4
  %client829 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 1
  %173 = ptrtoint ptr %client829 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %client829, align 4
  %name831 = getelementptr inbounds %struct.nvif_object, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %name831 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %name831, align 8
  %handle832 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 3
  %177 = ptrtoint ptr %handle832 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %handle832, align 4
  %name833 = getelementptr inbounds %struct.nvif_push, ptr %11, i32 0, i32 2, i32 0, i32 2
  %179 = ptrtoint ptr %name833 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %name833, align 8
  tail call void (ptr, ptr, ...) %172(ptr noundef %mem813, ptr noundef nonnull @.str.5, ptr noundef %176, i32 noundef %178, ptr noundef %180, i32 noundef %sub.ptr.sub819, i32 noundef %154, i32 noundef %add652, i32 noundef 1, ptr noundef nonnull @__func__.crc907d_set_src) #4
  %181 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %cur.i, align 4
  %incdec.ptr842 = getelementptr i32, ptr %182, i32 1
  store ptr %incdec.ptr842, ptr %cur.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %154, ptr %182, align 4
  %184 = load ptr, ptr %cur.i, align 4
  %185 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %seg.i, align 8
  %cmp854.not = icmp ult ptr %184, %186
  br i1 %cmp854.not, label %if.end799.if.end879_crit_edge, label %do.end873, !prof !48

if.end799.if.end879_crit_edge:                    ; preds = %if.end799
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end879

do.end873:                                        ; preds = %if.end799
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end879

if.end879:                                        ; preds = %do.end873, %if.end799.if.end879_crit_edge
  %187 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %cur.i, align 4
  %189 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %end.i, align 4
  %cmp893.not = icmp ult ptr %188, %190
  br i1 %cmp893.not, label %if.end879.if.end918_crit_edge, label %do.end912, !prof !48

if.end879.if.end918_crit_edge:                    ; preds = %if.end879
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end918

do.end912:                                        ; preds = %if.end879
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end918

if.end918:                                        ; preds = %do.end912, %if.end879.if.end918_crit_edge
  %191 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %cur.i, align 4
  %193 = ptrtoint ptr %map815 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %map815, align 8
  %sub.ptr.lhs.cast936 = ptrtoint ptr %192 to i32
  %sub.ptr.rhs.cast937 = ptrtoint ptr %194 to i32
  %sub.ptr.sub938 = sub i32 %sub.ptr.lhs.cast936, %sub.ptr.rhs.cast937
  %195 = ptrtoint ptr %mem813 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mem813, align 8
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %198, align 4
  %201 = ptrtoint ptr %client829 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %client829, align 4
  %name950 = getelementptr inbounds %struct.nvif_object, ptr %202, i32 0, i32 2
  %203 = ptrtoint ptr %name950 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %name950, align 8
  %205 = ptrtoint ptr %handle832 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %handle832, align 4
  %207 = ptrtoint ptr %name833 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %name833, align 8
  tail call void (ptr, ptr, ...) %200(ptr noundef %mem813, ptr noundef nonnull @.str.7, ptr noundef %204, i32 noundef %206, ptr noundef %208, i32 noundef %sub.ptr.sub938, i32 noundef %crc_args.0) #4
  %209 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cur.i, align 4
  %incdec.ptr959 = getelementptr i32, ptr %210, i32 1
  store ptr %incdec.ptr959, ptr %cur.i, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %crc_args.0, ptr %210, align 4
  %add969 = add i32 %mul651, 1080
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add969)
  %tobool972.not = icmp ult i32 %add969, 4096
  br i1 %tobool972.not, label %if.end918.if.end1027_crit_edge, label %do.end992, !prof !48

if.end918.if.end1027_crit_edge:                   ; preds = %if.end918
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1027

do.end992:                                        ; preds = %if.end918
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end1027

if.end1027:                                       ; preds = %do.end992, %if.end918.if.end1027_crit_edge
  %212 = and i32 %add969, 3896
  %213 = or i32 %212, 262144
  %214 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %cur.i, align 4
  %216 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %seg.i, align 8
  %cmp1052.not = icmp ult ptr %215, %217
  br i1 %cmp1052.not, label %if.end1027.if.end1077_crit_edge, label %do.end1071, !prof !48

if.end1027.if.end1077_crit_edge:                  ; preds = %if.end1027
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1077

do.end1071:                                       ; preds = %if.end1027
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1077

if.end1077:                                       ; preds = %do.end1071, %if.end1027.if.end1077_crit_edge
  %218 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cur.i, align 4
  %220 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %end.i, align 4
  %cmp1091.not = icmp ult ptr %219, %221
  br i1 %cmp1091.not, label %if.end1077.if.end1116_crit_edge, label %do.end1110, !prof !48

if.end1077.if.end1116_crit_edge:                  ; preds = %if.end1077
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1116

do.end1110:                                       ; preds = %if.end1077
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1116

if.end1116:                                       ; preds = %do.end1110, %if.end1077.if.end1116_crit_edge
  %222 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %cur.i, align 4
  %224 = ptrtoint ptr %map815 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %map815, align 8
  %sub.ptr.lhs.cast1134 = ptrtoint ptr %223 to i32
  %sub.ptr.rhs.cast1135 = ptrtoint ptr %225 to i32
  %sub.ptr.sub1136 = sub i32 %sub.ptr.lhs.cast1134, %sub.ptr.rhs.cast1135
  %226 = ptrtoint ptr %mem813 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mem813, align 8
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %227, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  %232 = ptrtoint ptr %client829 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %client829, align 4
  %name1148 = getelementptr inbounds %struct.nvif_object, ptr %233, i32 0, i32 2
  %234 = ptrtoint ptr %name1148 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %name1148, align 8
  %236 = ptrtoint ptr %handle832 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %handle832, align 4
  %238 = ptrtoint ptr %name833 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %name833, align 8
  tail call void (ptr, ptr, ...) %231(ptr noundef %mem813, ptr noundef nonnull @.str.5, ptr noundef %235, i32 noundef %237, ptr noundef %239, i32 noundef %sub.ptr.sub1136, i32 noundef %213, i32 noundef %add969, i32 noundef 1, ptr noundef nonnull @__func__.crc907d_set_src) #4
  %240 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1159 = getelementptr i32, ptr %241, i32 1
  store ptr %incdec.ptr1159, ptr %cur.i, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %213, ptr %241, align 4
  %243 = load ptr, ptr %cur.i, align 4
  %244 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %seg.i, align 8
  %cmp1171.not = icmp ult ptr %243, %245
  br i1 %cmp1171.not, label %if.end1116.if.end1196_crit_edge, label %do.end1190, !prof !48

if.end1116.if.end1196_crit_edge:                  ; preds = %if.end1116
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1196

do.end1190:                                       ; preds = %if.end1116
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end1196

if.end1196:                                       ; preds = %do.end1190, %if.end1116.if.end1196_crit_edge
  %246 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %cur.i, align 4
  %248 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %end.i, align 4
  %cmp1210.not = icmp ult ptr %247, %249
  br i1 %cmp1210.not, label %if.end1196.if.end1235_crit_edge, label %do.end1229, !prof !48

if.end1196.if.end1235_crit_edge:                  ; preds = %if.end1196
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end1235

do.end1229:                                       ; preds = %if.end1196
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef nonnull @.str.4) #4
  br label %if.end1235

if.end1235:                                       ; preds = %do.end1229, %if.end1196.if.end1235_crit_edge
  %250 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %cur.i, align 4
  %252 = ptrtoint ptr %map815 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %map815, align 8
  %sub.ptr.lhs.cast1253 = ptrtoint ptr %251 to i32
  %sub.ptr.rhs.cast1254 = ptrtoint ptr %253 to i32
  %sub.ptr.sub1255 = sub i32 %sub.ptr.lhs.cast1253, %sub.ptr.rhs.cast1254
  %254 = ptrtoint ptr %mem813 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mem813, align 8
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %255, align 4
  %258 = ptrtoint ptr %257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %257, align 4
  %260 = ptrtoint ptr %client829 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %client829, align 4
  %name1267 = getelementptr inbounds %struct.nvif_object, ptr %261, i32 0, i32 2
  %262 = ptrtoint ptr %name1267 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %name1267, align 8
  %264 = ptrtoint ptr %handle832 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %handle832, align 4
  %266 = ptrtoint ptr %name833 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %name833, align 8
  tail call void (ptr, ptr, ...) %259(ptr noundef %mem813, ptr noundef nonnull @.str.6, ptr noundef %263, i32 noundef %265, ptr noundef %267, i32 noundef %sub.ptr.sub1255, i32 noundef 0) #4
  %268 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %cur.i, align 4
  %incdec.ptr1276 = getelementptr i32, ptr %269, i32 1
  store ptr %incdec.ptr1276, ptr %cur.i, align 4
  %270 = ptrtoint ptr %269 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %269, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end1235, %if.end601, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end1235 ], [ 0, %if.end601 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc907d_set_ctx(ptr nocapture noundef readonly %head, ptr noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body6

if.then.i:                                        ; preds = %entry
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %11, align 8
  %call.i = tail call i32 %19(ptr noundef %11, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body6_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i.do.body6_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
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
  %mul = mul i32 %13, 768
  %add = add i32 %mul, 1080
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %tobool7.not = icmp ult i32 %add, 4096
  br i1 %tobool7.not, label %do.body6.if.end53_crit_edge, label %do.end, !prof !48

do.body6.if.end53_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end:                                           ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.1) #4
  br label %if.end53

if.end53:                                         ; preds = %do.end, %do.body6.if.end53_crit_edge
  %23 = and i32 %add, 3896
  %24 = or i32 %23, 262144
  %25 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cur.i, align 4
  %27 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %seg.i, align 8
  %cmp.not = icmp ult ptr %26, %28
  br i1 %cmp.not, label %if.end53.if.end95_crit_edge, label %do.end89, !prof !48

if.end53.if.end95_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end95

do.end89:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %if.end53.if.end95_crit_edge
  %29 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cur.i, align 4
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %cmp108.not = icmp ult ptr %30, %32
  br i1 %cmp108.not, label %if.end95.if.end133_crit_edge, label %do.end127, !prof !48

if.end95.if.end133_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end133

do.end127:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %42(ptr noundef %mem, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %48, ptr noundef %50, i32 noundef %sub.ptr.sub, i32 noundef %24, i32 noundef %add, i32 noundef 1, ptr noundef nonnull @__func__.crc907d_set_ctx) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #6
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
  br i1 %cmp172.not, label %cond.end.if.end197_crit_edge, label %do.end191, !prof !48

cond.end.if.end197_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end197

do.end191:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.3) #4
  br label %if.end197

if.end197:                                        ; preds = %do.end191, %cond.end.if.end197_crit_edge
  %60 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.i, align 4
  %62 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %end.i, align 4
  %cmp211.not = icmp ult ptr %61, %63
  br i1 %cmp211.not, label %if.end197.if.end236_crit_edge, label %do.end230, !prof !48

if.end197.if.end236_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end236

do.end230:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 9, ptr noundef nonnull @.str.4) #4
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
  tail call void (ptr, ptr, ...) %73(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %77, i32 noundef %79, ptr noundef %81, i32 noundef %sub.ptr.sub256, i32 noundef %cond) #4
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc907d_get_entry(ptr nocapture noundef readnone %head, ptr nocapture noundef readonly %ctx, i32 noundef %source, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %map = getelementptr inbounds %struct.nvif_object, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %output_crc = getelementptr %struct.crc907d_notifier, ptr %1, i32 0, i32 2, i32 %idx, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %output_crc) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @crc907d_ctx_finished(ptr nocapture noundef readonly %head, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %and = and i32 %6, 62
  %and4 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.do.body36_crit_edge, label %if.then6

if.end.do.body36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body36

if.then6:                                         ; preds = %if.end
  %7 = add nsw i32 %and, -4
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %9 = icmp ult i32 %8, 8
  br i1 %9, label %switch.hole_check, label %if.then6.do.body19_crit_edge

if.then6.do.body19_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body19

switch.hole_check:                                ; preds = %if.then6
  %switch.maskindex = trunc i32 %8 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.body19_crit_edge, label %switch.lookup

switch.hole_check.do.body19_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body19

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.crc907d_ctx_finished, i32 0, i32 %8
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %drm13 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %drm13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drm13, align 8
  %dev14 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 8
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev15, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %19, ptr noundef nonnull %switch.load, i32 noundef %6) #7
  br label %do.body36

do.body19:                                        ; preds = %switch.hole_check.do.body19_crit_edge, %if.then6.do.body19_crit_edge
  %drm25 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %drm25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drm25, align 8
  %dev26 = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev26, align 8
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev27, align 4
  %name28 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %index31 = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %index31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index31, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.17, ptr noundef %name28, i32 noundef %27, i32 noundef %6) #7
  br label %do.body36

do.body36:                                        ; preds = %do.body19, %switch.lookup, %if.end.do.body36_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %28 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body36.cleanup_crit_edge, label %do.body39

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body39:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #6
  %drm45 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %drm45 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drm45, align 8
  %dev46 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev46, align 8
  %dev47 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev47, align 4
  %name48 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %index51 = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %index51 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index51, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.20, ptr noundef %name48, i32 noundef %36, i32 noundef %6) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body39, %do.body36.cleanup_crit_edge, %entry.cleanup_crit_edge
  %37 = xor i1 %tobool.not, true
  ret i1 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @crc907d, !1, !"crc907d", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 134, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 64, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__func__.crc907d_set_src, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 65, i32 3}
!13 = !{ptr @__func__.crc907d_set_ctx, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 84, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 112, i32 29}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 113, i32 29}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 114, i32 29}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 115, i32 29}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 119, i32 4}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @crc907d_ctx_finished._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @crc907d_ctx_finished._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 123, i32 4}
!32 = !{ptr @crc907d_ctx_finished._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @crc907d_ctx_finished._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc907d.c", i32 128, i32 2}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @crc907d_ctx_finished._entry.19, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @crc907d_ctx_finished._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 6871207}
!50 = !{i64 2157894161}
!51 = !{i64 2157894472}
