; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/curs507a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/curs507a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wimm_func = type { ptr, ptr }
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.118, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.118 = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.117 }
%struct.anon.117 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.91 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.124, %struct.anon.125, %struct.anon.127, ptr, %struct.anon.128, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.129, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.141 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.124 = type { ptr, i32, i32, i8 }
%struct.anon.125 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.126] }
%struct.anon.126 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.127 = type { i64, i64 }
%struct.anon.128 = type { i32, i64 }
%struct.anon.129 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.136, %struct.anon.137, %struct.anon.138, %struct.anon.139 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.130, i8 }
%union.anon.130 = type { %struct.anon.134 }
%struct.anon.134 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.136 = type { i32 }
%struct.anon.137 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.138 = type { i16, i16 }
%struct.anon.139 = type { i16, i16, i16, %struct.anon.140, i16 }
%struct.anon.140 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, %struct.mutex, i8 }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.92, %struct.anon.93, [4 x i8], %struct.anon.94, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99, %struct.anon.100, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.92 = type { i32, i16 }
%struct.anon.93 = type { i32, i16, i32, i32 }
%struct.anon.94 = type { i32, [4 x i8], %struct.anon.95 }
%struct.anon.95 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.96 = type { [12 x i32], i8 }
%struct.anon.97 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.98 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.99 = type { i16, i16 }
%struct.anon.100 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.101 }
%struct.anon.101 = type { i8 }
%struct.nv50_disp_cursor_v0 = type { i8, i8, [6 x i8] }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.102, %struct.anon.103, %struct.nv50_head_mode, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110, %struct.anon.111, %struct.anon.112, %struct.anon.114, %struct.nv50_crc_atom, %struct.anon.115, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.anon.102 = type { i32, i32, i32 }
%struct.anon.103 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.104, %struct.anon.105 }
%struct.anon.104 = type { i16, i16, i16, i16 }
%struct.anon.105 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.106 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.107 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.108 = type { i8, i32, [6 x i8], i8 }
%struct.anon.109 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.110 = type { i8 }
%struct.anon.111 = type { i8 }
%struct.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i16, i16 }
%struct.anon.114 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.115 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.116 }
%struct.anon.116 = type { i16 }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/curs507a.c\00", [52 x i8] zeroinitializer }, align 32
@curs507a = dso_local constant { %struct.nv50_wimm_func, [24 x i8] } { %struct.nv50_wimm_func { ptr @curs507a_point, ptr @curs507a_update }, [24 x i8] zeroinitializer }, align 32
@curs507a_wndw = internal constant { %struct.nv50_wndw_func, [36 x i8] } { %struct.nv50_wndw_func { ptr @curs507a_acquire, ptr @curs507a_release, ptr @curs507a_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"curs\00", [27 x i8] zeroinitializer }, align 32
@curs507a_format = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 875713089, i32 0], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kmsCurs\00", [24 x i8] zeroinitializer }, align 32
@curs507a_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 169, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: curs%04x allocation failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"curs507a_new_\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@curs507a_new_._entry_ptr = internal global ptr @curs507a_new_._entry, section ".printk_index", align 4
@curs507a_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str, i32 114, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: Plane width/height must be equal for cursors\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"curs507a_acquire\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@curs507a_acquire._entry_ptr = internal global ptr @curs507a_acquire._entry, section ".printk_index", align 4
@curs507a_acquire._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str, i32 119, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"%s: Plane width must be equal to fb width for cursors (height can be larger though)\0A\00", [43 x i8] zeroinitializer }, align 32
@curs507a_acquire._entry_ptr.12 = internal global ptr @curs507a_acquire._entry.10, section ".printk_index", align 4
@curs507a_acquire._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str, i32 124, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Cursor planes do not support framebuffer offsets\0A\00", [42 x i8] zeroinitializer }, align 32
@curs507a_acquire._entry_ptr.15 = internal global ptr @curs507a_acquire._entry.13, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 42, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [9 x i8] c"curs507a\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 72, i32 1 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"curs507a_wndw\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 142, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 161, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"curs507a_format\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 136, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 166, i32 46 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 169, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 114, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 119, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 124, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @curs507a_acquire._entry, ptr @curs507a_acquire._entry.10, ptr @curs507a_acquire._entry.13, ptr @curs507a_acquire._entry_ptr, ptr @curs507a_acquire._entry_ptr.12, ptr @curs507a_acquire._entry_ptr.15, ptr @curs507a_new_._entry, ptr @curs507a_new_._entry_ptr, ptr @.str, ptr @curs507a, ptr @curs507a_wndw, ptr @.str.1, ptr @curs507a_format, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curs507a to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curs507a_wndw to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curs507a_format to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curs507a_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curs507a_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curs507a_acquire._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curs507a_acquire._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @curs507a_space(ptr noundef %wndw) local_unnamed_addr #0 align 64 {
entry:
  %_wait = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait) #6
  %0 = call ptr @memset(ptr %_wait, i32 255, i32 40)
  %plane = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 5
  %1 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_private.i, align 4
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3
  call void @nvif_timer_wait_init(ptr noundef %device, i64 noundef 100000000, ptr noundef nonnull %_wait) #6
  %map = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8, i32 0, i32 0, i32 6
  %wimm = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else, label %if.then, !prof !42

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %6, i32 8
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !43
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = call i32 @nvif_object_rd(ptr noundef %wimm, i32 noundef 4, i64 noundef 8) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %_data.0 = phi i32 [ %7, %if.then ], [ %call7, %if.else ]
  %8 = and i32 %_data.0, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %do.cond, label %cleanup

do.cond:                                          ; preds = %if.end
  %call12 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait) #6
  %cmp13 = icmp sgt i64 %call12, -1
  br i1 %cmp13, label %do.cond.do.body_crit_edge, label %do.end28

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  br label %return

do.end28:                                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait) #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 9, ptr noundef null) #6
  br label %return

return:                                           ; preds = %do.end28, %cleanup
  %9 = xor i1 %cmp.not, true
  ret i1 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @curs507a_point(ptr noundef %wndw, ptr nocapture noundef readonly %asyw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wimm = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8
  %call.i = tail call zeroext i1 @curs507a_space(ptr noundef %wndw) #6
  br i1 %call.i, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then:                                          ; preds = %entry
  %map = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8, i32 0, i32 0, i32 6
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %do.body, !prof !42

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %point = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 10
  %2 = ptrtoint ptr %point to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %point, align 4
  %conv = zext i16 %3 to i32
  %y = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %y, align 2
  %conv7 = zext i16 %5 to i32
  %shl9 = shl nuw i32 %conv7, 16
  %or = or i32 %shl9, %conv
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #6, !srcloc !46
  br label %if.end25

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %point13 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 10
  %8 = ptrtoint ptr %point13 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %point13, align 4
  %conv15 = zext i16 %9 to i32
  %y19 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %y19 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %y19, align 2
  %conv20 = zext i16 %11 to i32
  %shl22 = shl nuw i32 %conv20, 16
  %or23 = or i32 %shl22, %conv15
  tail call void @nvif_object_wr(ptr noundef %wimm, i32 noundef 4, i64 noundef 132, i32 noundef %or23) #6
  br label %if.end25

if.end25:                                         ; preds = %if.else, %do.body, %entry.if.end25_crit_edge
  %cond.i = phi i32 [ 0, %do.body ], [ 0, %if.else ], [ -110, %entry.if.end25_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @curs507a_update(ptr noundef %wndw, ptr nocapture noundef readnone %interlock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wimm = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8
  %call.i = tail call zeroext i1 @curs507a_space(ptr noundef %wndw) #6
  br i1 %call.i, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %map = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 8, i32 0, i32 0, i32 6
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %do.body, !prof !42

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !46
  br label %if.end8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %wimm, i32 noundef 4, i64 noundef 128, i32 noundef 0) #6
  br label %if.end8

if.end8:                                          ; preds = %if.else, %do.body, %entry.if.end8_crit_edge
  %cond.i = phi i32 [ 0, %do.body ], [ 0, %if.else ], [ -110, %entry.if.end8_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @curs507a_new_(ptr noundef %func, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %interlock_data, ptr nocapture noundef writeonly %pwndw) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nv50_disp_cursor_v0, align 1
  %wndw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %args) #6
  %0 = getelementptr inbounds %struct.nv50_disp_cursor_v0, ptr %args, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nv50_disp_cursor_v0, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %args, align 1
  %conv = trunc i32 %head to i8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %0, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 6)
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %dev_private.i.i.i = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %dev_private.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_private.i.i.i, align 4
  %display.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %display.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %display.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wndw) #6
  %13 = ptrtoint ptr %wndw to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %wndw, align 4, !annotation !48
  %shl = shl nuw i32 1, %head
  %call3 = call i32 @nv50_wndw_new_(ptr noundef nonnull @curs507a_wndw, ptr noundef %6, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %head, ptr noundef nonnull @curs507a_format, i32 noundef %shl, i32 noundef 1, i32 noundef %interlock_data, ptr noundef nonnull %wndw) #6
  %14 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wndw, align 4
  %16 = ptrtoint ptr %pwndw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %pwndw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 8
  %wimm = getelementptr inbounds %struct.nv50_wndw, ptr %15, i32 0, i32 8
  %call5 = call i32 @nvif_object_ctor(ptr noundef %18, ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef %oclass, ptr noundef nonnull %args, i32 noundef 8, ptr noundef %wimm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end14, label %do.body

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
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %oclass, i32 noundef %call5) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wndw, align 4
  %wimm15 = getelementptr inbounds %struct.nv50_wndw, ptr %26, i32 0, i32 8
  %call18 = call i32 @nvif_object_map(ptr noundef %wimm15, ptr noundef null, i32 noundef 0) #6
  %27 = ptrtoint ptr %wndw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wndw, align 4
  %immd = getelementptr inbounds %struct.nv50_wndw, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %immd to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %func, ptr %immd, align 4
  %ctxdma = getelementptr inbounds %struct.nv50_wndw, ptr %28, i32 0, i32 4
  %30 = ptrtoint ptr %ctxdma to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ctxdma, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.body ], [ 0, %if.end14 ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wndw) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wndw_new_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @curs507a_new(ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, ptr nocapture noundef writeonly %pwndw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %head, 3
  %shl = shl nuw i32 1, %mul
  %call = tail call i32 @curs507a_new_(ptr noundef nonnull @curs507a, ptr noundef %drm, i32 noundef %head, i32 noundef %oclass, i32 noundef %shl, ptr noundef %pwndw)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @curs507a_acquire(ptr nocapture noundef readonly %wndw, ptr noundef %asyw, ptr noundef %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plane = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 5
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 1
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 -8
  %call3 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %asyw, ptr noundef %asyh, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 22
  %6 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %visible, align 4, !range !49
  %curs = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6
  %8 = ptrtoint ptr %curs to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %curs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool6.not = icmp ne i32 %call3, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 6
  %9 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crtc_w, align 8
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 7
  %11 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %crtc_h, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %if.end25, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %13 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.cleanup_crit_edge, label %do.body15

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %drm17 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %drm17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drm17, align 8
  %dev18 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev18, align 8
  %dev19 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev19, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef %name) #9
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %w = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 5
  %20 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %w, align 8
  %conv = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv)
  %cmp28.not = icmp eq i32 %10, %conv
  br i1 %cmp28.not, label %if.end50, label %do.body31

do.body31:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %22 = load i32, ptr @__drm_debug, align 4
  %and.i110 = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %tobool.i111.not = icmp eq i32 %and.i110, 0
  br i1 %tobool.i111.not, label %do.body31.cleanup_crit_edge, label %do.body34

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body34:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %drm40 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %drm40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drm40, align 8
  %dev41 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev41, align 8
  %dev42 = getelementptr inbounds %struct.drm_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev42, align 4
  %name43 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.11, ptr noundef %name43) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end25
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 8
  %29 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %src_x, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool52.not = icmp eq i32 %30, 0
  br i1 %tobool52.not, label %lor.lhs.false53, label %if.end50.do.body57_crit_edge

if.end50.do.body57_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

lor.lhs.false53:                                  ; preds = %if.end50
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %asyw, i32 0, i32 9
  %31 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_y, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool55.not = icmp eq i32 %32, 0
  br i1 %tobool55.not, label %if.end76, label %lor.lhs.false53.do.body57_crit_edge

lor.lhs.false53.do.body57_crit_edge:              ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body57

do.body57:                                        ; preds = %lor.lhs.false53.do.body57_crit_edge, %if.end50.do.body57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %33 = load i32, ptr @__drm_debug, align 4
  %and.i112 = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i112)
  %tobool.i113.not = icmp eq i32 %and.i112, 0
  br i1 %tobool.i113.not, label %do.body57.cleanup_crit_edge, label %do.body60

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body60:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #8
  %drm66 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %drm66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drm66, align 8
  %dev67 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev67, align 8
  %dev68 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev68, align 4
  %name69 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.14, ptr noundef %name69) #9
  br label %cleanup

if.end76:                                         ; preds = %lor.lhs.false53
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr, align 8
  %curs_layout = getelementptr inbounds %struct.nv50_head_func, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %curs_layout to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %curs_layout, align 4
  %call77 = tail call i32 %43(ptr noundef %add.ptr, ptr noundef %asyw, ptr noundef %asyh) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 8
  %curs_format = getelementptr inbounds %struct.nv50_head_func, ptr %45, i32 0, i32 12
  %46 = ptrtoint ptr %curs_format to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %curs_format, align 4
  %call82 = tail call i32 %47(ptr noundef %add.ptr, ptr noundef %asyw, ptr noundef %asyh) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end76.cleanup_crit_edge, %do.body60, %do.body57.cleanup_crit_edge, %do.body34, %do.body31.cleanup_crit_edge, %do.body15, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call82, %if.end80 ], [ %call3, %entry.cleanup_crit_edge ], [ -22, %do.body15 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %do.body34 ], [ -22, %do.body31.cleanup_crit_edge ], [ -22, %do.body60 ], [ -22, %do.body57.cleanup_crit_edge ], [ %call77, %if.end76.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @curs507a_release(ptr nocapture noundef readnone %wndw, ptr nocapture noundef readnone %asyw, ptr nocapture noundef writeonly %asyh) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %curs = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6
  %0 = ptrtoint ptr %curs to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %curs, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @curs507a_prepare(ptr nocapture noundef readonly %wndw, ptr nocapture noundef %asyh, ptr nocapture noundef readonly %asyw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plane = getelementptr inbounds %struct.nv50_wndw, ptr %wndw, i32 0, i32 5
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
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
  %handle1 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 1, i32 5, i32 3
  %10 = ptrtoint ptr %handle1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle1, align 4
  %offset2 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %asyw, i32 0, i32 8, i32 8
  %12 = ptrtoint ptr %offset2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %offset2, align 8
  %curs = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6
  %handle3 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %handle3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp.not = icmp eq i32 %15, %11
  br i1 %cmp.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %offset6 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %offset6 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 6)
  %bf.load = load i48, ptr %offset6, align 8
  %bf.lshr = lshr i48 %bf.load, 8
  %bf.cast = zext i48 %bf.lshr to i64
  %conv7 = and i64 %13, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %conv7, i64 %bf.cast)
  %cmp8.not = icmp eq i64 %conv7, %bf.cast
  br i1 %cmp8.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %17 = ptrtoint ptr %handle3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %11, ptr %handle3, align 4
  %offset14 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 6, i32 2
  %18 = trunc i64 %13 to i48
  %19 = ptrtoint ptr %offset14 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 6)
  %bf.load15 = load i48, ptr %offset14, align 8
  %20 = shl i48 %18, 8
  %bf.shl = and i48 %20, 1099511627520
  %bf.clear = and i48 %bf.load15, 255
  %bf.set = or i48 %bf.clear, %bf.shl
  store i48 %bf.set, ptr %offset14, align 8
  %21 = ptrtoint ptr %curs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %curs, align 8, !range !49
  %set = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 14
  %23 = zext i8 %22 to i16
  %24 = ptrtoint ptr %set to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load17 = load i16, ptr %set, align 8
  %bf.shl18 = shl nuw nsw i16 %23, 13
  %bf.clear19 = and i16 %bf.load17, -8193
  %bf.set20 = or i16 %bf.clear19, %bf.shl18
  store i16 %bf.set20, ptr %set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 42, i32 2}
!2 = !{ptr @curs507a, !3, !"curs507a", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 72, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 161, i32 9}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 166, i32 46}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 169, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @curs507a_new_._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @curs507a_new_._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @curs507a_wndw, !16, !"curs507a_wndw", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 142, i32 1}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 114, i32 3}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @curs507a_acquire._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @curs507a_acquire._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 119, i32 3}
!25 = !{ptr @curs507a_acquire._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @curs507a_acquire._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 124, i32 3}
!29 = !{ptr @curs507a_acquire._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @curs507a_acquire._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @curs507a_format, !32, !"curs507a_format", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/dispnv50/curs507a.c", i32 136, i32 1}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 5394254}
!44 = !{i64 2157827451}
!45 = !{i64 2157835666}
!46 = !{i64 5393836}
!47 = !{i64 2157831074}
!48 = !{!"auto-init"}
!49 = !{i8 0, i8 2}
