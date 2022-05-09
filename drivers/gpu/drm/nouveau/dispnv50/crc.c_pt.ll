; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/crc.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/crc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.92 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.99, %struct.anon.100, %struct.anon.102, ptr, %struct.anon.103, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.104, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.116 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.99 = type { ptr, i32, i32, i8 }
%struct.anon.100 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.101] }
%struct.anon.101 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.102 = type { i64, i64 }
%struct.anon.103 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.95 }
%struct.anon.95 = type { ptr, i64 }
%struct.anon.104 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.111, %struct.anon.112, %struct.anon.113, %struct.anon.114 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.105, i8 }
%union.anon.105 = type { %struct.anon.109 }
%struct.anon.109 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.111 = type { i32 }
%struct.anon.112 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.113 = type { i16, i16 }
%struct.anon.114 = type { i16, i16, i16, %struct.anon.115, i16 }
%struct.anon.115 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.116 = type { ptr, %struct.mutex, i8 }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.142, %struct.anon.143, %struct.anon.144, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.142 = type { i32, i8, i32, i32 }
%struct.anon.143 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.144 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.145, ptr, ptr, ptr, ptr, ptr }
%struct.anon.145 = type { ptr }
%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.117, %struct.anon.118, %struct.nv50_head_mode, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.129, %struct.nv50_crc_atom, %struct.anon.130, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.anon.117 = type { i32, i32, i32 }
%struct.anon.118 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.119, %struct.anon.120 }
%struct.anon.119 = type { i16, i16, i16, i16 }
%struct.anon.120 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.121 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.122 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.123 = type { i8, i32, [6 x i8], i8 }
%struct.anon.124 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.125 = type { i8 }
%struct.anon.126 = type { i8 }
%struct.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i16, i16 }
%struct.anon.129 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.130 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.131 }
%struct.anon.131 = type { i16 }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_atom = type { %struct.drm_atomic_state, %struct.list_head, i8, i8 }
%struct.nv50_outp_atom = type { %struct.list_head, ptr, i8, %union.nv50_outp_atom_mask, %union.nv50_outp_atom_mask }
%union.nv50_outp_atom_mask = type { %struct.anon.155 }
%struct.anon.155 = type { i8 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.146, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.147, %struct.anon.154, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.anon.146 = type { i8, ptr }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.154 = type { i8 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.84, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.85, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.86, ptr, %struct.address_space, %struct.list_head, %union.anon.87, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.84 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.85 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.86 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.87 = type { ptr }

@nv50_crc_verify_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 55, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: unknown source %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nv50_crc_verify_source\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/nouveau/dispnv50/crc.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv50_crc_verify_source._entry_ptr = internal global ptr @nv50_crc_verify_source._entry, section ".printk_index", align 4
@nv50_crc_sources = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Notifier ctx flip for head-%d finished, lost CRC for frame %llu\0A\00", [63 x i8] zeroinitializer }, align 32
@nv50_crc_atomic_stop_reporting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 261, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: CRC reporting on vblank for head-%d disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nv50_crc_atomic_stop_reporting\00", [33 x i8] zeroinitializer }, align 32
@nv50_crc_atomic_stop_reporting._entry_ptr = internal global ptr @nv50_crc_atomic_stop_reporting._entry, section ".printk_index", align 4
@nv50_crc_atomic_start_reporting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 345, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: CRC reporting on vblank for head-%d enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nv50_crc_atomic_start_reporting\00", [32 x i8] zeroinitializer }, align 32
@nv50_crc_atomic_start_reporting._entry_ptr = internal global ptr @nv50_crc_atomic_start_reporting._entry, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nv_crc\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"flip_threshold\00", [17 x i8] zeroinitializer }, align 32
@nv50_crc_flip_threshold_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @seq_read, ptr @nv50_crc_debugfs_flip_threshold_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @nv50_crc_debugfs_flip_threshold_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rg\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"outp-active\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"outp-complete\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"outp-inactive\00", [18 x i8] zeroinitializer }, align 32
@nv50_crc_wait_ctx_finished._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 231, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: CRC notifier ctx for head %d not finished after 50ms\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nv50_crc_wait_ctx_finished\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nv50_crc_wait_ctx_finished._entry_ptr = internal global ptr @nv50_crc_wait_ctx_finished._entry, section ".printk_index", align 4
@nv50_crc_wait_ctx_finished._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.2, i32 235, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: CRC notifier ctx for head-%d finished after %lldns\0A\00", [40 x i8] zeroinitializer }, align 32
@nv50_crc_wait_ctx_finished._entry_ptr.23 = internal global ptr @nv50_crc_wait_ctx_finished._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kmsCrcNtfy\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kmsCrcNtfyCtxDma\00", [47 x i8] zeroinitializer }, align 32
@nv50_crc_debugfs_flip_threshold_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 671, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: Changing CRC flip threshold for next capture on head-%d to %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nv50_crc_debugfs_flip_threshold_set\00", [60 x i8] zeroinitializer }, align 32
@nv50_crc_debugfs_flip_threshold_set._entry_ptr = internal global ptr @nv50_crc_debugfs_flip_threshold_set._entry, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@nv50_crc_init_head.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&crc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Lock contended, delaying CRC ctx flip for %s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Flipping notifier ctx for %s (%d -> %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@nv50_crc_ctx_flip_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 114, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: Failed to flip CRC context on %s on time (%llu > %llu)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nv50_crc_ctx_flip_work\00", [41 x i8] zeroinitializer }, align 32
@nv50_crc_ctx_flip_work._entry_ptr = internal global ptr @nv50_crc_ctx_flip_work._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -110]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967261]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967261]
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 55, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"nv50_crc_sources\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 21, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 196, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 259, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 343, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 698, i32 28 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 699, i32 22 }
@___asan_gen_.85 = private unnamed_addr constant [29 x i8] c"nv50_crc_flip_threshold_fops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 680, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 22, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 23, i32 27 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 24, i32 25 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 25, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 26, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 27, i32 36 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 229, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 233, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 489, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 493, i32 48 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 669, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 620, i32 16 }
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 712, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 98, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 103, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.161 = private constant [42 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/crc.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 112, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @nv50_crc_atomic_start_reporting._entry, ptr @nv50_crc_atomic_start_reporting._entry_ptr, ptr @nv50_crc_atomic_stop_reporting._entry, ptr @nv50_crc_atomic_stop_reporting._entry_ptr, ptr @nv50_crc_ctx_flip_work._entry, ptr @nv50_crc_ctx_flip_work._entry_ptr, ptr @nv50_crc_debugfs_flip_threshold_set._entry, ptr @nv50_crc_debugfs_flip_threshold_set._entry_ptr, ptr @nv50_crc_verify_source._entry, ptr @nv50_crc_verify_source._entry_ptr, ptr @nv50_crc_wait_ctx_finished._entry, ptr @nv50_crc_wait_ctx_finished._entry.21, ptr @nv50_crc_wait_ctx_finished._entry_ptr, ptr @nv50_crc_wait_ctx_finished._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nv50_crc_sources, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @nv50_crc_flip_threshold_fops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @nv50_crc_init_head.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_verify_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_sources to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_atomic_stop_reporting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_atomic_start_reporting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_flip_threshold_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_wait_ctx_finished._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_wait_ctx_finished._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_debugfs_flip_threshold_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_init_head.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_crc_ctx_flip_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_crc_verify_source(ptr nocapture noundef readonly %crtc, ptr noundef %source_name, ptr nocapture noundef writeonly %values_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %tobool.not.i = icmp eq ptr %source_name, null
  br i1 %tobool.not.i, label %entry.if.end13_crit_edge, label %if.end.i

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @match_string(ptr noundef nonnull @nv50_crc_sources, i32 noundef 6, ptr noundef nonnull %source_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body, label %if.end.i.if.end13_crit_edge

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.body:                                          ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %4 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.cleanup_crit_edge, label %do.body4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %drm6 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %drm6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm6, align 8
  %dev7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev7, align 8
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev8, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull %source_name) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.if.end13_crit_edge, %entry.if.end13_crit_edge
  %11 = ptrtoint ptr %values_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %values_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.body4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %do.body4 ], [ -22, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local nonnull ptr @nv50_crc_get_sources(ptr nocapture noundef readnone %crtc, ptr nocapture noundef writeonly %count) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 6, ptr %count, align 4
  ret ptr @nv50_crc_sources
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_crc_handle_vblank(ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  %output_crc.i109 = alloca i32, align 4
  %output_crc.i85 = alloca i32, align 4
  %output_crc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %crc2 = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2
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
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %crc6 = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %crc6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crc6, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %crc2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %src = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not = icmp eq i32 %15, 0
  br i1 %tobool11.not, label %if.end10.out_crit_edge, label %if.end13

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end13:                                         ; preds = %if.end10
  %ctx_idx = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 7
  %16 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load = load i8, ptr %ctx_idx, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %idxprom = zext i8 %bf.lshr to i32
  %arrayidx = getelementptr %struct.nv50_head, ptr %head, i32 0, i32 2, i32 1, i32 %idxprom
  %17 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %bf.cast.not = icmp eq i8 %17, 0
  br i1 %bf.cast.not, label %if.end13.if.end40_crit_edge, label %land.lhs.true

if.end13.if.end40_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end13
  %ctx_finished = getelementptr inbounds %struct.nv50_crc_func, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %ctx_finished to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx_finished, align 4
  %call17 = tail call zeroext i1 %19(ptr noundef %head, ptr noundef %arrayidx) #7
  br i1 %call17, label %if.then18, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then18:                                        ; preds = %land.lhs.true
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_crc.i) #7
  %22 = ptrtoint ptr %output_crc.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %output_crc.i, align 4, !annotation !82
  %entry_idx.i = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 5
  %num_entries.i = getelementptr inbounds %struct.nv50_crc_func, ptr %13, i32 0, i32 5
  %23 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %entry_idx.i, align 8
  %25 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %num_entries.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp23.i = icmp slt i16 %24, %26
  br i1 %cmp23.i, label %while.body.lr.ph.i, label %if.then18.nv50_crc_get_entries.exit_crit_edge

if.then18.nv50_crc_get_entries.exit_crit_edge:    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_get_entries.exit

while.body.lr.ph.i:                               ; preds = %if.then18
  %get_entry.i = getelementptr inbounds %struct.nv50_crc_func, ptr %13, i32 0, i32 2
  %frame.i = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %27 = phi i16 [ %24, %while.body.lr.ph.i ], [ %inc11.i, %if.end.i.while.body.i_crit_edge ]
  %conv.i = sext i16 %27 to i32
  %28 = ptrtoint ptr %get_entry.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_entry.i, align 4
  %30 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %ctx_idx, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 7
  %idxprom.i = zext i8 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.nv50_head, ptr %head, i32 0, i32 2, i32 1, i32 %idxprom.i
  %call.i83 = call i32 %29(ptr noundef %head, ptr noundef %arrayidx.i, i32 noundef %21, i32 noundef %conv.i) #7
  %31 = ptrtoint ptr %output_crc.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i83, ptr %output_crc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool.not.i = icmp eq i32 %call.i83, 0
  br i1 %tobool.not.i, label %while.body.i.nv50_crc_get_entries.exit_crit_edge, label %if.end.i

while.body.i.nv50_crc_get_entries.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_get_entries.exit

if.end.i:                                         ; preds = %while.body.i
  %32 = ptrtoint ptr %frame.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %frame.i, align 8
  %conv7.i = trunc i64 %33 to i32
  %call8.i = call i32 @drm_crtc_add_crc_entry(ptr noundef %base, i1 noundef zeroext true, i32 noundef %conv7.i, ptr noundef nonnull %output_crc.i) #7
  %34 = ptrtoint ptr %frame.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %frame.i, align 8
  %inc.i = add i64 %35, 1
  store i64 %inc.i, ptr %frame.i, align 8
  %36 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %entry_idx.i, align 8
  %inc11.i = add i16 %37, 1
  store i16 %inc11.i, ptr %entry_idx.i, align 8
  %38 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %num_entries.i, align 2
  %cmp.i = icmp slt i16 %inc11.i, %39
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.nv50_crc_get_entries.exit_crit_edge

if.end.i.nv50_crc_get_entries.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_get_entries.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

nv50_crc_get_entries.exit:                        ; preds = %if.end.i.nv50_crc_get_entries.exit_crit_edge, %while.body.i.nv50_crc_get_entries.exit_crit_edge, %if.then18.nv50_crc_get_entries.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_crc.i) #7
  %40 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load21 = load i8, ptr %ctx_idx, align 4
  %41 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %entry_idx.i, align 8
  %bf.set = and i8 %bf.load21, -65
  %bf.clear28 = xor i8 %bf.set, -128
  store i8 %bf.clear28, ptr %ctx_idx, align 4
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 8
  %tobool33.not = icmp eq ptr %43, null
  br i1 %tobool33.not, label %nv50_crc_get_entries.exit.cond.end_crit_edge, label %cond.true

nv50_crc_get_entries.exit.cond.end_crit_edge:     ; preds = %nv50_crc_get_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %nv50_crc_get_entries.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev37 = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev37, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %nv50_crc_get_entries.exit.cond.end_crit_edge
  %cond = phi ptr [ %45, %cond.true ], [ null, %nv50_crc_get_entries.exit.cond.end_crit_edge ]
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index, align 8
  %frame = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 4
  %48 = ptrtoint ptr %frame to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %frame, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 4, ptr noundef nonnull @.str.5, i32 noundef %47, i64 noundef %49) #7
  %50 = ptrtoint ptr %frame to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %frame, align 8
  %inc = add i64 %51, 1
  store i64 %inc, ptr %frame, align 8
  %map.i = getelementptr inbounds %struct.nvif_object, ptr %arrayidx, i32 0, i32 6
  %52 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map.i, align 8
  %size.i = getelementptr inbounds %struct.nvif_object, ptr %arrayidx, i32 0, i32 6, i32 1
  %54 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %size.i, align 8
  %conv.i84 = trunc i64 %55 to i32
  call void @mmioset(ptr noundef %53, i32 noundef 0, i32 noundef %conv.i84) #7
  %56 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_crc.i85) #7
  %58 = ptrtoint ptr %output_crc.i85 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %output_crc.i85, align 4, !annotation !82
  %59 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %entry_idx.i, align 8
  %61 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num_entries.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %62)
  %cmp23.i89 = icmp slt i16 %60, %62
  br i1 %cmp23.i89, label %while.body.lr.ph.i93, label %cond.end.nv50_crc_get_entries.exit108_crit_edge

cond.end.nv50_crc_get_entries.exit108_crit_edge:  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_get_entries.exit108

while.body.lr.ph.i93:                             ; preds = %cond.end
  %get_entry.i90 = getelementptr inbounds %struct.nv50_crc_func, ptr %13, i32 0, i32 2
  br label %while.body.i101

while.body.i101:                                  ; preds = %if.end.i107.while.body.i101_crit_edge, %while.body.lr.ph.i93
  %63 = phi i16 [ %60, %while.body.lr.ph.i93 ], [ %inc11.i105, %if.end.i107.while.body.i101_crit_edge ]
  %conv.i94 = sext i16 %63 to i32
  %64 = ptrtoint ptr %get_entry.i90 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_entry.i90, align 4
  %66 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i95 = load i8, ptr %ctx_idx, align 4
  %bf.lshr.i96 = lshr i8 %bf.load.i95, 7
  %idxprom.i97 = zext i8 %bf.lshr.i96 to i32
  %arrayidx.i98 = getelementptr %struct.nv50_head, ptr %head, i32 0, i32 2, i32 1, i32 %idxprom.i97
  %call.i99 = call i32 %65(ptr noundef %head, ptr noundef %arrayidx.i98, i32 noundef %57, i32 noundef %conv.i94) #7
  %67 = ptrtoint ptr %output_crc.i85 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call.i99, ptr %output_crc.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %while.body.i101.nv50_crc_get_entries.exit108_crit_edge, label %if.end.i107

while.body.i101.nv50_crc_get_entries.exit108_crit_edge: ; preds = %while.body.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_get_entries.exit108

if.end.i107:                                      ; preds = %while.body.i101
  %68 = ptrtoint ptr %frame to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %frame, align 8
  %conv7.i102 = trunc i64 %69 to i32
  %call8.i103 = call i32 @drm_crtc_add_crc_entry(ptr noundef %base, i1 noundef zeroext true, i32 noundef %conv7.i102, ptr noundef nonnull %output_crc.i85) #7
  %70 = ptrtoint ptr %frame to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %frame, align 8
  %inc.i104 = add i64 %71, 1
  store i64 %inc.i104, ptr %frame, align 8
  %72 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %entry_idx.i, align 8
  %inc11.i105 = add i16 %73, 1
  store i16 %inc11.i105, ptr %entry_idx.i, align 8
  %74 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %num_entries.i, align 2
  %cmp.i106 = icmp slt i16 %inc11.i105, %75
  br i1 %cmp.i106, label %if.end.i107.while.body.i101_crit_edge, label %if.end.i107.nv50_crc_get_entries.exit108_crit_edge

if.end.i107.nv50_crc_get_entries.exit108_crit_edge: ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_get_entries.exit108

if.end.i107.while.body.i101_crit_edge:            ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i101

nv50_crc_get_entries.exit108:                     ; preds = %if.end.i107.nv50_crc_get_entries.exit108_crit_edge, %while.body.i101.nv50_crc_get_entries.exit108_crit_edge, %cond.end.nv50_crc_get_entries.exit108_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_crc.i85) #7
  %flip_work = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 2
  %call44 = call i64 @drm_crtc_vblank_count(ptr noundef %base) #7
  %flip_threshold = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 6
  %76 = ptrtoint ptr %flip_threshold to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flip_threshold, align 2
  %conv45 = sext i16 %77 to i64
  %add = add i64 %call44, %conv45
  %78 = ptrtoint ptr %entry_idx.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %entry_idx.i, align 8
  %conv47 = sext i16 %79 to i64
  %sub = sub i64 %add, %conv47
  %call48 = call i32 @drm_vblank_work_schedule(ptr noundef %flip_work, i64 noundef %sub, i1 noundef zeroext true) #7
  br label %out

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %if.end13.if.end40_crit_edge
  %80 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %src, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %output_crc.i109) #7
  %82 = ptrtoint ptr %output_crc.i109 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %output_crc.i109, align 4, !annotation !82
  %entry_idx.i111 = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 5
  %num_entries.i112 = getelementptr inbounds %struct.nv50_crc_func, ptr %13, i32 0, i32 5
  %83 = ptrtoint ptr %entry_idx.i111 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %entry_idx.i111, align 8
  %85 = ptrtoint ptr %num_entries.i112 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %num_entries.i112, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %86)
  %cmp23.i113 = icmp slt i16 %84, %86
  br i1 %cmp23.i113, label %while.body.lr.ph.i117, label %if.end40.nv50_crc_get_entries.exit132_crit_edge

if.end40.nv50_crc_get_entries.exit132_crit_edge:  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_get_entries.exit132

while.body.lr.ph.i117:                            ; preds = %if.end40
  %get_entry.i114 = getelementptr inbounds %struct.nv50_crc_func, ptr %13, i32 0, i32 2
  %frame.i116 = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 4
  br label %while.body.i125

while.body.i125:                                  ; preds = %if.end.i131.while.body.i125_crit_edge, %while.body.lr.ph.i117
  %87 = phi i16 [ %84, %while.body.lr.ph.i117 ], [ %inc11.i129, %if.end.i131.while.body.i125_crit_edge ]
  %conv.i118 = sext i16 %87 to i32
  %88 = ptrtoint ptr %get_entry.i114 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_entry.i114, align 4
  %90 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %90)
  %bf.load.i119 = load i8, ptr %ctx_idx, align 4
  %bf.lshr.i120 = lshr i8 %bf.load.i119, 7
  %idxprom.i121 = zext i8 %bf.lshr.i120 to i32
  %arrayidx.i122 = getelementptr %struct.nv50_head, ptr %head, i32 0, i32 2, i32 1, i32 %idxprom.i121
  %call.i123 = call i32 %89(ptr noundef %head, ptr noundef %arrayidx.i122, i32 noundef %81, i32 noundef %conv.i118) #7
  %91 = ptrtoint ptr %output_crc.i109 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call.i123, ptr %output_crc.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i124 = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i124, label %while.body.i125.nv50_crc_get_entries.exit132_crit_edge, label %if.end.i131

while.body.i125.nv50_crc_get_entries.exit132_crit_edge: ; preds = %while.body.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_get_entries.exit132

if.end.i131:                                      ; preds = %while.body.i125
  %92 = ptrtoint ptr %frame.i116 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %frame.i116, align 8
  %conv7.i126 = trunc i64 %93 to i32
  %call8.i127 = call i32 @drm_crtc_add_crc_entry(ptr noundef %base, i1 noundef zeroext true, i32 noundef %conv7.i126, ptr noundef nonnull %output_crc.i109) #7
  %94 = ptrtoint ptr %frame.i116 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %frame.i116, align 8
  %inc.i128 = add i64 %95, 1
  store i64 %inc.i128, ptr %frame.i116, align 8
  %96 = ptrtoint ptr %entry_idx.i111 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %entry_idx.i111, align 8
  %inc11.i129 = add i16 %97, 1
  store i16 %inc11.i129, ptr %entry_idx.i111, align 8
  %98 = ptrtoint ptr %num_entries.i112 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %num_entries.i112, align 2
  %cmp.i130 = icmp slt i16 %inc11.i129, %99
  br i1 %cmp.i130, label %if.end.i131.while.body.i125_crit_edge, label %if.end.i131.nv50_crc_get_entries.exit132_crit_edge

if.end.i131.nv50_crc_get_entries.exit132_crit_edge: ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_get_entries.exit132

if.end.i131.while.body.i125_crit_edge:            ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i125

nv50_crc_get_entries.exit132:                     ; preds = %if.end.i131.nv50_crc_get_entries.exit132_crit_edge, %while.body.i125.nv50_crc_get_entries.exit132_crit_edge, %if.end40.nv50_crc_get_entries.exit132_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %output_crc.i109) #7
  br label %out

out:                                              ; preds = %nv50_crc_get_entries.exit132, %nv50_crc_get_entries.exit108, %if.end10.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef %crc2) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_work_schedule(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_vblank_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_stop_reporting(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %num_crtc44 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %2 = ptrtoint ptr %num_crtc44 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp45 = icmp sgt i32 %3, 0
  br i1 %cmp45, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %i.046
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %i.046, i32 3
  %8 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state, align 4
  %clr = getelementptr inbounds %struct.nv50_head_atom, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %clr to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %clr, align 2
  %11 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %bf.cast.not = icmp eq i16 %11, 0
  br i1 %bf.cast.not, label %land.lhs.true.for.inc_crit_edge, label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  %crc9 = getelementptr i8, ptr %7, i32 1160
  tail call void @_raw_spin_lock_irq(ptr noundef %crc9) #7
  %src = getelementptr i8, ptr %7, i32 1464
  %12 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %crc9) #7
  tail call void @drm_crtc_vblank_put(ptr noundef nonnull %7) #7
  %flip_work = getelementptr i8, ptr %7, i32 1416
  %call = tail call zeroext i1 @drm_vblank_work_cancel_sync(ptr noundef %flip_work) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %13 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.for.inc_crit_edge, label %do.body14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i, align 4
  %drm = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drm, align 8
  %dev18 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev18, align 8
  %dev19 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev19, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 12
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %7, i32 0, i32 1
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.6, ptr noundef %name, i32 noundef %25) #10
  br label %for.inc

for.inc:                                          ; preds = %do.body14, %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.046, 1
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 30, i32 19
  %28 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_vblank_work_cancel_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_init_notifier_contexts(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %num_crtc39 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %2 = ptrtoint ptr %num_crtc39 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp40 = icmp sgt i32 %3, 0
  br i1 %cmp40, label %for.body.lr.ph, label %entry.for.end24_crit_edge

entry.for.end24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24

for.body.lr.ph:                                   ; preds = %entry
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc22.for.body_crit_edge, %for.body.lr.ph
  %i.041 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %for.inc22.for.body_crit_edge ]
  %4 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %i.041
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc22_crit_edge, label %land.lhs.true

for.body.for.inc22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %i.041, i32 3
  %8 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state, align 4
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %set, align 8
  %11 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %bf.cast.not = icmp eq i16 %11, 0
  br i1 %bf.cast.not, label %land.lhs.true.for.inc22_crit_edge, label %if.end

land.lhs.true.for.inc22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc22

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %entry_idx = getelementptr i8, ptr %7, i32 1480
  %12 = ptrtoint ptr %entry_idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %entry_idx, align 8
  %ctx_changed = getelementptr i8, ptr %7, i32 1484
  %13 = ptrtoint ptr %ctx_changed to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load12 = load i8, ptr %ctx_changed, align 4
  %bf.clear13 = and i8 %bf.load12, -65
  store i8 %bf.clear13, ptr %ctx_changed, align 4
  %map.i = getelementptr i8, ptr %7, i32 1232
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 8
  %size.i = getelementptr i8, ptr %7, i32 1240
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %size.i, align 8
  %conv.i = trunc i64 %17 to i32
  tail call void @mmioset(ptr noundef %15, i32 noundef 0, i32 noundef %conv.i) #7
  %map.i.1 = getelementptr i8, ptr %7, i32 1336
  %18 = ptrtoint ptr %map.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map.i.1, align 8
  %size.i.1 = getelementptr i8, ptr %7, i32 1344
  %20 = ptrtoint ptr %size.i.1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %size.i.1, align 8
  %conv.i.1 = trunc i64 %21 to i32
  tail call void @mmioset(ptr noundef %19, i32 noundef 0, i32 noundef %conv.i.1) #7
  br label %for.inc22

for.inc22:                                        ; preds = %if.end, %land.lhs.true.for.inc22_crit_edge, %for.body.for.inc22_crit_edge
  %inc23 = add nuw nsw i32 %i.041, 1
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30, i32 19
  %24 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc23, %25
  br i1 %cmp, label %for.inc22.for.body_crit_edge, label %for.inc22.for.end24_crit_edge

for.inc22.for.end24_crit_edge:                    ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end24

for.inc22.for.body_crit_edge:                     ; preds = %for.inc22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end24:                                        ; preds = %for.inc22.for.end24_crit_edge, %entry.for.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_release_notifier_contexts(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
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
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %crc = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crc, align 4
  %num_crtc51 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %14 = ptrtoint ptr %num_crtc51 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_crtc51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp52 = icmp sgt i32 %15, 0
  br i1 %cmp52, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %17, i32 %i.053
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %17, i32 %i.053, i32 3
  %20 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new_state, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 -8
  %ctx13 = getelementptr i8, ptr %19, i32 1208
  %ctx_idx = getelementptr i8, ptr %19, i32 1484
  %22 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %ctx_idx, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %idxprom = zext i8 %bf.lshr to i32
  %arrayidx14 = getelementptr [2 x %struct.nv50_crc_notifier_ctx], ptr %ctx13, i32 0, i32 %idxprom
  %clr = getelementptr inbounds %struct.nv50_head_atom, ptr %21, i32 0, i32 15
  %23 = ptrtoint ptr %clr to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load15 = load i16, ptr %clr, align 2
  %24 = and i16 %bf.load15, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %bf.cast.not = icmp eq i16 %24, 0
  br i1 %bf.cast.not, label %land.lhs.true.for.inc_crit_edge, label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  %25 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %bf.cast21.not = icmp eq i8 %25, 0
  br i1 %bf.cast21.not, label %if.end.if.end28_crit_edge, label %if.then22

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @nv50_crc_wait_ctx_finished(ptr noundef %add.ptr, ptr noundef %13, ptr noundef %arrayidx14)
  %26 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load25 = load i8, ptr %ctx_idx, align 4
  %27 = xor i8 %bf.load25, -1
  %28 = lshr i8 %27, 7
  %xor = zext i8 %28 to i32
  %arrayidx27 = getelementptr [2 x %struct.nv50_crc_notifier_ctx], ptr %ctx13, i32 0, i32 %xor
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %if.end.if.end28_crit_edge
  %ctx.0 = phi ptr [ %arrayidx27, %if.then22 ], [ %arrayidx14, %if.end.if.end28_crit_edge ]
  tail call fastcc void @nv50_crc_wait_ctx_finished(ptr noundef %add.ptr, ptr noundef %13, ptr noundef %ctx.0)
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.053, 1
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 30, i32 19
  %31 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv50_crc_wait_ctx_finished(ptr noundef %head, ptr nocapture noundef readonly %func, ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #7
  %4 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  call void @nvif_timer_wait_init(ptr noundef %device, i64 noundef 50000000, ptr noundef nonnull %_wait) #7
  %ctx_finished = getelementptr inbounds %struct.nv50_crc_func, ptr %func, i32 0, i32 3
  %5 = ptrtoint ptr %ctx_finished to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx_finished, align 4
  %call351 = call zeroext i1 %6(ptr noundef %head, ptr noundef %ctx) #7
  br i1 %call351, label %do.end.thread, label %entry.do.cond_crit_edge

entry.do.cond_crit_edge:                          ; preds = %entry
  br label %do.cond

do.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  br label %if.end41

do.body:                                          ; preds = %do.cond
  %7 = ptrtoint ptr %ctx_finished to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx_finished, align 4
  %call3 = call zeroext i1 %8(ptr noundef %head, ptr noundef %ctx) #7
  br i1 %call3, label %do.body.do.end_crit_edge, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.cond:                                          ; preds = %do.body.do.cond_crit_edge, %entry.do.cond_crit_edge
  %call4 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call4)
  %cmp = icmp sgt i64 %call4, -1
  br i1 %cmp, label %do.body, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #7
  call void @__sanitizer_cov_trace_switch(i64 %call4, ptr @__sancov_gen_cov_switch_values)
  switch i64 %call4, label %do.body19 [
    i64 -110, label %do.body7
    i64 0, label %do.end.if.end41_crit_edge
  ]

do.end.if.end41_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %drm12 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %drm12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm12, align 8
  %dev13 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 8
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev14, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %index = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.18, ptr noundef %name, i32 noundef %16) #10
  br label %if.end41

do.body19:                                        ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %17 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body19.if.end41_crit_edge, label %do.body22

do.body19.if.end41_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.body22:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %drm28 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %drm28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drm28, align 8
  %dev29 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev29, align 8
  %dev30 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev30, align 4
  %name31 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %index34 = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %index34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index34, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef %name31, i32 noundef %25, i64 noundef %call4) #10
  br label %if.end41

if.end41:                                         ; preds = %do.body22, %do.body19.if.end41_crit_edge, %do.body7, %do.end.if.end41_crit_edge, %do.end.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_start_reporting(ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %num_crtc54 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %2 = ptrtoint ptr %num_crtc54 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp55 = icmp sgt i32 %3, 0
  br i1 %cmp55, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %i.056
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %5, i32 %i.056, i32 3
  %8 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state, align 4
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %set, align 8
  %11 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %bf.cast.not = icmp eq i16 %11, 0
  br i1 %bf.cast.not, label %land.lhs.true.for.inc_crit_edge, label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  %crc9 = getelementptr i8, ptr %7, i32 1160
  %call = tail call i32 @drm_crtc_vblank_get(ptr noundef nonnull %7) #7
  tail call void @_raw_spin_lock_irq(ptr noundef %crc9) #7
  %call11 = tail call i64 @drm_crtc_vblank_count(ptr noundef nonnull %7) #7
  %frame = getelementptr i8, ptr %7, i32 1472
  %12 = ptrtoint ptr %frame to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call11, ptr %frame, align 8
  %crc12 = getelementptr inbounds %struct.nv50_head_atom, ptr %9, i32 0, i32 12
  %13 = ptrtoint ptr %crc12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %crc12, align 4
  %src13 = getelementptr i8, ptr %7, i32 1464
  %15 = ptrtoint ptr %src13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %src13, align 8
  %flip_work = getelementptr i8, ptr %7, i32 1416
  %flip_threshold = getelementptr i8, ptr %7, i32 1482
  %16 = ptrtoint ptr %flip_threshold to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flip_threshold, align 2
  %conv = sext i16 %17 to i64
  %add = add i64 %call11, %conv
  %call14 = tail call i32 @drm_vblank_work_schedule(ptr noundef %flip_work, i64 noundef %add, i1 noundef zeroext true) #7
  tail call void @_raw_spin_unlock_irq(ptr noundef %crc9) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %18 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.for.inc_crit_edge, label %do.body18

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i, align 4
  %drm = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drm, align 8
  %dev22 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev22, align 8
  %dev23 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev23, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 12
  %index = getelementptr inbounds %struct.nouveau_crtc, ptr %7, i32 0, i32 1
  %29 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %30) #10
  br label %for.inc

for.inc:                                          ; preds = %do.body18, %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.056, 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30, i32 19
  %33 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nv50_crc_atomic_check_head(ptr nocapture noundef readnone %head, ptr nocapture noundef %asyh, ptr nocapture noundef readonly %armh) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh, i32 0, i32 20
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 8
  %crc = getelementptr inbounds %struct.nv50_head_atom, ptr %armh, i32 0, i32 12
  %2 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %crc, align 4
  %crc2 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 12
  %4 = ptrtoint ptr %crc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crc2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 14
  %6 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %set, align 8
  %bf.clear = and i16 %bf.load, -65
  store i16 %bf.clear, ptr %set, align 8
  %clr = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 15
  %7 = ptrtoint ptr %clr to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load9 = load i16, ptr %clr, align 2
  %bf.clear10 = and i16 %bf.load9, -65
  store i16 %bf.clear10, ptr %clr, align 2
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh, i32 0, i32 3
  %8 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %9 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp ne i8 %9, 0
  %cmp.not.not = xor i1 %cmp.not, true
  %brmerge = select i1 %10, i1 true, i1 %cmp.not.not
  br i1 %brmerge, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  br i1 %tobool.not, label %if.then14.land.end_crit_edge, label %land.rhs

if.then14.land.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %armh, i32 0, i32 2
  %11 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool19.not = icmp eq i8 %12, 0
  %phi.sel = select i1 %tobool19.not, i16 0, i16 64
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then14.land.end_crit_edge
  %13 = phi i16 [ 0, %if.then14.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %clr20 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 15
  %14 = ptrtoint ptr %clr20 to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load21 = load i16, ptr %clr20, align 2
  %bf.clear22 = and i16 %bf.load21, -65
  %bf.set23 = or i16 %bf.clear22, %13
  store i16 %bf.set23, ptr %clr20, align 2
  br i1 %tobool8.not, label %land.end.land.end32_crit_edge, label %land.rhs28

land.end.land.end32_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end32

land.rhs28:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  %active30 = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh, i32 0, i32 2
  %15 = ptrtoint ptr %active30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active30, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  %phi.sel108 = select i1 %tobool31.not, i16 0, i16 64
  br label %land.end32

land.end32:                                       ; preds = %land.rhs28, %land.end.land.end32_crit_edge
  %17 = phi i16 [ 0, %land.end.land.end32_crit_edge ], [ %phi.sel108, %land.rhs28 ]
  %set33 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 14
  %18 = ptrtoint ptr %set33 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load34 = load i16, ptr %set33, align 8
  %bf.clear36 = and i16 %bf.load34, -65
  %bf.set37 = or i16 %bf.clear36, %17
  store i16 %bf.set37, ptr %set33, align 8
  br i1 %cmp.not, label %land.end32.if.end62_crit_edge, label %if.then41

land.end32.if.end62_crit_edge:                    ; preds = %land.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then41:                                        ; preds = %land.end32
  call void @__sanitizer_cov_trace_pc() #9
  %or = getelementptr inbounds %struct.nv50_head_atom, ptr %armh, i32 0, i32 11
  %19 = ptrtoint ptr %or to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load42 = load i8, ptr %or, align 8
  %or44 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 11
  %20 = ptrtoint ptr %or44 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load45 = load i8, ptr %or44, align 8
  %21 = xor i8 %bf.load45, %bf.load42
  %22 = and i8 %21, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp48.not = icmp eq i8 %22, 0
  %bf.load34.mask = and i16 %bf.load34, 32
  %bf.shl57 = select i1 %cmp48.not, i16 %bf.load34.mask, i16 32
  %bf.clear58 = and i16 %bf.set37, -33
  %bf.set59 = or i16 %bf.shl57, %bf.clear58
  %23 = ptrtoint ptr %set33 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %bf.set59, ptr %set33, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then41, %land.end32.if.end62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %bf.cast67.not = icmp eq i16 %13, 0
  br i1 %bf.cast67.not, label %if.end62.cleanup_crit_edge, label %land.lhs.true69

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true69:                                  ; preds = %if.end62
  %24 = ptrtoint ptr %set33 to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load71 = load i16, ptr %set33, align 8
  %25 = and i16 %bf.load71, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %bf.cast74.not = icmp eq i16 %25, 0
  br i1 %bf.cast74.not, label %land.lhs.true69.cleanup_crit_edge, label %if.then76

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then76:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #9
  %flush_disable = getelementptr inbounds %struct.nv50_atom, ptr %1, i32 0, i32 3
  %26 = ptrtoint ptr %flush_disable to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %flush_disable, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %set78 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 14
  %27 = ptrtoint ptr %set78 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load79 = load i16, ptr %set78, align 8
  %bf.clear80 = and i16 %bf.load79, -65
  store i16 %bf.clear80, ptr %set78, align 8
  %clr82 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 15
  %28 = ptrtoint ptr %clr82 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load83 = load i16, ptr %clr82, align 2
  %bf.clear84 = and i16 %bf.load83, -65
  store i16 %bf.clear84, ptr %clr82, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then76, %land.lhs.true69.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_check_outp(ptr noundef %atom) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flush_disable = getelementptr inbounds %struct.nv50_atom, ptr %atom, i32 0, i32 3
  %0 = ptrtoint ptr %flush_disable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flush_disable, align 1, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup49_crit_edge

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup49

for.cond.preheader:                               ; preds = %entry
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %atom, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %num_crtc75 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %4 = ptrtoint ptr %num_crtc75 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp76 = icmp sgt i32 %5, 0
  br i1 %cmp76, label %for.body.lr.ph, label %for.cond.preheader.cleanup49_crit_edge

for.cond.preheader.cleanup49_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup49

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %atom, i32 0, i32 4
  %outp22 = getelementptr inbounds %struct.nv50_atom, ptr %atom, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc47.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc47.for.body_crit_edge ]
  %6 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.077
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %for.body.for.inc47_crit_edge, label %land.lhs.true

for.body.for.inc47_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

land.lhs.true:                                    ; preds = %for.body
  %old_state = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.077, i32 2
  %10 = ptrtoint ptr %old_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_state, align 8
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.077, i32 3
  %12 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_state, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 30, i32 16
  %encoder_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %land.lhs.true
  %.pn.in.i = phi ptr [ %encoder_list.i, %land.lhs.true ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.nv50_head_atom_get_encoder.exit_crit_edge, label %for.body.i

for.cond.i.nv50_head_atom_get_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_head_atom_get_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %19 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %encoder_mask.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %21 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %22
  %and.i = and i32 %shl.i.i, %20
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.nv50_head_atom_get_encoder.exit_crit_edge

for.body.i.nv50_head_atom_get_encoder.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_head_atom_get_encoder.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

nv50_head_atom_get_encoder.exit:                  ; preds = %for.body.i.nv50_head_atom_get_encoder.exit_crit_edge, %for.cond.i.nv50_head_atom_get_encoder.exit_crit_edge
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i.nv50_head_atom_get_encoder.exit_crit_edge ], [ %encoder_list.i, %for.cond.i.nv50_head_atom_get_encoder.exit_crit_edge ]
  %encoder.0.i = getelementptr i8, ptr %.pn.lcssa.i, i32 -4
  %call17 = tail call ptr @nv50_real_outp(ptr noundef %encoder.0.i) #7
  %clr = getelementptr inbounds %struct.nv50_head_atom, ptr %13, i32 0, i32 15
  %23 = ptrtoint ptr %clr to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %clr, align 2
  %24 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %bf.cast.not = icmp eq i16 %24, 0
  br i1 %bf.cast.not, label %nv50_head_atom_get_encoder.exit.for.inc47_crit_edge, label %nv50_head_atom_get_encoder.exit.for.cond25_crit_edge

nv50_head_atom_get_encoder.exit.for.cond25_crit_edge: ; preds = %nv50_head_atom_get_encoder.exit
  br label %for.cond25

nv50_head_atom_get_encoder.exit.for.inc47_crit_edge: ; preds = %nv50_head_atom_get_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

for.cond25:                                       ; preds = %for.body28.for.cond25_crit_edge, %nv50_head_atom_get_encoder.exit.for.cond25_crit_edge
  %outp_atom.0.in = phi ptr [ %outp_atom.0, %for.body28.for.cond25_crit_edge ], [ %outp22, %nv50_head_atom_get_encoder.exit.for.cond25_crit_edge ]
  %25 = ptrtoint ptr %outp_atom.0.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %outp_atom.0 = load ptr, ptr %outp_atom.0.in, align 4
  %cmp27.not = icmp eq ptr %outp_atom.0, %outp22
  br i1 %cmp27.not, label %for.cond25.for.inc47_crit_edge, label %for.body28

for.cond25.for.inc47_crit_edge:                   ; preds = %for.cond25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

for.body28:                                       ; preds = %for.cond25
  %encoder29 = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp_atom.0, i32 0, i32 1
  %26 = ptrtoint ptr %encoder29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %encoder29, align 4
  %cmp30 = icmp eq ptr %27, %call17
  br i1 %cmp30, label %if.then31, label %for.body28.for.cond25_crit_edge

for.body28.for.cond25_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond25

if.then31:                                        ; preds = %for.body28
  %set = getelementptr inbounds %struct.nv50_outp_atom, ptr %outp_atom.0, i32 0, i32 3
  %28 = ptrtoint ptr %set to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %set, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  br i1 %tobool32.not, label %if.then31.for.inc47_crit_edge, label %cleanup

if.then31.for.inc47_crit_edge:                    ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc47

cleanup:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %flush_disable to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %flush_disable, align 1
  br label %cleanup49

for.inc47:                                        ; preds = %if.then31.for.inc47_crit_edge, %for.cond25.for.inc47_crit_edge, %nv50_head_atom_get_encoder.exit.for.inc47_crit_edge, %for.body.for.inc47_crit_edge
  %inc = add nuw nsw i32 %i.077, 1
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 30, i32 19
  %33 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_crtc, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %for.inc47.for.body_crit_edge, label %for.inc47.cleanup49_crit_edge

for.inc47.cleanup49_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup49

for.inc47.for.body_crit_edge:                     ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup49:                                        ; preds = %for.inc47.cleanup49_crit_edge, %cleanup, %for.cond.preheader.cleanup49_crit_edge, %entry.cleanup49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_real_outp(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_set(ptr noundef %head, ptr nocapture noundef readonly %asyh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %crc5 = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %crc5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crc5, align 4
  %14 = ptrtoint ptr %asyh to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asyh, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 30, i32 16
  %encoder_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %asyh, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.nv50_head_atom_get_encoder.exit_crit_edge, label %for.body.i

for.cond.i.nv50_head_atom_get_encoder.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_head_atom_get_encoder.exit

for.body.i:                                       ; preds = %for.cond.i
  %19 = ptrtoint ptr %encoder_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %encoder_mask.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn.i, i32 36
  %21 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %22
  %and.i = and i32 %shl.i.i, %20
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.nv50_head_atom_get_encoder.exit_crit_edge

for.body.i.nv50_head_atom_get_encoder.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_head_atom_get_encoder.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

nv50_head_atom_get_encoder.exit:                  ; preds = %for.body.i.nv50_head_atom_get_encoder.exit_crit_edge, %for.cond.i.nv50_head_atom_get_encoder.exit_crit_edge
  %.pn.lcssa.i = phi ptr [ %.pn.i, %for.body.i.nv50_head_atom_get_encoder.exit_crit_edge ], [ %encoder_list.i, %for.cond.i.nv50_head_atom_get_encoder.exit_crit_edge ]
  %encoder.0.i = getelementptr i8, ptr %.pn.lcssa.i, i32 -4
  %call7 = tail call ptr @nv50_real_outp(ptr noundef %encoder.0.i) #7
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %13, align 4
  %or = getelementptr inbounds %struct.nouveau_encoder, ptr %call7, i32 0, i32 2
  %25 = ptrtoint ptr %or to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %or, align 4
  %crc8 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 12
  %27 = ptrtoint ptr %crc8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %crc8, align 4
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call7, i32 0, i32 1
  %29 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dcb.i, align 4
  %31 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %28, label %sw.epilog.i [
    i32 0, label %nv50_head_atom_get_encoder.exit.nv50_crc_source_type.exit_crit_edge
    i32 2, label %sw.bb1.i
  ]

nv50_head_atom_get_encoder.exit.nv50_crc_source_type.exit_crit_edge: ; preds = %nv50_head_atom_get_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_source_type.exit

sw.bb1.i:                                         ; preds = %nv50_head_atom_get_encoder.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_source_type.exit

sw.epilog.i:                                      ; preds = %nv50_head_atom_get_encoder.exit
  %location.i = getelementptr inbounds %struct.dcb_output, ptr %30, i32 0, i32 8
  %32 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.not.i16 = icmp eq i8 %33, 0
  br i1 %cmp.not.i16, label %if.end.i, label %sw.epilog.i.nv50_crc_source_type.exit_crit_edge

sw.epilog.i.nv50_crc_source_type.exit_crit_edge:  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nv50_crc_source_type.exit

if.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %type.i = getelementptr inbounds %struct.dcb_output, ptr %30, i32 0, i32 3
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %switch.selectcmp.i = icmp eq i32 %35, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %35)
  %switch.selectcmp7.i = icmp eq i32 %35, 6
  %switch.select8.i = select i1 %switch.selectcmp7.i, i32 5, i32 %switch.select.i
  br label %nv50_crc_source_type.exit

nv50_crc_source_type.exit:                        ; preds = %if.end.i, %sw.epilog.i.nv50_crc_source_type.exit_crit_edge, %sw.bb1.i, %nv50_head_atom_get_encoder.exit.nv50_crc_source_type.exit_crit_edge
  %retval.0.i = phi i32 [ 4, %sw.bb1.i ], [ %28, %nv50_head_atom_get_encoder.exit.nv50_crc_source_type.exit_crit_edge ], [ 2, %sw.epilog.i.nv50_crc_source_type.exit_crit_edge ], [ %switch.select8.i, %if.end.i ]
  %ctx_idx = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 2, i32 7
  %36 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %ctx_idx, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %idxprom = zext i8 %bf.lshr to i32
  %arrayidx = getelementptr %struct.nv50_head, ptr %head, i32 0, i32 2, i32 1, i32 %idxprom
  %call10 = tail call i32 %24(ptr noundef %head, i32 noundef %26, i32 noundef %retval.0.i, ptr noundef %arrayidx) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_crc_atomic_clr(ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %crc = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crc, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call3 = tail call i32 %15(ptr noundef %head, i32 noundef 0, i32 noundef 0, ptr noundef null) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_crc_set_source(ptr noundef %crtc, ptr noundef %source_str) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.nv_dma_v0, align 8
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #7
  %2 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %display.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %crc4 = getelementptr inbounds %struct.nv50_core_func, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %crc4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crc4, align 4
  %mmu6 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 4
  %tobool.not.i = icmp eq ptr %source_str, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @match_string(ptr noundef nonnull @nv50_crc_sources, i32 noundef 6, ptr noundef nonnull %source_str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.sink.i = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call.i, %if.end.i.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.sink.i)
  %tobool8.not = icmp eq i32 %call.sink.i, 0
  %not.tobool8.not = xor i1 %tobool8.not, true
  %spec.select = zext i1 %not.tobool8.not to i32
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef %spec.select) #7
  %call11 = call ptr @drm_atomic_state_alloc(ptr noundef %1) #7
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end.out_acquire_fini_crit_edge, label %if.end14

if.end.out_acquire_fini_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_acquire_fini

if.end14:                                         ; preds = %if.end
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %call11, i32 0, i32 9
  %15 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ctx, ptr %acquire_ctx, align 4
  br i1 %tobool8.not, label %if.end14.if.end22_crit_edge, label %for.cond.preheader

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

for.cond.preheader:                               ; preds = %if.end14
  %ctx17 = getelementptr i8, ptr %crtc, i32 1208
  %notifier_len = getelementptr inbounds %struct.nv50_crc_func, ptr %14, i32 0, i32 6
  %index.i = getelementptr i8, ptr %crtc, i32 992
  %target.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 1
  %access.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 2
  %pad03.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 3
  %start.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 4
  %limit.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 5
  %16 = ptrtoint ptr %notifier_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %notifier_len, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %.compoundliteral.i)
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %display.i.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %core2.i = getelementptr inbounds %struct.nv50_disp, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %core2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core2.i, align 4
  %conv.i = zext i32 %17 to i64
  %call3.i = call i32 @nvif_mem_ctor_map(ptr noundef %mmu6, ptr noundef nonnull @.str.24, i8 noundef zeroext 1, i64 noundef %conv.i, ptr noundef %ctx17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i111 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i111, label %if.end.i112, label %for.cond.preheader.out_ctx_fini.thread_crit_edge

for.cond.preheader.out_ctx_fini.thread_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ctx_fini.thread

if.end.i112:                                      ; preds = %for.cond.preheader
  %chan.i = getelementptr inbounds %struct.nv50_core, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i, align 8
  %shl.i = shl i32 %29, 1
  %or6.i = or i32 %shl.i, -67108864
  %30 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %.compoundliteral.i, align 8
  %31 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %target.i, align 1
  %32 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %access.i, align 2
  %33 = call ptr @memset(ptr %pad03.i, i32 0, i32 5)
  %addr.i = getelementptr i8, ptr %crtc, i32 1256
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %addr.i, align 8
  %36 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %start.i, align 8
  %size.i = getelementptr i8, ptr %crtc, i32 1264
  %37 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %size.i, align 8
  %add.i = add i64 %35, -1
  %sub.i = add i64 %add.i, %38
  %39 = ptrtoint ptr %limit.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %sub.i, ptr %limit.i, align 8
  %ntfy.i = getelementptr i8, ptr %crtc, i32 1272
  %call11.i = call i32 @nvif_object_ctor(ptr noundef %chan.i, ptr noundef nonnull @.str.25, i32 noundef %or6.i, i32 noundef 61, ptr noundef nonnull %.compoundliteral.i, i32 noundef 24, ptr noundef %ntfy.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %for.inc, label %if.end.i112.fail_fini.i_crit_edge

if.end.i112.fail_fini.i_crit_edge:                ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_fini.i

fail_fini.i:                                      ; preds = %if.end.i112.1.fail_fini.i_crit_edge, %if.end.i112.fail_fini.i_crit_edge
  %call11.i.lcssa = phi i32 [ %call11.i, %if.end.i112.fail_fini.i_crit_edge ], [ %call11.i.1, %if.end.i112.1.fail_fini.i_crit_edge ]
  %arrayidx.lcssa137 = phi ptr [ %ctx17, %if.end.i112.fail_fini.i_crit_edge ], [ %arrayidx.1, %if.end.i112.1.fail_fini.i_crit_edge ]
  call void @nvif_mem_dtor(ptr noundef %arrayidx.lcssa137) #7
  br label %out_ctx_fini.thread

out_ctx_fini.thread:                              ; preds = %for.inc.out_ctx_fini.thread_crit_edge, %fail_fini.i, %for.cond.preheader.out_ctx_fini.thread_crit_edge
  %retval.0.i113.ph = phi i32 [ %call11.i.lcssa, %fail_fini.i ], [ %call3.i, %for.cond.preheader.out_ctx_fini.thread_crit_edge ], [ %call3.i.1, %for.inc.out_ctx_fini.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %.compoundliteral.i)
  br label %for.cond57.preheader

for.inc:                                          ; preds = %if.end.i112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %.compoundliteral.i)
  %arrayidx.1 = getelementptr i8, ptr %crtc, i32 1312
  %40 = ptrtoint ptr %notifier_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %notifier_len, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %.compoundliteral.i)
  %42 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %crtc, align 8
  %dev_private.i.i.i.i.1 = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %dev_private.i.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_private.i.i.i.i.1, align 4
  %display.i.i.i.1 = getelementptr inbounds %struct.nouveau_drm, ptr %45, i32 0, i32 19
  %46 = ptrtoint ptr %display.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %display.i.i.i.1, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %47, align 8
  %core2.i.1 = getelementptr inbounds %struct.nv50_disp, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %core2.i.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core2.i.1, align 4
  %conv.i.1 = zext i32 %41 to i64
  %call3.i.1 = call i32 @nvif_mem_ctor_map(ptr noundef %mmu6, ptr noundef nonnull @.str.24, i8 noundef zeroext 1, i64 noundef %conv.i.1, ptr noundef %arrayidx.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1)
  %tobool.not.i111.1 = icmp eq i32 %call3.i.1, 0
  br i1 %tobool.not.i111.1, label %if.end.i112.1, label %for.inc.out_ctx_fini.thread_crit_edge

for.inc.out_ctx_fini.thread_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ctx_fini.thread

if.end.i112.1:                                    ; preds = %for.inc
  %chan.i.1 = getelementptr inbounds %struct.nv50_core, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i, align 8
  %shl.i.1 = shl i32 %53, 1
  %or6.i.1 = or i32 %shl.i.1, -67108863
  %54 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %.compoundliteral.i, align 8
  %55 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %target.i, align 1
  %56 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 3, ptr %access.i, align 2
  %57 = call ptr @memset(ptr %pad03.i, i32 0, i32 5)
  %addr.i.1 = getelementptr i8, ptr %crtc, i32 1360
  %58 = ptrtoint ptr %addr.i.1 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %addr.i.1, align 8
  %60 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %59, ptr %start.i, align 8
  %size.i.1 = getelementptr i8, ptr %crtc, i32 1368
  %61 = ptrtoint ptr %size.i.1 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %size.i.1, align 8
  %add.i.1 = add i64 %59, -1
  %sub.i.1 = add i64 %add.i.1, %62
  %63 = ptrtoint ptr %limit.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %sub.i.1, ptr %limit.i, align 8
  %ntfy.i.1 = getelementptr i8, ptr %crtc, i32 1376
  %call11.i.1 = call i32 @nvif_object_ctor(ptr noundef %chan.i.1, ptr noundef nonnull @.str.25, i32 noundef %or6.i.1, i32 noundef 61, ptr noundef nonnull %.compoundliteral.i, i32 noundef 24, ptr noundef %ntfy.i.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.1)
  %tobool12.not.i.1 = icmp eq i32 %call11.i.1, 0
  br i1 %tobool12.not.i.1, label %for.inc.1, label %if.end.i112.1.fail_fini.i_crit_edge

if.end.i112.1.fail_fini.i_crit_edge:              ; preds = %if.end.i112.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_fini.i

for.inc.1:                                        ; preds = %if.end.i112.1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %.compoundliteral.i)
  br label %if.end22

if.end22:                                         ; preds = %for.inc.1, %if.end14.if.end22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.sink.i)
  %switch.selectcmp.i = icmp eq i32 %call.sink.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.sink.i)
  %switch.selectcmp3.i = icmp eq i32 %call.sink.i, 5
  %64 = zext i1 %switch.selectcmp.i to i8
  %conv = select i1 %switch.selectcmp3.i, i8 2, i8 %64
  br label %retry

retry:                                            ; preds = %deadlock, %if.end22
  %call24 = call ptr @drm_atomic_get_crtc_state(ptr noundef nonnull %call11, ptr noundef %crtc) #7
  %cmp.i114 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i114, label %if.then26, label %retry.if.end34_crit_edge

retry.if.end34_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then26:                                        ; preds = %retry
  %65 = ptrtoint ptr %call24 to i32
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %65, label %out_ctx_fini.loopexit.split.loop.exit146 [
    i32 -35, label %if.then26.deadlock_crit_edge
    i32 0, label %if.then26.if.end34_crit_edge
  ]

if.then26.if.end34_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then26.deadlock_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %deadlock

if.end34:                                         ; preds = %if.then26.if.end34_crit_edge, %retry.if.end34_crit_edge
  %crc38 = getelementptr inbounds %struct.nv50_head_atom, ptr %call24, i32 0, i32 12
  %67 = ptrtoint ptr %crc38 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call.sink.i, ptr %crc38, align 4
  %or40 = getelementptr inbounds %struct.nv50_head_atom, ptr %call24, i32 0, i32 11
  %68 = ptrtoint ptr %or40 to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load = load i8, ptr %or40, align 8
  %bf.clear = and i8 %bf.load, -4
  %bf.set = or i8 %bf.clear, %conv
  store i8 %bf.set, ptr %or40, align 8
  %call41 = call i32 @drm_atomic_commit(ptr noundef nonnull %call11) #7
  %69 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call41, label %if.end34.out_ctx_fini_crit_edge [
    i32 -35, label %if.end34.deadlock_crit_edge
    i32 0, label %if.end49
  ]

if.end34.deadlock_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %deadlock

if.end34.out_ctx_fini_crit_edge:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ctx_fini

if.end49:                                         ; preds = %if.end34
  br i1 %tobool8.not, label %if.then51, label %if.end49.out_ctx_fini_crit_edge

if.end49.out_ctx_fini_crit_edge:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_ctx_fini

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %flip_threshold = getelementptr inbounds %struct.nv50_crc_func, ptr %14, i32 0, i32 4
  %70 = ptrtoint ptr %flip_threshold to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %flip_threshold, align 4
  %flip_threshold52 = getelementptr i8, ptr %crtc, i32 1482
  %72 = ptrtoint ptr %flip_threshold52 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %flip_threshold52, align 2
  br label %out_ctx_fini

out_ctx_fini.loopexit.split.loop.exit146:         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %call24 to i32
  br label %out_ctx_fini

out_ctx_fini:                                     ; preds = %out_ctx_fini.loopexit.split.loop.exit146, %if.then51, %if.end49.out_ctx_fini_crit_edge, %if.end34.out_ctx_fini_crit_edge
  %ret.0 = phi i32 [ 0, %if.end49.out_ctx_fini_crit_edge ], [ 0, %if.then51 ], [ %73, %out_ctx_fini.loopexit.split.loop.exit146 ], [ %call41, %if.end34.out_ctx_fini_crit_edge ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.sink.i)
  %tobool54.not = icmp ne i32 %call.sink.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool55.not = icmp eq i32 %ret.0, 0
  %or.cond = select i1 %tobool54.not, i1 %tobool55.not, i1 false
  br i1 %or.cond, label %out_ctx_fini.if.end66_crit_edge, label %out_ctx_fini.for.cond57.preheader_crit_edge

out_ctx_fini.for.cond57.preheader_crit_edge:      ; preds = %out_ctx_fini
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond57.preheader

out_ctx_fini.if.end66_crit_edge:                  ; preds = %out_ctx_fini
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

for.cond57.preheader:                             ; preds = %out_ctx_fini.for.cond57.preheader_crit_edge, %out_ctx_fini.thread
  %ret.1144 = phi i32 [ %retval.0.i113.ph, %out_ctx_fini.thread ], [ %ret.0, %out_ctx_fini.for.cond57.preheader_crit_edge ]
  %ctx61 = getelementptr i8, ptr %crtc, i32 1208
  %ntfy.i115 = getelementptr i8, ptr %crtc, i32 1272
  call void @nvif_object_dtor(ptr noundef %ntfy.i115) #7
  call void @nvif_mem_dtor(ptr noundef %ctx61) #7
  %arrayidx62.1 = getelementptr i8, ptr %crtc, i32 1312
  %ntfy.i115.1 = getelementptr i8, ptr %crtc, i32 1376
  call void @nvif_object_dtor(ptr noundef %ntfy.i115.1) #7
  call void @nvif_mem_dtor(ptr noundef %arrayidx62.1) #7
  br label %if.end66

if.end66:                                         ; preds = %for.cond57.preheader, %out_ctx_fini.if.end66_crit_edge
  %ret.1145 = phi i32 [ %ret.1144, %for.cond57.preheader ], [ 0, %out_ctx_fini.if.end66_crit_edge ]
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call11, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !84
  call void @llvm.prefetch.p0(ptr nonnull %call11, i32 1, i32 3, i32 1) #7
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call11, ptr nonnull %call11, i32 1, ptr nonnull elementtype(i32) %call11) #7, !srcloc !85
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_acquire_fini_crit_edge, label %if.then10.i.i.i.i.i, !prof !86

if.end5.i.i.i.i.i.out_acquire_fini_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_acquire_fini

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %call11, i32 noundef 3) #7
  br label %out_acquire_fini

if.then.i.i:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !87
  call void @__drm_atomic_state_free(ptr noundef nonnull %call11) #7
  br label %out_acquire_fini

out_acquire_fini:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_acquire_fini_crit_edge, %if.end.out_acquire_fini_crit_edge
  %ret.2 = phi i32 [ -12, %if.end.out_acquire_fini_crit_edge ], [ %ret.1145, %if.end5.i.i.i.i.i.out_acquire_fini_crit_edge ], [ %ret.1145, %if.then10.i.i.i.i.i ], [ %ret.1145, %if.then.i.i ]
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #7
  br label %cleanup

deadlock:                                         ; preds = %if.end34.deadlock_crit_edge, %if.then26.deadlock_crit_edge
  call void @drm_atomic_state_clear(ptr noundef nonnull %call11) #7
  %call67 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #7
  br label %retry

cleanup:                                          ; preds = %out_acquire_fini, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_acquire_fini ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_head_crc_late_register(ptr noundef %head) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %crc = getelementptr inbounds %struct.nv50_core_func, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %debugfs_entry = getelementptr inbounds %struct.nv50_head, ptr %head, i32 0, i32 1, i32 0, i32 25
  %14 = ptrtoint ptr %debugfs_entry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %debugfs_entry, align 4
  %tobool3.not = icmp eq ptr %15, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.10, ptr noundef nonnull %15) #7
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.11, i16 noundef zeroext 420, ptr noundef %call5, ptr noundef %head, ptr noundef nonnull @nv50_crc_flip_threshold_fops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv50_crc_init(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %crc = getelementptr inbounds %struct.nv50_core_func, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crc, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %12 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn20 = load ptr, ptr %crtc_list, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %crtc_list
  br i1 %cmp.not21, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %flip_threshold.i = getelementptr inbounds %struct.nv50_crc_func, ptr %11, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn22 = phi ptr [ %.pn20, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %crc1.i = getelementptr i8, ptr %.pn22, i32 1152
  %13 = ptrtoint ptr %flip_threshold.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flip_threshold.i, align 4
  %flip_threshold2.i = getelementptr i8, ptr %.pn22, i32 1474
  %15 = ptrtoint ptr %flip_threshold2.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flip_threshold2.i, align 2
  tail call void @__raw_spin_lock_init(ptr noundef %crc1.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @nv50_crc_init_head.__key, i16 noundef signext 3) #7
  %flip_work.i = getelementptr i8, ptr %.pn22, i32 1408
  %base.i = getelementptr i8, ptr %.pn22, i32 -8
  tail call void @drm_vblank_work_init(ptr noundef %flip_work.i, ptr noundef %base.i, ptr noundef nonnull @nv50_crc_ctx_flip_work) #7
  %16 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_add_crc_entry(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mem_ctor_map(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mem_dtor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_crc_debugfs_flip_threshold_set(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %len, ptr nocapture noundef readnone %offp) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %base = getelementptr inbounds %struct.nv50_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %display.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %core = getelementptr inbounds %struct.nv50_disp, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %crc6 = getelementptr inbounds %struct.nv50_core_func, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %crc6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crc6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %18 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %value, align 4, !annotation !82
  %call7 = call i32 @kstrtoint_from_user(ptr noundef %ubuf, i32 noundef %len, i32 noundef 10, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %flip_threshold = getelementptr inbounds %struct.nv50_crc_func, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %flip_threshold to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flip_threshold, align 4
  %conv = sext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp = icmp sgt i32 %20, %conv
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp10 = icmp eq i32 %20, -1
  br i1 %cmp10, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv, ptr %value, align 4
  br label %if.end21

if.else15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp16 = icmp slt i32 %20, -1
  br i1 %cmp16, label %if.else15.cleanup_crit_edge, label %if.else15.if.end21_crit_edge

if.else15.if.end21_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.else15.if.end21_crit_edge, %if.then12
  %mutex = getelementptr inbounds %struct.nv50_head, ptr %3, i32 0, i32 1, i32 0, i32 4
  %call22 = call i32 @drm_modeset_lock_single_interruptible(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %state = getelementptr inbounds %struct.nv50_head, ptr %3, i32 0, i32 1, i32 0, i32 22
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %crc26 = getelementptr inbounds %struct.nv50_head_atom, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %crc26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crc26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool27.not = icmp eq i32 %27, 0
  br i1 %tobool27.not, label %do.body, label %if.end25.out_crit_edge

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.body:                                          ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %28 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.do.end42_crit_edge, label %do.body32

do.body.do.end42_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end42

do.body32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %drm34 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %drm34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drm34, align 8
  %dev35 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev35, align 8
  %dev36 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev36, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  %index = getelementptr inbounds %struct.nv50_head, ptr %3, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index, align 8
  %37 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.26, ptr noundef %name, i32 noundef %36, i32 noundef %38) #10
  br label %do.end42

do.end42:                                         ; preds = %do.body32, %do.body.do.end42_crit_edge
  %39 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value, align 4
  %conv43 = trunc i32 %40 to i16
  %flip_threshold44 = getelementptr inbounds %struct.nv50_head, ptr %3, i32 0, i32 2, i32 6
  %41 = ptrtoint ptr %flip_threshold44 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv43, ptr %flip_threshold44, align 2
  br label %out

out:                                              ; preds = %do.end42, %if.end25.out_crit_edge
  %ret.0 = phi i32 [ %len, %do.end42 ], [ -16, %if.end25.out_crit_edge ]
  call void @drm_modeset_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end21.cleanup_crit_edge, %if.else15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call7, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.else15.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_crc_debugfs_flip_threshold_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @nv50_crc_debugfs_flip_threshold_get, ptr noundef %1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_single_interruptible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nv50_crc_debugfs_flip_threshold_get(ptr noundef %m, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %mutex = getelementptr inbounds %struct.nv50_head, ptr %1, i32 0, i32 1, i32 0, i32 4
  %call = tail call i32 @drm_modeset_lock_single_interruptible(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flip_threshold = getelementptr inbounds %struct.nv50_head, ptr %1, i32 0, i32 2, i32 6
  %2 = ptrtoint ptr %flip_threshold to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flip_threshold, align 2
  %conv = sext i16 %3 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.28, i32 noundef %conv) #7
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_vblank_work_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nv50_crc_ctx_flip_work(ptr noundef %base) #0 align 64 {
entry:
  %interlock.i78 = alloca [6 x i32], align 4
  %interlock.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %base, i32 -256
  %add.ptr6 = getelementptr i8, ptr %base, i32 -1424
  %base7 = getelementptr i8, ptr %base, i32 -1416
  %0 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base7, align 8
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
  %call10 = tail call i64 @drm_crtc_vblank_count(ptr noundef %base7) #7
  %ctx_idx = getelementptr i8, ptr %base, i32 68
  %8 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %ctx_idx, align 4
  %9 = xor i8 %bf.load, -1
  %10 = lshr i8 %9, 7
  %mutex = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 4
  %call12 = tail call i32 @mutex_trylock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %tobool13.not, label %if.then.cond.end_crit_edge, label %cond.true

if.then.cond.end_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev14, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then.cond.end_crit_edge
  %cond = phi ptr [ %12, %cond.true ], [ null, %if.then.cond.end_crit_edge ]
  %name = getelementptr i8, ptr %base, i32 -1400
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 4, ptr noundef nonnull @.str.30, ptr noundef %14) #7
  %add = add i64 %call10, 1
  %call15 = tail call i32 @drm_vblank_work_schedule(ptr noundef %base, i64 noundef %add, i1 noundef zeroext true) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool13.not, label %if.end.cond.end20_crit_edge, label %cond.true17

if.end.cond.end20_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end20

cond.true17:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev18, align 4
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true17, %if.end.cond.end20_crit_edge
  %cond21 = phi ptr [ %16, %cond.true17 ], [ null, %if.end.cond.end20_crit_edge ]
  %name22 = getelementptr i8, ptr %base, i32 -1400
  %17 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name22, align 8
  %19 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load24 = load i8, ptr %ctx_idx, align 4
  %bf.lshr25 = lshr i8 %bf.load24, 7
  %conv26 = zext i8 %bf.lshr25 to i32
  %conv27 = zext i8 %10 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond21, i32 noundef 4, ptr noundef nonnull @.str.31, ptr noundef %18, i32 noundef %conv26, i32 noundef %conv27) #7
  %20 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base7, align 8
  %dev_private.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %dev_private.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_private.i.i.i.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %display.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %core2.i = getelementptr inbounds %struct.nv50_disp, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %core2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core2.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %interlock.i) #7
  %30 = call ptr @memset(ptr %interlock.i, i32 0, i32 24)
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %29, align 8
  %crc.i = getelementptr inbounds %struct.nv50_core_func, ptr %32, i32 0, i32 7
  %33 = ptrtoint ptr %crc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crc.i, align 4
  %set_ctx.i = getelementptr inbounds %struct.nv50_crc_func, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %set_ctx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set_ctx.i, align 4
  %call3.i = tail call i32 %36(ptr noundef %add.ptr6, ptr noundef null) #7
  %37 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %29, align 8
  %update.i = getelementptr inbounds %struct.nv50_core_func, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %update.i, align 4
  %call5.i = call i32 %40(ptr noundef %29, ptr noundef nonnull %interlock.i, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %interlock.i) #7
  %ctx = getelementptr i8, ptr %base, i32 -208
  %arrayidx = getelementptr [2 x %struct.nv50_crc_notifier_ctx], ptr %ctx, i32 0, i32 %conv27
  %41 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base7, align 8
  %dev_private.i.i.i.i80 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %dev_private.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev_private.i.i.i.i80, align 4
  %display.i.i.i81 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 19
  %45 = ptrtoint ptr %display.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %display.i.i.i81, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 8
  %core2.i82 = getelementptr inbounds %struct.nv50_disp, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %core2.i82 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core2.i82, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %interlock.i78) #7
  %51 = call ptr @memset(ptr %interlock.i78, i32 0, i32 24)
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %50, align 8
  %crc.i83 = getelementptr inbounds %struct.nv50_core_func, ptr %53, i32 0, i32 7
  %54 = ptrtoint ptr %crc.i83 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %crc.i83, align 4
  %set_ctx.i84 = getelementptr inbounds %struct.nv50_crc_func, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %set_ctx.i84 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %set_ctx.i84, align 4
  %call3.i85 = call i32 %57(ptr noundef %add.ptr6, ptr noundef %arrayidx) #7
  %58 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %50, align 8
  %update.i86 = getelementptr inbounds %struct.nv50_core_func, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %update.i86 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %update.i86, align 4
  %call5.i87 = call i32 %61(ptr noundef %50, ptr noundef nonnull %interlock.i78, i1 noundef zeroext false) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %interlock.i78) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  %call29 = call i64 @drm_crtc_vblank_count(ptr noundef %base7) #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call29, i64 %call10)
  %cmp.not = icmp eq i64 %call29, %call10
  br i1 %cmp.not, label %cond.end20.if.end42_crit_edge, label %do.body, !prof !86

cond.end20.if.end42_crit_edge:                    ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.body:                                          ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_private.i.i.i, align 4
  %drm = getelementptr inbounds %struct.nouveau_drm, ptr %63, i32 0, i32 2, i32 1
  %64 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %drm, align 8
  %dev36 = getelementptr inbounds %struct.nouveau_drm, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev36, align 8
  %dev37 = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev37, align 4
  %name38 = getelementptr inbounds %struct.nouveau_drm, ptr %63, i32 0, i32 2, i32 12
  %70 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name22, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.32, ptr noundef %name38, ptr noundef %71, i64 noundef %call29, i64 noundef %call10) #10
  br label %if.end42

if.end42:                                         ; preds = %do.body, %cond.end20.if.end42_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %add.ptr3) #7
  %72 = ptrtoint ptr %ctx_idx to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load43 = load i8, ptr %ctx_idx, align 4
  %bf.set = or i8 %bf.load43, 64
  store i8 %bf.set, ptr %ctx_idx, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %add.ptr3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %cond.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !59, !61, !63, !64, !66, !68, !70, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 55, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv50_crc_verify_source._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv50_crc_verify_source._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 196, i32 3}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 259, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nv50_crc_atomic_stop_reporting._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nv50_crc_atomic_stop_reporting._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 343, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nv50_crc_atomic_start_reporting._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @nv50_crc_atomic_start_reporting._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 698, i32 28}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 699, i32 22}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 22, i32 27}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 23, i32 27}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 24, i32 25}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 25, i32 34}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 26, i32 36}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 27, i32 36}
!36 = !{ptr @nv50_crc_sources, !37, !"nv50_crc_sources", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 21, i32 27}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 229, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @nv50_crc_wait_ctx_finished._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @nv50_crc_wait_ctx_finished._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 233, i32 3}
!46 = !{ptr @nv50_crc_wait_ctx_finished._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @nv50_crc_wait_ctx_finished._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 489, i32 31}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 493, i32 48}
!52 = !{ptr @nv50_crc_flip_threshold_fops, !53, !"nv50_crc_flip_threshold_fops", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 680, i32 37}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 669, i32 2}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @nv50_crc_debugfs_flip_threshold_set._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @nv50_crc_debugfs_flip_threshold_set._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 620, i32 16}
!61 = !{ptr @nv50_crc_init_head.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 712, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 98, i32 3}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 103, i32 2}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/dispnv50/crc.c", i32 112, i32 3}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @nv50_crc_ctx_flip_work._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @nv50_crc_ctx_flip_work._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i8 0, i8 2}
!84 = !{i64 2148508880}
!85 = !{i64 2148423332, i64 2148423364, i64 2148423393, i64 2148423427, i64 2148423458, i64 2148423481}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{i64 2150142906}
