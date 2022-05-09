; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv04/hw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.90 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.97, %struct.anon.98, %struct.anon.100, ptr, %struct.anon.101, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.102, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.114 }
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
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.99] }
%struct.anon.99 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.100 = type { i64, i64 }
%struct.anon.101 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.93 }
%struct.anon.93 = type { ptr, i64 }
%struct.anon.102 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.109, %struct.anon.110, %struct.anon.111, %struct.anon.112 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.103, i8 }
%union.anon.103 = type { %struct.anon.107 }
%struct.anon.107 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.109 = type { i32 }
%struct.anon.110 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.111 = type { i16, i16 }
%struct.anon.112 = type { i16, i16, i16, %struct.anon.113, i16 }
%struct.anon.113 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.114 = type { ptr, %struct.mutex, i8 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.174, %struct.anon.174 }
%struct.anon.174 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.anon.193 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.169, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.169 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_pll_vals = type { %union.anon.115, i32, i32 }
%union.anon.115 = type { %struct.anon.117 }
%struct.anon.117 = type { i16, i16 }
%struct.anon.116 = type { i8, i8, i8, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.194 = type { %struct.nvkm_object, ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.anon.196 = type { %struct.nvkm_object, ptr }

@nouveau_hw_save_vga_fonts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 329, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: %sing VGA fonts\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nouveau_hw_save_vga_fonts\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/nouveau/dispnv04/hw.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_hw_save_vga_fonts._entry_ptr = internal global ptr @nouveau_hw_save_vga_fonts._entry, section ".printk_index", align 4
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Sav\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Restor\00", [25 x i8] zeroinitializer }, align 32
@nouveau_hw_save_vga_fonts._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 335, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Failed to map VRAM, cannot save/restore VGA fonts.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nouveau_hw_save_vga_fonts._entry_ptr.10 = internal global ptr @nouveau_hw_save_vga_fonts._entry.7, section ".printk_index", align 4
@nouveau_hw_fix_bad_vpll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 277, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: VPLL %d outwith limits, attempting to fix\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nouveau_hw_fix_bad_vpll\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nouveau_hw_fix_bad_vpll._entry_ptr = internal global ptr @nouveau_hw_fix_bad_vpll._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 12, i64 784, i64 832]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 12, i64 784, i64 832]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 48, i64 53]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 12, i64 416, i64 496]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 12, i64 256, i64 336, i64 416, i64 512]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 329, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 334, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/dispnv04/hw.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 277, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @nouveau_hw_fix_bad_vpll._entry, ptr @nouveau_hw_fix_bad_vpll._entry_ptr, ptr @nouveau_hw_save_vga_fonts._entry, ptr @nouveau_hw_save_vga_fonts._entry.7, ptr @nouveau_hw_save_vga_fonts._entry_ptr, ptr @nouveau_hw_save_vga_fonts._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_hw_save_vga_fonts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_hw_save_vga_fonts._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_hw_fix_bad_vpll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteVgaSeq(ptr nocapture noundef readonly %dev, i32 noundef %head, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i = icmp eq i32 %head, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %2 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.i = icmp eq i8 %3, 5
  %spec.select.i = select i1 %cmp.i, i32 795588, i32 787396
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %entry.if.end.i_crit_edge
  %reg.addr.0.i = phi i32 [ 787396, %entry.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.else.i, label %if.then9.i, !prof !30

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %reg.addr.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #6, !srcloc !32
  br label %NVWritePRMVIO.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i = zext i32 %reg.addr.0.i to i64
  %conv13.i = zext i8 %index to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv12.i, i32 noundef %conv13.i) #6
  br label %NVWritePRMVIO.exit

NVWritePRMVIO.exit:                               ; preds = %if.else.i, %if.then9.i
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i4 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  br i1 %tobool.not.i, label %NVWritePRMVIO.exit.if.end.i13_crit_edge, label %land.lhs.true.i9

NVWritePRMVIO.exit.if.end.i13_crit_edge:          ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i13

land.lhs.true.i9:                                 ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  %family.i6 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 4
  %8 = ptrtoint ptr %family.i6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family.i6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.i7 = icmp eq i8 %9, 5
  %spec.select.i8 = select i1 %cmp.i7, i32 795589, i32 787397
  br label %if.end.i13

if.end.i13:                                       ; preds = %land.lhs.true.i9, %NVWritePRMVIO.exit.if.end.i13_crit_edge
  %reg.addr.0.i10 = phi i32 [ 787397, %NVWritePRMVIO.exit.if.end.i13_crit_edge ], [ %spec.select.i8, %land.lhs.true.i9 ]
  %map.i11 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = ptrtoint ptr %map.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i11, align 8
  %tobool6.not.i12 = icmp eq ptr %11, null
  br i1 %tobool6.not.i12, label %if.else.i18, label %if.then9.i15, !prof !30

if.then9.i15:                                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14 = getelementptr i8, ptr %11, i32 %reg.addr.0.i10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14, i8 %value) #6, !srcloc !32
  br label %NVWritePRMVIO.exit19

if.else.i18:                                      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i16 = zext i32 %reg.addr.0.i10 to i64
  %conv13.i17 = zext i8 %value to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i4, i32 noundef 1, i64 noundef %conv12.i16, i32 noundef %conv13.i17) #6
  br label %NVWritePRMVIO.exit19

NVWritePRMVIO.exit19:                             ; preds = %if.else.i18, %if.then9.i15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadVgaSeq(ptr nocapture noundef readonly %dev, i32 noundef %head, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i = icmp eq i32 %head, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %2 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.i = icmp eq i8 %3, 5
  %spec.select.i = select i1 %cmp.i, i32 795588, i32 787396
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %entry.if.end.i_crit_edge
  %reg.addr.0.i = phi i32 [ 787396, %entry.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.else.i, label %if.then9.i, !prof !30

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %reg.addr.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #6, !srcloc !32
  br label %NVWritePRMVIO.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i = zext i32 %reg.addr.0.i to i64
  %conv13.i = zext i8 %index to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv12.i, i32 noundef %conv13.i) #6
  br label %NVWritePRMVIO.exit

NVWritePRMVIO.exit:                               ; preds = %if.else.i, %if.then9.i
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i4 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  br i1 %tobool.not.i, label %NVWritePRMVIO.exit.if.end.i13_crit_edge, label %land.lhs.true.i9

NVWritePRMVIO.exit.if.end.i13_crit_edge:          ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i13

land.lhs.true.i9:                                 ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  %family.i6 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 4
  %8 = ptrtoint ptr %family.i6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family.i6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.i7 = icmp eq i8 %9, 5
  %spec.select.i8 = select i1 %cmp.i7, i32 795589, i32 787397
  br label %if.end.i13

if.end.i13:                                       ; preds = %land.lhs.true.i9, %NVWritePRMVIO.exit.if.end.i13_crit_edge
  %reg.addr.0.i10 = phi i32 [ 787397, %NVWritePRMVIO.exit.if.end.i13_crit_edge ], [ %spec.select.i8, %land.lhs.true.i9 ]
  %map.i11 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = ptrtoint ptr %map.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i11, align 8
  %tobool6.not.i12 = icmp eq ptr %11, null
  br i1 %tobool6.not.i12, label %if.else.i17, label %if.then9.i16, !prof !30

if.then9.i16:                                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14 = getelementptr i8, ptr %11, i32 %reg.addr.0.i10
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv13.i15 = zext i8 %12 to i32
  br label %NVReadPRMVIO.exit

if.else.i17:                                      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i = zext i32 %reg.addr.0.i10 to i64
  %call15.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i4, i32 noundef 1, i64 noundef %conv14.i) #6
  br label %NVReadPRMVIO.exit

NVReadPRMVIO.exit:                                ; preds = %if.else.i17, %if.then9.i16
  %_data.0.i = phi i32 [ %conv13.i15, %if.then9.i16 ], [ %call15.i, %if.else.i17 ]
  %conv18.i = trunc i32 %_data.0.i to i8
  ret i8 %conv18.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVWriteVgaGr(ptr nocapture noundef readonly %dev, i32 noundef %head, i8 noundef zeroext %index, i8 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i = icmp eq i32 %head, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %2 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.i = icmp eq i8 %3, 5
  %spec.select.i = select i1 %cmp.i, i32 795598, i32 787406
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %entry.if.end.i_crit_edge
  %reg.addr.0.i = phi i32 [ 787406, %entry.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.else.i, label %if.then9.i, !prof !30

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %reg.addr.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #6, !srcloc !32
  br label %NVWritePRMVIO.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i = zext i32 %reg.addr.0.i to i64
  %conv13.i = zext i8 %index to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv12.i, i32 noundef %conv13.i) #6
  br label %NVWritePRMVIO.exit

NVWritePRMVIO.exit:                               ; preds = %if.else.i, %if.then9.i
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i4 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  br i1 %tobool.not.i, label %NVWritePRMVIO.exit.if.end.i13_crit_edge, label %land.lhs.true.i9

NVWritePRMVIO.exit.if.end.i13_crit_edge:          ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i13

land.lhs.true.i9:                                 ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  %family.i6 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 4
  %8 = ptrtoint ptr %family.i6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family.i6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.i7 = icmp eq i8 %9, 5
  %spec.select.i8 = select i1 %cmp.i7, i32 795599, i32 787407
  br label %if.end.i13

if.end.i13:                                       ; preds = %land.lhs.true.i9, %NVWritePRMVIO.exit.if.end.i13_crit_edge
  %reg.addr.0.i10 = phi i32 [ 787407, %NVWritePRMVIO.exit.if.end.i13_crit_edge ], [ %spec.select.i8, %land.lhs.true.i9 ]
  %map.i11 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = ptrtoint ptr %map.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i11, align 8
  %tobool6.not.i12 = icmp eq ptr %11, null
  br i1 %tobool6.not.i12, label %if.else.i18, label %if.then9.i15, !prof !30

if.then9.i15:                                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14 = getelementptr i8, ptr %11, i32 %reg.addr.0.i10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14, i8 %value) #6, !srcloc !32
  br label %NVWritePRMVIO.exit19

if.else.i18:                                      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i16 = zext i32 %reg.addr.0.i10 to i64
  %conv13.i17 = zext i8 %value to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i4, i32 noundef 1, i64 noundef %conv12.i16, i32 noundef %conv13.i17) #6
  br label %NVWritePRMVIO.exit19

NVWritePRMVIO.exit19:                             ; preds = %if.else.i18, %if.then9.i15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadVgaGr(ptr nocapture noundef readonly %dev, i32 noundef %head, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i = icmp eq i32 %head, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %2 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.i = icmp eq i8 %3, 5
  %spec.select.i = select i1 %cmp.i, i32 795598, i32 787406
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %entry.if.end.i_crit_edge
  %reg.addr.0.i = phi i32 [ 787406, %entry.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.else.i, label %if.then9.i, !prof !30

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %reg.addr.0.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #6, !srcloc !32
  br label %NVWritePRMVIO.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i = zext i32 %reg.addr.0.i to i64
  %conv13.i = zext i8 %index to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv12.i, i32 noundef %conv13.i) #6
  br label %NVWritePRMVIO.exit

NVWritePRMVIO.exit:                               ; preds = %if.else.i, %if.then9.i
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i4 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  br i1 %tobool.not.i, label %NVWritePRMVIO.exit.if.end.i13_crit_edge, label %land.lhs.true.i9

NVWritePRMVIO.exit.if.end.i13_crit_edge:          ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i13

land.lhs.true.i9:                                 ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  %family.i6 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 4
  %8 = ptrtoint ptr %family.i6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family.i6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp.i7 = icmp eq i8 %9, 5
  %spec.select.i8 = select i1 %cmp.i7, i32 795599, i32 787407
  br label %if.end.i13

if.end.i13:                                       ; preds = %land.lhs.true.i9, %NVWritePRMVIO.exit.if.end.i13_crit_edge
  %reg.addr.0.i10 = phi i32 [ 787407, %NVWritePRMVIO.exit.if.end.i13_crit_edge ], [ %spec.select.i8, %land.lhs.true.i9 ]
  %map.i11 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = ptrtoint ptr %map.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i11, align 8
  %tobool6.not.i12 = icmp eq ptr %11, null
  br i1 %tobool6.not.i12, label %if.else.i17, label %if.then9.i16, !prof !30

if.then9.i16:                                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14 = getelementptr i8, ptr %11, i32 %reg.addr.0.i10
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv13.i15 = zext i8 %12 to i32
  br label %NVReadPRMVIO.exit

if.else.i17:                                      ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i = zext i32 %reg.addr.0.i10 to i64
  %call15.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i4, i32 noundef 1, i64 noundef %conv14.i) #6
  br label %NVReadPRMVIO.exit

NVReadPRMVIO.exit:                                ; preds = %if.else.i17, %if.then9.i16
  %_data.0.i = phi i32 [ %conv13.i15, %if.then9.i16 ], [ %call15.i, %if.else.i17 ]
  %conv18.i = trunc i32 %_data.0.i to i8
  ret i8 %conv18.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVSetOwner(ptr nocapture noundef readonly %dev, i32 noundef %owner) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %owner)
  %cmp = icmp eq i32 %owner, 1
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 2
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %3)
  %cmp1 = icmp eq i16 %3, 17
  br i1 %cmp1, label %if.then3, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %entry
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !30

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 31) #6, !srcloc !32
  br label %if.end.i

if.else.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef 6296532, i32 noundef 31) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %7, null
  br i1 %tobool12.not.i, label %if.else27.i, label %if.then19.i, !prof !30

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i = getelementptr i8, ptr %7, i32 6296533
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef 6296533) #6
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i
  %9 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_private.i, align 4
  %device1.i30 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3
  %map.i31 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 0, i32 6
  %11 = ptrtoint ptr %map.i31 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i31, align 8
  %tobool.not.i32 = icmp eq ptr %12, null
  br i1 %tobool.not.i32, label %if.else.i35, label %if.then.i34, !prof !30

if.then.i34:                                      ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i33 = getelementptr i8, ptr %12, i32 6304724
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i33, i8 31) #6, !srcloc !32
  br label %if.end.i37

if.else.i35:                                      ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i30, i32 noundef 1, i64 noundef 6304724, i32 noundef 31) #6
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.else.i35, %if.then.i34
  %13 = ptrtoint ptr %map.i31 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i31, align 8
  %tobool12.not.i36 = icmp eq ptr %14, null
  br i1 %tobool12.not.i36, label %if.else27.i42, label %if.then19.i40, !prof !30

if.then19.i40:                                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i38 = getelementptr i8, ptr %14, i32 6304725
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i38) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end6

if.else27.i42:                                    ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i41 = tail call i32 @nvif_object_rd(ptr noundef %device1.i30, i32 noundef 1, i64 noundef 6304725) #6
  br label %if.end6

if.end6:                                          ; preds = %if.else27.i42, %if.then19.i40, %entry.if.end6_crit_edge
  %16 = trunc i32 %owner to i8
  %conv7 = select i1 %cmp, i8 3, i8 %16
  %17 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_private.i, align 4
  %device1.i47 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 3
  %map.i48 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 3, i32 0, i32 6
  %19 = ptrtoint ptr %map.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i48, align 8
  %tobool.not.i49 = icmp eq ptr %20, null
  br i1 %tobool.not.i49, label %if.else.i52, label %if.then.i51, !prof !30

if.then.i51:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i50 = getelementptr i8, ptr %20, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i50, i8 68) #6, !srcloc !32
  br label %if.end.i54

if.else.i52:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i47, i32 noundef 1, i64 noundef 6296532, i32 noundef 68) #6
  br label %if.end.i54

if.end.i54:                                       ; preds = %if.else.i52, %if.then.i51
  %21 = ptrtoint ptr %map.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %map.i48, align 8
  %tobool12.not.i53 = icmp eq ptr %22, null
  br i1 %tobool12.not.i53, label %if.else25.i, label %if.then19.i56, !prof !30

if.then19.i56:                                    ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i55 = getelementptr i8, ptr %22, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i55, i8 %conv7) #6, !srcloc !32
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #8
  %conv29.i = zext i8 %conv7 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i47, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i) #6
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i56
  %23 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %24)
  %cmp13 = icmp eq i16 %24, 17
  br i1 %cmp13, label %if.then15, label %NVWriteVgaCrtc.exit.if.end18_crit_edge

NVWriteVgaCrtc.exit.if.end18_crit_edge:           ; preds = %NVWriteVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %NVWriteVgaCrtc.exit
  %25 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_private.i, align 4
  %device1.i58 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3
  %map.i59 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3, i32 0, i32 6
  %27 = ptrtoint ptr %map.i59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i59, align 8
  %tobool.not.i60 = icmp eq ptr %28, null
  br i1 %tobool.not.i60, label %if.else.i63, label %if.then.i62, !prof !30

if.then.i62:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i61 = getelementptr i8, ptr %28, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i61, i8 46) #6, !srcloc !32
  br label %if.end.i65

if.else.i63:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i58, i32 noundef 1, i64 noundef 6296532, i32 noundef 46) #6
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.else.i63, %if.then.i62
  %29 = ptrtoint ptr %map.i59 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i59, align 8
  %tobool12.not.i64 = icmp eq ptr %30, null
  br i1 %tobool12.not.i64, label %if.else25.i69, label %if.then19.i67, !prof !30

if.then19.i67:                                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i66 = getelementptr i8, ptr %30, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i66, i8 %conv7) #6, !srcloc !32
  br label %NVWriteVgaCrtc.exit70

if.else25.i69:                                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  %conv29.i68 = zext i8 %conv7 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i58, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i68) #6
  br label %NVWriteVgaCrtc.exit70

NVWriteVgaCrtc.exit70:                            ; preds = %if.else25.i69, %if.then19.i67
  %31 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_private.i, align 4
  %device1.i72 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3
  %map.i73 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3, i32 0, i32 6
  %33 = ptrtoint ptr %map.i73 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %map.i73, align 8
  %tobool.not.i74 = icmp eq ptr %34, null
  br i1 %tobool.not.i74, label %if.else.i77, label %if.then.i76, !prof !30

if.then.i76:                                      ; preds = %NVWriteVgaCrtc.exit70
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i75 = getelementptr i8, ptr %34, i32 6296532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i75, i8 46) #6, !srcloc !32
  br label %if.end.i79

if.else.i77:                                      ; preds = %NVWriteVgaCrtc.exit70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i72, i32 noundef 1, i64 noundef 6296532, i32 noundef 46) #6
  br label %if.end.i79

if.end.i79:                                       ; preds = %if.else.i77, %if.then.i76
  %35 = ptrtoint ptr %map.i73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i73, align 8
  %tobool12.not.i78 = icmp eq ptr %36, null
  br i1 %tobool12.not.i78, label %if.else25.i83, label %if.then19.i81, !prof !30

if.then19.i81:                                    ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i80 = getelementptr i8, ptr %36, i32 6296533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i80, i8 %conv7) #6, !srcloc !32
  br label %if.end18

if.else25.i83:                                    ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #8
  %conv29.i82 = zext i8 %conv7 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i72, i32 noundef 1, i64 noundef 6296533, i32 noundef %conv29.i82) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else25.i83, %if.then19.i81, %NVWriteVgaCrtc.exit.if.end18_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @NVBlankScreen(ptr nocapture noundef readonly %dev, i32 noundef %head, i1 noundef zeroext %blank) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %3, i32 -102
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  %6 = and i16 %5, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %7 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i = icmp ugt i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %6)
  %cmp5.not.i = icmp ne i16 %6, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %6)
  %cmp8.not.i = icmp ne i16 %6, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %6)
  %cmp11.not.i = icmp ne i16 %6, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %6)
  %cmp14.not.i = icmp ne i16 %6, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @NVSetOwner(ptr noundef %dev, i32 noundef %head)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1 = tail call zeroext i8 @NVReadVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1)
  tail call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %9 = and i8 %call1, -33
  %masksel = select i1 %blank, i8 32, i8 0
  %.sink = or i8 %9, %masksel
  tail call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1, i8 noundef zeroext %.sink)
  tail call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 0, i8 noundef zeroext 3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_hw_get_pllvals(ptr nocapture noundef readonly %dev, i32 noundef %plltype, ptr nocapture noundef %pllvals) local_unnamed_addr #0 align 64 {
entry:
  %pll_lim = alloca %struct.nvbios_pll, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %device5 = getelementptr inbounds %struct.anon.193, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device5, align 8
  %bios6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %bios6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bios6, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll_lim) #6
  %8 = call ptr @memset(ptr %pll_lim, i32 255, i32 56)
  %call7 = call i32 @nvbios_pll_parse(ptr noundef %7, i32 noundef %plltype, ptr noundef nonnull %pll_lim) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %reg = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim, i32 0, i32 1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 8
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.else, label %if.then13, !prof !30

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %12, i32 %10
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i32 %10 to i64
  %call18 = call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef %conv) #6
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then13
  %_data.0 = phi i32 [ %13, %if.then13 ], [ %call18, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16477, i32 %10)
  %cmp = icmp ult i32 %10, 16477
  br i1 %cmp, label %if.then22, label %if.else48

if.then22:                                        ; preds = %if.end19
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 8
  %tobool28.not = icmp eq ptr %15, null
  %add43 = add nuw nsw i32 %10, 4
  br i1 %tobool28.not, label %if.else42, label %if.then35, !prof !30

if.then35:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr39 = getelementptr i8, ptr %15, i32 %add43
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  br label %if.then.i

if.else42:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %conv44 = zext i32 %add43 to i64
  %call45 = call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef %conv44) #6
  br label %if.then.i

if.else48:                                        ; preds = %if.end19
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1.i, align 4
  %device.i = getelementptr i8, ptr %18, i32 -102
  %19 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device.i, align 2
  %21 = trunc i16 %20 to i12
  %trunc.i = and i12 %21, -16
  %22 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i12 %trunc.i, label %nv_two_reg_pll.exit [
    i12 784, label %if.else48.if.then50_crit_edge
    i12 832, label %if.else48.if.then50_crit_edge157
  ]

if.else48.if.then50_crit_edge157:                 ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.else48.if.then50_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

nv_two_reg_pll.exit:                              ; preds = %if.else48
  %23 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_private.i, align 4
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3, i32 1, i32 4
  %25 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp8.i = icmp ugt i8 %26, 4
  br i1 %cmp8.i, label %nv_two_reg_pll.exit.if.then50_crit_edge, label %nv_two_reg_pll.exit.if.end79_crit_edge

nv_two_reg_pll.exit.if.end79_crit_edge:           ; preds = %nv_two_reg_pll.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

nv_two_reg_pll.exit.if.then50_crit_edge:          ; preds = %nv_two_reg_pll.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.then50:                                        ; preds = %nv_two_reg_pll.exit.if.then50_crit_edge, %if.else48.if.then50_crit_edge, %if.else48.if.then50_crit_edge157
  call void @__sanitizer_cov_trace_const_cmp4(i32 6817056, i32 %10)
  %cmp51 = icmp eq i32 %10, 6817056
  %cond = select i1 %cmp51, i32 92, i32 112
  %add53 = add i32 %cond, %10
  %27 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map, align 8
  %tobool59.not = icmp eq ptr %28, null
  br i1 %tobool59.not, label %if.else73, label %if.then66, !prof !30

if.then66:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr70 = getelementptr i8, ptr %28, i32 %add53
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !38
  br label %if.end79

if.else73:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #8
  %conv74 = zext i32 %add53 to i64
  %call75 = call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 4, i64 noundef %conv74) #6
  br label %if.end79

if.end79:                                         ; preds = %if.else73, %if.then66, %nv_two_reg_pll.exit.if.end79_crit_edge
  %pll2.0 = phi i32 [ 0, %nv_two_reg_pll.exit.if.end79_crit_edge ], [ %29, %if.then66 ], [ %call75, %if.else73 ]
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %30 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp83 = icmp eq i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6817031, i32 %10)
  %cmp85 = icmp ugt i32 %10, 6817031
  %or.cond = select i1 %cmp83, i1 %cmp85, i1 false
  br i1 %or.cond, label %if.then87, label %if.end79.if.else.i141_crit_edge

if.end79.if.else.i141_crit_edge:                  ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i141

if.then87:                                        ; preds = %if.end79
  %32 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_private.i, align 4
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3, i32 0, i32 6
  %34 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %map.i, align 8
  %tobool2.not.i = icmp eq ptr %35, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then5.i, !prof !30

if.then5.i:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %35, i32 6817152
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit

if.else.i:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3
  %call10.i = call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 4, i64 noundef 6817152) #6
  br label %NVReadRAMDAC.exit

NVReadRAMDAC.exit:                                ; preds = %if.else.i, %if.then5.i
  %_data.0.i = phi i32 [ %36, %if.then5.i ], [ %call10.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6817032, i32 %10)
  %cmp89 = icmp eq i32 %10, 6817032
  br i1 %cmp89, label %if.then91, label %if.else95

if.then91:                                        ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %_data.0.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool92.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool92.not, i32 %pll2.0, i32 0
  br label %if.else.i141

if.else95:                                        ; preds = %NVReadRAMDAC.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and96 = and i32 %_data.0.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  %spec.select138 = select i1 %tobool97.not, i32 %pll2.0, i32 0
  br label %if.else.i141

if.then.i:                                        ; preds = %if.else42, %if.then35
  %pll2.0.ph = phi i32 [ %call45, %if.else42 ], [ %16, %if.then35 ]
  %shr.i = lshr i32 %_data.0, 16
  %and.i = and i32 %shr.i, 7
  %log2P.i = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pllvals, i32 0, i32 1
  %37 = ptrtoint ptr %log2P.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i, ptr %log2P.i, align 4
  %M2.i = getelementptr inbounds %struct.anon.116, ptr %pllvals, i32 0, i32 3
  %38 = ptrtoint ptr %M2.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %M2.i, align 1
  %N2.i = getelementptr inbounds %struct.anon.116, ptr %pllvals, i32 0, i32 2
  %39 = ptrtoint ptr %N2.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %N2.i, align 2
  %conv.i = trunc i32 %pll2.0.ph to i16
  %40 = ptrtoint ptr %pllvals to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv.i, ptr %pllvals, align 4
  %and2.i = and i32 %_data.0, 4352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.then.i.nouveau_hw_decode_pll.exit_crit_edge

if.then.i.nouveau_hw_decode_pll.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_hw_decode_pll.exit

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr4.i = lshr i32 %pll2.0.ph, 16
  %conv5.i = trunc i32 %shr4.i to i16
  %41 = ptrtoint ptr %N2.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv5.i, ptr %N2.i, align 2
  br label %nouveau_hw_decode_pll.exit

if.else.i141:                                     ; preds = %if.else95, %if.then91, %if.end79.if.else.i141_crit_edge
  %pll2.2.ph = phi i32 [ %spec.select138, %if.else95 ], [ %spec.select, %if.then91 ], [ %pll2.0, %if.end79.if.else.i141_crit_edge ]
  %42 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_private.i, align 4
  %shr.i149 = lshr i32 %_data.0, 16
  %and.i150 = and i32 %shr.i149, 7
  %log2P.i151 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pllvals, i32 0, i32 1
  %44 = ptrtoint ptr %log2P.i151 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %and.i150, ptr %log2P.i151, align 4
  %M2.i152 = getelementptr inbounds %struct.anon.116, ptr %pllvals, i32 0, i32 3
  %45 = ptrtoint ptr %M2.i152 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %M2.i152, align 1
  %N2.i153 = getelementptr inbounds %struct.anon.116, ptr %pllvals, i32 0, i32 2
  %46 = ptrtoint ptr %N2.i153 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %N2.i153, align 2
  %conv7.i = trunc i32 %_data.0 to i16
  %47 = ptrtoint ptr %pllvals to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv7.i, ptr %pllvals, align 4
  %48 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev1.i, align 4
  %device.i.i = getelementptr i8, ptr %49, i32 -102
  %50 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %device.i.i, align 2
  %52 = trunc i16 %51 to i12
  %trunc.i.i = and i12 %52, -16
  %53 = zext i12 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.14)
  switch i12 %trunc.i.i, label %lor.lhs.false5.i.i [
    i12 784, label %if.else.i141.nv_two_reg_pll.exit.i_crit_edge
    i12 832, label %if.else.i141.nv_two_reg_pll.exit.i_crit_edge158
  ]

if.else.i141.nv_two_reg_pll.exit.i_crit_edge158:  ; preds = %if.else.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv_two_reg_pll.exit.i

if.else.i141.nv_two_reg_pll.exit.i_crit_edge:     ; preds = %if.else.i141
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv_two_reg_pll.exit.i

lor.lhs.false5.i.i:                               ; preds = %if.else.i141
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev_private.i, align 4
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 2, i32 3, i32 1, i32 4
  %56 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %57)
  %cmp8.i.i = icmp ult i8 %57, 5
  br label %nv_two_reg_pll.exit.i

nv_two_reg_pll.exit.i:                            ; preds = %lor.lhs.false5.i.i, %if.else.i141.nv_two_reg_pll.exit.i_crit_edge, %if.else.i141.nv_two_reg_pll.exit.i_crit_edge158
  %retval.0.i.i = phi i1 [ false, %if.else.i141.nv_two_reg_pll.exit.i_crit_edge ], [ false, %if.else.i141.nv_two_reg_pll.exit.i_crit_edge158 ], [ %cmp8.i.i, %lor.lhs.false5.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %pll2.2.ph)
  %tobool12.not.i = icmp sgt i32 %pll2.2.ph, -1
  %or.cond.i = or i1 %tobool12.not.i, %retval.0.i.i
  br i1 %or.cond.i, label %if.else17.i, label %if.then13.i

if.then13.i:                                      ; preds = %nv_two_reg_pll.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv15.i = trunc i32 %pll2.2.ph to i16
  %58 = ptrtoint ptr %N2.i153 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv15.i, ptr %N2.i153, align 2
  br label %nouveau_hw_decode_pll.exit

if.else17.i:                                      ; preds = %nv_two_reg_pll.exit.i
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 3, i32 1, i32 2
  %59 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %chipset.i, align 2
  %61 = zext i16 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %60, label %if.else17.i.nouveau_hw_decode_pll.exit_crit_edge [
    i16 48, label %if.else17.i.if.then28.i_crit_edge
    i16 53, label %if.else17.i.if.then28.i_crit_edge159
  ]

if.else17.i.if.then28.i_crit_edge159:             ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28.i

if.else17.i.if.then28.i_crit_edge:                ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28.i

if.else17.i.nouveau_hw_decode_pll.exit_crit_edge: ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_hw_decode_pll.exit

if.then28.i:                                      ; preds = %if.else17.i.if.then28.i_crit_edge, %if.else17.i.if.then28.i_crit_edge159
  %M1.i = getelementptr inbounds %struct.anon.116, ptr %pllvals, i32 0, i32 1
  %62 = ptrtoint ptr %M1.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %M1.i, align 1
  %64 = and i8 %63, 15
  store i8 %64, ptr %M1.i, align 1
  %and32.i = and i32 %_data.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.then28.i.nouveau_hw_decode_pll.exit_crit_edge, label %if.then34.i

if.then28.i.nouveau_hw_decode_pll.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_hw_decode_pll.exit

if.then34.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = trunc i32 %_data.0 to i8
  %66 = lshr i8 %65, 4
  %conv37.i = and i8 %66, 7
  %67 = ptrtoint ptr %M2.i152 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv37.i, ptr %M2.i152, align 1
  %shr39.i = lshr i32 %_data.0, 21
  %and40.i = and i32 %shr39.i, 24
  %shr41.i = lshr i32 %_data.0, 19
  %and42.i = and i32 %shr41.i, 7
  %or.i = or i32 %and40.i, %and42.i
  %conv43.i = trunc i32 %or.i to i8
  %68 = ptrtoint ptr %N2.i153 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv43.i, ptr %N2.i153, align 2
  br label %nouveau_hw_decode_pll.exit

nouveau_hw_decode_pll.exit:                       ; preds = %if.then34.i, %if.then28.i.nouveau_hw_decode_pll.exit_crit_edge, %if.else17.i.nouveau_hw_decode_pll.exit_crit_edge, %if.then13.i, %if.then3.i, %if.then.i.nouveau_hw_decode_pll.exit_crit_edge
  %refclk = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim, i32 0, i32 2
  %69 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %refclk, align 4
  %refclk102 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pllvals, i32 0, i32 2
  %71 = ptrtoint ptr %refclk102 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %refclk102, align 4
  br label %cleanup

cleanup:                                          ; preds = %nouveau_hw_decode_pll.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nouveau_hw_decode_pll.exit ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll_lim) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nouveau_hw_pllvals_to_clk(ptr nocapture noundef readonly %pv) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %M1 = getelementptr inbounds %struct.anon.116, ptr %pv, i32 0, i32 1
  %0 = ptrtoint ptr %M1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %M1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %M2 = getelementptr inbounds %struct.anon.116, ptr %pv, i32 0, i32 3
  %2 = ptrtoint ptr %M2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %M2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %pv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pv, align 4
  %conv = zext i8 %5 to i32
  %N2 = getelementptr inbounds %struct.anon.116, ptr %pv, i32 0, i32 2
  %6 = ptrtoint ptr %N2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %N2, align 2
  %conv2 = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv2, %conv
  %refclk = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv, i32 0, i32 2
  %8 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refclk, align 4
  %mul3 = mul i32 %mul, %9
  %conv5 = zext i8 %1 to i32
  %conv7 = zext i8 %3 to i32
  %mul8 = mul nuw nsw i32 %conv7, %conv5
  %div = sdiv i32 %mul3, %mul8
  %log2P = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv, i32 0, i32 1
  %10 = ptrtoint ptr %log2P to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %log2P, align 4
  %shr = ashr i32 %div, %11
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %shr, %if.end ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_hw_get_clock(ptr nocapture noundef readonly %dev, i32 noundef %plltype) local_unnamed_addr #0 align 64 {
entry:
  %pllvals = alloca %struct.nvkm_pll_vals, align 4
  %mpllP = alloca i32, align 4
  %clock = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pllvals) #6
  %2 = getelementptr inbounds %struct.anon.117, ptr %pllvals, i32 0, i32 1
  %3 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pllvals, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pllvals, i32 0, i32 2
  %bus = getelementptr i8, ptr %1, i32 -128
  %5 = call ptr @memset(ptr %pllvals, i32 255, i32 12)
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus, align 8
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %domain_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %plltype)
  %cmp = icmp eq i32 %plltype, 4
  br i1 %cmp, label %land.lhs.true, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

land.lhs.true:                                    ; preds = %entry
  %device = getelementptr i8, ptr %1, i32 -102
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device, align 2
  %12 = trunc i16 %11 to i12
  %trunc = and i12 %12, -16
  %13 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.16)
  switch i12 %trunc, label %land.lhs.true.if.end21_crit_edge [
    i12 416, label %if.then
    i12 496, label %if.then16
  ]

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mpllP) #6
  %14 = ptrtoint ptr %mpllP to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %mpllP, align 4, !annotation !40
  %call4 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %9, i32 noundef 0, i32 noundef 3) #6
  %call5 = call i32 @pci_read_config_dword(ptr noundef %call4, i32 noundef 108, ptr noundef nonnull %mpllP) #6
  %15 = ptrtoint ptr %mpllP to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mpllP, align 4
  %shr = lshr i32 %16, 8
  %and6 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  %spec.store.select = select i1 %tobool.not, i32 4, i32 %and6
  %div = udiv i32 400000, %spec.store.select
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mpllP) #6
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clock) #6
  %17 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %clock, align 4, !annotation !40
  %call17 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %9, i32 noundef 0, i32 noundef 5) #6
  %call18 = call i32 @pci_read_config_dword(ptr noundef %call17, i32 noundef 76, ptr noundef nonnull %clock) #6
  %18 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clock, align 4
  %div19 = udiv i32 %19, 1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clock) #6
  br label %cleanup

if.end21:                                         ; preds = %land.lhs.true.if.end21_crit_edge, %entry.if.end21_crit_edge
  %call22 = call i32 @nouveau_hw_get_pllvals(ptr noundef %dev, i32 noundef %plltype, ptr noundef nonnull %pllvals)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %M1.i = getelementptr inbounds %struct.anon.116, ptr %pllvals, i32 0, i32 1
  %20 = ptrtoint ptr %M1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %M1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.end25.cleanup_crit_edge, label %lor.lhs.false.i

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end25
  %M2.i = getelementptr inbounds %struct.anon.116, ptr %pllvals, i32 0, i32 3
  %22 = ptrtoint ptr %M2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %M2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool1.not.i = icmp eq i8 %23, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %pllvals to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pllvals, align 4
  %conv.i = zext i8 %25 to i32
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %2, align 2
  %conv2.i = zext i8 %27 to i32
  %mul.i = mul nuw nsw i32 %conv2.i, %conv.i
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %4, align 4
  %mul3.i = mul i32 %mul.i, %29
  %conv5.i = zext i8 %21 to i32
  %conv7.i = zext i8 %23 to i32
  %mul8.i = mul nuw nsw i32 %conv7.i, %conv5.i
  %div.i = sdiv i32 %mul3.i, %mul8.i
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %3, align 4
  %shr.i = ashr i32 %div.i, %31
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.then16, %if.then
  %retval.0 = phi i32 [ %div, %if.then ], [ %div19, %if.then16 ], [ %call22, %if.end21.cleanup_crit_edge ], [ %shr.i, %if.end.i ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pllvals) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_hw_save_vga_fonts(ptr noundef readonly %dev, i1 noundef zeroext %save) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %device.i = getelementptr i8, ptr %3, i32 -102
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %device.i, align 2
  %6 = and i16 %5, 4080
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %7 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp.i = icmp ugt i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %6)
  %cmp5.not.i = icmp ne i16 %6, 256
  %or.cond.i = select i1 %cmp.i, i1 %cmp5.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %6)
  %cmp8.not.i = icmp ne i16 %6, 336
  %or.cond21.i = select i1 %or.cond.i, i1 %cmp8.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %6)
  %cmp11.not.i = icmp ne i16 %6, 416
  %or.cond22.i = select i1 %or.cond21.i, i1 %cmp11.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %6)
  %cmp14.not.i = icmp ne i16 %6, 512
  %or.cond23.i = select i1 %or.cond22.i, i1 %cmp14.not.i, i1 false
  br i1 %or.cond23.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @NVSetOwner(ptr noundef %dev, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_private.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 0, i32 6
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !30

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %12, i32 6296538
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef 6296538) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 8
  %tobool16.not.i = icmp eq ptr %15, null
  br i1 %tobool16.not.i, label %if.else32.i, label %if.then23.i, !prof !30

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31.i = getelementptr i8, ptr %15, i32 6296512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 0) #6, !srcloc !32
  br label %NVSetEnablePalette.exit

if.else32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef 6296512, i32 noundef 0) #6
  br label %NVSetEnablePalette.exit

NVSetEnablePalette.exit:                          ; preds = %if.else32.i, %if.then23.i
  %call3 = tail call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 16)
  %16 = and i8 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_private.i, align 4
  %device1.i96 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 3
  %map.i97 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 3, i32 0, i32 6
  %19 = ptrtoint ptr %map.i97 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i97, align 8
  %tobool.not.i98 = icmp eq ptr %20, null
  br i1 %tobool.not.i98, label %if.else.i102, label %if.then.i100, !prof !30

if.then.i100:                                     ; preds = %NVSetEnablePalette.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i99 = getelementptr i8, ptr %20, i32 6296538
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i99) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i104

if.else.i102:                                     ; preds = %NVSetEnablePalette.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i101 = tail call i32 @nvif_object_rd(ptr noundef %device1.i96, i32 noundef 1, i64 noundef 6296538) #6
  br label %if.end.i104

if.end.i104:                                      ; preds = %if.else.i102, %if.then.i100
  %22 = ptrtoint ptr %map.i97 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i97, align 8
  %tobool16.not.i103 = icmp eq ptr %23, null
  br i1 %tobool16.not.i103, label %if.else32.i107, label %if.then23.i106, !prof !30

if.then23.i106:                                   ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31.i105 = getelementptr i8, ptr %23, i32 6296512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i105, i8 32) #6, !srcloc !32
  br label %NVSetEnablePalette.exit108

if.else32.i107:                                   ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i96, i32 noundef 1, i64 noundef 6296512, i32 noundef 32) #6
  br label %NVSetEnablePalette.exit108

NVSetEnablePalette.exit108:                       ; preds = %if.else32.i107, %if.then23.i106
  br i1 %tobool.not, label %do.body, label %NVSetEnablePalette.exit108.cleanup_crit_edge

NVSetEnablePalette.exit108.cleanup_crit_edge:     ; preds = %NVSetEnablePalette.exit108
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %NVSetEnablePalette.exit108
  %drm9 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %drm9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %drm9, align 8
  %dev10 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev10, align 8
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev11, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  %cond = select i1 %save, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef nonnull %cond) #9
  %arrayidx = getelementptr i8, ptr %3, i32 968
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 8
  %call16 = tail call ptr @ioremap(i32 noundef %31, i32 noundef 65536) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.body19, label %if.end32

do.body19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %drm9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drm9, align 8
  %dev26 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev26, align 8
  %dev27 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.8, ptr noundef %name) #9
  br label %cleanup

if.end32:                                         ; preds = %do.body
  %38 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_private.i, align 4
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  %device.i111 = getelementptr i8, ptr %41, i32 -102
  %42 = ptrtoint ptr %device.i111 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %device.i111, align 2
  %44 = and i16 %43, 4080
  %family.i112 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 3, i32 1, i32 4
  %45 = ptrtoint ptr %family.i112 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %family.i112, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %cmp.i113 = icmp ugt i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %44)
  %cmp5.not.i114 = icmp ne i16 %44, 256
  %or.cond.i115 = select i1 %cmp.i113, i1 %cmp5.not.i114, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %44)
  %cmp8.not.i116 = icmp ne i16 %44, 336
  %or.cond21.i117 = select i1 %or.cond.i115, i1 %cmp8.not.i116, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %44)
  %cmp11.not.i118 = icmp ne i16 %44, 416
  %or.cond22.i119 = select i1 %or.cond21.i117, i1 %cmp11.not.i118, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %44)
  %cmp14.not.i120 = icmp ne i16 %44, 512
  %or.cond23.i121 = select i1 %or.cond22.i119, i1 %cmp14.not.i120, i1 false
  br i1 %or.cond23.i121, label %if.then34, label %if.end32.if.end35_crit_edge

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @NVBlankScreen(ptr noundef %dev, i32 noundef 1, i1 noundef zeroext true)
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32.if.end35_crit_edge
  tail call void @NVBlankScreen(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext true)
  %47 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_private.i, align 4
  %map.i124 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 2, i32 3, i32 0, i32 6
  %49 = ptrtoint ptr %map.i124 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i124, align 8
  %tobool6.not.i = icmp eq ptr %50, null
  br i1 %tobool6.not.i, label %if.else.i127, label %if.then9.i, !prof !30

if.then9.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i126 = getelementptr i8, ptr %50, i32 787404
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i126) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv13.i = zext i8 %51 to i32
  br label %NVReadPRMVIO.exit

if.else.i127:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i123 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 2, i32 3
  %call15.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i123, i32 noundef 1, i64 noundef 787404) #6
  br label %NVReadPRMVIO.exit

NVReadPRMVIO.exit:                                ; preds = %if.else.i127, %if.then9.i
  %_data.0.i = phi i32 [ %conv13.i, %if.then9.i ], [ %call15.i, %if.else.i127 ]
  %conv18.i = trunc i32 %_data.0.i to i8
  %52 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_private.i, align 4
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 2, i32 3, i32 0, i32 6
  %54 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map.i.i, align 8
  %tobool6.not.i.i = icmp eq ptr %55, null
  br i1 %tobool6.not.i.i, label %if.else.i.i, label %if.then9.i.i, !prof !30

if.then9.i.i:                                     ; preds = %NVReadPRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 787396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 2) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i

if.else.i.i:                                      ; preds = %NVReadPRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i, i32 noundef 1, i64 noundef 787396, i32 noundef 2) #6
  br label %NVWritePRMVIO.exit.i

NVWritePRMVIO.exit.i:                             ; preds = %if.else.i.i, %if.then9.i.i
  %56 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 2, i32 3, i32 0, i32 6
  %58 = ptrtoint ptr %map.i11.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %map.i11.i, align 8
  %tobool6.not.i12.i = icmp eq ptr %59, null
  br i1 %tobool6.not.i12.i, label %if.else.i17.i, label %if.then9.i16.i, !prof !30

if.then9.i16.i:                                   ; preds = %NVWritePRMVIO.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i = getelementptr i8, ptr %59, i32 787397
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv13.i15.i = zext i8 %60 to i32
  br label %NVReadVgaSeq.exit

if.else.i17.i:                                    ; preds = %NVWritePRMVIO.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i = getelementptr inbounds %struct.nouveau_drm, ptr %57, i32 0, i32 2, i32 3
  %call15.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i4.i, i32 noundef 1, i64 noundef 787397) #6
  br label %NVReadVgaSeq.exit

NVReadVgaSeq.exit:                                ; preds = %if.else.i17.i, %if.then9.i16.i
  %_data.0.i.i = phi i32 [ %conv13.i15.i, %if.then9.i16.i ], [ %call15.i.i, %if.else.i17.i ]
  %conv18.i.i = trunc i32 %_data.0.i.i to i8
  %61 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_private.i, align 4
  %map.i.i130 = getelementptr inbounds %struct.nouveau_drm, ptr %62, i32 0, i32 2, i32 3, i32 0, i32 6
  %63 = ptrtoint ptr %map.i.i130 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %map.i.i130, align 8
  %tobool6.not.i.i131 = icmp eq ptr %64, null
  br i1 %tobool6.not.i.i131, label %if.else.i.i134, label %if.then9.i.i133, !prof !30

if.then9.i.i133:                                  ; preds = %NVReadVgaSeq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i132 = getelementptr i8, ptr %64, i32 787396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i132, i8 4) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i136

if.else.i.i134:                                   ; preds = %NVReadVgaSeq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i129 = getelementptr inbounds %struct.nouveau_drm, ptr %62, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i129, i32 noundef 1, i64 noundef 787396, i32 noundef 4) #6
  br label %NVWritePRMVIO.exit.i136

NVWritePRMVIO.exit.i136:                          ; preds = %if.else.i.i134, %if.then9.i.i133
  %65 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i137 = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 2, i32 3, i32 0, i32 6
  %67 = ptrtoint ptr %map.i11.i137 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map.i11.i137, align 8
  %tobool6.not.i12.i138 = icmp eq ptr %68, null
  br i1 %tobool6.not.i12.i138, label %if.else.i17.i143, label %if.then9.i16.i141, !prof !30

if.then9.i16.i141:                                ; preds = %NVWritePRMVIO.exit.i136
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i139 = getelementptr i8, ptr %68, i32 787397
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i139) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv13.i15.i140 = zext i8 %69 to i32
  br label %NVReadVgaSeq.exit146

if.else.i17.i143:                                 ; preds = %NVWritePRMVIO.exit.i136
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i135 = getelementptr inbounds %struct.nouveau_drm, ptr %66, i32 0, i32 2, i32 3
  %call15.i.i142 = tail call i32 @nvif_object_rd(ptr noundef %device1.i4.i135, i32 noundef 1, i64 noundef 787397) #6
  br label %NVReadVgaSeq.exit146

NVReadVgaSeq.exit146:                             ; preds = %if.else.i17.i143, %if.then9.i16.i141
  %_data.0.i.i144 = phi i32 [ %conv13.i15.i140, %if.then9.i16.i141 ], [ %call15.i.i142, %if.else.i17.i143 ]
  %conv18.i.i145 = trunc i32 %_data.0.i.i144 to i8
  %70 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_private.i, align 4
  %map.i.i149 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 2, i32 3, i32 0, i32 6
  %72 = ptrtoint ptr %map.i.i149 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map.i.i149, align 8
  %tobool6.not.i.i150 = icmp eq ptr %73, null
  br i1 %tobool6.not.i.i150, label %if.else.i.i153, label %if.then9.i.i152, !prof !30

if.then9.i.i152:                                  ; preds = %NVReadVgaSeq.exit146
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i151 = getelementptr i8, ptr %73, i32 787406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i151, i8 4) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i155

if.else.i.i153:                                   ; preds = %NVReadVgaSeq.exit146
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i148 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i148, i32 noundef 1, i64 noundef 787406, i32 noundef 4) #6
  br label %NVWritePRMVIO.exit.i155

NVWritePRMVIO.exit.i155:                          ; preds = %if.else.i.i153, %if.then9.i.i152
  %74 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i156 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 3, i32 0, i32 6
  %76 = ptrtoint ptr %map.i11.i156 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %map.i11.i156, align 8
  %tobool6.not.i12.i157 = icmp eq ptr %77, null
  br i1 %tobool6.not.i12.i157, label %if.else.i17.i162, label %if.then9.i16.i160, !prof !30

if.then9.i16.i160:                                ; preds = %NVWritePRMVIO.exit.i155
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i158 = getelementptr i8, ptr %77, i32 787407
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i158) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv13.i15.i159 = zext i8 %78 to i32
  br label %NVReadVgaGr.exit

if.else.i17.i162:                                 ; preds = %NVWritePRMVIO.exit.i155
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i154 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 3
  %call15.i.i161 = tail call i32 @nvif_object_rd(ptr noundef %device1.i4.i154, i32 noundef 1, i64 noundef 787407) #6
  br label %NVReadVgaGr.exit

NVReadVgaGr.exit:                                 ; preds = %if.else.i17.i162, %if.then9.i16.i160
  %_data.0.i.i163 = phi i32 [ %conv13.i15.i159, %if.then9.i16.i160 ], [ %call15.i.i161, %if.else.i17.i162 ]
  %conv18.i.i164 = trunc i32 %_data.0.i.i163 to i8
  %79 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_private.i, align 4
  %map.i.i167 = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 2, i32 3, i32 0, i32 6
  %81 = ptrtoint ptr %map.i.i167 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map.i.i167, align 8
  %tobool6.not.i.i168 = icmp eq ptr %82, null
  br i1 %tobool6.not.i.i168, label %if.else.i.i171, label %if.then9.i.i170, !prof !30

if.then9.i.i170:                                  ; preds = %NVReadVgaGr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i169 = getelementptr i8, ptr %82, i32 787406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i169, i8 5) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i173

if.else.i.i171:                                   ; preds = %NVReadVgaGr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i166 = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i166, i32 noundef 1, i64 noundef 787406, i32 noundef 5) #6
  br label %NVWritePRMVIO.exit.i173

NVWritePRMVIO.exit.i173:                          ; preds = %if.else.i.i171, %if.then9.i.i170
  %83 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i174 = getelementptr inbounds %struct.nouveau_drm, ptr %84, i32 0, i32 2, i32 3, i32 0, i32 6
  %85 = ptrtoint ptr %map.i11.i174 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map.i11.i174, align 8
  %tobool6.not.i12.i175 = icmp eq ptr %86, null
  br i1 %tobool6.not.i12.i175, label %if.else.i17.i180, label %if.then9.i16.i178, !prof !30

if.then9.i16.i178:                                ; preds = %NVWritePRMVIO.exit.i173
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i176 = getelementptr i8, ptr %86, i32 787407
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i176) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv13.i15.i177 = zext i8 %87 to i32
  br label %NVReadVgaGr.exit183

if.else.i17.i180:                                 ; preds = %NVWritePRMVIO.exit.i173
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i172 = getelementptr inbounds %struct.nouveau_drm, ptr %84, i32 0, i32 2, i32 3
  %call15.i.i179 = tail call i32 @nvif_object_rd(ptr noundef %device1.i4.i172, i32 noundef 1, i64 noundef 787407) #6
  br label %NVReadVgaGr.exit183

NVReadVgaGr.exit183:                              ; preds = %if.else.i17.i180, %if.then9.i16.i178
  %_data.0.i.i181 = phi i32 [ %conv13.i15.i177, %if.then9.i16.i178 ], [ %call15.i.i179, %if.else.i17.i180 ]
  %conv18.i.i182 = trunc i32 %_data.0.i.i181 to i8
  %88 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_private.i, align 4
  %map.i.i186 = getelementptr inbounds %struct.nouveau_drm, ptr %89, i32 0, i32 2, i32 3, i32 0, i32 6
  %90 = ptrtoint ptr %map.i.i186 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %map.i.i186, align 8
  %tobool6.not.i.i187 = icmp eq ptr %91, null
  br i1 %tobool6.not.i.i187, label %if.else.i.i190, label %if.then9.i.i189, !prof !30

if.then9.i.i189:                                  ; preds = %NVReadVgaGr.exit183
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i188 = getelementptr i8, ptr %91, i32 787406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i188, i8 6) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i192

if.else.i.i190:                                   ; preds = %NVReadVgaGr.exit183
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i185 = getelementptr inbounds %struct.nouveau_drm, ptr %89, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i185, i32 noundef 1, i64 noundef 787406, i32 noundef 6) #6
  br label %NVWritePRMVIO.exit.i192

NVWritePRMVIO.exit.i192:                          ; preds = %if.else.i.i190, %if.then9.i.i189
  %92 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i193 = getelementptr inbounds %struct.nouveau_drm, ptr %93, i32 0, i32 2, i32 3, i32 0, i32 6
  %94 = ptrtoint ptr %map.i11.i193 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %map.i11.i193, align 8
  %tobool6.not.i12.i194 = icmp eq ptr %95, null
  br i1 %tobool6.not.i12.i194, label %if.else.i17.i199, label %if.then9.i16.i197, !prof !30

if.then9.i16.i197:                                ; preds = %NVWritePRMVIO.exit.i192
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i195 = getelementptr i8, ptr %95, i32 787407
  %96 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i14.i195) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv13.i15.i196 = zext i8 %96 to i32
  br label %NVReadVgaGr.exit202

if.else.i17.i199:                                 ; preds = %NVWritePRMVIO.exit.i192
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i191 = getelementptr inbounds %struct.nouveau_drm, ptr %93, i32 0, i32 2, i32 3
  %call15.i.i198 = tail call i32 @nvif_object_rd(ptr noundef %device1.i4.i191, i32 noundef 1, i64 noundef 787407) #6
  br label %NVReadVgaGr.exit202

NVReadVgaGr.exit202:                              ; preds = %if.else.i17.i199, %if.then9.i16.i197
  %_data.0.i.i200 = phi i32 [ %conv13.i15.i196, %if.then9.i16.i197 ], [ %call15.i.i198, %if.else.i17.i199 ]
  %conv18.i.i201 = trunc i32 %_data.0.i.i200 to i8
  %97 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev_private.i, align 4
  %map.i205 = getelementptr inbounds %struct.nouveau_drm, ptr %98, i32 0, i32 2, i32 3, i32 0, i32 6
  %99 = ptrtoint ptr %map.i205 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %map.i205, align 8
  %tobool6.not.i206 = icmp eq ptr %100, null
  br i1 %tobool6.not.i206, label %if.else.i210, label %if.then9.i209, !prof !30

if.then9.i209:                                    ; preds = %NVReadVgaGr.exit202
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i208 = getelementptr i8, ptr %100, i32 787394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i208, i8 103) #6, !srcloc !32
  br label %NVWritePRMVIO.exit

if.else.i210:                                     ; preds = %NVReadVgaGr.exit202
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i204 = getelementptr inbounds %struct.nouveau_drm, ptr %98, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i204, i32 noundef 1, i64 noundef 787394, i32 noundef 103) #6
  br label %NVWritePRMVIO.exit

NVWritePRMVIO.exit:                               ; preds = %if.else.i210, %if.then9.i209
  %101 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev_private.i, align 4
  %map.i.i213 = getelementptr inbounds %struct.nouveau_drm, ptr %102, i32 0, i32 2, i32 3, i32 0, i32 6
  %103 = ptrtoint ptr %map.i.i213 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %map.i.i213, align 8
  %tobool6.not.i.i214 = icmp eq ptr %104, null
  br i1 %tobool6.not.i.i214, label %if.else.i.i217, label %if.then9.i.i216, !prof !30

if.then9.i.i216:                                  ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i215 = getelementptr i8, ptr %104, i32 787396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i215, i8 4) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i219

if.else.i.i217:                                   ; preds = %NVWritePRMVIO.exit
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i212 = getelementptr inbounds %struct.nouveau_drm, ptr %102, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i212, i32 noundef 1, i64 noundef 787396, i32 noundef 4) #6
  br label %NVWritePRMVIO.exit.i219

NVWritePRMVIO.exit.i219:                          ; preds = %if.else.i.i217, %if.then9.i.i216
  %105 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i220 = getelementptr inbounds %struct.nouveau_drm, ptr %106, i32 0, i32 2, i32 3, i32 0, i32 6
  %107 = ptrtoint ptr %map.i11.i220 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %map.i11.i220, align 8
  %tobool6.not.i12.i221 = icmp eq ptr %108, null
  br i1 %tobool6.not.i12.i221, label %if.else.i18.i, label %if.then9.i15.i, !prof !30

if.then9.i15.i:                                   ; preds = %NVWritePRMVIO.exit.i219
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i222 = getelementptr i8, ptr %108, i32 787397
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i222, i8 6) #6, !srcloc !32
  br label %NVWriteVgaSeq.exit

if.else.i18.i:                                    ; preds = %NVWritePRMVIO.exit.i219
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i218 = getelementptr inbounds %struct.nouveau_drm, ptr %106, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i218, i32 noundef 1, i64 noundef 787397, i32 noundef 6) #6
  br label %NVWriteVgaSeq.exit

NVWriteVgaSeq.exit:                               ; preds = %if.else.i18.i, %if.then9.i15.i
  %109 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_private.i, align 4
  %map.i.i225 = getelementptr inbounds %struct.nouveau_drm, ptr %110, i32 0, i32 2, i32 3, i32 0, i32 6
  %111 = ptrtoint ptr %map.i.i225 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %map.i.i225, align 8
  %tobool6.not.i.i226 = icmp eq ptr %112, null
  br i1 %tobool6.not.i.i226, label %if.else.i.i229, label %if.then9.i.i228, !prof !30

if.then9.i.i228:                                  ; preds = %NVWriteVgaSeq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i227 = getelementptr i8, ptr %112, i32 787406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i227, i8 5) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i231

if.else.i.i229:                                   ; preds = %NVWriteVgaSeq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i224 = getelementptr inbounds %struct.nouveau_drm, ptr %110, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i224, i32 noundef 1, i64 noundef 787406, i32 noundef 5) #6
  br label %NVWritePRMVIO.exit.i231

NVWritePRMVIO.exit.i231:                          ; preds = %if.else.i.i229, %if.then9.i.i228
  %113 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i232 = getelementptr inbounds %struct.nouveau_drm, ptr %114, i32 0, i32 2, i32 3, i32 0, i32 6
  %115 = ptrtoint ptr %map.i11.i232 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %map.i11.i232, align 8
  %tobool6.not.i12.i233 = icmp eq ptr %116, null
  br i1 %tobool6.not.i12.i233, label %if.else.i18.i236, label %if.then9.i15.i235, !prof !30

if.then9.i15.i235:                                ; preds = %NVWritePRMVIO.exit.i231
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i234 = getelementptr i8, ptr %116, i32 787407
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i234, i8 0) #6, !srcloc !32
  br label %NVWriteVgaGr.exit

if.else.i18.i236:                                 ; preds = %NVWritePRMVIO.exit.i231
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i230 = getelementptr inbounds %struct.nouveau_drm, ptr %114, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i230, i32 noundef 1, i64 noundef 787407, i32 noundef 0) #6
  br label %NVWriteVgaGr.exit

NVWriteVgaGr.exit:                                ; preds = %if.else.i18.i236, %if.then9.i15.i235
  %117 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_private.i, align 4
  %map.i.i239 = getelementptr inbounds %struct.nouveau_drm, ptr %118, i32 0, i32 2, i32 3, i32 0, i32 6
  %119 = ptrtoint ptr %map.i.i239 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %map.i.i239, align 8
  %tobool6.not.i.i240 = icmp eq ptr %120, null
  br i1 %tobool6.not.i.i240, label %if.else.i.i243, label %if.then9.i.i242, !prof !30

if.then9.i.i242:                                  ; preds = %NVWriteVgaGr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i241 = getelementptr i8, ptr %120, i32 787406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i241, i8 6) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i245

if.else.i.i243:                                   ; preds = %NVWriteVgaGr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i238 = getelementptr inbounds %struct.nouveau_drm, ptr %118, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i238, i32 noundef 1, i64 noundef 787406, i32 noundef 6) #6
  br label %NVWritePRMVIO.exit.i245

NVWritePRMVIO.exit.i245:                          ; preds = %if.else.i.i243, %if.then9.i.i242
  %121 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i246 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 2, i32 3, i32 0, i32 6
  %123 = ptrtoint ptr %map.i11.i246 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %map.i11.i246, align 8
  %tobool6.not.i12.i247 = icmp eq ptr %124, null
  br i1 %tobool6.not.i12.i247, label %if.else.i18.i250, label %if.then9.i15.i249, !prof !30

if.then9.i15.i249:                                ; preds = %NVWritePRMVIO.exit.i245
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i248 = getelementptr i8, ptr %124, i32 787407
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i248, i8 5) #6, !srcloc !32
  br label %for.body.preheader

if.else.i18.i250:                                 ; preds = %NVWritePRMVIO.exit.i245
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i244 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i244, i32 noundef 1, i64 noundef 787407, i32 noundef 5) #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else.i18.i250, %if.then9.i15.i249
  br label %for.body

for.body:                                         ; preds = %nouveau_vga_font_io.exit.for.body_crit_edge, %for.body.preheader
  %plane.0356 = phi i32 [ %inc, %nouveau_vga_font_io.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %shl.i = shl nuw nsw i32 1, %plane.0356
  %conv.i = trunc i32 %shl.i to i8
  %125 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev_private.i, align 4
  %map.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 2, i32 3, i32 0, i32 6
  %127 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %map.i.i.i, align 8
  %tobool6.not.i.i.i = icmp eq ptr %128, null
  br i1 %tobool6.not.i.i.i, label %if.else.i.i.i, label %if.then9.i.i.i, !prof !30

if.then9.i.i.i:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %128, i32 787396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 2) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %126, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i.i, i32 noundef 1, i64 noundef 787396, i32 noundef 2) #6
  br label %NVWritePRMVIO.exit.i.i

NVWritePRMVIO.exit.i.i:                           ; preds = %if.else.i.i.i, %if.then9.i.i.i
  %129 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %130, i32 0, i32 2, i32 3, i32 0, i32 6
  %131 = ptrtoint ptr %map.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %map.i11.i.i, align 8
  %tobool6.not.i12.i.i = icmp eq ptr %132, null
  br i1 %tobool6.not.i12.i.i, label %if.else.i18.i.i, label %if.then9.i15.i.i, !prof !30

if.then9.i15.i.i:                                 ; preds = %NVWritePRMVIO.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i.i = getelementptr i8, ptr %132, i32 787397
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i.i, i8 %conv.i) #6, !srcloc !32
  br label %NVWriteVgaSeq.exit.i

if.else.i18.i.i:                                  ; preds = %NVWritePRMVIO.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %130, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i.i, i32 noundef 1, i64 noundef 787397, i32 noundef %shl.i) #6
  br label %NVWriteVgaSeq.exit.i

NVWriteVgaSeq.exit.i:                             ; preds = %if.else.i18.i.i, %if.then9.i15.i.i
  %conv1.i = trunc i32 %plane.0356 to i8
  %133 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev_private.i, align 4
  %map.i.i25.i = getelementptr inbounds %struct.nouveau_drm, ptr %134, i32 0, i32 2, i32 3, i32 0, i32 6
  %135 = ptrtoint ptr %map.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %map.i.i25.i, align 8
  %tobool6.not.i.i26.i = icmp eq ptr %136, null
  br i1 %tobool6.not.i.i26.i, label %if.else.i.i29.i, label %if.then9.i.i28.i, !prof !30

if.then9.i.i28.i:                                 ; preds = %NVWriteVgaSeq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i27.i = getelementptr i8, ptr %136, i32 787406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i27.i, i8 4) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i31.i

if.else.i.i29.i:                                  ; preds = %NVWriteVgaSeq.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i24.i = getelementptr inbounds %struct.nouveau_drm, ptr %134, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i24.i, i32 noundef 1, i64 noundef 787406, i32 noundef 4) #6
  br label %NVWritePRMVIO.exit.i31.i

NVWritePRMVIO.exit.i31.i:                         ; preds = %if.else.i.i29.i, %if.then9.i.i28.i
  %137 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i32.i = getelementptr inbounds %struct.nouveau_drm, ptr %138, i32 0, i32 2, i32 3, i32 0, i32 6
  %139 = ptrtoint ptr %map.i11.i32.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %map.i11.i32.i, align 8
  %tobool6.not.i12.i33.i = icmp eq ptr %140, null
  br i1 %tobool6.not.i12.i33.i, label %if.else.i18.i37.i, label %if.then9.i15.i35.i, !prof !30

if.then9.i15.i35.i:                               ; preds = %NVWritePRMVIO.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i34.i = getelementptr i8, ptr %140, i32 787407
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i34.i, i8 %conv1.i) #6, !srcloc !32
  br label %for.body.i.preheader

if.else.i18.i37.i:                                ; preds = %NVWritePRMVIO.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i30.i = getelementptr inbounds %struct.nouveau_drm, ptr %138, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i30.i, i32 noundef 1, i64 noundef 787407, i32 noundef %plane.0356) #6
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.else.i18.i37.i, %if.then9.i15.i35.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.041.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  br i1 %save, label %if.then.i253, label %do.body.i

if.then.i253:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = shl nuw nsw i32 %i.041.i, 2
  %add.ptr.i252 = getelementptr i8, ptr %call16, i32 %mul.i
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i252) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %142 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev_private.i, align 4
  %display.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %143, i32 0, i32 19
  %144 = ptrtoint ptr %display.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %display.i.i.i, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 8
  %arrayidx4.i = getelementptr %struct.nv04_display, ptr %147, i32 0, i32 2, i32 %plane.0356, i32 %i.041.i
  %148 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %141, ptr %arrayidx4.i, align 4
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %149 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev_private.i, align 4
  %display.i.i40.i = getelementptr inbounds %struct.nouveau_drm, ptr %150, i32 0, i32 19
  %151 = ptrtoint ptr %display.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %display.i.i40.i, align 4
  %153 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %152, align 8
  %arrayidx8.i = getelementptr %struct.nv04_display, ptr %154, i32 0, i32 2, i32 %plane.0356, i32 %i.041.i
  %155 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx8.i, align 4
  %mul9.i = shl nuw nsw i32 %i.041.i, 2
  %add.ptr10.i = getelementptr i8, ptr %call16, i32 %mul9.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %156) #6, !srcloc !43
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i, %if.then.i253
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16384
  br i1 %exitcond.not.i, label %nouveau_vga_font_io.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

nouveau_vga_font_io.exit:                         ; preds = %for.inc.i
  %inc = add nuw nsw i32 %plane.0356, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %nouveau_vga_font_io.exit.for.body_crit_edge

nouveau_vga_font_io.exit.for.body_crit_edge:      ; preds = %nouveau_vga_font_io.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %nouveau_vga_font_io.exit
  %157 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev_private.i, align 4
  %map.i256 = getelementptr inbounds %struct.nouveau_drm, ptr %158, i32 0, i32 2, i32 3, i32 0, i32 6
  %159 = ptrtoint ptr %map.i256 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %map.i256, align 8
  %tobool6.not.i257 = icmp eq ptr %160, null
  br i1 %tobool6.not.i257, label %if.else.i262, label %if.then9.i260, !prof !30

if.then9.i260:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i259 = getelementptr i8, ptr %160, i32 787394
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i259, i8 %conv18.i) #6, !srcloc !32
  br label %NVWritePRMVIO.exit263

if.else.i262:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i255 = getelementptr inbounds %struct.nouveau_drm, ptr %158, i32 0, i32 2, i32 3
  %conv13.i261 = and i32 %_data.0.i, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i255, i32 noundef 1, i64 noundef 787394, i32 noundef %conv13.i261) #6
  br label %NVWritePRMVIO.exit263

NVWritePRMVIO.exit263:                            ; preds = %if.else.i262, %if.then9.i260
  %161 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %dev_private.i, align 4
  %map.i.i266 = getelementptr inbounds %struct.nouveau_drm, ptr %162, i32 0, i32 2, i32 3, i32 0, i32 6
  %163 = ptrtoint ptr %map.i.i266 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %map.i.i266, align 8
  %tobool6.not.i.i267 = icmp eq ptr %164, null
  br i1 %tobool6.not.i.i267, label %if.else.i.i270, label %if.then9.i.i269, !prof !30

if.then9.i.i269:                                  ; preds = %NVWritePRMVIO.exit263
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i268 = getelementptr i8, ptr %164, i32 787406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i268, i8 4) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i272

if.else.i.i270:                                   ; preds = %NVWritePRMVIO.exit263
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i265 = getelementptr inbounds %struct.nouveau_drm, ptr %162, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i265, i32 noundef 1, i64 noundef 787406, i32 noundef 4) #6
  br label %NVWritePRMVIO.exit.i272

NVWritePRMVIO.exit.i272:                          ; preds = %if.else.i.i270, %if.then9.i.i269
  %165 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i273 = getelementptr inbounds %struct.nouveau_drm, ptr %166, i32 0, i32 2, i32 3, i32 0, i32 6
  %167 = ptrtoint ptr %map.i11.i273 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %map.i11.i273, align 8
  %tobool6.not.i12.i274 = icmp eq ptr %168, null
  br i1 %tobool6.not.i12.i274, label %if.else.i18.i277, label %if.then9.i15.i276, !prof !30

if.then9.i15.i276:                                ; preds = %NVWritePRMVIO.exit.i272
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i275 = getelementptr i8, ptr %168, i32 787407
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i275, i8 %conv18.i.i164) #6, !srcloc !32
  br label %NVWriteVgaGr.exit278

if.else.i18.i277:                                 ; preds = %NVWritePRMVIO.exit.i272
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i271 = getelementptr inbounds %struct.nouveau_drm, ptr %166, i32 0, i32 2, i32 3
  %conv13.i17.i = and i32 %_data.0.i.i163, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i271, i32 noundef 1, i64 noundef 787407, i32 noundef %conv13.i17.i) #6
  br label %NVWriteVgaGr.exit278

NVWriteVgaGr.exit278:                             ; preds = %if.else.i18.i277, %if.then9.i15.i276
  %169 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev_private.i, align 4
  %map.i.i281 = getelementptr inbounds %struct.nouveau_drm, ptr %170, i32 0, i32 2, i32 3, i32 0, i32 6
  %171 = ptrtoint ptr %map.i.i281 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %map.i.i281, align 8
  %tobool6.not.i.i282 = icmp eq ptr %172, null
  br i1 %tobool6.not.i.i282, label %if.else.i.i285, label %if.then9.i.i284, !prof !30

if.then9.i.i284:                                  ; preds = %NVWriteVgaGr.exit278
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i283 = getelementptr i8, ptr %172, i32 787406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i283, i8 5) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i287

if.else.i.i285:                                   ; preds = %NVWriteVgaGr.exit278
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i280 = getelementptr inbounds %struct.nouveau_drm, ptr %170, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i280, i32 noundef 1, i64 noundef 787406, i32 noundef 5) #6
  br label %NVWritePRMVIO.exit.i287

NVWritePRMVIO.exit.i287:                          ; preds = %if.else.i.i285, %if.then9.i.i284
  %173 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i288 = getelementptr inbounds %struct.nouveau_drm, ptr %174, i32 0, i32 2, i32 3, i32 0, i32 6
  %175 = ptrtoint ptr %map.i11.i288 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %map.i11.i288, align 8
  %tobool6.not.i12.i289 = icmp eq ptr %176, null
  br i1 %tobool6.not.i12.i289, label %if.else.i18.i293, label %if.then9.i15.i291, !prof !30

if.then9.i15.i291:                                ; preds = %NVWritePRMVIO.exit.i287
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i290 = getelementptr i8, ptr %176, i32 787407
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i290, i8 %conv18.i.i182) #6, !srcloc !32
  br label %NVWriteVgaGr.exit294

if.else.i18.i293:                                 ; preds = %NVWritePRMVIO.exit.i287
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i286 = getelementptr inbounds %struct.nouveau_drm, ptr %174, i32 0, i32 2, i32 3
  %conv13.i17.i292 = and i32 %_data.0.i.i181, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i286, i32 noundef 1, i64 noundef 787407, i32 noundef %conv13.i17.i292) #6
  br label %NVWriteVgaGr.exit294

NVWriteVgaGr.exit294:                             ; preds = %if.else.i18.i293, %if.then9.i15.i291
  %177 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev_private.i, align 4
  %map.i.i297 = getelementptr inbounds %struct.nouveau_drm, ptr %178, i32 0, i32 2, i32 3, i32 0, i32 6
  %179 = ptrtoint ptr %map.i.i297 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %map.i.i297, align 8
  %tobool6.not.i.i298 = icmp eq ptr %180, null
  br i1 %tobool6.not.i.i298, label %if.else.i.i301, label %if.then9.i.i300, !prof !30

if.then9.i.i300:                                  ; preds = %NVWriteVgaGr.exit294
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i299 = getelementptr i8, ptr %180, i32 787406
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i299, i8 6) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i303

if.else.i.i301:                                   ; preds = %NVWriteVgaGr.exit294
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i296 = getelementptr inbounds %struct.nouveau_drm, ptr %178, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i296, i32 noundef 1, i64 noundef 787406, i32 noundef 6) #6
  br label %NVWritePRMVIO.exit.i303

NVWritePRMVIO.exit.i303:                          ; preds = %if.else.i.i301, %if.then9.i.i300
  %181 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i304 = getelementptr inbounds %struct.nouveau_drm, ptr %182, i32 0, i32 2, i32 3, i32 0, i32 6
  %183 = ptrtoint ptr %map.i11.i304 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %map.i11.i304, align 8
  %tobool6.not.i12.i305 = icmp eq ptr %184, null
  br i1 %tobool6.not.i12.i305, label %if.else.i18.i309, label %if.then9.i15.i307, !prof !30

if.then9.i15.i307:                                ; preds = %NVWritePRMVIO.exit.i303
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i306 = getelementptr i8, ptr %184, i32 787407
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i306, i8 %conv18.i.i201) #6, !srcloc !32
  br label %NVWriteVgaGr.exit310

if.else.i18.i309:                                 ; preds = %NVWritePRMVIO.exit.i303
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i302 = getelementptr inbounds %struct.nouveau_drm, ptr %182, i32 0, i32 2, i32 3
  %conv13.i17.i308 = and i32 %_data.0.i.i200, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i302, i32 noundef 1, i64 noundef 787407, i32 noundef %conv13.i17.i308) #6
  br label %NVWriteVgaGr.exit310

NVWriteVgaGr.exit310:                             ; preds = %if.else.i18.i309, %if.then9.i15.i307
  %185 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev_private.i, align 4
  %map.i.i313 = getelementptr inbounds %struct.nouveau_drm, ptr %186, i32 0, i32 2, i32 3, i32 0, i32 6
  %187 = ptrtoint ptr %map.i.i313 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %map.i.i313, align 8
  %tobool6.not.i.i314 = icmp eq ptr %188, null
  br i1 %tobool6.not.i.i314, label %if.else.i.i317, label %if.then9.i.i316, !prof !30

if.then9.i.i316:                                  ; preds = %NVWriteVgaGr.exit310
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i315 = getelementptr i8, ptr %188, i32 787396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i315, i8 2) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i319

if.else.i.i317:                                   ; preds = %NVWriteVgaGr.exit310
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i312 = getelementptr inbounds %struct.nouveau_drm, ptr %186, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i312, i32 noundef 1, i64 noundef 787396, i32 noundef 2) #6
  br label %NVWritePRMVIO.exit.i319

NVWritePRMVIO.exit.i319:                          ; preds = %if.else.i.i317, %if.then9.i.i316
  %189 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i320 = getelementptr inbounds %struct.nouveau_drm, ptr %190, i32 0, i32 2, i32 3, i32 0, i32 6
  %191 = ptrtoint ptr %map.i11.i320 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %map.i11.i320, align 8
  %tobool6.not.i12.i321 = icmp eq ptr %192, null
  br i1 %tobool6.not.i12.i321, label %if.else.i18.i325, label %if.then9.i15.i323, !prof !30

if.then9.i15.i323:                                ; preds = %NVWritePRMVIO.exit.i319
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i322 = getelementptr i8, ptr %192, i32 787397
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i322, i8 %conv18.i.i) #6, !srcloc !32
  br label %NVWriteVgaSeq.exit326

if.else.i18.i325:                                 ; preds = %NVWritePRMVIO.exit.i319
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i318 = getelementptr inbounds %struct.nouveau_drm, ptr %190, i32 0, i32 2, i32 3
  %conv13.i17.i324 = and i32 %_data.0.i.i, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i318, i32 noundef 1, i64 noundef 787397, i32 noundef %conv13.i17.i324) #6
  br label %NVWriteVgaSeq.exit326

NVWriteVgaSeq.exit326:                            ; preds = %if.else.i18.i325, %if.then9.i15.i323
  %193 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev_private.i, align 4
  %map.i.i329 = getelementptr inbounds %struct.nouveau_drm, ptr %194, i32 0, i32 2, i32 3, i32 0, i32 6
  %195 = ptrtoint ptr %map.i.i329 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %map.i.i329, align 8
  %tobool6.not.i.i330 = icmp eq ptr %196, null
  br i1 %tobool6.not.i.i330, label %if.else.i.i333, label %if.then9.i.i332, !prof !30

if.then9.i.i332:                                  ; preds = %NVWriteVgaSeq.exit326
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i331 = getelementptr i8, ptr %196, i32 787396
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i331, i8 4) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i335

if.else.i.i333:                                   ; preds = %NVWriteVgaSeq.exit326
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i328 = getelementptr inbounds %struct.nouveau_drm, ptr %194, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i.i328, i32 noundef 1, i64 noundef 787396, i32 noundef 4) #6
  br label %NVWritePRMVIO.exit.i335

NVWritePRMVIO.exit.i335:                          ; preds = %if.else.i.i333, %if.then9.i.i332
  %197 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev_private.i, align 4
  %map.i11.i336 = getelementptr inbounds %struct.nouveau_drm, ptr %198, i32 0, i32 2, i32 3, i32 0, i32 6
  %199 = ptrtoint ptr %map.i11.i336 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %map.i11.i336, align 8
  %tobool6.not.i12.i337 = icmp eq ptr %200, null
  br i1 %tobool6.not.i12.i337, label %if.else.i18.i341, label %if.then9.i15.i339, !prof !30

if.then9.i15.i339:                                ; preds = %NVWritePRMVIO.exit.i335
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i14.i338 = getelementptr i8, ptr %200, i32 787397
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i338, i8 %conv18.i.i145) #6, !srcloc !32
  br label %NVWriteVgaSeq.exit342

if.else.i18.i341:                                 ; preds = %NVWritePRMVIO.exit.i335
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i4.i334 = getelementptr inbounds %struct.nouveau_drm, ptr %198, i32 0, i32 2, i32 3
  %conv13.i17.i340 = and i32 %_data.0.i.i144, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i4.i334, i32 noundef 1, i64 noundef 787397, i32 noundef %conv13.i17.i340) #6
  br label %NVWriteVgaSeq.exit342

NVWriteVgaSeq.exit342:                            ; preds = %if.else.i18.i341, %if.then9.i15.i339
  %201 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev_private.i, align 4
  %203 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev1, align 4
  %device.i345 = getelementptr i8, ptr %204, i32 -102
  %205 = ptrtoint ptr %device.i345 to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %device.i345, align 2
  %207 = and i16 %206, 4080
  %family.i346 = getelementptr inbounds %struct.nouveau_drm, ptr %202, i32 0, i32 2, i32 3, i32 1, i32 4
  %208 = ptrtoint ptr %family.i346 to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %family.i346, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %209)
  %cmp.i347 = icmp ugt i8 %209, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %207)
  %cmp5.not.i348 = icmp ne i16 %207, 256
  %or.cond.i349 = select i1 %cmp.i347, i1 %cmp5.not.i348, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %207)
  %cmp8.not.i350 = icmp ne i16 %207, 336
  %or.cond21.i351 = select i1 %or.cond.i349, i1 %cmp8.not.i350, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %207)
  %cmp11.not.i352 = icmp ne i16 %207, 416
  %or.cond22.i353 = select i1 %or.cond21.i351, i1 %cmp11.not.i352, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %207)
  %cmp14.not.i354 = icmp ne i16 %207, 512
  %or.cond23.i355 = select i1 %or.cond22.i353, i1 %cmp14.not.i354, i1 false
  br i1 %or.cond23.i355, label %if.then45, label %NVWriteVgaSeq.exit342.if.end46_crit_edge

NVWriteVgaSeq.exit342.if.end46_crit_edge:         ; preds = %NVWriteVgaSeq.exit342
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then45:                                        ; preds = %NVWriteVgaSeq.exit342
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @NVBlankScreen(ptr noundef %dev, i32 noundef 1, i1 noundef zeroext false)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %NVWriteVgaSeq.exit342.if.end46_crit_edge
  tail call void @NVBlankScreen(ptr noundef %dev, i32 noundef 0, i1 noundef zeroext false)
  tail call void @iounmap(ptr noundef nonnull %call16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.body19, %NVSetEnablePalette.exit108.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @NVReadVgaAttr(ptr nocapture noundef readonly %dev, i32 noundef %head, i8 noundef zeroext %index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %mul7.i = shl i32 %head, 13
  %add8.i = add i32 %mul7.i, 6296538
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !30

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add8.i
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i = sext i32 %add8.i to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 1, i64 noundef %conv9.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 8
  %tobool18.not.i = icmp eq ptr %6, null
  %add35.i = add i32 %mul7.i, 6296512
  br i1 %tobool18.not.i, label %if.else33.i, label %if.then25.i, !prof !30

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr30.i = getelementptr i8, ptr %6, i32 %add35.i
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv32.i = zext i8 %7 to i32
  br label %NVGetEnablePalette.exit

if.else33.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv36.i = sext i32 %add35.i to i64
  %call37.i = tail call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 1, i64 noundef %conv36.i) #6
  br label %NVGetEnablePalette.exit

NVGetEnablePalette.exit:                          ; preds = %if.else33.i, %if.then25.i
  %_data15.0.i = phi i32 [ %conv32.i, %if.then25.i ], [ %call37.i, %if.else33.i ]
  %8 = and i8 %index, -33
  %9 = trunc i32 %_data15.0.i to i8
  %10 = and i8 %9, 32
  %index.addr.0 = or i8 %10, %8
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 8
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else13, label %if.then8, !prof !30

if.then8:                                         ; preds = %NVGetEnablePalette.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %12, i32 %add8.i
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end18

if.else13:                                        ; preds = %NVGetEnablePalette.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv16 = sext i32 %add8.i to i64
  %call17 = tail call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 1, i64 noundef %conv16) #6
  br label %if.end18

if.end18:                                         ; preds = %if.else13, %if.then8
  %14 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i, align 8
  %tobool24.not = icmp eq ptr %15, null
  br i1 %tobool24.not, label %if.else37, label %if.then31, !prof !30

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr36 = getelementptr i8, ptr %15, i32 %add35.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %index.addr.0) #6, !srcloc !32
  br label %if.end42

if.else37:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %conv40 = sext i32 %add35.i to i64
  %conv41 = zext i8 %index.addr.0 to i32
  tail call void @nvif_object_wr(ptr noundef %device1, i32 noundef 1, i64 noundef %conv40, i32 noundef %conv41) #6
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then31
  %16 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i, align 8
  %tobool48.not = icmp eq ptr %17, null
  %add65 = add i32 %mul7.i, 6296513
  br i1 %tobool48.not, label %if.else63, label %if.then55, !prof !30

if.then55:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr60 = getelementptr i8, ptr %17, i32 %add65
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr60) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv62 = zext i8 %18 to i32
  br label %if.end68

if.else63:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %conv66 = sext i32 %add65 to i64
  %call67 = tail call i32 @nvif_object_rd(ptr noundef %device1, i32 noundef 1, i64 noundef %conv66) #6
  br label %if.end68

if.end68:                                         ; preds = %if.else63, %if.then55
  %_data45.0 = phi i32 [ %conv62, %if.then55 ], [ %call67, %if.else63 ]
  %conv70 = trunc i32 %_data45.0 to i8
  ret i8 %conv70
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_hw_load_state_palette(ptr nocapture noundef readonly %dev, i32 noundef %head, ptr nocapture noundef readonly %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %mul = shl i32 %head, 13
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 8
  %tobool.not = icmp eq ptr %3, null
  %add6 = add i32 %mul, 6820806
  br i1 %tobool.not, label %if.else, label %if.then, !prof !30

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %3, i32 %add6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #6, !srcloc !32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = sext i32 %add6 to i64
  tail call void @nvif_object_wr(ptr noundef %device1, i32 noundef 1, i64 noundef %conv, i32 noundef 255) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 8
  %tobool10.not = icmp eq ptr %5, null
  %add23 = add i32 %mul, 6820808
  br i1 %tobool10.not, label %if.else22, label %if.then17, !prof !30

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr21 = getelementptr i8, ptr %5, i32 %add23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 0) #6, !srcloc !32
  br label %if.end25

if.else22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv24 = sext i32 %add23 to i64
  tail call void @nvif_object_wr(ptr noundef %device1, i32 noundef 1, i64 noundef %conv24, i32 noundef 0) #6
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %if.then17
  %add41 = add i32 %mul, 6820809
  %conv45 = sext i32 %add41 to i64
  br label %for.body

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %if.end25
  %i.075 = phi i32 [ 0, %if.end25 ], [ %inc, %if.end51.for.body_crit_edge ]
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 8
  %tobool30.not = icmp eq ptr %7, null
  %arrayidx49 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 6, i32 %i.075
  %8 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx49, align 1
  br i1 %tobool30.not, label %if.else43, label %if.then37, !prof !30

if.then37:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr42 = getelementptr i8, ptr %7, i32 %add41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42, i8 %9) #6, !srcloc !32
  br label %if.end51

if.else43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv50 = zext i8 %9 to i32
  tail call void @nvif_object_wr(ptr noundef %device1, i32 noundef 1, i64 noundef %conv45, i32 noundef %conv50) #6
  br label %if.end51

if.end51:                                         ; preds = %if.else43, %if.then37
  %inc = add nuw nsw i32 %i.075, 1
  %exitcond.not = icmp eq i32 %inc, 768
  br i1 %exitcond.not, label %for.end, label %if.end51.for.body_crit_edge

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end51
  %10 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  %add8.i = add i32 %mul, 6296538
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !30

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add8.i
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i = sext i32 %add8.i to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv9.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %15 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i, align 8
  %tobool16.not.i = icmp eq ptr %16, null
  %add34.i = add i32 %mul, 6296512
  br i1 %tobool16.not.i, label %if.else32.i, label %if.then23.i, !prof !30

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31.i = getelementptr i8, ptr %16, i32 %add34.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 32) #6, !srcloc !32
  br label %NVSetEnablePalette.exit

if.else32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv35.i = sext i32 %add34.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv35.i, i32 noundef 32) #6
  br label %NVSetEnablePalette.exit

NVSetEnablePalette.exit:                          ; preds = %if.else32.i, %if.then23.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_hw_save_state(ptr noundef readonly %dev, i32 noundef %head, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %pll_lim.i = alloca %struct.nvbios_pll, align 4
  %pv.i = alloca %struct.nvkm_pll_vals, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 2
  %2 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %3)
  %cmp = icmp eq i16 %3, 17
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 5
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 4
  %device2.i = getelementptr inbounds %struct.anon.194, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %device2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device2.i, align 8
  %clk3.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 43
  %8 = ptrtoint ptr %clk3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk3.i, align 8
  %bios10.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %bios10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bios10.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pll_lim.i) #6
  %12 = call ptr @memset(ptr %pll_lim.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %pv.i) #6
  %13 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %pv.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i = icmp eq i32 %head, 0
  %cond.i = select i1 %tobool.not.i, i32 128, i32 129
  %14 = call ptr @memset(ptr %pv.i, i32 255, i32 12)
  %call11.i = call i32 @nvbios_pll_parse(ptr noundef %11, i32 noundef %cond.i, ptr noundef nonnull %pll_lim.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end.i, label %if.then.nouveau_hw_fix_bad_vpll.exit_crit_edge

if.then.nouveau_hw_fix_bad_vpll.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_hw_fix_bad_vpll.exit

if.end.i:                                         ; preds = %if.then
  %call13.i = call i32 @nouveau_hw_get_pllvals(ptr noundef %dev, i32 noundef %cond.i, ptr noundef nonnull %pv.i) #6
  %M1.i = getelementptr inbounds %struct.anon.116, ptr %pv.i, i32 0, i32 1
  %15 = ptrtoint ptr %M1.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %M1.i, align 1
  %min_m.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %min_m.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %min_m.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp.not.i = icmp ult i8 %16, %18
  br i1 %cmp.not.i, label %if.end.i.do.body.i_crit_edge, label %land.lhs.true.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %max_m.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 7, i32 5
  %19 = ptrtoint ptr %max_m.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %max_m.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %20)
  %cmp20.not.i = icmp ugt i8 %16, %20
  br i1 %cmp20.not.i, label %land.lhs.true.i.do.body.i_crit_edge, label %land.lhs.true22.i

land.lhs.true.i.do.body.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

land.lhs.true22.i:                                ; preds = %land.lhs.true.i
  %21 = ptrtoint ptr %pv.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pv.i, align 4
  %min_n.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 7, i32 6
  %23 = ptrtoint ptr %min_n.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %min_n.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp26.not.i = icmp ult i8 %22, %24
  br i1 %cmp26.not.i, label %land.lhs.true22.i.do.body.i_crit_edge, label %land.lhs.true28.i

land.lhs.true22.i.do.body.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

land.lhs.true28.i:                                ; preds = %land.lhs.true22.i
  %max_n.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 7, i32 7
  %25 = ptrtoint ptr %max_n.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_n.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %26)
  %cmp33.not.i = icmp ugt i8 %22, %26
  br i1 %cmp33.not.i, label %land.lhs.true28.i.do.body.i_crit_edge, label %land.lhs.true35.i

land.lhs.true28.i.do.body.i_crit_edge:            ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

land.lhs.true35.i:                                ; preds = %land.lhs.true28.i
  %27 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %13, align 4
  %max_p.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 4
  %29 = ptrtoint ptr %max_p.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %max_p.i, align 1
  %conv36.i = zext i8 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv36.i)
  %cmp37.not.i = icmp sgt i32 %28, %conv36.i
  br i1 %cmp37.not.i, label %land.lhs.true35.i.do.body.i_crit_edge, label %land.lhs.true35.i.nouveau_hw_fix_bad_vpll.exit_crit_edge

land.lhs.true35.i.nouveau_hw_fix_bad_vpll.exit_crit_edge: ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_hw_fix_bad_vpll.exit

land.lhs.true35.i.do.body.i_crit_edge:            ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true35.i.do.body.i_crit_edge, %land.lhs.true28.i.do.body.i_crit_edge, %land.lhs.true22.i.do.body.i_crit_edge, %land.lhs.true.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %drm43.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %drm43.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drm43.i, align 8
  %dev44.i = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %dev44.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev44.i, align 8
  %dev45.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %dev45.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev45.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  %add.i = add i32 %head, 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.11, ptr noundef %name.i, i32 noundef %add.i) #9
  %max_m49.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 7, i32 5
  %37 = ptrtoint ptr %max_m49.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_m49.i, align 1
  %39 = ptrtoint ptr %M1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %M1.i, align 1
  %min_n52.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 7, i32 6
  %40 = ptrtoint ptr %min_n52.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %min_n52.i, align 2
  %42 = ptrtoint ptr %pv.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %pv.i, align 4
  %max_p_usable.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 6
  %43 = ptrtoint ptr %max_p_usable.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %max_p_usable.i, align 1
  %conv54.i = zext i8 %44 to i32
  %45 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv54.i, ptr %13, align 4
  %pll_prog.i = getelementptr inbounds %struct.nvkm_clk, ptr %9, i32 0, i32 22
  %46 = ptrtoint ptr %pll_prog.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pll_prog.i, align 4
  %reg.i = getelementptr inbounds %struct.nvbios_pll, ptr %pll_lim.i, i32 0, i32 1
  %48 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reg.i, align 4
  %call56.i = call i32 %47(ptr noundef %9, i32 noundef %49, ptr noundef nonnull %pv.i) #6
  br label %nouveau_hw_fix_bad_vpll.exit

nouveau_hw_fix_bad_vpll.exit:                     ; preds = %do.body.i, %land.lhs.true35.i.nouveau_hw_fix_bad_vpll.exit_crit_edge, %if.then.nouveau_hw_fix_bad_vpll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %pv.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pll_lim.i) #6
  br label %if.end

if.end:                                           ; preds = %nouveau_hw_fix_bad_vpll.exit, %entry.if.end_crit_edge
  %50 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_private.i, align 4
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3, i32 1, i32 4
  %52 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp.i = icmp ugt i8 %53, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i17_crit_edge

if.end.if.end.i17_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i17

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i.i = icmp eq i32 %head, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 6816772, i32 6824964
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3, i32 0, i32 6
  %54 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %55, null
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %if.then5.i.i, !prof !30

if.then5.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 %spec.select.i.i
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3
  %conv.i.i = zext i32 %spec.select.i.i to i64
  %call10.i.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef %conv.i.i) #6
  br label %NVReadRAMDAC.exit.i

NVReadRAMDAC.exit.i:                              ; preds = %if.else.i.i, %if.then5.i.i
  %_data.0.i.i = phi i32 [ %56, %if.then5.i.i ], [ %call10.i.i, %if.else.i.i ]
  %nv10_cursync.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 15
  %57 = ptrtoint ptr %nv10_cursync.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %_data.0.i.i, ptr %nv10_cursync.i, align 4
  br label %if.end.i17

if.end.i17:                                       ; preds = %NVReadRAMDAC.exit.i, %if.end.if.end.i17_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i15 = icmp eq i32 %head, 0
  %cond.i16 = select i1 %tobool.not.i15, i32 128, i32 129
  %pllvals.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 16
  %call3.i = call i32 @nouveau_hw_get_pllvals(ptr noundef %dev, i32 noundef %cond.i16, ptr noundef %pllvals.i) #6
  %58 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_private.i, align 4
  %map.i225.i = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 2, i32 3, i32 0, i32 6
  %60 = ptrtoint ptr %map.i225.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map.i225.i, align 8
  %tobool2.not.i226.i = icmp eq ptr %61, null
  br i1 %tobool2.not.i226.i, label %if.else.i231.i, label %if.then5.i228.i, !prof !30

if.then5.i228.i:                                  ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i227.i = getelementptr i8, ptr %61, i32 6817036
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit233.i

if.else.i231.i:                                   ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i229.i = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 2, i32 3
  %call10.i230.i = call i32 @nvif_object_rd(ptr noundef %device1.i229.i, i32 noundef 4, i64 noundef 6817036) #6
  br label %NVReadRAMDAC.exit233.i

NVReadRAMDAC.exit233.i:                           ; preds = %if.else.i231.i, %if.then5.i228.i
  %_data.0.i232.i = phi i32 [ %62, %if.then5.i228.i ], [ %call10.i230.i, %if.else.i231.i ]
  %pllsel.i = getelementptr inbounds %struct.nv04_mode_state, ptr %state, i32 0, i32 1
  %63 = ptrtoint ptr %pllsel.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %_data.0.i232.i, ptr %pllsel.i, align 4
  %64 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev_private.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %66 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i = getelementptr i8, ptr %67, i32 -102
  %68 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %device.i.i, align 2
  %70 = and i16 %69, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %65, i32 0, i32 2, i32 3, i32 1, i32 4
  %71 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp.i.i = icmp ugt i8 %72, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %70)
  %cmp5.not.i.i = icmp ne i16 %70, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp5.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %70)
  %cmp8.not.i.i = icmp ne i16 %70, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %70)
  %cmp11.not.i.i = icmp ne i16 %70, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 %cmp11.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %70)
  %cmp14.not.i.i = icmp ne i16 %70, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 %cmp14.not.i.i, i1 false
  br i1 %or.cond23.i.i, label %if.then6.i, label %NVReadRAMDAC.exit233.i.if.end8.i_crit_edge

NVReadRAMDAC.exit233.i.if.end8.i_crit_edge:       ; preds = %NVReadRAMDAC.exit233.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then6.i:                                       ; preds = %NVReadRAMDAC.exit233.i
  %map.i236.i = getelementptr inbounds %struct.nouveau_drm, ptr %65, i32 0, i32 2, i32 3, i32 0, i32 6
  %73 = ptrtoint ptr %map.i236.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %map.i236.i, align 8
  %tobool2.not.i237.i = icmp eq ptr %74, null
  br i1 %tobool2.not.i237.i, label %if.else.i242.i, label %if.then5.i239.i, !prof !30

if.then5.i239.i:                                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i238.i = getelementptr i8, ptr %74, i32 6817060
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i238.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit244.i

if.else.i242.i:                                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i240.i = getelementptr inbounds %struct.nouveau_drm, ptr %65, i32 0, i32 2, i32 3
  %call10.i241.i = call i32 @nvif_object_rd(ptr noundef %device1.i240.i, i32 noundef 4, i64 noundef 6817060) #6
  br label %NVReadRAMDAC.exit244.i

NVReadRAMDAC.exit244.i:                           ; preds = %if.else.i242.i, %if.then5.i239.i
  %_data.0.i243.i = phi i32 [ %75, %if.then5.i239.i ], [ %call10.i241.i, %if.else.i242.i ]
  %sel_clk.i = getelementptr inbounds %struct.nv04_mode_state, ptr %state, i32 0, i32 2
  %76 = ptrtoint ptr %sel_clk.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %_data.0.i243.i, ptr %sel_clk.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %NVReadRAMDAC.exit244.i, %NVReadRAMDAC.exit233.i.if.end8.i_crit_edge
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3, i32 1, i32 2
  %77 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %78)
  %cmp13.i = icmp eq i16 %78, 17
  br i1 %cmp13.i, label %if.then15.i, label %if.end8.i.if.end17.i_crit_edge

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.end8.i
  %79 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i247.i = select i1 %tobool.not.i15, i32 6817064, i32 6825256
  %map.i248.i = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 2, i32 3, i32 0, i32 6
  %81 = ptrtoint ptr %map.i248.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %map.i248.i, align 8
  %tobool2.not.i249.i = icmp eq ptr %82, null
  br i1 %tobool2.not.i249.i, label %if.else.i255.i, label %if.then5.i251.i, !prof !30

if.then5.i251.i:                                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i250.i = getelementptr i8, ptr %82, i32 %spec.select.i247.i
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i250.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit257.i

if.else.i255.i:                                   ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i252.i = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 2, i32 3
  %conv.i253.i = zext i32 %spec.select.i247.i to i64
  %call10.i254.i = call i32 @nvif_object_rd(ptr noundef %device1.i252.i, i32 noundef 4, i64 noundef %conv.i253.i) #6
  br label %NVReadRAMDAC.exit257.i

NVReadRAMDAC.exit257.i:                           ; preds = %if.else.i255.i, %if.then5.i251.i
  %_data.0.i256.i = phi i32 [ %83, %if.then5.i251.i ], [ %call10.i254.i, %if.else.i255.i ]
  %dither.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 30
  %84 = ptrtoint ptr %dither.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %_data.0.i256.i, ptr %dither.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %NVReadRAMDAC.exit257.i, %if.end8.i.if.end17.i_crit_edge
  %85 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i260.i = select i1 %tobool.not.i15, i32 6817280, i32 6825472
  %map.i261.i = getelementptr inbounds %struct.nouveau_drm, ptr %86, i32 0, i32 2, i32 3, i32 0, i32 6
  %87 = ptrtoint ptr %map.i261.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %map.i261.i, align 8
  %tobool2.not.i262.i = icmp eq ptr %88, null
  br i1 %tobool2.not.i262.i, label %if.else.i268.i, label %if.then5.i264.i, !prof !30

if.then5.i264.i:                                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i263.i = getelementptr i8, ptr %88, i32 %spec.select.i260.i
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i263.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit270.i

if.else.i268.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i265.i = getelementptr inbounds %struct.nouveau_drm, ptr %86, i32 0, i32 2, i32 3
  %conv.i266.i = zext i32 %spec.select.i260.i to i64
  %call10.i267.i = call i32 @nvif_object_rd(ptr noundef %device1.i265.i, i32 noundef 4, i64 noundef %conv.i266.i) #6
  br label %NVReadRAMDAC.exit270.i

NVReadRAMDAC.exit270.i:                           ; preds = %if.else.i268.i, %if.then5.i264.i
  %_data.0.i269.i = phi i32 [ %89, %if.then5.i264.i ], [ %call10.i267.i, %if.else.i268.i ]
  %ramdac_gen_ctrl.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 17
  %90 = ptrtoint ptr %ramdac_gen_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %_data.0.i269.i, ptr %ramdac_gen_ctrl.i, align 4
  %91 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_private.i, align 4
  %93 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i.i = getelementptr i8, ptr %94, i32 -102
  %95 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %device.i.i.i, align 2
  %97 = and i16 %96, 4080
  %family.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 2, i32 3, i32 1, i32 4
  %98 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %family.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %99)
  %cmp.i.i.i = icmp ugt i8 %99, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %97)
  %cmp5.not.i.i.i = icmp ne i16 %97, 256
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 %cmp5.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %97)
  %cmp8.not.i.i.i = icmp ne i16 %97, 336
  %or.cond21.i.i.i = select i1 %or.cond.i.i.i, i1 %cmp8.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %97)
  %cmp11.not.i.i.i = icmp ne i16 %97, 416
  %or.cond22.i.i.i = select i1 %or.cond21.i.i.i, i1 %cmp11.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %97)
  %cmp14.not.i.i.i = icmp ne i16 %97, 512
  %or.cond23.i.i.i = select i1 %or.cond22.i.i.i, i1 %cmp14.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %97)
  %cmp.i271.i = icmp ne i16 %97, 272
  %spec.select.i272.i = select i1 %or.cond23.i.i.i, i1 %cmp.i271.i, i1 false
  br i1 %spec.select.i272.i, label %if.then20.i, label %NVReadRAMDAC.exit270.i.if.end22.i_crit_edge

NVReadRAMDAC.exit270.i.if.end22.i_crit_edge:      ; preds = %NVReadRAMDAC.exit270.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then20.i:                                      ; preds = %NVReadRAMDAC.exit270.i
  %spec.select.i275.i = select i1 %tobool.not.i15, i32 6817328, i32 6825520
  %map.i276.i = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 2, i32 3, i32 0, i32 6
  %100 = ptrtoint ptr %map.i276.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %map.i276.i, align 8
  %tobool2.not.i277.i = icmp eq ptr %101, null
  br i1 %tobool2.not.i277.i, label %if.else.i283.i, label %if.then5.i279.i, !prof !30

if.then5.i279.i:                                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i278.i = getelementptr i8, ptr %101, i32 %spec.select.i275.i
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit285.i

if.else.i283.i:                                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i280.i = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 2, i32 3
  %conv.i281.i = zext i32 %spec.select.i275.i to i64
  %call10.i282.i = call i32 @nvif_object_rd(ptr noundef %device1.i280.i, i32 noundef 4, i64 noundef %conv.i281.i) #6
  br label %NVReadRAMDAC.exit285.i

NVReadRAMDAC.exit285.i:                           ; preds = %if.else.i283.i, %if.then5.i279.i
  %_data.0.i284.i = phi i32 [ %102, %if.then5.i279.i ], [ %call10.i282.i, %if.else.i283.i ]
  %ramdac_630.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 18
  %103 = ptrtoint ptr %ramdac_630.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %_data.0.i284.i, ptr %ramdac_630.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %NVReadRAMDAC.exit285.i, %NVReadRAMDAC.exit270.i.if.end22.i_crit_edge
  %104 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %105)
  %cmp28.i = icmp ugt i16 %105, 47
  br i1 %cmp28.i, label %if.then30.i, label %if.end22.i.if.end32.i_crit_edge

if.end22.i.if.end32.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end22.i
  %106 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i288.i = select i1 %tobool.not.i15, i32 6817332, i32 6825524
  %map.i289.i = getelementptr inbounds %struct.nouveau_drm, ptr %107, i32 0, i32 2, i32 3, i32 0, i32 6
  %108 = ptrtoint ptr %map.i289.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %map.i289.i, align 8
  %tobool2.not.i290.i = icmp eq ptr %109, null
  br i1 %tobool2.not.i290.i, label %if.else.i296.i, label %if.then5.i292.i, !prof !30

if.then5.i292.i:                                  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i291.i = getelementptr i8, ptr %109, i32 %spec.select.i288.i
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i291.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit298.i

if.else.i296.i:                                   ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i293.i = getelementptr inbounds %struct.nouveau_drm, ptr %107, i32 0, i32 2, i32 3
  %conv.i294.i = zext i32 %spec.select.i288.i to i64
  %call10.i295.i = call i32 @nvif_object_rd(ptr noundef %device1.i293.i, i32 noundef 4, i64 noundef %conv.i294.i) #6
  br label %NVReadRAMDAC.exit298.i

NVReadRAMDAC.exit298.i:                           ; preds = %if.else.i296.i, %if.then5.i292.i
  %_data.0.i297.i = phi i32 [ %110, %if.then5.i292.i ], [ %call10.i295.i, %if.else.i296.i ]
  %ramdac_634.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 19
  %111 = ptrtoint ptr %ramdac_634.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %_data.0.i297.i, ptr %ramdac_634.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %NVReadRAMDAC.exit298.i, %if.end22.i.if.end32.i_crit_edge
  %112 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i301.i = select i1 %tobool.not.i15, i32 6817536, i32 6825728
  %map.i302.i = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3, i32 0, i32 6
  %114 = ptrtoint ptr %map.i302.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map.i302.i, align 8
  %tobool2.not.i303.i = icmp eq ptr %115, null
  br i1 %tobool2.not.i303.i, label %if.else.i309.i, label %if.then5.i305.i, !prof !30

if.then5.i305.i:                                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i304.i = getelementptr i8, ptr %115, i32 %spec.select.i301.i
  %116 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i304.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit311.i

if.else.i309.i:                                   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i306.i = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3
  %conv.i307.i = zext i32 %spec.select.i301.i to i64
  %call10.i308.i = call i32 @nvif_object_rd(ptr noundef %device1.i306.i, i32 noundef 4, i64 noundef %conv.i307.i) #6
  br label %NVReadRAMDAC.exit311.i

NVReadRAMDAC.exit311.i:                           ; preds = %if.else.i309.i, %if.then5.i305.i
  %_data.0.i310.i = phi i32 [ %116, %if.then5.i305.i ], [ %call10.i308.i, %if.else.i309.i ]
  %tv_setup.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 20
  %117 = ptrtoint ptr %tv_setup.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %_data.0.i310.i, ptr %tv_setup.i, align 4
  %118 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i314.i = select i1 %tobool.not.i15, i32 6817568, i32 6825760
  %map.i315.i = getelementptr inbounds %struct.nouveau_drm, ptr %119, i32 0, i32 2, i32 3, i32 0, i32 6
  %120 = ptrtoint ptr %map.i315.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %map.i315.i, align 8
  %tobool2.not.i316.i = icmp eq ptr %121, null
  br i1 %tobool2.not.i316.i, label %if.else.i322.i, label %if.then5.i318.i, !prof !30

if.then5.i318.i:                                  ; preds = %NVReadRAMDAC.exit311.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i317.i = getelementptr i8, ptr %121, i32 %spec.select.i314.i
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i317.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit324.i

if.else.i322.i:                                   ; preds = %NVReadRAMDAC.exit311.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i319.i = getelementptr inbounds %struct.nouveau_drm, ptr %119, i32 0, i32 2, i32 3
  %conv.i320.i = zext i32 %spec.select.i314.i to i64
  %call10.i321.i = call i32 @nvif_object_rd(ptr noundef %device1.i319.i, i32 noundef 4, i64 noundef %conv.i320.i) #6
  br label %NVReadRAMDAC.exit324.i

NVReadRAMDAC.exit324.i:                           ; preds = %if.else.i322.i, %if.then5.i318.i
  %_data.0.i323.i = phi i32 [ %122, %if.then5.i318.i ], [ %call10.i321.i, %if.else.i322.i ]
  %tv_vtotal.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 21
  %123 = ptrtoint ptr %tv_vtotal.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %_data.0.i323.i, ptr %tv_vtotal.i, align 4
  %124 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i327.i = select i1 %tobool.not.i15, i32 6817572, i32 6825764
  %map.i328.i = getelementptr inbounds %struct.nouveau_drm, ptr %125, i32 0, i32 2, i32 3, i32 0, i32 6
  %126 = ptrtoint ptr %map.i328.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %map.i328.i, align 8
  %tobool2.not.i329.i = icmp eq ptr %127, null
  br i1 %tobool2.not.i329.i, label %if.else.i335.i, label %if.then5.i331.i, !prof !30

if.then5.i331.i:                                  ; preds = %NVReadRAMDAC.exit324.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i330.i = getelementptr i8, ptr %127, i32 %spec.select.i327.i
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i330.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit337.i

if.else.i335.i:                                   ; preds = %NVReadRAMDAC.exit324.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i332.i = getelementptr inbounds %struct.nouveau_drm, ptr %125, i32 0, i32 2, i32 3
  %conv.i333.i = zext i32 %spec.select.i327.i to i64
  %call10.i334.i = call i32 @nvif_object_rd(ptr noundef %device1.i332.i, i32 noundef 4, i64 noundef %conv.i333.i) #6
  br label %NVReadRAMDAC.exit337.i

NVReadRAMDAC.exit337.i:                           ; preds = %if.else.i335.i, %if.then5.i331.i
  %_data.0.i336.i = phi i32 [ %128, %if.then5.i331.i ], [ %call10.i334.i, %if.else.i335.i ]
  %tv_vskew.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 22
  %129 = ptrtoint ptr %tv_vskew.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %_data.0.i336.i, ptr %tv_vskew.i, align 4
  %130 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i340.i = select i1 %tobool.not.i15, i32 6817576, i32 6825768
  %map.i341.i = getelementptr inbounds %struct.nouveau_drm, ptr %131, i32 0, i32 2, i32 3, i32 0, i32 6
  %132 = ptrtoint ptr %map.i341.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %map.i341.i, align 8
  %tobool2.not.i342.i = icmp eq ptr %133, null
  br i1 %tobool2.not.i342.i, label %if.else.i348.i, label %if.then5.i344.i, !prof !30

if.then5.i344.i:                                  ; preds = %NVReadRAMDAC.exit337.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i343.i = getelementptr i8, ptr %133, i32 %spec.select.i340.i
  %134 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i343.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit350.i

if.else.i348.i:                                   ; preds = %NVReadRAMDAC.exit337.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i345.i = getelementptr inbounds %struct.nouveau_drm, ptr %131, i32 0, i32 2, i32 3
  %conv.i346.i = zext i32 %spec.select.i340.i to i64
  %call10.i347.i = call i32 @nvif_object_rd(ptr noundef %device1.i345.i, i32 noundef 4, i64 noundef %conv.i346.i) #6
  br label %NVReadRAMDAC.exit350.i

NVReadRAMDAC.exit350.i:                           ; preds = %if.else.i348.i, %if.then5.i344.i
  %_data.0.i349.i = phi i32 [ %134, %if.then5.i344.i ], [ %call10.i347.i, %if.else.i348.i ]
  %tv_vsync_delay.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 23
  %135 = ptrtoint ptr %tv_vsync_delay.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %_data.0.i349.i, ptr %tv_vsync_delay.i, align 4
  %136 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i353.i = select i1 %tobool.not.i15, i32 6817580, i32 6825772
  %map.i354.i = getelementptr inbounds %struct.nouveau_drm, ptr %137, i32 0, i32 2, i32 3, i32 0, i32 6
  %138 = ptrtoint ptr %map.i354.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map.i354.i, align 8
  %tobool2.not.i355.i = icmp eq ptr %139, null
  br i1 %tobool2.not.i355.i, label %if.else.i361.i, label %if.then5.i357.i, !prof !30

if.then5.i357.i:                                  ; preds = %NVReadRAMDAC.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i356.i = getelementptr i8, ptr %139, i32 %spec.select.i353.i
  %140 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i356.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit363.i

if.else.i361.i:                                   ; preds = %NVReadRAMDAC.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i358.i = getelementptr inbounds %struct.nouveau_drm, ptr %137, i32 0, i32 2, i32 3
  %conv.i359.i = zext i32 %spec.select.i353.i to i64
  %call10.i360.i = call i32 @nvif_object_rd(ptr noundef %device1.i358.i, i32 noundef 4, i64 noundef %conv.i359.i) #6
  br label %NVReadRAMDAC.exit363.i

NVReadRAMDAC.exit363.i:                           ; preds = %if.else.i361.i, %if.then5.i357.i
  %_data.0.i362.i = phi i32 [ %140, %if.then5.i357.i ], [ %call10.i360.i, %if.else.i361.i ]
  %tv_htotal.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 24
  %141 = ptrtoint ptr %tv_htotal.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %_data.0.i362.i, ptr %tv_htotal.i, align 4
  %142 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i366.i = select i1 %tobool.not.i15, i32 6817584, i32 6825776
  %map.i367.i = getelementptr inbounds %struct.nouveau_drm, ptr %143, i32 0, i32 2, i32 3, i32 0, i32 6
  %144 = ptrtoint ptr %map.i367.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %map.i367.i, align 8
  %tobool2.not.i368.i = icmp eq ptr %145, null
  br i1 %tobool2.not.i368.i, label %if.else.i374.i, label %if.then5.i370.i, !prof !30

if.then5.i370.i:                                  ; preds = %NVReadRAMDAC.exit363.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i369.i = getelementptr i8, ptr %145, i32 %spec.select.i366.i
  %146 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i369.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit376.i

if.else.i374.i:                                   ; preds = %NVReadRAMDAC.exit363.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i371.i = getelementptr inbounds %struct.nouveau_drm, ptr %143, i32 0, i32 2, i32 3
  %conv.i372.i = zext i32 %spec.select.i366.i to i64
  %call10.i373.i = call i32 @nvif_object_rd(ptr noundef %device1.i371.i, i32 noundef 4, i64 noundef %conv.i372.i) #6
  br label %NVReadRAMDAC.exit376.i

NVReadRAMDAC.exit376.i:                           ; preds = %if.else.i374.i, %if.then5.i370.i
  %_data.0.i375.i = phi i32 [ %146, %if.then5.i370.i ], [ %call10.i373.i, %if.else.i374.i ]
  %tv_hskew.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 25
  %147 = ptrtoint ptr %tv_hskew.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %_data.0.i375.i, ptr %tv_hskew.i, align 4
  %148 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i379.i = select i1 %tobool.not.i15, i32 6817588, i32 6825780
  %map.i380.i = getelementptr inbounds %struct.nouveau_drm, ptr %149, i32 0, i32 2, i32 3, i32 0, i32 6
  %150 = ptrtoint ptr %map.i380.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %map.i380.i, align 8
  %tobool2.not.i381.i = icmp eq ptr %151, null
  br i1 %tobool2.not.i381.i, label %if.else.i387.i, label %if.then5.i383.i, !prof !30

if.then5.i383.i:                                  ; preds = %NVReadRAMDAC.exit376.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i382.i = getelementptr i8, ptr %151, i32 %spec.select.i379.i
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i382.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit389.i

if.else.i387.i:                                   ; preds = %NVReadRAMDAC.exit376.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i384.i = getelementptr inbounds %struct.nouveau_drm, ptr %149, i32 0, i32 2, i32 3
  %conv.i385.i = zext i32 %spec.select.i379.i to i64
  %call10.i386.i = call i32 @nvif_object_rd(ptr noundef %device1.i384.i, i32 noundef 4, i64 noundef %conv.i385.i) #6
  br label %NVReadRAMDAC.exit389.i

NVReadRAMDAC.exit389.i:                           ; preds = %if.else.i387.i, %if.then5.i383.i
  %_data.0.i388.i = phi i32 [ %152, %if.then5.i383.i ], [ %call10.i386.i, %if.else.i387.i ]
  %tv_hsync_delay.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 26
  %153 = ptrtoint ptr %tv_hsync_delay.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %_data.0.i388.i, ptr %tv_hsync_delay.i, align 4
  %154 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i392.i = select i1 %tobool.not.i15, i32 6817592, i32 6825784
  %map.i393.i = getelementptr inbounds %struct.nouveau_drm, ptr %155, i32 0, i32 2, i32 3, i32 0, i32 6
  %156 = ptrtoint ptr %map.i393.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %map.i393.i, align 8
  %tobool2.not.i394.i = icmp eq ptr %157, null
  br i1 %tobool2.not.i394.i, label %if.else.i400.i, label %if.then5.i396.i, !prof !30

if.then5.i396.i:                                  ; preds = %NVReadRAMDAC.exit389.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i395.i = getelementptr i8, ptr %157, i32 %spec.select.i392.i
  %158 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i395.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit402.i

if.else.i400.i:                                   ; preds = %NVReadRAMDAC.exit389.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i397.i = getelementptr inbounds %struct.nouveau_drm, ptr %155, i32 0, i32 2, i32 3
  %conv.i398.i = zext i32 %spec.select.i392.i to i64
  %call10.i399.i = call i32 @nvif_object_rd(ptr noundef %device1.i397.i, i32 noundef 4, i64 noundef %conv.i398.i) #6
  br label %NVReadRAMDAC.exit402.i

NVReadRAMDAC.exit402.i:                           ; preds = %if.else.i400.i, %if.then5.i396.i
  %_data.0.i401.i = phi i32 [ %158, %if.then5.i396.i ], [ %call10.i399.i, %if.else.i400.i ]
  %tv_hsync_delay2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 27
  %159 = ptrtoint ptr %tv_hsync_delay2.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %_data.0.i401.i, ptr %tv_hsync_delay2.i, align 4
  %spec.select.i405.v.i = select i1 %tobool.not.i15, i32 6817792, i32 6825984
  %spec.select.i419.v.i = select i1 %tobool.not.i15, i32 6817824, i32 6826016
  br label %for.body.i

for.body.i:                                       ; preds = %NVReadRAMDAC.exit429.i.for.body.i_crit_edge, %NVReadRAMDAC.exit402.i
  %i.0653.i = phi i32 [ 0, %NVReadRAMDAC.exit402.i ], [ %inc.i, %NVReadRAMDAC.exit429.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.0653.i, 2
  %160 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i405.i = add nuw nsw i32 %mul.i, %spec.select.i405.v.i
  %map.i406.i = getelementptr inbounds %struct.nouveau_drm, ptr %161, i32 0, i32 2, i32 3, i32 0, i32 6
  %162 = ptrtoint ptr %map.i406.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map.i406.i, align 8
  %tobool2.not.i407.i = icmp eq ptr %163, null
  br i1 %tobool2.not.i407.i, label %if.else.i413.i, label %if.then5.i409.i, !prof !30

if.then5.i409.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i408.i = getelementptr i8, ptr %163, i32 %spec.select.i405.i
  %164 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i408.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit415.i

if.else.i413.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i410.i = getelementptr inbounds %struct.nouveau_drm, ptr %161, i32 0, i32 2, i32 3
  %conv.i411.i = zext i32 %spec.select.i405.i to i64
  %call10.i412.i = call i32 @nvif_object_rd(ptr noundef %device1.i410.i, i32 noundef 4, i64 noundef %conv.i411.i) #6
  br label %NVReadRAMDAC.exit415.i

NVReadRAMDAC.exit415.i:                           ; preds = %if.else.i413.i, %if.then5.i409.i
  %_data.0.i414.i = phi i32 [ %164, %if.then5.i409.i ], [ %call10.i412.i, %if.else.i413.i ]
  %arrayidx44.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 29, i32 %i.0653.i
  %165 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %_data.0.i414.i, ptr %arrayidx44.i, align 4
  %166 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i419.i = add nuw nsw i32 %mul.i, %spec.select.i419.v.i
  %map.i420.i = getelementptr inbounds %struct.nouveau_drm, ptr %167, i32 0, i32 2, i32 3, i32 0, i32 6
  %168 = ptrtoint ptr %map.i420.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %map.i420.i, align 8
  %tobool2.not.i421.i = icmp eq ptr %169, null
  br i1 %tobool2.not.i421.i, label %if.else.i427.i, label %if.then5.i423.i, !prof !30

if.then5.i423.i:                                  ; preds = %NVReadRAMDAC.exit415.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i422.i = getelementptr i8, ptr %169, i32 %spec.select.i419.i
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit429.i

if.else.i427.i:                                   ; preds = %NVReadRAMDAC.exit415.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i424.i = getelementptr inbounds %struct.nouveau_drm, ptr %167, i32 0, i32 2, i32 3
  %conv.i425.i = zext i32 %spec.select.i419.i to i64
  %call10.i426.i = call i32 @nvif_object_rd(ptr noundef %device1.i424.i, i32 noundef 4, i64 noundef %conv.i425.i) #6
  br label %NVReadRAMDAC.exit429.i

NVReadRAMDAC.exit429.i:                           ; preds = %if.else.i427.i, %if.then5.i423.i
  %_data.0.i428.i = phi i32 [ %170, %if.then5.i423.i ], [ %call10.i426.i, %if.else.i427.i ]
  %arrayidx47.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 28, i32 %i.0653.i
  %171 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %_data.0.i428.i, ptr %arrayidx47.i, align 4
  %inc.i = add nuw nsw i32 %i.0653.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.end.i, label %NVReadRAMDAC.exit429.i.for.body.i_crit_edge

NVReadRAMDAC.exit429.i.for.body.i_crit_edge:      ; preds = %NVReadRAMDAC.exit429.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %NVReadRAMDAC.exit429.i
  %172 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev_private.i, align 4
  %174 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i432.i = getelementptr i8, ptr %175, i32 -102
  %176 = ptrtoint ptr %device.i.i432.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %device.i.i432.i, align 2
  %178 = and i16 %177, 4080
  %family.i.i433.i = getelementptr inbounds %struct.nouveau_drm, ptr %173, i32 0, i32 2, i32 3, i32 1, i32 4
  %179 = ptrtoint ptr %family.i.i433.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %family.i.i433.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %180)
  %cmp.i.i434.i = icmp ugt i8 %180, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %178)
  %cmp5.not.i.i435.i = icmp ne i16 %178, 256
  %or.cond.i.i436.i = select i1 %cmp.i.i434.i, i1 %cmp5.not.i.i435.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %178)
  %cmp8.not.i.i437.i = icmp ne i16 %178, 336
  %or.cond21.i.i438.i = select i1 %or.cond.i.i436.i, i1 %cmp8.not.i.i437.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %178)
  %cmp11.not.i.i439.i = icmp ne i16 %178, 416
  %or.cond22.i.i440.i = select i1 %or.cond21.i.i438.i, i1 %cmp11.not.i.i439.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %178)
  %cmp14.not.i.i441.i = icmp ne i16 %178, 512
  %or.cond23.i.i442.i = select i1 %or.cond22.i.i440.i, i1 %cmp14.not.i.i441.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %178)
  %cmp.i443.i = icmp ne i16 %178, 272
  %spec.select.i444.i = select i1 %or.cond23.i.i442.i, i1 %cmp.i443.i, i1 false
  br i1 %spec.select.i444.i, label %if.then49.i, label %for.end.i.if.end69.i_crit_edge

for.end.i.if.end69.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69.i

if.then49.i:                                      ; preds = %for.end.i
  %spec.select.i447.i = select i1 %tobool.not.i15, i32 6817852, i32 6826044
  %map.i448.i = getelementptr inbounds %struct.nouveau_drm, ptr %173, i32 0, i32 2, i32 3, i32 0, i32 6
  %181 = ptrtoint ptr %map.i448.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %map.i448.i, align 8
  %tobool2.not.i449.i = icmp eq ptr %182, null
  br i1 %tobool2.not.i449.i, label %if.else.i455.i, label %if.then5.i451.i, !prof !30

if.then5.i451.i:                                  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i450.i = getelementptr i8, ptr %182, i32 %spec.select.i447.i
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i450.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit457.i

if.else.i455.i:                                   ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i452.i = getelementptr inbounds %struct.nouveau_drm, ptr %173, i32 0, i32 2, i32 3
  %conv.i453.i = zext i32 %spec.select.i447.i to i64
  %call10.i454.i = call i32 @nvif_object_rd(ptr noundef %device1.i452.i, i32 noundef 4, i64 noundef %conv.i453.i) #6
  br label %NVReadRAMDAC.exit457.i

NVReadRAMDAC.exit457.i:                           ; preds = %if.else.i455.i, %if.then5.i451.i
  %_data.0.i456.i = phi i32 [ %183, %if.then5.i451.i ], [ %call10.i454.i, %if.else.i455.i ]
  %dither51.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 30
  %184 = ptrtoint ptr %dither51.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %_data.0.i456.i, ptr %dither51.i, align 4
  %spec.select.i461.v.i = select i1 %tobool.not.i15, i32 6817872, i32 6826064
  %spec.select.i475.v.i = select i1 %tobool.not.i15, i32 6817884, i32 6826076
  %185 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev_private.i, align 4
  %map.i462.i = getelementptr inbounds %struct.nouveau_drm, ptr %186, i32 0, i32 2, i32 3, i32 0, i32 6
  %187 = ptrtoint ptr %map.i462.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %map.i462.i, align 8
  %tobool2.not.i463.i = icmp eq ptr %188, null
  br i1 %tobool2.not.i463.i, label %if.else.i469.i, label %if.then5.i465.i, !prof !30

if.then5.i465.i:                                  ; preds = %NVReadRAMDAC.exit457.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i464.i = getelementptr i8, ptr %188, i32 %spec.select.i461.v.i
  %189 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit471.i

if.else.i469.i:                                   ; preds = %NVReadRAMDAC.exit457.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i466.i = getelementptr inbounds %struct.nouveau_drm, ptr %186, i32 0, i32 2, i32 3
  %conv.i467.i = zext i32 %spec.select.i461.v.i to i64
  %call10.i468.i = call i32 @nvif_object_rd(ptr noundef %device1.i466.i, i32 noundef 4, i64 noundef %conv.i467.i) #6
  br label %NVReadRAMDAC.exit471.i

NVReadRAMDAC.exit471.i:                           ; preds = %if.else.i469.i, %if.then5.i465.i
  %_data.0.i470.i = phi i32 [ %189, %if.then5.i465.i ], [ %call10.i468.i, %if.else.i469.i ]
  %arrayidx59.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 32, i32 0
  %190 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %_data.0.i470.i, ptr %arrayidx59.i, align 4
  %191 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev_private.i, align 4
  %map.i476.i = getelementptr inbounds %struct.nouveau_drm, ptr %192, i32 0, i32 2, i32 3, i32 0, i32 6
  %193 = ptrtoint ptr %map.i476.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %map.i476.i, align 8
  %tobool2.not.i477.i = icmp eq ptr %194, null
  br i1 %tobool2.not.i477.i, label %if.else.i483.i, label %if.then5.i479.i, !prof !30

if.then5.i479.i:                                  ; preds = %NVReadRAMDAC.exit471.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i478.i = getelementptr i8, ptr %194, i32 %spec.select.i475.v.i
  %195 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i478.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit485.i

if.else.i483.i:                                   ; preds = %NVReadRAMDAC.exit471.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i480.i = getelementptr inbounds %struct.nouveau_drm, ptr %192, i32 0, i32 2, i32 3
  %conv.i481.i = zext i32 %spec.select.i475.v.i to i64
  %call10.i482.i = call i32 @nvif_object_rd(ptr noundef %device1.i480.i, i32 noundef 4, i64 noundef %conv.i481.i) #6
  br label %NVReadRAMDAC.exit485.i

NVReadRAMDAC.exit485.i:                           ; preds = %if.else.i483.i, %if.then5.i479.i
  %_data.0.i484.i = phi i32 [ %195, %if.then5.i479.i ], [ %call10.i482.i, %if.else.i483.i ]
  %arrayidx65.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 32, i32 3
  %196 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %_data.0.i484.i, ptr %arrayidx65.i, align 4
  %197 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i461.1.i = or i32 %spec.select.i461.v.i, 4
  %map.i462.1.i = getelementptr inbounds %struct.nouveau_drm, ptr %198, i32 0, i32 2, i32 3, i32 0, i32 6
  %199 = ptrtoint ptr %map.i462.1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %map.i462.1.i, align 8
  %tobool2.not.i463.1.i = icmp eq ptr %200, null
  br i1 %tobool2.not.i463.1.i, label %if.else.i469.1.i, label %if.then5.i465.1.i, !prof !30

if.then5.i465.1.i:                                ; preds = %NVReadRAMDAC.exit485.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i464.1.i = getelementptr i8, ptr %200, i32 %spec.select.i461.1.i
  %201 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464.1.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit471.1.i

if.else.i469.1.i:                                 ; preds = %NVReadRAMDAC.exit485.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i466.1.i = getelementptr inbounds %struct.nouveau_drm, ptr %198, i32 0, i32 2, i32 3
  %conv.i467.1.i = zext i32 %spec.select.i461.1.i to i64
  %call10.i468.1.i = call i32 @nvif_object_rd(ptr noundef %device1.i466.1.i, i32 noundef 4, i64 noundef %conv.i467.1.i) #6
  br label %NVReadRAMDAC.exit471.1.i

NVReadRAMDAC.exit471.1.i:                         ; preds = %if.else.i469.1.i, %if.then5.i465.1.i
  %_data.0.i470.1.i = phi i32 [ %201, %if.then5.i465.1.i ], [ %call10.i468.1.i, %if.else.i469.1.i ]
  %arrayidx59.1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 32, i32 1
  %202 = ptrtoint ptr %arrayidx59.1.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %_data.0.i470.1.i, ptr %arrayidx59.1.i, align 4
  %203 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i475.1.i = add nuw nsw i32 %spec.select.i475.v.i, 4
  %map.i476.1.i = getelementptr inbounds %struct.nouveau_drm, ptr %204, i32 0, i32 2, i32 3, i32 0, i32 6
  %205 = ptrtoint ptr %map.i476.1.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %map.i476.1.i, align 8
  %tobool2.not.i477.1.i = icmp eq ptr %206, null
  br i1 %tobool2.not.i477.1.i, label %if.else.i483.1.i, label %if.then5.i479.1.i, !prof !30

if.then5.i479.1.i:                                ; preds = %NVReadRAMDAC.exit471.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i478.1.i = getelementptr i8, ptr %206, i32 %spec.select.i475.1.i
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i478.1.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit485.1.i

if.else.i483.1.i:                                 ; preds = %NVReadRAMDAC.exit471.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i480.1.i = getelementptr inbounds %struct.nouveau_drm, ptr %204, i32 0, i32 2, i32 3
  %conv.i481.1.i = zext i32 %spec.select.i475.1.i to i64
  %call10.i482.1.i = call i32 @nvif_object_rd(ptr noundef %device1.i480.1.i, i32 noundef 4, i64 noundef %conv.i481.1.i) #6
  br label %NVReadRAMDAC.exit485.1.i

NVReadRAMDAC.exit485.1.i:                         ; preds = %if.else.i483.1.i, %if.then5.i479.1.i
  %_data.0.i484.1.i = phi i32 [ %207, %if.then5.i479.1.i ], [ %call10.i482.1.i, %if.else.i483.1.i ]
  %arrayidx65.1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 32, i32 4
  %208 = ptrtoint ptr %arrayidx65.1.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %_data.0.i484.1.i, ptr %arrayidx65.1.i, align 4
  %209 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i461.2.i = or i32 %spec.select.i461.v.i, 8
  %map.i462.2.i = getelementptr inbounds %struct.nouveau_drm, ptr %210, i32 0, i32 2, i32 3, i32 0, i32 6
  %211 = ptrtoint ptr %map.i462.2.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %map.i462.2.i, align 8
  %tobool2.not.i463.2.i = icmp eq ptr %212, null
  br i1 %tobool2.not.i463.2.i, label %if.else.i469.2.i, label %if.then5.i465.2.i, !prof !30

if.then5.i465.2.i:                                ; preds = %NVReadRAMDAC.exit485.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i464.2.i = getelementptr i8, ptr %212, i32 %spec.select.i461.2.i
  %213 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464.2.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit471.2.i

if.else.i469.2.i:                                 ; preds = %NVReadRAMDAC.exit485.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i466.2.i = getelementptr inbounds %struct.nouveau_drm, ptr %210, i32 0, i32 2, i32 3
  %conv.i467.2.i = zext i32 %spec.select.i461.2.i to i64
  %call10.i468.2.i = call i32 @nvif_object_rd(ptr noundef %device1.i466.2.i, i32 noundef 4, i64 noundef %conv.i467.2.i) #6
  br label %NVReadRAMDAC.exit471.2.i

NVReadRAMDAC.exit471.2.i:                         ; preds = %if.else.i469.2.i, %if.then5.i465.2.i
  %_data.0.i470.2.i = phi i32 [ %213, %if.then5.i465.2.i ], [ %call10.i468.2.i, %if.else.i469.2.i ]
  %arrayidx59.2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 32, i32 2
  %214 = ptrtoint ptr %arrayidx59.2.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %_data.0.i470.2.i, ptr %arrayidx59.2.i, align 4
  %215 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i475.2.i = add nuw nsw i32 %spec.select.i475.v.i, 8
  %map.i476.2.i = getelementptr inbounds %struct.nouveau_drm, ptr %216, i32 0, i32 2, i32 3, i32 0, i32 6
  %217 = ptrtoint ptr %map.i476.2.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %map.i476.2.i, align 8
  %tobool2.not.i477.2.i = icmp eq ptr %218, null
  br i1 %tobool2.not.i477.2.i, label %if.else.i483.2.i, label %if.then5.i479.2.i, !prof !30

if.then5.i479.2.i:                                ; preds = %NVReadRAMDAC.exit471.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i478.2.i = getelementptr i8, ptr %218, i32 %spec.select.i475.2.i
  %219 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i478.2.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit485.2.i

if.else.i483.2.i:                                 ; preds = %NVReadRAMDAC.exit471.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i480.2.i = getelementptr inbounds %struct.nouveau_drm, ptr %216, i32 0, i32 2, i32 3
  %conv.i481.2.i = zext i32 %spec.select.i475.2.i to i64
  %call10.i482.2.i = call i32 @nvif_object_rd(ptr noundef %device1.i480.2.i, i32 noundef 4, i64 noundef %conv.i481.2.i) #6
  br label %NVReadRAMDAC.exit485.2.i

NVReadRAMDAC.exit485.2.i:                         ; preds = %if.else.i483.2.i, %if.then5.i479.2.i
  %_data.0.i484.2.i = phi i32 [ %219, %if.then5.i479.2.i ], [ %call10.i482.2.i, %if.else.i483.2.i ]
  %arrayidx65.2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 32, i32 5
  %220 = ptrtoint ptr %arrayidx65.2.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %_data.0.i484.2.i, ptr %arrayidx65.2.i, align 4
  br label %if.end69.i

if.end69.i:                                       ; preds = %NVReadRAMDAC.exit485.2.i, %for.end.i.if.end69.i_crit_edge
  %221 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i488.i = select i1 %tobool.not.i15, i32 6817864, i32 6826056
  %map.i489.i = getelementptr inbounds %struct.nouveau_drm, ptr %222, i32 0, i32 2, i32 3, i32 0, i32 6
  %223 = ptrtoint ptr %map.i489.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %map.i489.i, align 8
  %tobool2.not.i490.i = icmp eq ptr %224, null
  br i1 %tobool2.not.i490.i, label %if.else.i496.i, label %if.then5.i492.i, !prof !30

if.then5.i492.i:                                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i491.i = getelementptr i8, ptr %224, i32 %spec.select.i488.i
  %225 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i491.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit498.i

if.else.i496.i:                                   ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i493.i = getelementptr inbounds %struct.nouveau_drm, ptr %222, i32 0, i32 2, i32 3
  %conv.i494.i = zext i32 %spec.select.i488.i to i64
  %call10.i495.i = call i32 @nvif_object_rd(ptr noundef %device1.i493.i, i32 noundef 4, i64 noundef %conv.i494.i) #6
  br label %NVReadRAMDAC.exit498.i

NVReadRAMDAC.exit498.i:                           ; preds = %if.else.i496.i, %if.then5.i492.i
  %_data.0.i497.i = phi i32 [ %225, %if.then5.i492.i ], [ %call10.i495.i, %if.else.i496.i ]
  %fp_control.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 31
  %226 = ptrtoint ptr %fp_control.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %_data.0.i497.i, ptr %fp_control.i, align 4
  %227 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i501.i = select i1 %tobool.not.i15, i32 6817920, i32 6826112
  %map.i502.i = getelementptr inbounds %struct.nouveau_drm, ptr %228, i32 0, i32 2, i32 3, i32 0, i32 6
  %229 = ptrtoint ptr %map.i502.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %map.i502.i, align 8
  %tobool2.not.i503.i = icmp eq ptr %230, null
  br i1 %tobool2.not.i503.i, label %if.else.i509.i, label %if.then5.i505.i, !prof !30

if.then5.i505.i:                                  ; preds = %NVReadRAMDAC.exit498.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i504.i = getelementptr i8, ptr %230, i32 %spec.select.i501.i
  %231 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i504.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit511.i

if.else.i509.i:                                   ; preds = %NVReadRAMDAC.exit498.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i506.i = getelementptr inbounds %struct.nouveau_drm, ptr %228, i32 0, i32 2, i32 3
  %conv.i507.i = zext i32 %spec.select.i501.i to i64
  %call10.i508.i = call i32 @nvif_object_rd(ptr noundef %device1.i506.i, i32 noundef 4, i64 noundef %conv.i507.i) #6
  br label %NVReadRAMDAC.exit511.i

NVReadRAMDAC.exit511.i:                           ; preds = %if.else.i509.i, %if.then5.i505.i
  %_data.0.i510.i = phi i32 [ %231, %if.then5.i505.i ], [ %call10.i508.i, %if.else.i509.i ]
  %fp_debug_0.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 33
  %232 = ptrtoint ptr %fp_debug_0.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %_data.0.i510.i, ptr %fp_debug_0.i, align 4
  %233 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev_private.i, align 4
  %235 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i514.i = getelementptr i8, ptr %236, i32 -102
  %237 = ptrtoint ptr %device.i.i514.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %device.i.i514.i, align 2
  %239 = and i16 %238, 4080
  %family.i.i515.i = getelementptr inbounds %struct.nouveau_drm, ptr %234, i32 0, i32 2, i32 3, i32 1, i32 4
  %240 = ptrtoint ptr %family.i.i515.i to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %family.i.i515.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %241)
  %cmp.i.i516.i = icmp ult i8 %241, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %239)
  %cmp5.not.i.i517.i = icmp eq i16 %239, 256
  %or.cond.i.i518.i = select i1 %cmp.i.i516.i, i1 true, i1 %cmp5.not.i.i517.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %239)
  %cmp8.not.i.i519.i = icmp eq i16 %239, 336
  %or.cond21.i.i520.i = select i1 %or.cond.i.i518.i, i1 true, i1 %cmp8.not.i.i519.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %239)
  %cmp11.not.i.i521.i = icmp eq i16 %239, 416
  %or.cond22.i.i522.i = select i1 %or.cond21.i.i520.i, i1 true, i1 %cmp11.not.i.i521.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %239)
  %cmp14.not.i.i523.i = icmp eq i16 %239, 512
  %or.cond23.i.i524.i = select i1 %or.cond22.i.i522.i, i1 true, i1 %cmp14.not.i.i523.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %239)
  %cmp.i525.i = icmp eq i16 %239, 272
  %spec.select.i526.i = select i1 %or.cond23.i.i524.i, i1 true, i1 %cmp.i525.i
  %or.cond.i = and i1 %tobool.not.i15, %spec.select.i526.i
  br i1 %or.cond.i, label %if.then75.i, label %NVReadRAMDAC.exit511.i.if.end77.i_crit_edge

NVReadRAMDAC.exit511.i.if.end77.i_crit_edge:      ; preds = %NVReadRAMDAC.exit511.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77.i

if.then75.i:                                      ; preds = %NVReadRAMDAC.exit511.i
  %and.i = and i32 %_data.0.i510.i, -268435457
  %map.i528.i = getelementptr inbounds %struct.nouveau_drm, ptr %234, i32 0, i32 2, i32 3, i32 0, i32 6
  %242 = ptrtoint ptr %map.i528.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %map.i528.i, align 8
  %tobool2.not.i529.i = icmp eq ptr %243, null
  br i1 %tobool2.not.i529.i, label %if.else.i532.i, label %do.body.i.i, !prof !30

do.body.i.i:                                      ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  call void @arm_heavy_mb() #6
  %244 = ptrtoint ptr %map.i528.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %map.i528.i, align 8
  %add.ptr.i530.i = getelementptr i8, ptr %245, i32 6817920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i530.i, i32 %and.i) #6, !srcloc !43
  br label %if.end77.i

if.else.i532.i:                                   ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i531.i = getelementptr inbounds %struct.nouveau_drm, ptr %234, i32 0, i32 2, i32 3
  call void @nvif_object_wr(ptr noundef %device1.i531.i, i32 noundef 4, i64 noundef 6817920, i32 noundef %and.i) #6
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.else.i532.i, %do.body.i.i, %NVReadRAMDAC.exit511.i.if.end77.i_crit_edge
  %246 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i535.i = select i1 %tobool.not.i15, i32 6817924, i32 6826116
  %map.i536.i = getelementptr inbounds %struct.nouveau_drm, ptr %247, i32 0, i32 2, i32 3, i32 0, i32 6
  %248 = ptrtoint ptr %map.i536.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %map.i536.i, align 8
  %tobool2.not.i537.i = icmp eq ptr %249, null
  br i1 %tobool2.not.i537.i, label %if.else.i543.i, label %if.then5.i539.i, !prof !30

if.then5.i539.i:                                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i538.i = getelementptr i8, ptr %249, i32 %spec.select.i535.i
  %250 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i538.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit545.i

if.else.i543.i:                                   ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i540.i = getelementptr inbounds %struct.nouveau_drm, ptr %247, i32 0, i32 2, i32 3
  %conv.i541.i = zext i32 %spec.select.i535.i to i64
  %call10.i542.i = call i32 @nvif_object_rd(ptr noundef %device1.i540.i, i32 noundef 4, i64 noundef %conv.i541.i) #6
  br label %NVReadRAMDAC.exit545.i

NVReadRAMDAC.exit545.i:                           ; preds = %if.else.i543.i, %if.then5.i539.i
  %_data.0.i544.i = phi i32 [ %250, %if.then5.i539.i ], [ %call10.i542.i, %if.else.i543.i ]
  %fp_debug_1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 34
  %251 = ptrtoint ptr %fp_debug_1.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %_data.0.i544.i, ptr %fp_debug_1.i, align 4
  %252 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i548.i = select i1 %tobool.not.i15, i32 6817928, i32 6826120
  %map.i549.i = getelementptr inbounds %struct.nouveau_drm, ptr %253, i32 0, i32 2, i32 3, i32 0, i32 6
  %254 = ptrtoint ptr %map.i549.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %map.i549.i, align 8
  %tobool2.not.i550.i = icmp eq ptr %255, null
  br i1 %tobool2.not.i550.i, label %if.else.i556.i, label %if.then5.i552.i, !prof !30

if.then5.i552.i:                                  ; preds = %NVReadRAMDAC.exit545.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i551.i = getelementptr i8, ptr %255, i32 %spec.select.i548.i
  %256 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i551.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit558.i

if.else.i556.i:                                   ; preds = %NVReadRAMDAC.exit545.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i553.i = getelementptr inbounds %struct.nouveau_drm, ptr %253, i32 0, i32 2, i32 3
  %conv.i554.i = zext i32 %spec.select.i548.i to i64
  %call10.i555.i = call i32 @nvif_object_rd(ptr noundef %device1.i553.i, i32 noundef 4, i64 noundef %conv.i554.i) #6
  br label %NVReadRAMDAC.exit558.i

NVReadRAMDAC.exit558.i:                           ; preds = %if.else.i556.i, %if.then5.i552.i
  %_data.0.i557.i = phi i32 [ %256, %if.then5.i552.i ], [ %call10.i555.i, %if.else.i556.i ]
  %fp_debug_2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 35
  %257 = ptrtoint ptr %fp_debug_2.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %_data.0.i557.i, ptr %fp_debug_2.i, align 4
  %258 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i561.i = select i1 %tobool.not.i15, i32 6817868, i32 6826060
  %map.i562.i = getelementptr inbounds %struct.nouveau_drm, ptr %259, i32 0, i32 2, i32 3, i32 0, i32 6
  %260 = ptrtoint ptr %map.i562.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %map.i562.i, align 8
  %tobool2.not.i563.i = icmp eq ptr %261, null
  br i1 %tobool2.not.i563.i, label %if.else.i569.i, label %if.then5.i565.i, !prof !30

if.then5.i565.i:                                  ; preds = %NVReadRAMDAC.exit558.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i564.i = getelementptr i8, ptr %261, i32 %spec.select.i561.i
  %262 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i564.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit571.i

if.else.i569.i:                                   ; preds = %NVReadRAMDAC.exit558.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i566.i = getelementptr inbounds %struct.nouveau_drm, ptr %259, i32 0, i32 2, i32 3
  %conv.i567.i = zext i32 %spec.select.i561.i to i64
  %call10.i568.i = call i32 @nvif_object_rd(ptr noundef %device1.i566.i, i32 noundef 4, i64 noundef %conv.i567.i) #6
  br label %NVReadRAMDAC.exit571.i

NVReadRAMDAC.exit571.i:                           ; preds = %if.else.i569.i, %if.then5.i565.i
  %_data.0.i570.i = phi i32 [ %262, %if.then5.i565.i ], [ %call10.i568.i, %if.else.i569.i ]
  %fp_margin_color.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 36
  %263 = ptrtoint ptr %fp_margin_color.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 %_data.0.i570.i, ptr %fp_margin_color.i, align 4
  %264 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %dev_private.i, align 4
  %266 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i574.i = getelementptr i8, ptr %267, i32 -102
  %268 = ptrtoint ptr %device.i.i574.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %device.i.i574.i, align 2
  %270 = and i16 %269, 4080
  %family.i.i575.i = getelementptr inbounds %struct.nouveau_drm, ptr %265, i32 0, i32 2, i32 3, i32 1, i32 4
  %271 = ptrtoint ptr %family.i.i575.i to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %family.i.i575.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %272)
  %cmp.i.i576.i = icmp ugt i8 %272, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %270)
  %cmp5.not.i.i577.i = icmp ne i16 %270, 256
  %or.cond.i.i578.i = select i1 %cmp.i.i576.i, i1 %cmp5.not.i.i577.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %270)
  %cmp8.not.i.i579.i = icmp ne i16 %270, 336
  %or.cond21.i.i580.i = select i1 %or.cond.i.i578.i, i1 %cmp8.not.i.i579.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %270)
  %cmp11.not.i.i581.i = icmp ne i16 %270, 416
  %or.cond22.i.i582.i = select i1 %or.cond21.i.i580.i, i1 %cmp11.not.i.i581.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %270)
  %cmp14.not.i.i583.i = icmp ne i16 %270, 512
  %or.cond23.i.i584.i = select i1 %or.cond22.i.i582.i, i1 %cmp14.not.i.i583.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %270)
  %cmp.i585.i = icmp ne i16 %270, 272
  %spec.select.i586.i = select i1 %or.cond23.i.i584.i, i1 %cmp.i585.i, i1 false
  br i1 %spec.select.i586.i, label %if.then82.i, label %NVReadRAMDAC.exit571.i.if.end84.i_crit_edge

NVReadRAMDAC.exit571.i.if.end84.i_crit_edge:      ; preds = %NVReadRAMDAC.exit571.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84.i

if.then82.i:                                      ; preds = %NVReadRAMDAC.exit571.i
  %spec.select.i589.i = select i1 %tobool.not.i15, i32 6817984, i32 6826176
  %map.i590.i = getelementptr inbounds %struct.nouveau_drm, ptr %265, i32 0, i32 2, i32 3, i32 0, i32 6
  %273 = ptrtoint ptr %map.i590.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %map.i590.i, align 8
  %tobool2.not.i591.i = icmp eq ptr %274, null
  br i1 %tobool2.not.i591.i, label %if.else.i597.i, label %if.then5.i593.i, !prof !30

if.then5.i593.i:                                  ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i592.i = getelementptr i8, ptr %274, i32 %spec.select.i589.i
  %275 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i592.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit599.i

if.else.i597.i:                                   ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i594.i = getelementptr inbounds %struct.nouveau_drm, ptr %265, i32 0, i32 2, i32 3
  %conv.i595.i = zext i32 %spec.select.i589.i to i64
  %call10.i596.i = call i32 @nvif_object_rd(ptr noundef %device1.i594.i, i32 noundef 4, i64 noundef %conv.i595.i) #6
  br label %NVReadRAMDAC.exit599.i

NVReadRAMDAC.exit599.i:                           ; preds = %if.else.i597.i, %if.then5.i593.i
  %_data.0.i598.i = phi i32 [ %275, %if.then5.i593.i ], [ %call10.i596.i, %if.else.i597.i ]
  %ramdac_8c0.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 37
  %276 = ptrtoint ptr %ramdac_8c0.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %_data.0.i598.i, ptr %ramdac_8c0.i, align 4
  br label %if.end84.i

if.end84.i:                                       ; preds = %NVReadRAMDAC.exit599.i, %NVReadRAMDAC.exit571.i.if.end84.i_crit_edge
  %277 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %278)
  %cmp90.i = icmp eq i8 %278, 5
  br i1 %cmp90.i, label %if.then92.i, label %if.end84.i.nv_save_state_ramdac.exit_crit_edge

if.end84.i.nv_save_state_ramdac.exit_crit_edge:   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv_save_state_ramdac.exit

if.then92.i:                                      ; preds = %if.end84.i
  %279 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i602.i = select i1 %tobool.not.i15, i32 6818336, i32 6826528
  %map.i603.i = getelementptr inbounds %struct.nouveau_drm, ptr %280, i32 0, i32 2, i32 3, i32 0, i32 6
  %281 = ptrtoint ptr %map.i603.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %map.i603.i, align 8
  %tobool2.not.i604.i = icmp eq ptr %282, null
  br i1 %tobool2.not.i604.i, label %if.else.i610.i, label %if.then5.i606.i, !prof !30

if.then5.i606.i:                                  ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i605.i = getelementptr i8, ptr %282, i32 %spec.select.i602.i
  %283 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i605.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit612.i

if.else.i610.i:                                   ; preds = %if.then92.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i607.i = getelementptr inbounds %struct.nouveau_drm, ptr %280, i32 0, i32 2, i32 3
  %conv.i608.i = zext i32 %spec.select.i602.i to i64
  %call10.i609.i = call i32 @nvif_object_rd(ptr noundef %device1.i607.i, i32 noundef 4, i64 noundef %conv.i608.i) #6
  br label %NVReadRAMDAC.exit612.i

NVReadRAMDAC.exit612.i:                           ; preds = %if.else.i610.i, %if.then5.i606.i
  %_data.0.i611.i = phi i32 [ %283, %if.then5.i606.i ], [ %call10.i609.i, %if.else.i610.i ]
  %ramdac_a20.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 38
  %284 = ptrtoint ptr %ramdac_a20.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %_data.0.i611.i, ptr %ramdac_a20.i, align 4
  %285 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i615.i = select i1 %tobool.not.i15, i32 6818340, i32 6826532
  %map.i616.i = getelementptr inbounds %struct.nouveau_drm, ptr %286, i32 0, i32 2, i32 3, i32 0, i32 6
  %287 = ptrtoint ptr %map.i616.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %map.i616.i, align 8
  %tobool2.not.i617.i = icmp eq ptr %288, null
  br i1 %tobool2.not.i617.i, label %if.else.i623.i, label %if.then5.i619.i, !prof !30

if.then5.i619.i:                                  ; preds = %NVReadRAMDAC.exit612.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i618.i = getelementptr i8, ptr %288, i32 %spec.select.i615.i
  %289 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i618.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit625.i

if.else.i623.i:                                   ; preds = %NVReadRAMDAC.exit612.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i620.i = getelementptr inbounds %struct.nouveau_drm, ptr %286, i32 0, i32 2, i32 3
  %conv.i621.i = zext i32 %spec.select.i615.i to i64
  %call10.i622.i = call i32 @nvif_object_rd(ptr noundef %device1.i620.i, i32 noundef 4, i64 noundef %conv.i621.i) #6
  br label %NVReadRAMDAC.exit625.i

NVReadRAMDAC.exit625.i:                           ; preds = %if.else.i623.i, %if.then5.i619.i
  %_data.0.i624.i = phi i32 [ %289, %if.then5.i619.i ], [ %call10.i622.i, %if.else.i623.i ]
  %ramdac_a24.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 39
  %290 = ptrtoint ptr %ramdac_a24.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store i32 %_data.0.i624.i, ptr %ramdac_a24.i, align 4
  %291 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i628.i = select i1 %tobool.not.i15, i32 6818356, i32 6826548
  %map.i629.i = getelementptr inbounds %struct.nouveau_drm, ptr %292, i32 0, i32 2, i32 3, i32 0, i32 6
  %293 = ptrtoint ptr %map.i629.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %map.i629.i, align 8
  %tobool2.not.i630.i = icmp eq ptr %294, null
  br i1 %tobool2.not.i630.i, label %if.else.i636.i, label %if.then5.i632.i, !prof !30

if.then5.i632.i:                                  ; preds = %NVReadRAMDAC.exit625.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i631.i = getelementptr i8, ptr %294, i32 %spec.select.i628.i
  %295 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i631.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit638.i

if.else.i636.i:                                   ; preds = %NVReadRAMDAC.exit625.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i633.i = getelementptr inbounds %struct.nouveau_drm, ptr %292, i32 0, i32 2, i32 3
  %conv.i634.i = zext i32 %spec.select.i628.i to i64
  %call10.i635.i = call i32 @nvif_object_rd(ptr noundef %device1.i633.i, i32 noundef 4, i64 noundef %conv.i634.i) #6
  br label %NVReadRAMDAC.exit638.i

NVReadRAMDAC.exit638.i:                           ; preds = %if.else.i636.i, %if.then5.i632.i
  %_data.0.i637.i = phi i32 [ %295, %if.then5.i632.i ], [ %call10.i635.i, %if.else.i636.i ]
  %ramdac_a34.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 40
  %296 = ptrtoint ptr %ramdac_a34.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store i32 %_data.0.i637.i, ptr %ramdac_a34.i, align 4
  %spec.select.i642.v.i = select i1 %tobool.not.i15, i32 6818816, i32 6827008
  br label %for.body99.i

for.body99.i:                                     ; preds = %NVReadRAMDAC.exit652.i.for.body99.i_crit_edge, %NVReadRAMDAC.exit638.i
  %i.2655.i = phi i32 [ 0, %NVReadRAMDAC.exit638.i ], [ %inc105.i, %NVReadRAMDAC.exit652.i.for.body99.i_crit_edge ]
  %mul100.i = shl i32 %i.2655.i, 2
  %297 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i642.i = add nuw nsw i32 %mul100.i, %spec.select.i642.v.i
  %map.i643.i = getelementptr inbounds %struct.nouveau_drm, ptr %298, i32 0, i32 2, i32 3, i32 0, i32 6
  %299 = ptrtoint ptr %map.i643.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %map.i643.i, align 8
  %tobool2.not.i644.i = icmp eq ptr %300, null
  br i1 %tobool2.not.i644.i, label %if.else.i650.i, label %if.then5.i646.i, !prof !30

if.then5.i646.i:                                  ; preds = %for.body99.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i645.i = getelementptr i8, ptr %300, i32 %spec.select.i642.i
  %301 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i645.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit652.i

if.else.i650.i:                                   ; preds = %for.body99.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i647.i = getelementptr inbounds %struct.nouveau_drm, ptr %298, i32 0, i32 2, i32 3
  %conv.i648.i = zext i32 %spec.select.i642.i to i64
  %call10.i649.i = call i32 @nvif_object_rd(ptr noundef %device1.i647.i, i32 noundef 4, i64 noundef %conv.i648.i) #6
  br label %NVReadRAMDAC.exit652.i

NVReadRAMDAC.exit652.i:                           ; preds = %if.else.i650.i, %if.then5.i646.i
  %_data.0.i651.i = phi i32 [ %301, %if.then5.i646.i ], [ %call10.i649.i, %if.else.i650.i ]
  %arrayidx103.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 41, i32 %i.2655.i
  %302 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %_data.0.i651.i, ptr %arrayidx103.i, align 4
  %inc105.i = add nuw nsw i32 %i.2655.i, 1
  %exitcond657.not.i = icmp eq i32 %inc105.i, 38
  br i1 %exitcond657.not.i, label %NVReadRAMDAC.exit652.i.nv_save_state_ramdac.exit_crit_edge, label %NVReadRAMDAC.exit652.i.for.body99.i_crit_edge

NVReadRAMDAC.exit652.i.for.body99.i_crit_edge:    ; preds = %NVReadRAMDAC.exit652.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body99.i

NVReadRAMDAC.exit652.i.nv_save_state_ramdac.exit_crit_edge: ; preds = %NVReadRAMDAC.exit652.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv_save_state_ramdac.exit

nv_save_state_ramdac.exit:                        ; preds = %NVReadRAMDAC.exit652.i.nv_save_state_ramdac.exit_crit_edge, %if.end84.i.nv_save_state_ramdac.exit_crit_edge
  %arrayidx.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head
  %303 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i18 = getelementptr inbounds %struct.nouveau_drm, ptr %304, i32 0, i32 2, i32 3
  br i1 %tobool.not.i15, label %nv_save_state_ramdac.exit.if.end.i.i_crit_edge, label %land.lhs.true.i.i

nv_save_state_ramdac.exit.if.end.i.i_crit_edge:   ; preds = %nv_save_state_ramdac.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %nv_save_state_ramdac.exit
  call void @__sanitizer_cov_trace_pc() #8
  %family.i.i20 = getelementptr inbounds %struct.nouveau_drm, ptr %304, i32 0, i32 2, i32 3, i32 1, i32 4
  %305 = ptrtoint ptr %family.i.i20 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %family.i.i20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %306)
  %cmp.i.i21 = icmp eq i8 %306, 5
  %spec.select.i.i22 = select i1 %cmp.i.i21, i32 795596, i32 787404
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %nv_save_state_ramdac.exit.if.end.i.i_crit_edge
  %reg.addr.0.i.i = phi i32 [ 787404, %nv_save_state_ramdac.exit.if.end.i.i_crit_edge ], [ %spec.select.i.i22, %land.lhs.true.i.i ]
  %map.i.i23 = getelementptr inbounds %struct.nouveau_drm, ptr %304, i32 0, i32 2, i32 3, i32 0, i32 6
  %307 = ptrtoint ptr %map.i.i23 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %map.i.i23, align 8
  %tobool6.not.i.i = icmp eq ptr %308, null
  br i1 %tobool6.not.i.i, label %if.else.i.i25, label %if.then9.i.i, !prof !30

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i24 = getelementptr i8, ptr %308, i32 %reg.addr.0.i.i
  %309 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i24) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv13.i.i = zext i8 %309 to i32
  br label %NVReadPRMVIO.exit.i

if.else.i.i25:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv14.i.i = zext i32 %reg.addr.0.i.i to i64
  %call15.i.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i18, i32 noundef 1, i64 noundef %conv14.i.i) #6
  br label %NVReadPRMVIO.exit.i

NVReadPRMVIO.exit.i:                              ; preds = %if.else.i.i25, %if.then9.i.i
  %_data.0.i.i26 = phi i32 [ %conv13.i.i, %if.then9.i.i ], [ %call15.i.i, %if.else.i.i25 ]
  %conv18.i.i = trunc i32 %_data.0.i.i26 to i8
  %310 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 %conv18.i.i, ptr %arrayidx.i, align 4
  %mul6.i.i.i = shl i32 %head, 13
  %add7.i.i.i = add i32 %mul6.i.i.i, 6296532
  %conv.i.i.i = sext i32 %add7.i.i.i to i64
  %add29.i.i.i = add i32 %mul6.i.i.i, 6296533
  %conv30.i.i.i = sext i32 %add29.i.i.i to i64
  br label %for.body.i27

for.body.i27:                                     ; preds = %rd_cio_state.exit.i.for.body.i27_crit_edge, %NVReadPRMVIO.exit.i
  %i.089.i = phi i32 [ 0, %NVReadPRMVIO.exit.i ], [ %inc.i29, %rd_cio_state.exit.i.for.body.i27_crit_edge ]
  %311 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %312, i32 0, i32 2, i32 3
  %map.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %312, i32 0, i32 2, i32 3, i32 0, i32 6
  %313 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %map.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %314, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i, !prof !30

if.then.i.i.i:                                    ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i28 = trunc i32 %i.089.i to i8
  %add.ptr.i.i.i = getelementptr i8, ptr %314, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv.i.i28) #6, !srcloc !32
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef %i.089.i) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %315 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %map.i.i.i, align 8
  %tobool12.not.i.i.i = icmp eq ptr %316, null
  br i1 %tobool12.not.i.i.i, label %if.else27.i.i.i, label %if.then19.i.i.i, !prof !30

if.then19.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i.i = getelementptr i8, ptr %316, i32 %add29.i.i.i
  %317 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i.i = zext i8 %317 to i32
  br label %rd_cio_state.exit.i

if.else27.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit.i

rd_cio_state.exit.i:                              ; preds = %if.else27.i.i.i, %if.then19.i.i.i
  %_data.0.i.i.i = phi i32 [ %conv26.i.i.i, %if.then19.i.i.i ], [ %call31.i.i.i, %if.else27.i.i.i ]
  %conv34.i.i.i = trunc i32 %_data.0.i.i.i to i8
  %arrayidx.i.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 %i.089.i
  %318 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %318)
  store i8 %conv34.i.i.i, ptr %arrayidx.i.i, align 1
  %inc.i29 = add nuw nsw i32 %i.089.i, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, 25
  br i1 %exitcond.not.i30, label %for.end.i31, label %rd_cio_state.exit.i.for.body.i27_crit_edge

rd_cio_state.exit.i.for.body.i27_crit_edge:       ; preds = %rd_cio_state.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i27

for.end.i31:                                      ; preds = %rd_cio_state.exit.i
  %319 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev_private.i, align 4
  %device1.i61.i = getelementptr inbounds %struct.nouveau_drm, ptr %320, i32 0, i32 2, i32 3
  %map.i62.i = getelementptr inbounds %struct.nouveau_drm, ptr %320, i32 0, i32 2, i32 3, i32 0, i32 6
  %321 = ptrtoint ptr %map.i62.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %map.i62.i, align 8
  %tobool.not.i63.i = icmp eq ptr %322, null
  %add8.i.i = add i32 %mul6.i.i.i, 6296538
  br i1 %tobool.not.i63.i, label %if.else.i65.i, label %if.then.i.i, !prof !30

if.then.i.i:                                      ; preds = %for.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i64.i = getelementptr i8, ptr %322, i32 %add8.i.i
  %323 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i64.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i66.i

if.else.i65.i:                                    ; preds = %for.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i.i = sext i32 %add8.i.i to i64
  %call10.i.i32 = call i32 @nvif_object_rd(ptr noundef %device1.i61.i, i32 noundef 1, i64 noundef %conv9.i.i) #6
  br label %if.end.i66.i

if.end.i66.i:                                     ; preds = %if.else.i65.i, %if.then.i.i
  %324 = ptrtoint ptr %map.i62.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %map.i62.i, align 8
  %tobool16.not.i.i = icmp eq ptr %325, null
  %add34.i.i = add i32 %mul6.i.i.i, 6296512
  br i1 %tobool16.not.i.i, label %if.else32.i.i, label %if.then23.i.i, !prof !30

if.then23.i.i:                                    ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31.i.i = getelementptr i8, ptr %325, i32 %add34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i.i, i8 0) #6, !srcloc !32
  br label %NVSetEnablePalette.exit.i

if.else32.i.i:                                    ; preds = %if.end.i66.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv35.i.i = sext i32 %add34.i.i to i64
  call void @nvif_object_wr(ptr noundef %device1.i61.i, i32 noundef 1, i64 noundef %conv35.i.i, i32 noundef 0) #6
  br label %NVSetEnablePalette.exit.i

NVSetEnablePalette.exit.i:                        ; preds = %if.else32.i.i, %if.then23.i.i
  %call4.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 0) #6
  %arrayidx5.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 0
  %326 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 %call4.i, ptr %arrayidx5.i, align 1
  %call4.1.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1) #6
  %arrayidx5.1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 1
  %327 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 %call4.1.i, ptr %arrayidx5.1.i, align 1
  %call4.2.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 2) #6
  %arrayidx5.2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 2
  %328 = ptrtoint ptr %arrayidx5.2.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %call4.2.i, ptr %arrayidx5.2.i, align 1
  %call4.3.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 3) #6
  %arrayidx5.3.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 3
  %329 = ptrtoint ptr %arrayidx5.3.i to i32
  call void @__asan_store1_noabort(i32 %329)
  store i8 %call4.3.i, ptr %arrayidx5.3.i, align 1
  %call4.4.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 4) #6
  %arrayidx5.4.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 4
  %330 = ptrtoint ptr %arrayidx5.4.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 %call4.4.i, ptr %arrayidx5.4.i, align 1
  %call4.5.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 5) #6
  %arrayidx5.5.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 5
  %331 = ptrtoint ptr %arrayidx5.5.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %call4.5.i, ptr %arrayidx5.5.i, align 1
  %call4.6.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 6) #6
  %arrayidx5.6.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 6
  %332 = ptrtoint ptr %arrayidx5.6.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %call4.6.i, ptr %arrayidx5.6.i, align 1
  %call4.7.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 7) #6
  %arrayidx5.7.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 7
  %333 = ptrtoint ptr %arrayidx5.7.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 %call4.7.i, ptr %arrayidx5.7.i, align 1
  %call4.8.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 8) #6
  %arrayidx5.8.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 8
  %334 = ptrtoint ptr %arrayidx5.8.i to i32
  call void @__asan_store1_noabort(i32 %334)
  store i8 %call4.8.i, ptr %arrayidx5.8.i, align 1
  %call4.9.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 9) #6
  %arrayidx5.9.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 9
  %335 = ptrtoint ptr %arrayidx5.9.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 %call4.9.i, ptr %arrayidx5.9.i, align 1
  %call4.10.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 10) #6
  %arrayidx5.10.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 10
  %336 = ptrtoint ptr %arrayidx5.10.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %call4.10.i, ptr %arrayidx5.10.i, align 1
  %call4.11.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 11) #6
  %arrayidx5.11.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 11
  %337 = ptrtoint ptr %arrayidx5.11.i to i32
  call void @__asan_store1_noabort(i32 %337)
  store i8 %call4.11.i, ptr %arrayidx5.11.i, align 1
  %call4.12.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 12) #6
  %arrayidx5.12.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 12
  %338 = ptrtoint ptr %arrayidx5.12.i to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 %call4.12.i, ptr %arrayidx5.12.i, align 1
  %call4.13.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 13) #6
  %arrayidx5.13.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 13
  %339 = ptrtoint ptr %arrayidx5.13.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 %call4.13.i, ptr %arrayidx5.13.i, align 1
  %call4.14.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 14) #6
  %arrayidx5.14.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 14
  %340 = ptrtoint ptr %arrayidx5.14.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %call4.14.i, ptr %arrayidx5.14.i, align 1
  %call4.15.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 15) #6
  %arrayidx5.15.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 15
  %341 = ptrtoint ptr %arrayidx5.15.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 %call4.15.i, ptr %arrayidx5.15.i, align 1
  %call4.16.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 16) #6
  %arrayidx5.16.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 16
  %342 = ptrtoint ptr %arrayidx5.16.i to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 %call4.16.i, ptr %arrayidx5.16.i, align 1
  %call4.17.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 17) #6
  %arrayidx5.17.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 17
  %343 = ptrtoint ptr %arrayidx5.17.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 %call4.17.i, ptr %arrayidx5.17.i, align 1
  %call4.18.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 18) #6
  %arrayidx5.18.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 18
  %344 = ptrtoint ptr %arrayidx5.18.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %call4.18.i, ptr %arrayidx5.18.i, align 1
  %call4.19.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 19) #6
  %arrayidx5.19.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 19
  %345 = ptrtoint ptr %arrayidx5.19.i to i32
  call void @__asan_store1_noabort(i32 %345)
  store i8 %call4.19.i, ptr %arrayidx5.19.i, align 1
  %call4.20.i = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 20) #6
  %arrayidx5.20.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 20
  %346 = ptrtoint ptr %arrayidx5.20.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %call4.20.i, ptr %arrayidx5.20.i, align 1
  %347 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %dev_private.i, align 4
  %device1.i68.i = getelementptr inbounds %struct.nouveau_drm, ptr %348, i32 0, i32 2, i32 3
  %map.i69.i = getelementptr inbounds %struct.nouveau_drm, ptr %348, i32 0, i32 2, i32 3, i32 0, i32 6
  %349 = ptrtoint ptr %map.i69.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %map.i69.i, align 8
  %tobool.not.i70.i = icmp eq ptr %350, null
  br i1 %tobool.not.i70.i, label %if.else.i77.i, label %if.then.i74.i, !prof !30

if.then.i74.i:                                    ; preds = %NVSetEnablePalette.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i73.i = getelementptr i8, ptr %350, i32 %add8.i.i
  %351 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i79.i

if.else.i77.i:                                    ; preds = %NVSetEnablePalette.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i75.i = sext i32 %add8.i.i to i64
  %call10.i76.i = call i32 @nvif_object_rd(ptr noundef %device1.i68.i, i32 noundef 1, i64 noundef %conv9.i75.i) #6
  br label %if.end.i79.i

if.end.i79.i:                                     ; preds = %if.else.i77.i, %if.then.i74.i
  %352 = ptrtoint ptr %map.i69.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %map.i69.i, align 8
  %tobool16.not.i78.i = icmp eq ptr %353, null
  br i1 %tobool16.not.i78.i, label %if.else32.i87.i, label %if.then23.i83.i, !prof !30

if.then23.i83.i:                                  ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31.i82.i = getelementptr i8, ptr %353, i32 %add34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i82.i, i8 32) #6, !srcloc !32
  br label %nv_save_state_vga.exit

if.else32.i87.i:                                  ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv35.i86.i = sext i32 %add34.i.i to i64
  call void @nvif_object_wr(ptr noundef %device1.i68.i, i32 noundef 1, i64 noundef %conv35.i86.i, i32 noundef 32) #6
  br label %nv_save_state_vga.exit

nv_save_state_vga.exit:                           ; preds = %if.else32.i87.i, %if.then23.i83.i
  %call14.i = call zeroext i8 @NVReadVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 0) #6
  %arrayidx15.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 0
  %354 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %call14.i, ptr %arrayidx15.i, align 1
  %call14.1.i = call zeroext i8 @NVReadVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1) #6
  %arrayidx15.1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 1
  %355 = ptrtoint ptr %arrayidx15.1.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 %call14.1.i, ptr %arrayidx15.1.i, align 1
  %call14.2.i = call zeroext i8 @NVReadVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 2) #6
  %arrayidx15.2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 2
  %356 = ptrtoint ptr %arrayidx15.2.i to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 %call14.2.i, ptr %arrayidx15.2.i, align 1
  %call14.3.i = call zeroext i8 @NVReadVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 3) #6
  %arrayidx15.3.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 3
  %357 = ptrtoint ptr %arrayidx15.3.i to i32
  call void @__asan_store1_noabort(i32 %357)
  store i8 %call14.3.i, ptr %arrayidx15.3.i, align 1
  %call14.4.i = call zeroext i8 @NVReadVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 4) #6
  %arrayidx15.4.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 4
  %358 = ptrtoint ptr %arrayidx15.4.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 %call14.4.i, ptr %arrayidx15.4.i, align 1
  %call14.5.i = call zeroext i8 @NVReadVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 5) #6
  %arrayidx15.5.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 5
  %359 = ptrtoint ptr %arrayidx15.5.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 %call14.5.i, ptr %arrayidx15.5.i, align 1
  %call14.6.i = call zeroext i8 @NVReadVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 6) #6
  %arrayidx15.6.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 6
  %360 = ptrtoint ptr %arrayidx15.6.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %call14.6.i, ptr %arrayidx15.6.i, align 1
  %call14.7.i = call zeroext i8 @NVReadVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 7) #6
  %arrayidx15.7.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 7
  %361 = ptrtoint ptr %arrayidx15.7.i to i32
  call void @__asan_store1_noabort(i32 %361)
  store i8 %call14.7.i, ptr %arrayidx15.7.i, align 1
  %call14.8.i = call zeroext i8 @NVReadVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 8) #6
  %arrayidx15.8.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 8
  %362 = ptrtoint ptr %arrayidx15.8.i to i32
  call void @__asan_store1_noabort(i32 %362)
  store i8 %call14.8.i, ptr %arrayidx15.8.i, align 1
  %call24.i = call zeroext i8 @NVReadVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 0) #6
  %arrayidx25.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 0
  %363 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %363)
  store i8 %call24.i, ptr %arrayidx25.i, align 1
  %call24.1.i = call zeroext i8 @NVReadVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1) #6
  %arrayidx25.1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 1
  %364 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 %call24.1.i, ptr %arrayidx25.1.i, align 1
  %call24.2.i = call zeroext i8 @NVReadVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 2) #6
  %arrayidx25.2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 2
  %365 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_store1_noabort(i32 %365)
  store i8 %call24.2.i, ptr %arrayidx25.2.i, align 1
  %call24.3.i = call zeroext i8 @NVReadVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 3) #6
  %arrayidx25.3.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 3
  %366 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %call24.3.i, ptr %arrayidx25.3.i, align 1
  %call24.4.i = call zeroext i8 @NVReadVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 4) #6
  %arrayidx25.4.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 4
  %367 = ptrtoint ptr %arrayidx25.4.i to i32
  call void @__asan_store1_noabort(i32 %367)
  store i8 %call24.4.i, ptr %arrayidx25.4.i, align 1
  %368 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %dev_private.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %369, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %369, i32 0, i32 2, i32 3, i32 0, i32 6
  %370 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %map.i, align 8
  %tobool.not.i35 = icmp eq ptr %371, null
  %add6.i = add i32 %mul6.i.i.i, 6820806
  br i1 %tobool.not.i35, label %if.else.i, label %if.then.i36, !prof !30

if.then.i36:                                      ; preds = %nv_save_state_vga.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %371, i32 %add6.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 -1) #6, !srcloc !32
  br label %if.end.i37

if.else.i:                                        ; preds = %nv_save_state_vga.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i32 %add6.i to i64
  call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef 255) #6
  br label %if.end.i37

if.end.i37:                                       ; preds = %if.else.i, %if.then.i36
  %372 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %map.i, align 8
  %tobool10.not.i = icmp eq ptr %373, null
  %add23.i = add i32 %mul6.i.i.i, 6820807
  br i1 %tobool10.not.i, label %if.else22.i, label %if.then17.i, !prof !30

if.then17.i:                                      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr21.i = getelementptr i8, ptr %373, i32 %add23.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21.i, i8 0) #6, !srcloc !32
  br label %if.end25.i

if.else22.i:                                      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  %conv24.i = sext i32 %add23.i to i64
  call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv24.i, i32 noundef 0) #6
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else22.i, %if.then17.i
  %add40.i = add i32 %mul6.i.i.i, 6820809
  %conv46.i = sext i32 %add40.i to i64
  br label %for.body.i38

for.body.i38:                                     ; preds = %if.end48.i.for.body.i38_crit_edge, %if.end25.i
  %i.072.i = phi i32 [ 0, %if.end25.i ], [ %inc.i39, %if.end48.i.for.body.i38_crit_edge ]
  %374 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %map.i, align 8
  %tobool30.not.i = icmp eq ptr %375, null
  br i1 %tobool30.not.i, label %if.else44.i, label %if.then37.i, !prof !30

if.then37.i:                                      ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr41.i = getelementptr i8, ptr %375, i32 %add40.i
  %376 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr41.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv43.i = zext i8 %376 to i32
  br label %if.end48.i

if.else44.i:                                      ; preds = %for.body.i38
  call void @__sanitizer_cov_trace_pc() #8
  %call47.i = call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv46.i) #6
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.else44.i, %if.then37.i
  %_data.0.i = phi i32 [ %conv43.i, %if.then37.i ], [ %call47.i, %if.else44.i ]
  %conv50.i = trunc i32 %_data.0.i to i8
  %arrayidx51.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 6, i32 %i.072.i
  %377 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %377)
  store i8 %conv50.i, ptr %arrayidx51.i, align 1
  %inc.i39 = add nuw nsw i32 %i.072.i, 1
  %exitcond.not.i40 = icmp eq i32 %inc.i39, 768
  br i1 %exitcond.not.i40, label %for.end.i45, label %if.end48.i.for.body.i38_crit_edge

if.end48.i.for.body.i38_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i38

for.end.i45:                                      ; preds = %if.end48.i
  %378 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i41 = getelementptr inbounds %struct.nouveau_drm, ptr %379, i32 0, i32 2, i32 3
  %map.i.i42 = getelementptr inbounds %struct.nouveau_drm, ptr %379, i32 0, i32 2, i32 3, i32 0, i32 6
  %380 = ptrtoint ptr %map.i.i42 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %map.i.i42, align 8
  %tobool.not.i.i43 = icmp eq ptr %381, null
  br i1 %tobool.not.i.i43, label %if.else.i.i50, label %if.then.i.i47, !prof !30

if.then.i.i47:                                    ; preds = %for.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i46 = getelementptr i8, ptr %381, i32 %add8.i.i
  %382 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i46) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i.i53

if.else.i.i50:                                    ; preds = %for.end.i45
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i.i48 = sext i32 %add8.i.i to i64
  %call10.i.i49 = call i32 @nvif_object_rd(ptr noundef %device1.i.i41, i32 noundef 1, i64 noundef %conv9.i.i48) #6
  br label %if.end.i.i53

if.end.i.i53:                                     ; preds = %if.else.i.i50, %if.then.i.i47
  %383 = ptrtoint ptr %map.i.i42 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %map.i.i42, align 8
  %tobool16.not.i.i51 = icmp eq ptr %384, null
  br i1 %tobool16.not.i.i51, label %if.else32.i.i57, label %if.then23.i.i55, !prof !30

if.then23.i.i55:                                  ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31.i.i54 = getelementptr i8, ptr %384, i32 %add34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i.i54, i8 32) #6, !srcloc !32
  br label %nv_save_state_palette.exit

if.else32.i.i57:                                  ; preds = %if.end.i.i53
  call void @__sanitizer_cov_trace_pc() #8
  %conv35.i.i56 = sext i32 %add34.i.i to i64
  call void @nvif_object_wr(ptr noundef %device1.i.i41, i32 noundef 1, i64 noundef %conv35.i.i56, i32 noundef 32) #6
  br label %nv_save_state_palette.exit

nv_save_state_palette.exit:                       ; preds = %if.else32.i.i57, %if.then23.i.i55
  %385 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i.i60 = getelementptr inbounds %struct.nouveau_drm, ptr %386, i32 0, i32 2, i32 3
  %map.i.i.i61 = getelementptr inbounds %struct.nouveau_drm, ptr %386, i32 0, i32 2, i32 3, i32 0, i32 6
  %387 = ptrtoint ptr %map.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %map.i.i.i61, align 8
  %tobool.not.i.i.i62 = icmp eq ptr %388, null
  br i1 %tobool.not.i.i.i62, label %if.else.i.i.i68, label %if.then.i.i.i66, !prof !30

if.then.i.i.i66:                                  ; preds = %nv_save_state_palette.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i65 = getelementptr i8, ptr %388, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i65, i8 51) #6, !srcloc !32
  br label %if.end.i.i.i71

if.else.i.i.i68:                                  ; preds = %nv_save_state_palette.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i.i60, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 51) #6
  br label %if.end.i.i.i71

if.end.i.i.i71:                                   ; preds = %if.else.i.i.i68, %if.then.i.i.i66
  %389 = ptrtoint ptr %map.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %map.i.i.i61, align 8
  %tobool12.not.i.i.i69 = icmp eq ptr %390, null
  br i1 %tobool12.not.i.i.i69, label %if.else27.i.i.i77, label %if.then19.i.i.i74, !prof !30

if.then19.i.i.i74:                                ; preds = %if.end.i.i.i71
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i.i72 = getelementptr i8, ptr %390, i32 %add29.i.i.i
  %391 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i.i72) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i.i73 = zext i8 %391 to i32
  br label %rd_cio_state.exit.i81

if.else27.i.i.i77:                                ; preds = %if.end.i.i.i71
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i.i76 = call i32 @nvif_object_rd(ptr noundef %device1.i.i.i60, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit.i81

rd_cio_state.exit.i81:                            ; preds = %if.else27.i.i.i77, %if.then19.i.i.i74
  %_data.0.i.i.i78 = phi i32 [ %conv26.i.i.i73, %if.then19.i.i.i74 ], [ %call31.i.i.i76, %if.else27.i.i.i77 ]
  %conv34.i.i.i79 = trunc i32 %_data.0.i.i.i78 to i8
  %arrayidx.i.i80 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 51
  %392 = ptrtoint ptr %arrayidx.i.i80 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 %conv34.i.i.i79, ptr %arrayidx.i.i80, align 1
  %393 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i193.i = getelementptr inbounds %struct.nouveau_drm, ptr %394, i32 0, i32 2, i32 3
  %map.i.i194.i = getelementptr inbounds %struct.nouveau_drm, ptr %394, i32 0, i32 2, i32 3, i32 0, i32 6
  %395 = ptrtoint ptr %map.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %map.i.i194.i, align 8
  %tobool.not.i.i195.i = icmp eq ptr %396, null
  br i1 %tobool.not.i.i195.i, label %if.else.i.i201.i, label %if.then.i.i199.i, !prof !30

if.then.i.i199.i:                                 ; preds = %rd_cio_state.exit.i81
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i198.i = getelementptr i8, ptr %396, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i198.i, i8 25) #6, !srcloc !32
  br label %if.end.i.i204.i

if.else.i.i201.i:                                 ; preds = %rd_cio_state.exit.i81
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i193.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 25) #6
  br label %if.end.i.i204.i

if.end.i.i204.i:                                  ; preds = %if.else.i.i201.i, %if.then.i.i199.i
  %397 = ptrtoint ptr %map.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %map.i.i194.i, align 8
  %tobool12.not.i.i202.i = icmp eq ptr %398, null
  br i1 %tobool12.not.i.i202.i, label %if.else27.i.i210.i, label %if.then19.i.i207.i, !prof !30

if.then19.i.i207.i:                               ; preds = %if.end.i.i204.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i205.i = getelementptr i8, ptr %398, i32 %add29.i.i.i
  %399 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i205.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i206.i = zext i8 %399 to i32
  br label %rd_cio_state.exit214.i

if.else27.i.i210.i:                               ; preds = %if.end.i.i204.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i209.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i193.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit214.i

rd_cio_state.exit214.i:                           ; preds = %if.else27.i.i210.i, %if.then19.i.i207.i
  %_data.0.i.i211.i = phi i32 [ %conv26.i.i206.i, %if.then19.i.i207.i ], [ %call31.i.i209.i, %if.else27.i.i210.i ]
  %conv34.i.i212.i = trunc i32 %_data.0.i.i211.i to i8
  %arrayidx.i213.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 25
  %400 = ptrtoint ptr %arrayidx.i213.i to i32
  call void @__asan_store1_noabort(i32 %400)
  store i8 %conv34.i.i212.i, ptr %arrayidx.i213.i, align 1
  %401 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i216.i = getelementptr inbounds %struct.nouveau_drm, ptr %402, i32 0, i32 2, i32 3
  %map.i.i217.i = getelementptr inbounds %struct.nouveau_drm, ptr %402, i32 0, i32 2, i32 3, i32 0, i32 6
  %403 = ptrtoint ptr %map.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %map.i.i217.i, align 8
  %tobool.not.i.i218.i = icmp eq ptr %404, null
  br i1 %tobool.not.i.i218.i, label %if.else.i.i224.i, label %if.then.i.i222.i, !prof !30

if.then.i.i222.i:                                 ; preds = %rd_cio_state.exit214.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i221.i = getelementptr i8, ptr %404, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i221.i, i8 26) #6, !srcloc !32
  br label %if.end.i.i227.i

if.else.i.i224.i:                                 ; preds = %rd_cio_state.exit214.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i216.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 26) #6
  br label %if.end.i.i227.i

if.end.i.i227.i:                                  ; preds = %if.else.i.i224.i, %if.then.i.i222.i
  %405 = ptrtoint ptr %map.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %map.i.i217.i, align 8
  %tobool12.not.i.i225.i = icmp eq ptr %406, null
  br i1 %tobool12.not.i.i225.i, label %if.else27.i.i233.i, label %if.then19.i.i230.i, !prof !30

if.then19.i.i230.i:                               ; preds = %if.end.i.i227.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i228.i = getelementptr i8, ptr %406, i32 %add29.i.i.i
  %407 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i228.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i229.i = zext i8 %407 to i32
  br label %rd_cio_state.exit237.i

if.else27.i.i233.i:                               ; preds = %if.end.i.i227.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i232.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i216.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit237.i

rd_cio_state.exit237.i:                           ; preds = %if.else27.i.i233.i, %if.then19.i.i230.i
  %_data.0.i.i234.i = phi i32 [ %conv26.i.i229.i, %if.then19.i.i230.i ], [ %call31.i.i232.i, %if.else27.i.i233.i ]
  %conv34.i.i235.i = trunc i32 %_data.0.i.i234.i to i8
  %arrayidx.i236.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 26
  %408 = ptrtoint ptr %arrayidx.i236.i to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 %conv34.i.i235.i, ptr %arrayidx.i236.i, align 1
  %409 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i239.i = getelementptr inbounds %struct.nouveau_drm, ptr %410, i32 0, i32 2, i32 3
  %map.i.i240.i = getelementptr inbounds %struct.nouveau_drm, ptr %410, i32 0, i32 2, i32 3, i32 0, i32 6
  %411 = ptrtoint ptr %map.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %map.i.i240.i, align 8
  %tobool.not.i.i241.i = icmp eq ptr %412, null
  br i1 %tobool.not.i.i241.i, label %if.else.i.i247.i, label %if.then.i.i245.i, !prof !30

if.then.i.i245.i:                                 ; preds = %rd_cio_state.exit237.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i244.i = getelementptr i8, ptr %412, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i244.i, i8 37) #6, !srcloc !32
  br label %if.end.i.i250.i

if.else.i.i247.i:                                 ; preds = %rd_cio_state.exit237.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i239.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 37) #6
  br label %if.end.i.i250.i

if.end.i.i250.i:                                  ; preds = %if.else.i.i247.i, %if.then.i.i245.i
  %413 = ptrtoint ptr %map.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %map.i.i240.i, align 8
  %tobool12.not.i.i248.i = icmp eq ptr %414, null
  br i1 %tobool12.not.i.i248.i, label %if.else27.i.i256.i, label %if.then19.i.i253.i, !prof !30

if.then19.i.i253.i:                               ; preds = %if.end.i.i250.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i251.i = getelementptr i8, ptr %414, i32 %add29.i.i.i
  %415 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i251.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i252.i = zext i8 %415 to i32
  br label %rd_cio_state.exit260.i

if.else27.i.i256.i:                               ; preds = %if.end.i.i250.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i255.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i239.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit260.i

rd_cio_state.exit260.i:                           ; preds = %if.else27.i.i256.i, %if.then19.i.i253.i
  %_data.0.i.i257.i = phi i32 [ %conv26.i.i252.i, %if.then19.i.i253.i ], [ %call31.i.i255.i, %if.else27.i.i256.i ]
  %conv34.i.i258.i = trunc i32 %_data.0.i.i257.i to i8
  %arrayidx.i259.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 37
  %416 = ptrtoint ptr %arrayidx.i259.i to i32
  call void @__asan_store1_noabort(i32 %416)
  store i8 %conv34.i.i258.i, ptr %arrayidx.i259.i, align 1
  %417 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i262.i = getelementptr inbounds %struct.nouveau_drm, ptr %418, i32 0, i32 2, i32 3
  %map.i.i263.i = getelementptr inbounds %struct.nouveau_drm, ptr %418, i32 0, i32 2, i32 3, i32 0, i32 6
  %419 = ptrtoint ptr %map.i.i263.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %map.i.i263.i, align 8
  %tobool.not.i.i264.i = icmp eq ptr %420, null
  br i1 %tobool.not.i.i264.i, label %if.else.i.i270.i, label %if.then.i.i268.i, !prof !30

if.then.i.i268.i:                                 ; preds = %rd_cio_state.exit260.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i267.i = getelementptr i8, ptr %420, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i267.i, i8 40) #6, !srcloc !32
  br label %if.end.i.i273.i

if.else.i.i270.i:                                 ; preds = %rd_cio_state.exit260.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i262.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 40) #6
  br label %if.end.i.i273.i

if.end.i.i273.i:                                  ; preds = %if.else.i.i270.i, %if.then.i.i268.i
  %421 = ptrtoint ptr %map.i.i263.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %map.i.i263.i, align 8
  %tobool12.not.i.i271.i = icmp eq ptr %422, null
  br i1 %tobool12.not.i.i271.i, label %if.else27.i.i279.i, label %if.then19.i.i276.i, !prof !30

if.then19.i.i276.i:                               ; preds = %if.end.i.i273.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i274.i = getelementptr i8, ptr %422, i32 %add29.i.i.i
  %423 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i274.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i275.i = zext i8 %423 to i32
  br label %rd_cio_state.exit283.i

if.else27.i.i279.i:                               ; preds = %if.end.i.i273.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i278.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i262.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit283.i

rd_cio_state.exit283.i:                           ; preds = %if.else27.i.i279.i, %if.then19.i.i276.i
  %_data.0.i.i280.i = phi i32 [ %conv26.i.i275.i, %if.then19.i.i276.i ], [ %call31.i.i278.i, %if.else27.i.i279.i ]
  %conv34.i.i281.i = trunc i32 %_data.0.i.i280.i to i8
  %arrayidx.i282.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 40
  %424 = ptrtoint ptr %arrayidx.i282.i to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 %conv34.i.i281.i, ptr %arrayidx.i282.i, align 1
  %425 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i285.i = getelementptr inbounds %struct.nouveau_drm, ptr %426, i32 0, i32 2, i32 3
  %map.i.i286.i = getelementptr inbounds %struct.nouveau_drm, ptr %426, i32 0, i32 2, i32 3, i32 0, i32 6
  %427 = ptrtoint ptr %map.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %map.i.i286.i, align 8
  %tobool.not.i.i287.i = icmp eq ptr %428, null
  br i1 %tobool.not.i.i287.i, label %if.else.i.i293.i, label %if.then.i.i291.i, !prof !30

if.then.i.i291.i:                                 ; preds = %rd_cio_state.exit283.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i290.i = getelementptr i8, ptr %428, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i290.i, i8 45) #6, !srcloc !32
  br label %if.end.i.i296.i

if.else.i.i293.i:                                 ; preds = %rd_cio_state.exit283.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i285.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 45) #6
  br label %if.end.i.i296.i

if.end.i.i296.i:                                  ; preds = %if.else.i.i293.i, %if.then.i.i291.i
  %429 = ptrtoint ptr %map.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %map.i.i286.i, align 8
  %tobool12.not.i.i294.i = icmp eq ptr %430, null
  br i1 %tobool12.not.i.i294.i, label %if.else27.i.i302.i, label %if.then19.i.i299.i, !prof !30

if.then19.i.i299.i:                               ; preds = %if.end.i.i296.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i297.i = getelementptr i8, ptr %430, i32 %add29.i.i.i
  %431 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i297.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i298.i = zext i8 %431 to i32
  br label %rd_cio_state.exit306.i

if.else27.i.i302.i:                               ; preds = %if.end.i.i296.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i301.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i285.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit306.i

rd_cio_state.exit306.i:                           ; preds = %if.else27.i.i302.i, %if.then19.i.i299.i
  %_data.0.i.i303.i = phi i32 [ %conv26.i.i298.i, %if.then19.i.i299.i ], [ %call31.i.i301.i, %if.else27.i.i302.i ]
  %conv34.i.i304.i = trunc i32 %_data.0.i.i303.i to i8
  %arrayidx.i305.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 45
  %432 = ptrtoint ptr %arrayidx.i305.i to i32
  call void @__asan_store1_noabort(i32 %432)
  store i8 %conv34.i.i304.i, ptr %arrayidx.i305.i, align 1
  %433 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i308.i = getelementptr inbounds %struct.nouveau_drm, ptr %434, i32 0, i32 2, i32 3
  %map.i.i309.i = getelementptr inbounds %struct.nouveau_drm, ptr %434, i32 0, i32 2, i32 3, i32 0, i32 6
  %435 = ptrtoint ptr %map.i.i309.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %map.i.i309.i, align 8
  %tobool.not.i.i310.i = icmp eq ptr %436, null
  br i1 %tobool.not.i.i310.i, label %if.else.i.i316.i, label %if.then.i.i314.i, !prof !30

if.then.i.i314.i:                                 ; preds = %rd_cio_state.exit306.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i313.i = getelementptr i8, ptr %436, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i313.i, i8 28) #6, !srcloc !32
  br label %if.end.i.i319.i

if.else.i.i316.i:                                 ; preds = %rd_cio_state.exit306.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i308.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 28) #6
  br label %if.end.i.i319.i

if.end.i.i319.i:                                  ; preds = %if.else.i.i316.i, %if.then.i.i314.i
  %437 = ptrtoint ptr %map.i.i309.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %map.i.i309.i, align 8
  %tobool12.not.i.i317.i = icmp eq ptr %438, null
  br i1 %tobool12.not.i.i317.i, label %if.else27.i.i325.i, label %if.then19.i.i322.i, !prof !30

if.then19.i.i322.i:                               ; preds = %if.end.i.i319.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i320.i = getelementptr i8, ptr %438, i32 %add29.i.i.i
  %439 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i320.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i321.i = zext i8 %439 to i32
  br label %rd_cio_state.exit329.i

if.else27.i.i325.i:                               ; preds = %if.end.i.i319.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i324.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i308.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit329.i

rd_cio_state.exit329.i:                           ; preds = %if.else27.i.i325.i, %if.then19.i.i322.i
  %_data.0.i.i326.i = phi i32 [ %conv26.i.i321.i, %if.then19.i.i322.i ], [ %call31.i.i324.i, %if.else27.i.i325.i ]
  %conv34.i.i327.i = trunc i32 %_data.0.i.i326.i to i8
  %arrayidx.i328.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 28
  %440 = ptrtoint ptr %arrayidx.i328.i to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 %conv34.i.i327.i, ptr %arrayidx.i328.i, align 1
  %441 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i331.i = getelementptr inbounds %struct.nouveau_drm, ptr %442, i32 0, i32 2, i32 3
  %map.i.i332.i = getelementptr inbounds %struct.nouveau_drm, ptr %442, i32 0, i32 2, i32 3, i32 0, i32 6
  %443 = ptrtoint ptr %map.i.i332.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %map.i.i332.i, align 8
  %tobool.not.i.i333.i = icmp eq ptr %444, null
  br i1 %tobool.not.i.i333.i, label %if.else.i.i339.i, label %if.then.i.i337.i, !prof !30

if.then.i.i337.i:                                 ; preds = %rd_cio_state.exit329.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i336.i = getelementptr i8, ptr %444, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i336.i, i8 27) #6, !srcloc !32
  br label %if.end.i.i342.i

if.else.i.i339.i:                                 ; preds = %rd_cio_state.exit329.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i331.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 27) #6
  br label %if.end.i.i342.i

if.end.i.i342.i:                                  ; preds = %if.else.i.i339.i, %if.then.i.i337.i
  %445 = ptrtoint ptr %map.i.i332.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %map.i.i332.i, align 8
  %tobool12.not.i.i340.i = icmp eq ptr %446, null
  br i1 %tobool12.not.i.i340.i, label %if.else27.i.i348.i, label %if.then19.i.i345.i, !prof !30

if.then19.i.i345.i:                               ; preds = %if.end.i.i342.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i343.i = getelementptr i8, ptr %446, i32 %add29.i.i.i
  %447 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i343.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i344.i = zext i8 %447 to i32
  br label %rd_cio_state.exit352.i

if.else27.i.i348.i:                               ; preds = %if.end.i.i342.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i347.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i331.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit352.i

rd_cio_state.exit352.i:                           ; preds = %if.else27.i.i348.i, %if.then19.i.i345.i
  %_data.0.i.i349.i = phi i32 [ %conv26.i.i344.i, %if.then19.i.i345.i ], [ %call31.i.i347.i, %if.else27.i.i348.i ]
  %conv34.i.i350.i = trunc i32 %_data.0.i.i349.i to i8
  %arrayidx.i351.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 27
  %448 = ptrtoint ptr %arrayidx.i351.i to i32
  call void @__asan_store1_noabort(i32 %448)
  store i8 %conv34.i.i350.i, ptr %arrayidx.i351.i, align 1
  %449 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i354.i = getelementptr inbounds %struct.nouveau_drm, ptr %450, i32 0, i32 2, i32 3
  %map.i.i355.i = getelementptr inbounds %struct.nouveau_drm, ptr %450, i32 0, i32 2, i32 3, i32 0, i32 6
  %451 = ptrtoint ptr %map.i.i355.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %map.i.i355.i, align 8
  %tobool.not.i.i356.i = icmp eq ptr %452, null
  br i1 %tobool.not.i.i356.i, label %if.else.i.i362.i, label %if.then.i.i360.i, !prof !30

if.then.i.i360.i:                                 ; preds = %rd_cio_state.exit352.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i359.i = getelementptr i8, ptr %452, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i359.i, i8 32) #6, !srcloc !32
  br label %if.end.i.i365.i

if.else.i.i362.i:                                 ; preds = %rd_cio_state.exit352.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i354.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 32) #6
  br label %if.end.i.i365.i

if.end.i.i365.i:                                  ; preds = %if.else.i.i362.i, %if.then.i.i360.i
  %453 = ptrtoint ptr %map.i.i355.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %map.i.i355.i, align 8
  %tobool12.not.i.i363.i = icmp eq ptr %454, null
  br i1 %tobool12.not.i.i363.i, label %if.else27.i.i371.i, label %if.then19.i.i368.i, !prof !30

if.then19.i.i368.i:                               ; preds = %if.end.i.i365.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i366.i = getelementptr i8, ptr %454, i32 %add29.i.i.i
  %455 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i366.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i367.i = zext i8 %455 to i32
  br label %rd_cio_state.exit375.i

if.else27.i.i371.i:                               ; preds = %if.end.i.i365.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i370.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i354.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit375.i

rd_cio_state.exit375.i:                           ; preds = %if.else27.i.i371.i, %if.then19.i.i368.i
  %_data.0.i.i372.i = phi i32 [ %conv26.i.i367.i, %if.then19.i.i368.i ], [ %call31.i.i370.i, %if.else27.i.i371.i ]
  %conv34.i.i373.i = trunc i32 %_data.0.i.i372.i to i8
  %arrayidx.i374.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 32
  %456 = ptrtoint ptr %arrayidx.i374.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 %conv34.i.i373.i, ptr %arrayidx.i374.i, align 1
  %457 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i377.i = getelementptr inbounds %struct.nouveau_drm, ptr %458, i32 0, i32 2, i32 3
  %map.i.i378.i = getelementptr inbounds %struct.nouveau_drm, ptr %458, i32 0, i32 2, i32 3, i32 0, i32 6
  %459 = ptrtoint ptr %map.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %map.i.i378.i, align 8
  %tobool.not.i.i379.i = icmp eq ptr %460, null
  br i1 %tobool.not.i.i379.i, label %if.else.i.i385.i, label %if.then.i.i383.i, !prof !30

if.then.i.i383.i:                                 ; preds = %rd_cio_state.exit375.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i382.i = getelementptr i8, ptr %460, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i382.i, i8 33) #6, !srcloc !32
  br label %if.end.i.i388.i

if.else.i.i385.i:                                 ; preds = %rd_cio_state.exit375.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i377.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 33) #6
  br label %if.end.i.i388.i

if.end.i.i388.i:                                  ; preds = %if.else.i.i385.i, %if.then.i.i383.i
  %461 = ptrtoint ptr %map.i.i378.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %map.i.i378.i, align 8
  %tobool12.not.i.i386.i = icmp eq ptr %462, null
  br i1 %tobool12.not.i.i386.i, label %if.else27.i.i394.i, label %if.then19.i.i391.i, !prof !30

if.then19.i.i391.i:                               ; preds = %if.end.i.i388.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i389.i = getelementptr i8, ptr %462, i32 %add29.i.i.i
  %463 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i389.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i390.i = zext i8 %463 to i32
  br label %rd_cio_state.exit398.i

if.else27.i.i394.i:                               ; preds = %if.end.i.i388.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i393.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i377.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit398.i

rd_cio_state.exit398.i:                           ; preds = %if.else27.i.i394.i, %if.then19.i.i391.i
  %_data.0.i.i395.i = phi i32 [ %conv26.i.i390.i, %if.then19.i.i391.i ], [ %call31.i.i393.i, %if.else27.i.i394.i ]
  %conv34.i.i396.i = trunc i32 %_data.0.i.i395.i to i8
  %arrayidx.i397.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 33
  %464 = ptrtoint ptr %arrayidx.i397.i to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 %conv34.i.i396.i, ptr %arrayidx.i397.i, align 1
  %family.i82 = getelementptr inbounds %struct.nouveau_drm, ptr %386, i32 0, i32 2, i32 3, i32 1, i32 4
  %465 = ptrtoint ptr %family.i82 to i32
  call void @__asan_load1_noabort(i32 %465)
  %466 = load i8, ptr %family.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %466)
  %cmp.i83 = icmp ugt i8 %466, 2
  br i1 %cmp.i83, label %if.then.i84, label %rd_cio_state.exit398.i.if.end10.i_crit_edge

rd_cio_state.exit398.i.if.end10.i_crit_edge:      ; preds = %rd_cio_state.exit398.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then.i84:                                      ; preds = %rd_cio_state.exit398.i
  %467 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i400.i = getelementptr inbounds %struct.nouveau_drm, ptr %468, i32 0, i32 2, i32 3
  %map.i.i401.i = getelementptr inbounds %struct.nouveau_drm, ptr %468, i32 0, i32 2, i32 3, i32 0, i32 6
  %469 = ptrtoint ptr %map.i.i401.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %map.i.i401.i, align 8
  %tobool.not.i.i402.i = icmp eq ptr %470, null
  br i1 %tobool.not.i.i402.i, label %if.else.i.i408.i, label %if.then.i.i406.i, !prof !30

if.then.i.i406.i:                                 ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i405.i = getelementptr i8, ptr %470, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i405.i, i8 71) #6, !srcloc !32
  br label %if.end.i.i411.i

if.else.i.i408.i:                                 ; preds = %if.then.i84
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i400.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 71) #6
  br label %if.end.i.i411.i

if.end.i.i411.i:                                  ; preds = %if.else.i.i408.i, %if.then.i.i406.i
  %471 = ptrtoint ptr %map.i.i401.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %map.i.i401.i, align 8
  %tobool12.not.i.i409.i = icmp eq ptr %472, null
  br i1 %tobool12.not.i.i409.i, label %if.else27.i.i417.i, label %if.then19.i.i414.i, !prof !30

if.then19.i.i414.i:                               ; preds = %if.end.i.i411.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i412.i = getelementptr i8, ptr %472, i32 %add29.i.i.i
  %473 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i412.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i413.i = zext i8 %473 to i32
  br label %if.end.i85

if.else27.i.i417.i:                               ; preds = %if.end.i.i411.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i416.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i400.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %if.end.i85

if.end.i85:                                       ; preds = %if.else27.i.i417.i, %if.then19.i.i414.i
  %_data.0.i.i418.i = phi i32 [ %conv26.i.i413.i, %if.then19.i.i414.i ], [ %call31.i.i416.i, %if.else27.i.i417.i ]
  %conv34.i.i419.i = trunc i32 %_data.0.i.i418.i to i8
  %arrayidx.i420.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 71
  %474 = ptrtoint ptr %arrayidx.i420.i to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 %conv34.i.i419.i, ptr %arrayidx.i420.i, align 1
  %475 = ptrtoint ptr %family.i82 to i32
  call void @__asan_load1_noabort(i32 %475)
  %.pr.i = load i8, ptr %family.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr.i)
  %cmp7.i = icmp ugt i8 %.pr.i, 3
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i85.if.end10.i_crit_edge

if.end.i85.if.end10.i_crit_edge:                  ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end.i85
  %476 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i423.i = getelementptr inbounds %struct.nouveau_drm, ptr %477, i32 0, i32 2, i32 3
  %map.i.i424.i = getelementptr inbounds %struct.nouveau_drm, ptr %477, i32 0, i32 2, i32 3, i32 0, i32 6
  %478 = ptrtoint ptr %map.i.i424.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %map.i.i424.i, align 8
  %tobool.not.i.i425.i = icmp eq ptr %479, null
  br i1 %tobool.not.i.i425.i, label %if.else.i.i431.i, label %if.then.i.i429.i, !prof !30

if.then.i.i429.i:                                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i428.i = getelementptr i8, ptr %479, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i428.i, i8 -97) #6, !srcloc !32
  br label %if.end.i.i434.i

if.else.i.i431.i:                                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i423.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 159) #6
  br label %if.end.i.i434.i

if.end.i.i434.i:                                  ; preds = %if.else.i.i431.i, %if.then.i.i429.i
  %480 = ptrtoint ptr %map.i.i424.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %map.i.i424.i, align 8
  %tobool12.not.i.i432.i = icmp eq ptr %481, null
  br i1 %tobool12.not.i.i432.i, label %if.else27.i.i440.i, label %if.then19.i.i437.i, !prof !30

if.then19.i.i437.i:                               ; preds = %if.end.i.i434.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i435.i = getelementptr i8, ptr %481, i32 %add29.i.i.i
  %482 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i435.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i436.i = zext i8 %482 to i32
  br label %rd_cio_state.exit444.i

if.else27.i.i440.i:                               ; preds = %if.end.i.i434.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i439.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i423.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit444.i

rd_cio_state.exit444.i:                           ; preds = %if.else27.i.i440.i, %if.then19.i.i437.i
  %_data.0.i.i441.i = phi i32 [ %conv26.i.i436.i, %if.then19.i.i437.i ], [ %call31.i.i439.i, %if.else27.i.i440.i ]
  %conv34.i.i442.i = trunc i32 %_data.0.i.i441.i to i8
  %arrayidx.i443.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 159
  %483 = ptrtoint ptr %arrayidx.i443.i to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 %conv34.i.i442.i, ptr %arrayidx.i443.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %rd_cio_state.exit444.i, %if.end.i85.if.end10.i_crit_edge, %rd_cio_state.exit398.i.if.end10.i_crit_edge
  %484 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i446.i = getelementptr inbounds %struct.nouveau_drm, ptr %485, i32 0, i32 2, i32 3
  %map.i.i447.i = getelementptr inbounds %struct.nouveau_drm, ptr %485, i32 0, i32 2, i32 3, i32 0, i32 6
  %486 = ptrtoint ptr %map.i.i447.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %map.i.i447.i, align 8
  %tobool.not.i.i448.i = icmp eq ptr %487, null
  br i1 %tobool.not.i.i448.i, label %if.else.i.i454.i, label %if.then.i.i452.i, !prof !30

if.then.i.i452.i:                                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i451.i = getelementptr i8, ptr %487, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i451.i, i8 73) #6, !srcloc !32
  br label %if.end.i.i457.i

if.else.i.i454.i:                                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i446.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 73) #6
  br label %if.end.i.i457.i

if.end.i.i457.i:                                  ; preds = %if.else.i.i454.i, %if.then.i.i452.i
  %488 = ptrtoint ptr %map.i.i447.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %map.i.i447.i, align 8
  %tobool12.not.i.i455.i = icmp eq ptr %489, null
  br i1 %tobool12.not.i.i455.i, label %if.else27.i.i463.i, label %if.then19.i.i460.i, !prof !30

if.then19.i.i460.i:                               ; preds = %if.end.i.i457.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i458.i = getelementptr i8, ptr %489, i32 %add29.i.i.i
  %490 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i458.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i459.i = zext i8 %490 to i32
  br label %rd_cio_state.exit467.i

if.else27.i.i463.i:                               ; preds = %if.end.i.i457.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i462.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i446.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit467.i

rd_cio_state.exit467.i:                           ; preds = %if.else27.i.i463.i, %if.then19.i.i460.i
  %_data.0.i.i464.i = phi i32 [ %conv26.i.i459.i, %if.then19.i.i460.i ], [ %call31.i.i462.i, %if.else27.i.i463.i ]
  %conv34.i.i465.i = trunc i32 %_data.0.i.i464.i to i8
  %arrayidx.i466.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 73
  %491 = ptrtoint ptr %arrayidx.i466.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 %conv34.i.i465.i, ptr %arrayidx.i466.i, align 1
  %492 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i469.i = getelementptr inbounds %struct.nouveau_drm, ptr %493, i32 0, i32 2, i32 3
  %map.i.i470.i = getelementptr inbounds %struct.nouveau_drm, ptr %493, i32 0, i32 2, i32 3, i32 0, i32 6
  %494 = ptrtoint ptr %map.i.i470.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %map.i.i470.i, align 8
  %tobool.not.i.i471.i = icmp eq ptr %495, null
  br i1 %tobool.not.i.i471.i, label %if.else.i.i477.i, label %if.then.i.i475.i, !prof !30

if.then.i.i475.i:                                 ; preds = %rd_cio_state.exit467.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i474.i = getelementptr i8, ptr %495, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i474.i, i8 48) #6, !srcloc !32
  br label %if.end.i.i480.i

if.else.i.i477.i:                                 ; preds = %rd_cio_state.exit467.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i469.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 48) #6
  br label %if.end.i.i480.i

if.end.i.i480.i:                                  ; preds = %if.else.i.i477.i, %if.then.i.i475.i
  %496 = ptrtoint ptr %map.i.i470.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %map.i.i470.i, align 8
  %tobool12.not.i.i478.i = icmp eq ptr %497, null
  br i1 %tobool12.not.i.i478.i, label %if.else27.i.i486.i, label %if.then19.i.i483.i, !prof !30

if.then19.i.i483.i:                               ; preds = %if.end.i.i480.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i481.i = getelementptr i8, ptr %497, i32 %add29.i.i.i
  %498 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i481.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i482.i = zext i8 %498 to i32
  br label %rd_cio_state.exit490.i

if.else27.i.i486.i:                               ; preds = %if.end.i.i480.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i485.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i469.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit490.i

rd_cio_state.exit490.i:                           ; preds = %if.else27.i.i486.i, %if.then19.i.i483.i
  %_data.0.i.i487.i = phi i32 [ %conv26.i.i482.i, %if.then19.i.i483.i ], [ %call31.i.i485.i, %if.else27.i.i486.i ]
  %conv34.i.i488.i = trunc i32 %_data.0.i.i487.i to i8
  %arrayidx.i489.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 48
  %499 = ptrtoint ptr %arrayidx.i489.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 %conv34.i.i488.i, ptr %arrayidx.i489.i, align 1
  %500 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i492.i = getelementptr inbounds %struct.nouveau_drm, ptr %501, i32 0, i32 2, i32 3
  %map.i.i493.i = getelementptr inbounds %struct.nouveau_drm, ptr %501, i32 0, i32 2, i32 3, i32 0, i32 6
  %502 = ptrtoint ptr %map.i.i493.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %map.i.i493.i, align 8
  %tobool.not.i.i494.i = icmp eq ptr %503, null
  br i1 %tobool.not.i.i494.i, label %if.else.i.i500.i, label %if.then.i.i498.i, !prof !30

if.then.i.i498.i:                                 ; preds = %rd_cio_state.exit490.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i497.i = getelementptr i8, ptr %503, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i497.i, i8 49) #6, !srcloc !32
  br label %if.end.i.i503.i

if.else.i.i500.i:                                 ; preds = %rd_cio_state.exit490.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i492.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 49) #6
  br label %if.end.i.i503.i

if.end.i.i503.i:                                  ; preds = %if.else.i.i500.i, %if.then.i.i498.i
  %504 = ptrtoint ptr %map.i.i493.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %map.i.i493.i, align 8
  %tobool12.not.i.i501.i = icmp eq ptr %505, null
  br i1 %tobool12.not.i.i501.i, label %if.else27.i.i509.i, label %if.then19.i.i506.i, !prof !30

if.then19.i.i506.i:                               ; preds = %if.end.i.i503.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i504.i = getelementptr i8, ptr %505, i32 %add29.i.i.i
  %506 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i504.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i505.i = zext i8 %506 to i32
  br label %rd_cio_state.exit513.i

if.else27.i.i509.i:                               ; preds = %if.end.i.i503.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i508.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i492.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit513.i

rd_cio_state.exit513.i:                           ; preds = %if.else27.i.i509.i, %if.then19.i.i506.i
  %_data.0.i.i510.i = phi i32 [ %conv26.i.i505.i, %if.then19.i.i506.i ], [ %call31.i.i508.i, %if.else27.i.i509.i ]
  %conv34.i.i511.i = trunc i32 %_data.0.i.i510.i to i8
  %arrayidx.i512.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 49
  %507 = ptrtoint ptr %arrayidx.i512.i to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 %conv34.i.i511.i, ptr %arrayidx.i512.i, align 1
  %508 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i515.i = getelementptr inbounds %struct.nouveau_drm, ptr %509, i32 0, i32 2, i32 3
  %map.i.i516.i = getelementptr inbounds %struct.nouveau_drm, ptr %509, i32 0, i32 2, i32 3, i32 0, i32 6
  %510 = ptrtoint ptr %map.i.i516.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %map.i.i516.i, align 8
  %tobool.not.i.i517.i = icmp eq ptr %511, null
  br i1 %tobool.not.i.i517.i, label %if.else.i.i523.i, label %if.then.i.i521.i, !prof !30

if.then.i.i521.i:                                 ; preds = %rd_cio_state.exit513.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i520.i = getelementptr i8, ptr %511, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i520.i, i8 47) #6, !srcloc !32
  br label %if.end.i.i526.i

if.else.i.i523.i:                                 ; preds = %rd_cio_state.exit513.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i515.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 47) #6
  br label %if.end.i.i526.i

if.end.i.i526.i:                                  ; preds = %if.else.i.i523.i, %if.then.i.i521.i
  %512 = ptrtoint ptr %map.i.i516.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %map.i.i516.i, align 8
  %tobool12.not.i.i524.i = icmp eq ptr %513, null
  br i1 %tobool12.not.i.i524.i, label %if.else27.i.i532.i, label %if.then19.i.i529.i, !prof !30

if.then19.i.i529.i:                               ; preds = %if.end.i.i526.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i527.i = getelementptr i8, ptr %513, i32 %add29.i.i.i
  %514 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i527.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i528.i = zext i8 %514 to i32
  br label %rd_cio_state.exit536.i

if.else27.i.i532.i:                               ; preds = %if.end.i.i526.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i531.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i515.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit536.i

rd_cio_state.exit536.i:                           ; preds = %if.else27.i.i532.i, %if.then19.i.i529.i
  %_data.0.i.i533.i = phi i32 [ %conv26.i.i528.i, %if.then19.i.i529.i ], [ %call31.i.i531.i, %if.else27.i.i532.i ]
  %conv34.i.i534.i = trunc i32 %_data.0.i.i533.i to i8
  %arrayidx.i535.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 47
  %515 = ptrtoint ptr %arrayidx.i535.i to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 %conv34.i.i534.i, ptr %arrayidx.i535.i, align 1
  %516 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i538.i = getelementptr inbounds %struct.nouveau_drm, ptr %517, i32 0, i32 2, i32 3
  %map.i.i539.i = getelementptr inbounds %struct.nouveau_drm, ptr %517, i32 0, i32 2, i32 3, i32 0, i32 6
  %518 = ptrtoint ptr %map.i.i539.i to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %map.i.i539.i, align 8
  %tobool.not.i.i540.i = icmp eq ptr %519, null
  br i1 %tobool.not.i.i540.i, label %if.else.i.i546.i, label %if.then.i.i544.i, !prof !30

if.then.i.i544.i:                                 ; preds = %rd_cio_state.exit536.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i543.i = getelementptr i8, ptr %519, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i543.i, i8 57) #6, !srcloc !32
  br label %if.end.i.i549.i

if.else.i.i546.i:                                 ; preds = %rd_cio_state.exit536.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i538.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 57) #6
  br label %if.end.i.i549.i

if.end.i.i549.i:                                  ; preds = %if.else.i.i546.i, %if.then.i.i544.i
  %520 = ptrtoint ptr %map.i.i539.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %map.i.i539.i, align 8
  %tobool12.not.i.i547.i = icmp eq ptr %521, null
  br i1 %tobool12.not.i.i547.i, label %if.else27.i.i555.i, label %if.then19.i.i552.i, !prof !30

if.then19.i.i552.i:                               ; preds = %if.end.i.i549.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i550.i = getelementptr i8, ptr %521, i32 %add29.i.i.i
  %522 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i550.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i551.i = zext i8 %522 to i32
  br label %rd_cio_state.exit559.i

if.else27.i.i555.i:                               ; preds = %if.end.i.i549.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i554.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i538.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit559.i

rd_cio_state.exit559.i:                           ; preds = %if.else27.i.i555.i, %if.then19.i.i552.i
  %_data.0.i.i556.i = phi i32 [ %conv26.i.i551.i, %if.then19.i.i552.i ], [ %call31.i.i554.i, %if.else27.i.i555.i ]
  %conv34.i.i557.i = trunc i32 %_data.0.i.i556.i to i8
  %arrayidx.i558.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 57
  %523 = ptrtoint ptr %arrayidx.i558.i to i32
  call void @__asan_store1_noabort(i32 %523)
  store i8 %conv34.i.i557.i, ptr %arrayidx.i558.i, align 1
  %524 = ptrtoint ptr %family.i82 to i32
  call void @__asan_load1_noabort(i32 %524)
  %525 = load i8, ptr %family.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %525)
  %cmp16.i = icmp ugt i8 %525, 1
  br i1 %cmp16.i, label %if.then18.i, label %rd_cio_state.exit559.i.if.end46.i_crit_edge

rd_cio_state.exit559.i.if.end46.i_crit_edge:      ; preds = %rd_cio_state.exit559.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then18.i:                                      ; preds = %rd_cio_state.exit559.i
  %526 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i.i87 = select i1 %tobool.not.i15, i32 6293552, i32 6301744
  %map.i.i88 = getelementptr inbounds %struct.nouveau_drm, ptr %527, i32 0, i32 2, i32 3, i32 0, i32 6
  %528 = ptrtoint ptr %map.i.i88 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %map.i.i88, align 8
  %tobool2.not.i.i89 = icmp eq ptr %529, null
  br i1 %tobool2.not.i.i89, label %if.else.i.i95, label %if.then5.i.i91, !prof !30

if.then5.i.i91:                                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i90 = getelementptr i8, ptr %529, i32 %spec.select.i.i87
  %530 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i90) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %NVReadCRTC.exit.i

if.else.i.i95:                                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i92 = getelementptr inbounds %struct.nouveau_drm, ptr %527, i32 0, i32 2, i32 3
  %conv.i.i93 = zext i32 %spec.select.i.i87 to i64
  %call10.i.i94 = call i32 @nvif_object_rd(ptr noundef %device1.i.i92, i32 noundef 4, i64 noundef %conv.i.i93) #6
  br label %NVReadCRTC.exit.i

NVReadCRTC.exit.i:                                ; preds = %if.else.i.i95, %if.then5.i.i91
  %_data.0.i.i96 = phi i32 [ %530, %if.then5.i.i91 ], [ %call10.i.i94, %if.else.i.i95 ]
  %crtc_830.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 11
  %531 = ptrtoint ptr %crtc_830.i to i32
  call void @__asan_store4_noabort(i32 %531)
  store i32 %_data.0.i.i96, ptr %crtc_830.i, align 4
  %532 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i562.i = select i1 %tobool.not.i15, i32 6293556, i32 6301748
  %map.i563.i = getelementptr inbounds %struct.nouveau_drm, ptr %533, i32 0, i32 2, i32 3, i32 0, i32 6
  %534 = ptrtoint ptr %map.i563.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %map.i563.i, align 8
  %tobool2.not.i564.i = icmp eq ptr %535, null
  br i1 %tobool2.not.i564.i, label %if.else.i570.i, label %if.then5.i566.i, !prof !30

if.then5.i566.i:                                  ; preds = %NVReadCRTC.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i565.i = getelementptr i8, ptr %535, i32 %spec.select.i562.i
  %536 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i565.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %NVReadCRTC.exit572.i

if.else.i570.i:                                   ; preds = %NVReadCRTC.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i567.i = getelementptr inbounds %struct.nouveau_drm, ptr %533, i32 0, i32 2, i32 3
  %conv.i568.i = zext i32 %spec.select.i562.i to i64
  %call10.i569.i = call i32 @nvif_object_rd(ptr noundef %device1.i567.i, i32 noundef 4, i64 noundef %conv.i568.i) #6
  br label %NVReadCRTC.exit572.i

NVReadCRTC.exit572.i:                             ; preds = %if.else.i570.i, %if.then5.i566.i
  %_data.0.i571.i = phi i32 [ %536, %if.then5.i566.i ], [ %call10.i569.i, %if.else.i570.i ]
  %crtc_834.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 12
  %537 = ptrtoint ptr %crtc_834.i to i32
  call void @__asan_store4_noabort(i32 %537)
  store i32 %_data.0.i571.i, ptr %crtc_834.i, align 4
  %538 = ptrtoint ptr %family.i82 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %family.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %539)
  %cmp26.i = icmp ugt i8 %539, 3
  br i1 %cmp26.i, label %if.then28.i, label %NVReadCRTC.exit572.i.if.end40.i_crit_edge

NVReadCRTC.exit572.i.if.end40.i_crit_edge:        ; preds = %NVReadCRTC.exit572.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then28.i:                                      ; preds = %NVReadCRTC.exit572.i
  %540 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i575.i = select i1 %tobool.not.i15, i32 6293532, i32 6301724
  %map.i576.i = getelementptr inbounds %struct.nouveau_drm, ptr %541, i32 0, i32 2, i32 3, i32 0, i32 6
  %542 = ptrtoint ptr %map.i576.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %map.i576.i, align 8
  %tobool2.not.i577.i = icmp eq ptr %543, null
  br i1 %tobool2.not.i577.i, label %if.else.i583.i, label %if.then5.i579.i, !prof !30

if.then5.i579.i:                                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i578.i = getelementptr i8, ptr %543, i32 %spec.select.i575.i
  %544 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i578.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %if.end30.i

if.else.i583.i:                                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i580.i = getelementptr inbounds %struct.nouveau_drm, ptr %541, i32 0, i32 2, i32 3
  %conv.i581.i = zext i32 %spec.select.i575.i to i64
  %call10.i582.i = call i32 @nvif_object_rd(ptr noundef %device1.i580.i, i32 noundef 4, i64 noundef %conv.i581.i) #6
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i583.i, %if.then5.i579.i
  %_data.0.i584.i = phi i32 [ %544, %if.then5.i579.i ], [ %call10.i582.i, %if.else.i583.i ]
  %gpio_ext.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 10
  %545 = ptrtoint ptr %gpio_ext.i to i32
  call void @__asan_store4_noabort(i32 %545)
  store i32 %_data.0.i584.i, ptr %gpio_ext.i, align 4
  %546 = ptrtoint ptr %family.i82 to i32
  call void @__asan_load1_noabort(i32 %546)
  %.pr975.i = load i8, ptr %family.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr975.i)
  %cmp36.i = icmp eq i8 %.pr975.i, 5
  br i1 %cmp36.i, label %if.then38.i, label %if.end30.i.if.end40.i_crit_edge

if.end30.i.if.end40.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40.i

if.then38.i:                                      ; preds = %if.end30.i
  %547 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i588.i = select i1 %tobool.not.i15, i32 6293584, i32 6301776
  %map.i589.i = getelementptr inbounds %struct.nouveau_drm, ptr %548, i32 0, i32 2, i32 3, i32 0, i32 6
  %549 = ptrtoint ptr %map.i589.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %map.i589.i, align 8
  %tobool2.not.i590.i = icmp eq ptr %550, null
  br i1 %tobool2.not.i590.i, label %if.else.i596.i, label %if.then5.i592.i, !prof !30

if.then5.i592.i:                                  ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i591.i = getelementptr i8, ptr %550, i32 %spec.select.i588.i
  %551 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i591.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %NVReadCRTC.exit598.i

if.else.i596.i:                                   ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i593.i = getelementptr inbounds %struct.nouveau_drm, ptr %548, i32 0, i32 2, i32 3
  %conv.i594.i = zext i32 %spec.select.i588.i to i64
  %call10.i595.i = call i32 @nvif_object_rd(ptr noundef %device1.i593.i, i32 noundef 4, i64 noundef %conv.i594.i) #6
  br label %NVReadCRTC.exit598.i

NVReadCRTC.exit598.i:                             ; preds = %if.else.i596.i, %if.then5.i592.i
  %_data.0.i597.i = phi i32 [ %551, %if.then5.i592.i ], [ %call10.i595.i, %if.else.i596.i ]
  %crtc_850.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 13
  %552 = ptrtoint ptr %crtc_850.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 %_data.0.i597.i, ptr %crtc_850.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %NVReadCRTC.exit598.i, %if.end30.i.if.end40.i_crit_edge, %NVReadCRTC.exit572.i.if.end40.i_crit_edge
  %553 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %dev_private.i, align 4
  %555 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i98 = getelementptr i8, ptr %556, i32 -102
  %557 = ptrtoint ptr %device.i.i98 to i32
  call void @__asan_load2_noabort(i32 %557)
  %558 = load i16, ptr %device.i.i98, align 2
  %559 = and i16 %558, 4080
  %family.i.i99 = getelementptr inbounds %struct.nouveau_drm, ptr %554, i32 0, i32 2, i32 3, i32 1, i32 4
  %560 = ptrtoint ptr %family.i.i99 to i32
  call void @__asan_load1_noabort(i32 %560)
  %561 = load i8, ptr %family.i.i99, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %561)
  %cmp.i.i100 = icmp ugt i8 %561, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %559)
  %cmp5.not.i.i101 = icmp ne i16 %559, 256
  %or.cond.i.i102 = select i1 %cmp.i.i100, i1 %cmp5.not.i.i101, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %559)
  %cmp8.not.i.i103 = icmp ne i16 %559, 336
  %or.cond21.i.i104 = select i1 %or.cond.i.i102, i1 %cmp8.not.i.i103, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %559)
  %cmp11.not.i.i105 = icmp ne i16 %559, 416
  %or.cond22.i.i106 = select i1 %or.cond21.i.i104, i1 %cmp11.not.i.i105, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %559)
  %cmp14.not.i.i107 = icmp ne i16 %559, 512
  %or.cond23.i.i108 = select i1 %or.cond22.i.i106, i1 %cmp14.not.i.i107, i1 false
  br i1 %or.cond23.i.i108, label %if.then42.i, label %if.end40.i.if.end44.i_crit_edge

if.end40.i.if.end44.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then42.i:                                      ; preds = %if.end40.i
  %spec.select.i602.i109 = select i1 %tobool.not.i15, i32 6293600, i32 6301792
  %map.i603.i110 = getelementptr inbounds %struct.nouveau_drm, ptr %554, i32 0, i32 2, i32 3, i32 0, i32 6
  %562 = ptrtoint ptr %map.i603.i110 to i32
  call void @__asan_load4_noabort(i32 %562)
  %563 = load ptr, ptr %map.i603.i110, align 8
  %tobool2.not.i604.i111 = icmp eq ptr %563, null
  br i1 %tobool2.not.i604.i111, label %if.else.i610.i117, label %if.then5.i606.i113, !prof !30

if.then5.i606.i113:                               ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i605.i112 = getelementptr i8, ptr %563, i32 %spec.select.i602.i109
  %564 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i605.i112) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %NVReadCRTC.exit612.i

if.else.i610.i117:                                ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i607.i114 = getelementptr inbounds %struct.nouveau_drm, ptr %554, i32 0, i32 2, i32 3
  %conv.i608.i115 = zext i32 %spec.select.i602.i109 to i64
  %call10.i609.i116 = call i32 @nvif_object_rd(ptr noundef %device1.i607.i114, i32 noundef 4, i64 noundef %conv.i608.i115) #6
  br label %NVReadCRTC.exit612.i

NVReadCRTC.exit612.i:                             ; preds = %if.else.i610.i117, %if.then5.i606.i113
  %_data.0.i611.i118 = phi i32 [ %564, %if.then5.i606.i113 ], [ %call10.i609.i116, %if.else.i610.i117 ]
  %crtc_eng_ctrl.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 14
  %565 = ptrtoint ptr %crtc_eng_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %565)
  store i32 %_data.0.i611.i118, ptr %crtc_eng_ctrl.i, align 4
  br label %if.end44.i

if.end44.i:                                       ; preds = %NVReadCRTC.exit612.i, %if.end40.i.if.end44.i_crit_edge
  %566 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i615.i119 = select i1 %tobool.not.i15, i32 6293520, i32 6301712
  %map.i616.i120 = getelementptr inbounds %struct.nouveau_drm, ptr %567, i32 0, i32 2, i32 3, i32 0, i32 6
  %568 = ptrtoint ptr %map.i616.i120 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %map.i616.i120, align 8
  %tobool2.not.i617.i121 = icmp eq ptr %569, null
  br i1 %tobool2.not.i617.i121, label %if.else.i623.i127, label %if.then5.i619.i123, !prof !30

if.then5.i619.i123:                               ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i618.i122 = getelementptr i8, ptr %569, i32 %spec.select.i615.i119
  %570 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i618.i122) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %NVReadCRTC.exit625.i

if.else.i623.i127:                                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i620.i124 = getelementptr inbounds %struct.nouveau_drm, ptr %567, i32 0, i32 2, i32 3
  %conv.i621.i125 = zext i32 %spec.select.i615.i119 to i64
  %call10.i622.i126 = call i32 @nvif_object_rd(ptr noundef %device1.i620.i124, i32 noundef 4, i64 noundef %conv.i621.i125) #6
  br label %NVReadCRTC.exit625.i

NVReadCRTC.exit625.i:                             ; preds = %if.else.i623.i127, %if.then5.i619.i123
  %_data.0.i624.i128 = phi i32 [ %570, %if.then5.i619.i123 ], [ %call10.i622.i126, %if.else.i623.i127 ]
  %cursor_cfg.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 9
  %571 = ptrtoint ptr %cursor_cfg.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 %_data.0.i624.i128, ptr %cursor_cfg.i, align 4
  br label %if.end46.i

if.end46.i:                                       ; preds = %NVReadCRTC.exit625.i, %rd_cio_state.exit559.i.if.end46.i_crit_edge
  %572 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i628.i129 = select i1 %tobool.not.i15, i32 6293508, i32 6301700
  %map.i629.i130 = getelementptr inbounds %struct.nouveau_drm, ptr %573, i32 0, i32 2, i32 3, i32 0, i32 6
  %574 = ptrtoint ptr %map.i629.i130 to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %map.i629.i130, align 8
  %tobool2.not.i630.i131 = icmp eq ptr %575, null
  br i1 %tobool2.not.i630.i131, label %if.else.i636.i137, label %if.then5.i632.i133, !prof !30

if.then5.i632.i133:                               ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i631.i132 = getelementptr i8, ptr %575, i32 %spec.select.i628.i129
  %576 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i631.i132) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %NVReadCRTC.exit638.i

if.else.i636.i137:                                ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i633.i134 = getelementptr inbounds %struct.nouveau_drm, ptr %573, i32 0, i32 2, i32 3
  %conv.i634.i135 = zext i32 %spec.select.i628.i129 to i64
  %call10.i635.i136 = call i32 @nvif_object_rd(ptr noundef %device1.i633.i134, i32 noundef 4, i64 noundef %conv.i634.i135) #6
  br label %NVReadCRTC.exit638.i

NVReadCRTC.exit638.i:                             ; preds = %if.else.i636.i137, %if.then5.i632.i133
  %_data.0.i637.i138 = phi i32 [ %576, %if.then5.i632.i133 ], [ %call10.i635.i136, %if.else.i636.i137 ]
  %crtc_cfg.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 8
  %577 = ptrtoint ptr %crtc_cfg.i to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %_data.0.i637.i138, ptr %crtc_cfg.i, align 4
  %578 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i640.i = getelementptr inbounds %struct.nouveau_drm, ptr %579, i32 0, i32 2, i32 3
  %map.i.i641.i = getelementptr inbounds %struct.nouveau_drm, ptr %579, i32 0, i32 2, i32 3, i32 0, i32 6
  %580 = ptrtoint ptr %map.i.i641.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %map.i.i641.i, align 8
  %tobool.not.i.i642.i = icmp eq ptr %581, null
  br i1 %tobool.not.i.i642.i, label %if.else.i.i648.i, label %if.then.i.i646.i, !prof !30

if.then.i.i646.i:                                 ; preds = %NVReadCRTC.exit638.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i645.i = getelementptr i8, ptr %581, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i645.i, i8 59) #6, !srcloc !32
  br label %if.end.i.i651.i

if.else.i.i648.i:                                 ; preds = %NVReadCRTC.exit638.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i640.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 59) #6
  br label %if.end.i.i651.i

if.end.i.i651.i:                                  ; preds = %if.else.i.i648.i, %if.then.i.i646.i
  %582 = ptrtoint ptr %map.i.i641.i to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %map.i.i641.i, align 8
  %tobool12.not.i.i649.i = icmp eq ptr %583, null
  br i1 %tobool12.not.i.i649.i, label %if.else27.i.i657.i, label %if.then19.i.i654.i, !prof !30

if.then19.i.i654.i:                               ; preds = %if.end.i.i651.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i652.i = getelementptr i8, ptr %583, i32 %add29.i.i.i
  %584 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i652.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i653.i = zext i8 %584 to i32
  br label %rd_cio_state.exit661.i

if.else27.i.i657.i:                               ; preds = %if.end.i.i651.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i656.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i640.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit661.i

rd_cio_state.exit661.i:                           ; preds = %if.else27.i.i657.i, %if.then19.i.i654.i
  %_data.0.i.i658.i = phi i32 [ %conv26.i.i653.i, %if.then19.i.i654.i ], [ %call31.i.i656.i, %if.else27.i.i657.i ]
  %conv34.i.i659.i = trunc i32 %_data.0.i.i658.i to i8
  %arrayidx.i660.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 59
  %585 = ptrtoint ptr %arrayidx.i660.i to i32
  call void @__asan_store1_noabort(i32 %585)
  store i8 %conv34.i.i659.i, ptr %arrayidx.i660.i, align 1
  %586 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i663.i = getelementptr inbounds %struct.nouveau_drm, ptr %587, i32 0, i32 2, i32 3
  %map.i.i664.i = getelementptr inbounds %struct.nouveau_drm, ptr %587, i32 0, i32 2, i32 3, i32 0, i32 6
  %588 = ptrtoint ptr %map.i.i664.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %map.i.i664.i, align 8
  %tobool.not.i.i665.i = icmp eq ptr %589, null
  br i1 %tobool.not.i.i665.i, label %if.else.i.i671.i, label %if.then.i.i669.i, !prof !30

if.then.i.i669.i:                                 ; preds = %rd_cio_state.exit661.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i668.i = getelementptr i8, ptr %589, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i668.i, i8 60) #6, !srcloc !32
  br label %if.end.i.i674.i

if.else.i.i671.i:                                 ; preds = %rd_cio_state.exit661.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i663.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 60) #6
  br label %if.end.i.i674.i

if.end.i.i674.i:                                  ; preds = %if.else.i.i671.i, %if.then.i.i669.i
  %590 = ptrtoint ptr %map.i.i664.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load ptr, ptr %map.i.i664.i, align 8
  %tobool12.not.i.i672.i = icmp eq ptr %591, null
  br i1 %tobool12.not.i.i672.i, label %if.else27.i.i680.i, label %if.then19.i.i677.i, !prof !30

if.then19.i.i677.i:                               ; preds = %if.end.i.i674.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i675.i = getelementptr i8, ptr %591, i32 %add29.i.i.i
  %592 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i675.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i676.i = zext i8 %592 to i32
  br label %rd_cio_state.exit684.i

if.else27.i.i680.i:                               ; preds = %if.end.i.i674.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i679.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i663.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit684.i

rd_cio_state.exit684.i:                           ; preds = %if.else27.i.i680.i, %if.then19.i.i677.i
  %_data.0.i.i681.i = phi i32 [ %conv26.i.i676.i, %if.then19.i.i677.i ], [ %call31.i.i679.i, %if.else27.i.i680.i ]
  %conv34.i.i682.i = trunc i32 %_data.0.i.i681.i to i8
  %arrayidx.i683.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 60
  %593 = ptrtoint ptr %arrayidx.i683.i to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 %conv34.i.i682.i, ptr %arrayidx.i683.i, align 1
  %594 = ptrtoint ptr %family.i82 to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %family.i82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %595)
  %cmp53.i = icmp ugt i8 %595, 1
  br i1 %cmp53.i, label %if.then55.i, label %rd_cio_state.exit684.i.if.end56.i_crit_edge

rd_cio_state.exit684.i.if.end56.i_crit_edge:      ; preds = %rd_cio_state.exit684.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then55.i:                                      ; preds = %rd_cio_state.exit684.i
  %596 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i686.i = getelementptr inbounds %struct.nouveau_drm, ptr %597, i32 0, i32 2, i32 3
  %map.i.i687.i = getelementptr inbounds %struct.nouveau_drm, ptr %597, i32 0, i32 2, i32 3, i32 0, i32 6
  %598 = ptrtoint ptr %map.i.i687.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %map.i.i687.i, align 8
  %tobool.not.i.i688.i = icmp eq ptr %599, null
  br i1 %tobool.not.i.i688.i, label %if.else.i.i694.i, label %if.then.i.i692.i, !prof !30

if.then.i.i692.i:                                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i691.i = getelementptr i8, ptr %599, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i691.i, i8 65) #6, !srcloc !32
  br label %if.end.i.i697.i

if.else.i.i694.i:                                 ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i686.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 65) #6
  br label %if.end.i.i697.i

if.end.i.i697.i:                                  ; preds = %if.else.i.i694.i, %if.then.i.i692.i
  %600 = ptrtoint ptr %map.i.i687.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %map.i.i687.i, align 8
  %tobool12.not.i.i695.i = icmp eq ptr %601, null
  br i1 %tobool12.not.i.i695.i, label %if.else27.i.i703.i, label %if.then19.i.i700.i, !prof !30

if.then19.i.i700.i:                               ; preds = %if.end.i.i697.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i698.i = getelementptr i8, ptr %601, i32 %add29.i.i.i
  %602 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i698.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i699.i = zext i8 %602 to i32
  br label %rd_cio_state.exit707.i

if.else27.i.i703.i:                               ; preds = %if.end.i.i697.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i702.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i686.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit707.i

rd_cio_state.exit707.i:                           ; preds = %if.else27.i.i703.i, %if.then19.i.i700.i
  %_data.0.i.i704.i = phi i32 [ %conv26.i.i699.i, %if.then19.i.i700.i ], [ %call31.i.i702.i, %if.else27.i.i703.i ]
  %conv34.i.i705.i = trunc i32 %_data.0.i.i704.i to i8
  %arrayidx.i706.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 65
  %603 = ptrtoint ptr %arrayidx.i706.i to i32
  call void @__asan_store1_noabort(i32 %603)
  store i8 %conv34.i.i705.i, ptr %arrayidx.i706.i, align 1
  %604 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i709.i = getelementptr inbounds %struct.nouveau_drm, ptr %605, i32 0, i32 2, i32 3
  %map.i.i710.i = getelementptr inbounds %struct.nouveau_drm, ptr %605, i32 0, i32 2, i32 3, i32 0, i32 6
  %606 = ptrtoint ptr %map.i.i710.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load ptr, ptr %map.i.i710.i, align 8
  %tobool.not.i.i711.i = icmp eq ptr %607, null
  br i1 %tobool.not.i.i711.i, label %if.else.i.i717.i, label %if.then.i.i715.i, !prof !30

if.then.i.i715.i:                                 ; preds = %rd_cio_state.exit707.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i714.i = getelementptr i8, ptr %607, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i714.i, i8 69) #6, !srcloc !32
  br label %if.end.i.i720.i

if.else.i.i717.i:                                 ; preds = %rd_cio_state.exit707.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i709.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 69) #6
  br label %if.end.i.i720.i

if.end.i.i720.i:                                  ; preds = %if.else.i.i717.i, %if.then.i.i715.i
  %608 = ptrtoint ptr %map.i.i710.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load ptr, ptr %map.i.i710.i, align 8
  %tobool12.not.i.i718.i = icmp eq ptr %609, null
  br i1 %tobool12.not.i.i718.i, label %if.else27.i.i726.i, label %if.then19.i.i723.i, !prof !30

if.then19.i.i723.i:                               ; preds = %if.end.i.i720.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i721.i = getelementptr i8, ptr %609, i32 %add29.i.i.i
  %610 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i721.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i722.i = zext i8 %610 to i32
  br label %rd_cio_state.exit730.i

if.else27.i.i726.i:                               ; preds = %if.end.i.i720.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i725.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i709.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit730.i

rd_cio_state.exit730.i:                           ; preds = %if.else27.i.i726.i, %if.then19.i.i723.i
  %_data.0.i.i727.i = phi i32 [ %conv26.i.i722.i, %if.then19.i.i723.i ], [ %call31.i.i725.i, %if.else27.i.i726.i ]
  %conv34.i.i728.i = trunc i32 %_data.0.i.i727.i to i8
  %arrayidx.i729.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 69
  %611 = ptrtoint ptr %arrayidx.i729.i to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 %conv34.i.i728.i, ptr %arrayidx.i729.i, align 1
  %612 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i732.i = getelementptr inbounds %struct.nouveau_drm, ptr %613, i32 0, i32 2, i32 3
  %map.i.i733.i = getelementptr inbounds %struct.nouveau_drm, ptr %613, i32 0, i32 2, i32 3, i32 0, i32 6
  %614 = ptrtoint ptr %map.i.i733.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %map.i.i733.i, align 8
  %tobool.not.i.i734.i = icmp eq ptr %615, null
  br i1 %tobool.not.i.i734.i, label %if.else.i.i740.i, label %if.then.i.i738.i, !prof !30

if.then.i.i738.i:                                 ; preds = %rd_cio_state.exit730.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i737.i = getelementptr i8, ptr %615, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i737.i, i8 75) #6, !srcloc !32
  br label %if.end.i.i743.i

if.else.i.i740.i:                                 ; preds = %rd_cio_state.exit730.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i732.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 75) #6
  br label %if.end.i.i743.i

if.end.i.i743.i:                                  ; preds = %if.else.i.i740.i, %if.then.i.i738.i
  %616 = ptrtoint ptr %map.i.i733.i to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %map.i.i733.i, align 8
  %tobool12.not.i.i741.i = icmp eq ptr %617, null
  br i1 %tobool12.not.i.i741.i, label %if.else27.i.i749.i, label %if.then19.i.i746.i, !prof !30

if.then19.i.i746.i:                               ; preds = %if.end.i.i743.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i744.i = getelementptr i8, ptr %617, i32 %add29.i.i.i
  %618 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i744.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i745.i = zext i8 %618 to i32
  br label %rd_cio_state.exit753.i

if.else27.i.i749.i:                               ; preds = %if.end.i.i743.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i748.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i732.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit753.i

rd_cio_state.exit753.i:                           ; preds = %if.else27.i.i749.i, %if.then19.i.i746.i
  %_data.0.i.i750.i = phi i32 [ %conv26.i.i745.i, %if.then19.i.i746.i ], [ %call31.i.i748.i, %if.else27.i.i749.i ]
  %conv34.i.i751.i = trunc i32 %_data.0.i.i750.i to i8
  %arrayidx.i752.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 75
  %619 = ptrtoint ptr %arrayidx.i752.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 %conv34.i.i751.i, ptr %arrayidx.i752.i, align 1
  %620 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i755.i = getelementptr inbounds %struct.nouveau_drm, ptr %621, i32 0, i32 2, i32 3
  %map.i.i756.i = getelementptr inbounds %struct.nouveau_drm, ptr %621, i32 0, i32 2, i32 3, i32 0, i32 6
  %622 = ptrtoint ptr %map.i.i756.i to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load ptr, ptr %map.i.i756.i, align 8
  %tobool.not.i.i757.i = icmp eq ptr %623, null
  br i1 %tobool.not.i.i757.i, label %if.else.i.i763.i, label %if.then.i.i761.i, !prof !30

if.then.i.i761.i:                                 ; preds = %rd_cio_state.exit753.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i760.i = getelementptr i8, ptr %623, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i760.i, i8 82) #6, !srcloc !32
  br label %if.end.i.i766.i

if.else.i.i763.i:                                 ; preds = %rd_cio_state.exit753.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i755.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 82) #6
  br label %if.end.i.i766.i

if.end.i.i766.i:                                  ; preds = %if.else.i.i763.i, %if.then.i.i761.i
  %624 = ptrtoint ptr %map.i.i756.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load ptr, ptr %map.i.i756.i, align 8
  %tobool12.not.i.i764.i = icmp eq ptr %625, null
  br i1 %tobool12.not.i.i764.i, label %if.else27.i.i772.i, label %if.then19.i.i769.i, !prof !30

if.then19.i.i769.i:                               ; preds = %if.end.i.i766.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i767.i = getelementptr i8, ptr %625, i32 %add29.i.i.i
  %626 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i767.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i768.i = zext i8 %626 to i32
  br label %rd_cio_state.exit776.i

if.else27.i.i772.i:                               ; preds = %if.end.i.i766.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i771.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i755.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit776.i

rd_cio_state.exit776.i:                           ; preds = %if.else27.i.i772.i, %if.then19.i.i769.i
  %_data.0.i.i773.i = phi i32 [ %conv26.i.i768.i, %if.then19.i.i769.i ], [ %call31.i.i771.i, %if.else27.i.i772.i ]
  %conv34.i.i774.i = trunc i32 %_data.0.i.i773.i to i8
  %arrayidx.i775.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 82
  %627 = ptrtoint ptr %arrayidx.i775.i to i32
  call void @__asan_store1_noabort(i32 %627)
  store i8 %conv34.i.i774.i, ptr %arrayidx.i775.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %rd_cio_state.exit776.i, %rd_cio_state.exit684.i.if.end56.i_crit_edge
  %628 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %dev_private.i, align 4
  %630 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i.i139 = getelementptr i8, ptr %631, i32 -102
  %632 = ptrtoint ptr %device.i.i.i139 to i32
  call void @__asan_load2_noabort(i32 %632)
  %633 = load i16, ptr %device.i.i.i139, align 2
  %634 = and i16 %633, 4080
  %family.i.i.i140 = getelementptr inbounds %struct.nouveau_drm, ptr %629, i32 0, i32 2, i32 3, i32 1, i32 4
  %635 = ptrtoint ptr %family.i.i.i140 to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %family.i.i.i140, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %636)
  %cmp.i.i.i141 = icmp ugt i8 %636, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %634)
  %cmp5.not.i.i.i142 = icmp ne i16 %634, 256
  %or.cond.i.i.i143 = select i1 %cmp.i.i.i141, i1 %cmp5.not.i.i.i142, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %634)
  %cmp8.not.i.i.i144 = icmp ne i16 %634, 336
  %or.cond21.i.i.i145 = select i1 %or.cond.i.i.i143, i1 %cmp8.not.i.i.i144, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %634)
  %cmp11.not.i.i.i146 = icmp ne i16 %634, 416
  %or.cond22.i.i.i147 = select i1 %or.cond21.i.i.i145, i1 %cmp11.not.i.i.i146, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %634)
  %cmp14.not.i.i.i148 = icmp ne i16 %634, 512
  %or.cond23.i.i.i149 = select i1 %or.cond22.i.i.i147, i1 %cmp14.not.i.i.i148, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %634)
  %cmp.i778.i = icmp ne i16 %634, 272
  %spec.select.i779.i = select i1 %or.cond23.i.i.i149, i1 %cmp.i778.i, i1 false
  br i1 %spec.select.i779.i, label %if.then58.i, label %if.end56.i.if.end64.i_crit_edge

if.end56.i.if.end64.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i

if.then58.i:                                      ; preds = %if.end56.i
  %device1.i.i781.i = getelementptr inbounds %struct.nouveau_drm, ptr %629, i32 0, i32 2, i32 3
  %map.i.i782.i = getelementptr inbounds %struct.nouveau_drm, ptr %629, i32 0, i32 2, i32 3, i32 0, i32 6
  %637 = ptrtoint ptr %map.i.i782.i to i32
  call void @__asan_load4_noabort(i32 %637)
  %638 = load ptr, ptr %map.i.i782.i, align 8
  %tobool.not.i.i783.i = icmp eq ptr %638, null
  br i1 %tobool.not.i.i783.i, label %if.else.i.i789.i, label %if.then.i.i787.i, !prof !30

if.then.i.i787.i:                                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i786.i = getelementptr i8, ptr %638, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i786.i, i8 66) #6, !srcloc !32
  br label %if.end.i.i792.i

if.else.i.i789.i:                                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i781.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 66) #6
  br label %if.end.i.i792.i

if.end.i.i792.i:                                  ; preds = %if.else.i.i789.i, %if.then.i.i787.i
  %639 = ptrtoint ptr %map.i.i782.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %map.i.i782.i, align 8
  %tobool12.not.i.i790.i = icmp eq ptr %640, null
  br i1 %tobool12.not.i.i790.i, label %if.else27.i.i798.i, label %if.then19.i.i795.i, !prof !30

if.then19.i.i795.i:                               ; preds = %if.end.i.i792.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i793.i = getelementptr i8, ptr %640, i32 %add29.i.i.i
  %641 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i793.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i794.i = zext i8 %641 to i32
  br label %rd_cio_state.exit802.i

if.else27.i.i798.i:                               ; preds = %if.end.i.i792.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i797.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i781.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit802.i

rd_cio_state.exit802.i:                           ; preds = %if.else27.i.i798.i, %if.then19.i.i795.i
  %_data.0.i.i799.i = phi i32 [ %conv26.i.i794.i, %if.then19.i.i795.i ], [ %call31.i.i797.i, %if.else27.i.i798.i ]
  %conv34.i.i800.i = trunc i32 %_data.0.i.i799.i to i8
  %arrayidx.i801.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 66
  %642 = ptrtoint ptr %arrayidx.i801.i to i32
  call void @__asan_store1_noabort(i32 %642)
  store i8 %conv34.i.i800.i, ptr %arrayidx.i801.i, align 1
  %643 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i804.i = getelementptr inbounds %struct.nouveau_drm, ptr %644, i32 0, i32 2, i32 3
  %map.i.i805.i = getelementptr inbounds %struct.nouveau_drm, ptr %644, i32 0, i32 2, i32 3, i32 0, i32 6
  %645 = ptrtoint ptr %map.i.i805.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load ptr, ptr %map.i.i805.i, align 8
  %tobool.not.i.i806.i = icmp eq ptr %646, null
  br i1 %tobool.not.i.i806.i, label %if.else.i.i812.i, label %if.then.i.i810.i, !prof !30

if.then.i.i810.i:                                 ; preds = %rd_cio_state.exit802.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i809.i = getelementptr i8, ptr %646, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i809.i, i8 83) #6, !srcloc !32
  br label %if.end.i.i815.i

if.else.i.i812.i:                                 ; preds = %rd_cio_state.exit802.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i804.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 83) #6
  br label %if.end.i.i815.i

if.end.i.i815.i:                                  ; preds = %if.else.i.i812.i, %if.then.i.i810.i
  %647 = ptrtoint ptr %map.i.i805.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %map.i.i805.i, align 8
  %tobool12.not.i.i813.i = icmp eq ptr %648, null
  br i1 %tobool12.not.i.i813.i, label %if.else27.i.i821.i, label %if.then19.i.i818.i, !prof !30

if.then19.i.i818.i:                               ; preds = %if.end.i.i815.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i816.i = getelementptr i8, ptr %648, i32 %add29.i.i.i
  %649 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i816.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i817.i = zext i8 %649 to i32
  br label %rd_cio_state.exit825.i

if.else27.i.i821.i:                               ; preds = %if.end.i.i815.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i820.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i804.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit825.i

rd_cio_state.exit825.i:                           ; preds = %if.else27.i.i821.i, %if.then19.i.i818.i
  %_data.0.i.i822.i = phi i32 [ %conv26.i.i817.i, %if.then19.i.i818.i ], [ %call31.i.i820.i, %if.else27.i.i821.i ]
  %conv34.i.i823.i = trunc i32 %_data.0.i.i822.i to i8
  %arrayidx.i824.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 83
  %650 = ptrtoint ptr %arrayidx.i824.i to i32
  call void @__asan_store1_noabort(i32 %650)
  store i8 %conv34.i.i823.i, ptr %arrayidx.i824.i, align 1
  %651 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i827.i = getelementptr inbounds %struct.nouveau_drm, ptr %652, i32 0, i32 2, i32 3
  %map.i.i828.i = getelementptr inbounds %struct.nouveau_drm, ptr %652, i32 0, i32 2, i32 3, i32 0, i32 6
  %653 = ptrtoint ptr %map.i.i828.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %map.i.i828.i, align 8
  %tobool.not.i.i829.i = icmp eq ptr %654, null
  br i1 %tobool.not.i.i829.i, label %if.else.i.i835.i, label %if.then.i.i833.i, !prof !30

if.then.i.i833.i:                                 ; preds = %rd_cio_state.exit825.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i832.i = getelementptr i8, ptr %654, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i832.i, i8 84) #6, !srcloc !32
  br label %if.end.i.i838.i

if.else.i.i835.i:                                 ; preds = %rd_cio_state.exit825.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i827.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 84) #6
  br label %if.end.i.i838.i

if.end.i.i838.i:                                  ; preds = %if.else.i.i835.i, %if.then.i.i833.i
  %655 = ptrtoint ptr %map.i.i828.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %map.i.i828.i, align 8
  %tobool12.not.i.i836.i = icmp eq ptr %656, null
  br i1 %tobool12.not.i.i836.i, label %if.else27.i.i844.i, label %if.then19.i.i841.i, !prof !30

if.then19.i.i841.i:                               ; preds = %if.end.i.i838.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i839.i = getelementptr i8, ptr %656, i32 %add29.i.i.i
  %657 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i839.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i840.i = zext i8 %657 to i32
  br label %rd_cio_state.exit848.i

if.else27.i.i844.i:                               ; preds = %if.end.i.i838.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i843.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i827.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit848.i

rd_cio_state.exit848.i:                           ; preds = %if.else27.i.i844.i, %if.then19.i.i841.i
  %_data.0.i.i845.i = phi i32 [ %conv26.i.i840.i, %if.then19.i.i841.i ], [ %call31.i.i843.i, %if.else27.i.i844.i ]
  %conv34.i.i846.i = trunc i32 %_data.0.i.i845.i to i8
  %arrayidx.i847.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 84
  %658 = ptrtoint ptr %arrayidx.i847.i to i32
  call void @__asan_store1_noabort(i32 %658)
  store i8 %conv34.i.i846.i, ptr %arrayidx.i847.i, align 1
  br label %for.body.i150

for.body.i150:                                    ; preds = %NVReadVgaCrtc5758.exit.i.for.body.i150_crit_edge, %rd_cio_state.exit848.i
  %i.0977.i = phi i32 [ 0, %rd_cio_state.exit848.i ], [ %inc.i151, %NVReadVgaCrtc5758.exit.i.for.body.i150_crit_edge ]
  %conv61.i = trunc i32 %i.0977.i to i8
  %659 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i850.i = getelementptr inbounds %struct.nouveau_drm, ptr %660, i32 0, i32 2, i32 3
  %map.i.i851.i = getelementptr inbounds %struct.nouveau_drm, ptr %660, i32 0, i32 2, i32 3, i32 0, i32 6
  %661 = ptrtoint ptr %map.i.i851.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %map.i.i851.i, align 8
  %tobool.not.i.i852.i = icmp eq ptr %662, null
  br i1 %tobool.not.i.i852.i, label %if.else.i.i858.i, label %if.then.i.i856.i, !prof !30

if.then.i.i856.i:                                 ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i855.i = getelementptr i8, ptr %662, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i855.i, i8 87) #6, !srcloc !32
  br label %if.end.i.i860.i

if.else.i.i858.i:                                 ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i850.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 87) #6
  br label %if.end.i.i860.i

if.end.i.i860.i:                                  ; preds = %if.else.i.i858.i, %if.then.i.i856.i
  %663 = ptrtoint ptr %map.i.i851.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %map.i.i851.i, align 8
  %tobool12.not.i.i859.i = icmp eq ptr %664, null
  br i1 %tobool12.not.i.i859.i, label %if.else25.i.i.i, label %if.then19.i.i862.i, !prof !30

if.then19.i.i862.i:                               ; preds = %if.end.i.i860.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i861.i = getelementptr i8, ptr %664, i32 %add29.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i.i861.i, i8 %conv61.i) #6, !srcloc !32
  br label %NVWriteVgaCrtc.exit.i.i

if.else25.i.i.i:                                  ; preds = %if.end.i.i860.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i850.i, i32 noundef 1, i64 noundef %conv30.i.i.i, i32 noundef %i.0977.i) #6
  br label %NVWriteVgaCrtc.exit.i.i

NVWriteVgaCrtc.exit.i.i:                          ; preds = %if.else25.i.i.i, %if.then19.i.i862.i
  %665 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %dev_private.i, align 4
  %device1.i4.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %666, i32 0, i32 2, i32 3
  %map.i5.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %666, i32 0, i32 2, i32 3, i32 0, i32 6
  %667 = ptrtoint ptr %map.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %map.i5.i.i, align 8
  %tobool.not.i6.i.i = icmp eq ptr %668, null
  br i1 %tobool.not.i6.i.i, label %if.else.i12.i.i, label %if.then.i10.i.i, !prof !30

if.then.i10.i.i:                                  ; preds = %NVWriteVgaCrtc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i9.i.i = getelementptr i8, ptr %668, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i.i, i8 88) #6, !srcloc !32
  br label %if.end.i14.i.i

if.else.i12.i.i:                                  ; preds = %NVWriteVgaCrtc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i4.i.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 88) #6
  br label %if.end.i14.i.i

if.end.i14.i.i:                                   ; preds = %if.else.i12.i.i, %if.then.i10.i.i
  %669 = ptrtoint ptr %map.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %map.i5.i.i, align 8
  %tobool12.not.i13.i.i = icmp eq ptr %670, null
  br i1 %tobool12.not.i13.i.i, label %if.else27.i.i866.i, label %if.then19.i16.i.i, !prof !30

if.then19.i16.i.i:                                ; preds = %if.end.i14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i15.i.i = getelementptr i8, ptr %670, i32 %add29.i.i.i
  %671 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i15.i.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i863.i = zext i8 %671 to i32
  br label %NVReadVgaCrtc5758.exit.i

if.else27.i.i866.i:                               ; preds = %if.end.i14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i865.i = call i32 @nvif_object_rd(ptr noundef %device1.i4.i.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %NVReadVgaCrtc5758.exit.i

NVReadVgaCrtc5758.exit.i:                         ; preds = %if.else27.i.i866.i, %if.then19.i16.i.i
  %_data.0.i.i867.i = phi i32 [ %conv26.i.i863.i, %if.then19.i16.i.i ], [ %call31.i.i865.i, %if.else27.i.i866.i ]
  %conv34.i.i868.i = trunc i32 %_data.0.i.i867.i to i8
  %arrayidx63.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 2, i32 %i.0977.i
  %672 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %672)
  store i8 %conv34.i.i868.i, ptr %arrayidx63.i, align 1
  %inc.i151 = add nuw nsw i32 %i.0977.i, 1
  %exitcond.not.i152 = icmp eq i32 %inc.i151, 16
  br i1 %exitcond.not.i152, label %for.end.i153, label %NVReadVgaCrtc5758.exit.i.for.body.i150_crit_edge

NVReadVgaCrtc5758.exit.i.for.body.i150_crit_edge: ; preds = %NVReadVgaCrtc5758.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i150

for.end.i153:                                     ; preds = %NVReadVgaCrtc5758.exit.i
  %673 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i870.i = getelementptr inbounds %struct.nouveau_drm, ptr %674, i32 0, i32 2, i32 3
  %map.i.i871.i = getelementptr inbounds %struct.nouveau_drm, ptr %674, i32 0, i32 2, i32 3, i32 0, i32 6
  %675 = ptrtoint ptr %map.i.i871.i to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %map.i.i871.i, align 8
  %tobool.not.i.i872.i = icmp eq ptr %676, null
  br i1 %tobool.not.i.i872.i, label %if.else.i.i878.i, label %if.then.i.i876.i, !prof !30

if.then.i.i876.i:                                 ; preds = %for.end.i153
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i875.i = getelementptr i8, ptr %676, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i875.i, i8 89) #6, !srcloc !32
  br label %if.end.i.i881.i

if.else.i.i878.i:                                 ; preds = %for.end.i153
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i870.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 89) #6
  br label %if.end.i.i881.i

if.end.i.i881.i:                                  ; preds = %if.else.i.i878.i, %if.then.i.i876.i
  %677 = ptrtoint ptr %map.i.i871.i to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %map.i.i871.i, align 8
  %tobool12.not.i.i879.i = icmp eq ptr %678, null
  br i1 %tobool12.not.i.i879.i, label %if.else27.i.i887.i, label %if.then19.i.i884.i, !prof !30

if.then19.i.i884.i:                               ; preds = %if.end.i.i881.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i882.i = getelementptr i8, ptr %678, i32 %add29.i.i.i
  %679 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i882.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i883.i = zext i8 %679 to i32
  br label %rd_cio_state.exit891.i

if.else27.i.i887.i:                               ; preds = %if.end.i.i881.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i886.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i870.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit891.i

rd_cio_state.exit891.i:                           ; preds = %if.else27.i.i887.i, %if.then19.i.i884.i
  %_data.0.i.i888.i = phi i32 [ %conv26.i.i883.i, %if.then19.i.i884.i ], [ %call31.i.i886.i, %if.else27.i.i887.i ]
  %conv34.i.i889.i = trunc i32 %_data.0.i.i888.i to i8
  %arrayidx.i890.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 89
  %680 = ptrtoint ptr %arrayidx.i890.i to i32
  call void @__asan_store1_noabort(i32 %680)
  store i8 %conv34.i.i889.i, ptr %arrayidx.i890.i, align 1
  %681 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i893.i = getelementptr inbounds %struct.nouveau_drm, ptr %682, i32 0, i32 2, i32 3
  %map.i.i894.i = getelementptr inbounds %struct.nouveau_drm, ptr %682, i32 0, i32 2, i32 3, i32 0, i32 6
  %683 = ptrtoint ptr %map.i.i894.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load ptr, ptr %map.i.i894.i, align 8
  %tobool.not.i.i895.i = icmp eq ptr %684, null
  br i1 %tobool.not.i.i895.i, label %if.else.i.i901.i, label %if.then.i.i899.i, !prof !30

if.then.i.i899.i:                                 ; preds = %rd_cio_state.exit891.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i898.i = getelementptr i8, ptr %684, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i898.i, i8 91) #6, !srcloc !32
  br label %if.end.i.i904.i

if.else.i.i901.i:                                 ; preds = %rd_cio_state.exit891.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i893.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 91) #6
  br label %if.end.i.i904.i

if.end.i.i904.i:                                  ; preds = %if.else.i.i901.i, %if.then.i.i899.i
  %685 = ptrtoint ptr %map.i.i894.i to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %map.i.i894.i, align 8
  %tobool12.not.i.i902.i = icmp eq ptr %686, null
  br i1 %tobool12.not.i.i902.i, label %if.else27.i.i910.i, label %if.then19.i.i907.i, !prof !30

if.then19.i.i907.i:                               ; preds = %if.end.i.i904.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i905.i = getelementptr i8, ptr %686, i32 %add29.i.i.i
  %687 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i905.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i906.i = zext i8 %687 to i32
  br label %rd_cio_state.exit914.i

if.else27.i.i910.i:                               ; preds = %if.end.i.i904.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i909.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i893.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit914.i

rd_cio_state.exit914.i:                           ; preds = %if.else27.i.i910.i, %if.then19.i.i907.i
  %_data.0.i.i911.i = phi i32 [ %conv26.i.i906.i, %if.then19.i.i907.i ], [ %call31.i.i909.i, %if.else27.i.i910.i ]
  %conv34.i.i912.i = trunc i32 %_data.0.i.i911.i to i8
  %arrayidx.i913.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 91
  %688 = ptrtoint ptr %arrayidx.i913.i to i32
  call void @__asan_store1_noabort(i32 %688)
  store i8 %conv34.i.i912.i, ptr %arrayidx.i913.i, align 1
  %689 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %689)
  %690 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i916.i = getelementptr inbounds %struct.nouveau_drm, ptr %690, i32 0, i32 2, i32 3
  %map.i.i917.i = getelementptr inbounds %struct.nouveau_drm, ptr %690, i32 0, i32 2, i32 3, i32 0, i32 6
  %691 = ptrtoint ptr %map.i.i917.i to i32
  call void @__asan_load4_noabort(i32 %691)
  %692 = load ptr, ptr %map.i.i917.i, align 8
  %tobool.not.i.i918.i = icmp eq ptr %692, null
  br i1 %tobool.not.i.i918.i, label %if.else.i.i924.i, label %if.then.i.i922.i, !prof !30

if.then.i.i922.i:                                 ; preds = %rd_cio_state.exit914.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i921.i = getelementptr i8, ptr %692, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i921.i, i8 -123) #6, !srcloc !32
  br label %if.end.i.i927.i

if.else.i.i924.i:                                 ; preds = %rd_cio_state.exit914.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i916.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 133) #6
  br label %if.end.i.i927.i

if.end.i.i927.i:                                  ; preds = %if.else.i.i924.i, %if.then.i.i922.i
  %693 = ptrtoint ptr %map.i.i917.i to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load ptr, ptr %map.i.i917.i, align 8
  %tobool12.not.i.i925.i = icmp eq ptr %694, null
  br i1 %tobool12.not.i.i925.i, label %if.else27.i.i933.i, label %if.then19.i.i930.i, !prof !30

if.then19.i.i930.i:                               ; preds = %if.end.i.i927.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i928.i = getelementptr i8, ptr %694, i32 %add29.i.i.i
  %695 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i928.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i929.i = zext i8 %695 to i32
  br label %rd_cio_state.exit937.i

if.else27.i.i933.i:                               ; preds = %if.end.i.i927.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i932.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i916.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit937.i

rd_cio_state.exit937.i:                           ; preds = %if.else27.i.i933.i, %if.then19.i.i930.i
  %_data.0.i.i934.i = phi i32 [ %conv26.i.i929.i, %if.then19.i.i930.i ], [ %call31.i.i932.i, %if.else27.i.i933.i ]
  %conv34.i.i935.i = trunc i32 %_data.0.i.i934.i to i8
  %arrayidx.i936.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 133
  %696 = ptrtoint ptr %arrayidx.i936.i to i32
  call void @__asan_store1_noabort(i32 %696)
  store i8 %conv34.i.i935.i, ptr %arrayidx.i936.i, align 1
  %697 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %dev_private.i, align 4
  %device1.i.i939.i = getelementptr inbounds %struct.nouveau_drm, ptr %698, i32 0, i32 2, i32 3
  %map.i.i940.i = getelementptr inbounds %struct.nouveau_drm, ptr %698, i32 0, i32 2, i32 3, i32 0, i32 6
  %699 = ptrtoint ptr %map.i.i940.i to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %map.i.i940.i, align 8
  %tobool.not.i.i941.i = icmp eq ptr %700, null
  br i1 %tobool.not.i.i941.i, label %if.else.i.i947.i, label %if.then.i.i945.i, !prof !30

if.then.i.i945.i:                                 ; preds = %rd_cio_state.exit937.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i944.i = getelementptr i8, ptr %700, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i944.i, i8 -122) #6, !srcloc !32
  br label %if.end.i.i950.i

if.else.i.i947.i:                                 ; preds = %rd_cio_state.exit937.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i939.i, i32 noundef 1, i64 noundef %conv.i.i.i, i32 noundef 134) #6
  br label %if.end.i.i950.i

if.end.i.i950.i:                                  ; preds = %if.else.i.i947.i, %if.then.i.i945.i
  %701 = ptrtoint ptr %map.i.i940.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load ptr, ptr %map.i.i940.i, align 8
  %tobool12.not.i.i948.i = icmp eq ptr %702, null
  br i1 %tobool12.not.i.i948.i, label %if.else27.i.i956.i, label %if.then19.i.i953.i, !prof !30

if.then19.i.i953.i:                               ; preds = %if.end.i.i950.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i951.i = getelementptr i8, ptr %702, i32 %add29.i.i.i
  %703 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i.i951.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i.i952.i = zext i8 %703 to i32
  br label %rd_cio_state.exit960.i

if.else27.i.i956.i:                               ; preds = %if.end.i.i950.i
  call void @__sanitizer_cov_trace_pc() #8
  %call31.i.i955.i = call i32 @nvif_object_rd(ptr noundef %device1.i.i939.i, i32 noundef 1, i64 noundef %conv30.i.i.i) #6
  br label %rd_cio_state.exit960.i

rd_cio_state.exit960.i:                           ; preds = %if.else27.i.i956.i, %if.then19.i.i953.i
  %_data.0.i.i957.i = phi i32 [ %conv26.i.i952.i, %if.then19.i.i953.i ], [ %call31.i.i955.i, %if.else27.i.i956.i ]
  %conv34.i.i958.i = trunc i32 %_data.0.i.i957.i to i8
  %arrayidx.i959.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 1, i32 134
  %704 = ptrtoint ptr %arrayidx.i959.i to i32
  call void @__asan_store1_noabort(i32 %704)
  store i8 %conv34.i.i958.i, ptr %arrayidx.i959.i, align 1
  br label %if.end64.i

if.end64.i:                                       ; preds = %rd_cio_state.exit960.i, %if.end56.i.if.end64.i_crit_edge
  %705 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %705)
  %706 = load ptr, ptr %dev_private.i, align 4
  %spec.select.i963.i = select i1 %tobool.not.i15, i32 6293504, i32 6301696
  %map.i964.i = getelementptr inbounds %struct.nouveau_drm, ptr %706, i32 0, i32 2, i32 3, i32 0, i32 6
  %707 = ptrtoint ptr %map.i964.i to i32
  call void @__asan_load4_noabort(i32 %707)
  %708 = load ptr, ptr %map.i964.i, align 8
  %tobool2.not.i965.i = icmp eq ptr %708, null
  br i1 %tobool2.not.i965.i, label %if.else.i971.i, label %if.then5.i967.i, !prof !30

if.then5.i967.i:                                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i966.i = getelementptr i8, ptr %708, i32 %spec.select.i963.i
  %709 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i966.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %nv_save_state_ext.exit

if.else.i971.i:                                   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i968.i = getelementptr inbounds %struct.nouveau_drm, ptr %706, i32 0, i32 2, i32 3
  %conv.i969.i = zext i32 %spec.select.i963.i to i64
  %call10.i970.i = call i32 @nvif_object_rd(ptr noundef %device1.i968.i, i32 noundef 4, i64 noundef %conv.i969.i) #6
  br label %nv_save_state_ext.exit

nv_save_state_ext.exit:                           ; preds = %if.else.i971.i, %if.then5.i967.i
  %_data.0.i972.i = phi i32 [ %709, %if.then5.i967.i ], [ %call10.i970.i, %if.else.i971.i ]
  %fb_start.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 7
  %710 = ptrtoint ptr %fb_start.i to i32
  call void @__asan_store4_noabort(i32 %710)
  store i32 %_data.0.i972.i, ptr %fb_start.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_hw_load_state(ptr noundef readonly %dev, i32 noundef %head, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %_wait.i = alloca %struct.nvif_timer_wait, align 8
  %_wait316.i = alloca %struct.nvif_timer_wait, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @NVVgaProtect(ptr noundef %dev, i32 noundef %head, i1 noundef zeroext true)
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 5
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 4
  %device1.i = getelementptr inbounds %struct.anon.196, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device1.i, align 8
  %clk2.i = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 43
  %6 = ptrtoint ptr %clk2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head)
  %tobool.not.i = icmp eq i32 %head, 0
  %cond.i = select i1 %tobool.not.i, i32 6817032, i32 6817056
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 4
  %8 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp ugt i8 %9, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %nv10_cursync.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 15
  %10 = ptrtoint ptr %nv10_cursync.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nv10_cursync.i, align 4
  %spec.select.i.i = select i1 %tobool.not.i, i32 6816772, i32 6824964
  %map.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map.i.i, align 8
  %tobool2.not.i.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i.i, label %if.else.i.i, label %do.body.i.i, !prof !30

do.body.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %spec.select.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %11) #6, !srcloc !43
  br label %if.end.i

if.else.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %conv.i.i = zext i32 %spec.select.i.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i.i, i32 noundef 4, i64 noundef %conv.i.i, i32 noundef %11) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i.i, %do.body.i.i, %entry.if.end.i_crit_edge
  %pll_prog.i = getelementptr inbounds %struct.nvkm_clk, ptr %7, i32 0, i32 22
  %16 = ptrtoint ptr %pll_prog.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pll_prog.i, align 4
  %pllvals.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 16
  %call6.i = tail call i32 %17(ptr noundef %7, i32 noundef %cond.i, ptr noundef %pllvals.i) #6
  %pllsel.i = getelementptr inbounds %struct.nv04_mode_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %pllsel.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pllsel.i, align 4
  %20 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_private.i.i, align 4
  %map.i190.i = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 2, i32 3, i32 0, i32 6
  %22 = ptrtoint ptr %map.i190.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i190.i, align 8
  %tobool2.not.i191.i = icmp eq ptr %23, null
  br i1 %tobool2.not.i191.i, label %if.else.i195.i, label %do.body.i193.i, !prof !30

do.body.i193.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %map.i190.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map.i190.i, align 8
  %add.ptr.i192.i = getelementptr i8, ptr %25, i32 6817036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i192.i, i32 %19) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit196.i

if.else.i195.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i194.i = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i194.i, i32 noundef 4, i64 noundef 6817036, i32 noundef %19) #6
  br label %NVWriteRAMDAC.exit196.i

NVWriteRAMDAC.exit196.i:                          ; preds = %if.else.i195.i, %do.body.i193.i
  %26 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_private.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %28 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i = getelementptr i8, ptr %29, i32 -102
  %30 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %device.i.i, align 2
  %32 = and i16 %31, 4080
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3, i32 1, i32 4
  %33 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %34)
  %cmp.i.i = icmp ugt i8 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %32)
  %cmp5.not.i.i = icmp ne i16 %32, 256
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp5.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %32)
  %cmp8.not.i.i = icmp ne i16 %32, 336
  %or.cond21.i.i = select i1 %or.cond.i.i, i1 %cmp8.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %32)
  %cmp11.not.i.i = icmp ne i16 %32, 416
  %or.cond22.i.i = select i1 %or.cond21.i.i, i1 %cmp11.not.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %32)
  %cmp14.not.i.i = icmp ne i16 %32, 512
  %or.cond23.i.i = select i1 %or.cond22.i.i, i1 %cmp14.not.i.i, i1 false
  br i1 %or.cond23.i.i, label %if.then8.i, label %NVWriteRAMDAC.exit196.i.if.end9.i_crit_edge

NVWriteRAMDAC.exit196.i.if.end9.i_crit_edge:      ; preds = %NVWriteRAMDAC.exit196.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.then8.i:                                       ; preds = %NVWriteRAMDAC.exit196.i
  %sel_clk.i = getelementptr inbounds %struct.nv04_mode_state, ptr %state, i32 0, i32 2
  %35 = ptrtoint ptr %sel_clk.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sel_clk.i, align 4
  %map.i199.i = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3, i32 0, i32 6
  %37 = ptrtoint ptr %map.i199.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i199.i, align 8
  %tobool2.not.i200.i = icmp eq ptr %38, null
  br i1 %tobool2.not.i200.i, label %if.else.i204.i, label %do.body.i202.i, !prof !30

do.body.i202.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %map.i199.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map.i199.i, align 8
  %add.ptr.i201.i = getelementptr i8, ptr %40, i32 6817060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201.i, i32 %36) #6, !srcloc !43
  br label %if.end9.i

if.else.i204.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i203.i = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %device1.i203.i, i32 noundef 4, i64 noundef 6817060, i32 noundef %36) #6
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i204.i, %do.body.i202.i, %NVWriteRAMDAC.exit196.i.if.end9.i_crit_edge
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 1, i32 2
  %41 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %42)
  %cmp14.i = icmp eq i16 %42, 17
  br i1 %cmp14.i, label %if.then16.i, label %if.end9.i.if.end17.i_crit_edge

if.end9.i.if.end17.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.end9.i
  %dither.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 30
  %43 = ptrtoint ptr %dither.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dither.i, align 4
  %45 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i208.i = select i1 %tobool.not.i, i32 6817064, i32 6825256
  %map.i209.i = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3, i32 0, i32 6
  %47 = ptrtoint ptr %map.i209.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i209.i, align 8
  %tobool2.not.i210.i = icmp eq ptr %48, null
  br i1 %tobool2.not.i210.i, label %if.else.i215.i, label %do.body.i212.i, !prof !30

do.body.i212.i:                                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %map.i209.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i209.i, align 8
  %add.ptr.i211.i = getelementptr i8, ptr %50, i32 %spec.select.i208.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i211.i, i32 %44) #6, !srcloc !43
  br label %if.end17.i

if.else.i215.i:                                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i213.i = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 2, i32 3
  %conv.i214.i = zext i32 %spec.select.i208.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i213.i, i32 noundef 4, i64 noundef %conv.i214.i, i32 noundef %44) #6
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i215.i, %do.body.i212.i, %if.end9.i.if.end17.i_crit_edge
  %ramdac_gen_ctrl.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 17
  %51 = ptrtoint ptr %ramdac_gen_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ramdac_gen_ctrl.i, align 4
  %53 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i219.i = select i1 %tobool.not.i, i32 6817280, i32 6825472
  %map.i220.i = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 2, i32 3, i32 0, i32 6
  %55 = ptrtoint ptr %map.i220.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map.i220.i, align 8
  %tobool2.not.i221.i = icmp eq ptr %56, null
  br i1 %tobool2.not.i221.i, label %if.else.i226.i, label %do.body.i223.i, !prof !30

do.body.i223.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %57 = ptrtoint ptr %map.i220.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map.i220.i, align 8
  %add.ptr.i222.i = getelementptr i8, ptr %58, i32 %spec.select.i219.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222.i, i32 %52) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit227.i

if.else.i226.i:                                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i224.i = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 2, i32 3
  %conv.i225.i = zext i32 %spec.select.i219.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i224.i, i32 noundef 4, i64 noundef %conv.i225.i, i32 noundef %52) #6
  br label %NVWriteRAMDAC.exit227.i

NVWriteRAMDAC.exit227.i:                          ; preds = %if.else.i226.i, %do.body.i223.i
  %59 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_private.i.i, align 4
  %61 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i.i = getelementptr i8, ptr %62, i32 -102
  %63 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %device.i.i.i, align 2
  %65 = and i16 %64, 4080
  %family.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3, i32 1, i32 4
  %66 = ptrtoint ptr %family.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %family.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %67)
  %cmp.i.i.i = icmp ugt i8 %67, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %65)
  %cmp5.not.i.i.i = icmp ne i16 %65, 256
  %or.cond.i.i.i = select i1 %cmp.i.i.i, i1 %cmp5.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %65)
  %cmp8.not.i.i.i = icmp ne i16 %65, 336
  %or.cond21.i.i.i = select i1 %or.cond.i.i.i, i1 %cmp8.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %65)
  %cmp11.not.i.i.i = icmp ne i16 %65, 416
  %or.cond22.i.i.i = select i1 %or.cond21.i.i.i, i1 %cmp11.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %65)
  %cmp14.not.i.i.i = icmp ne i16 %65, 512
  %or.cond23.i.i.i = select i1 %or.cond22.i.i.i, i1 %cmp14.not.i.i.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %65)
  %cmp.i228.i = icmp ne i16 %65, 272
  %spec.select.i229.i = select i1 %or.cond23.i.i.i, i1 %cmp.i228.i, i1 false
  br i1 %spec.select.i229.i, label %if.then19.i, label %NVWriteRAMDAC.exit227.i.if.end20.i_crit_edge

NVWriteRAMDAC.exit227.i.if.end20.i_crit_edge:     ; preds = %NVWriteRAMDAC.exit227.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then19.i:                                      ; preds = %NVWriteRAMDAC.exit227.i
  %ramdac_630.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 18
  %68 = ptrtoint ptr %ramdac_630.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ramdac_630.i, align 4
  %spec.select.i232.i = select i1 %tobool.not.i, i32 6817328, i32 6825520
  %map.i233.i = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3, i32 0, i32 6
  %70 = ptrtoint ptr %map.i233.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %map.i233.i, align 8
  %tobool2.not.i234.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i234.i, label %if.else.i239.i, label %do.body.i236.i, !prof !30

do.body.i236.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %map.i233.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %map.i233.i, align 8
  %add.ptr.i235.i = getelementptr i8, ptr %73, i32 %spec.select.i232.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i235.i, i32 %69) #6, !srcloc !43
  br label %if.end20.i

if.else.i239.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i237.i = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3
  %conv.i238.i = zext i32 %spec.select.i232.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i237.i, i32 noundef 4, i64 noundef %conv.i238.i, i32 noundef %69) #6
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i239.i, %do.body.i236.i, %NVWriteRAMDAC.exit227.i.if.end20.i_crit_edge
  %74 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 47, i16 %75)
  %cmp26.i = icmp ugt i16 %75, 47
  br i1 %cmp26.i, label %if.then28.i, label %if.end20.i.if.end29.i_crit_edge

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end20.i
  %ramdac_634.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 19
  %76 = ptrtoint ptr %ramdac_634.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ramdac_634.i, align 4
  %78 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i243.i = select i1 %tobool.not.i, i32 6817332, i32 6825524
  %map.i244.i = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 2, i32 3, i32 0, i32 6
  %80 = ptrtoint ptr %map.i244.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %map.i244.i, align 8
  %tobool2.not.i245.i = icmp eq ptr %81, null
  br i1 %tobool2.not.i245.i, label %if.else.i250.i, label %do.body.i247.i, !prof !30

do.body.i247.i:                                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %map.i244.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map.i244.i, align 8
  %add.ptr.i246.i = getelementptr i8, ptr %83, i32 %spec.select.i243.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246.i, i32 %77) #6, !srcloc !43
  br label %if.end29.i

if.else.i250.i:                                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i248.i = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 2, i32 3
  %conv.i249.i = zext i32 %spec.select.i243.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i248.i, i32 noundef 4, i64 noundef %conv.i249.i, i32 noundef %77) #6
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else.i250.i, %do.body.i247.i, %if.end20.i.if.end29.i_crit_edge
  %tv_setup.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 20
  %84 = ptrtoint ptr %tv_setup.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tv_setup.i, align 4
  %86 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i254.i = select i1 %tobool.not.i, i32 6817536, i32 6825728
  %map.i255.i = getelementptr inbounds %struct.nouveau_drm, ptr %87, i32 0, i32 2, i32 3, i32 0, i32 6
  %88 = ptrtoint ptr %map.i255.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map.i255.i, align 8
  %tobool2.not.i256.i = icmp eq ptr %89, null
  br i1 %tobool2.not.i256.i, label %if.else.i261.i, label %do.body.i258.i, !prof !30

do.body.i258.i:                                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %map.i255.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %map.i255.i, align 8
  %add.ptr.i257.i = getelementptr i8, ptr %91, i32 %spec.select.i254.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257.i, i32 %85) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit262.i

if.else.i261.i:                                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i259.i = getelementptr inbounds %struct.nouveau_drm, ptr %87, i32 0, i32 2, i32 3
  %conv.i260.i = zext i32 %spec.select.i254.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i259.i, i32 noundef 4, i64 noundef %conv.i260.i, i32 noundef %85) #6
  br label %NVWriteRAMDAC.exit262.i

NVWriteRAMDAC.exit262.i:                          ; preds = %if.else.i261.i, %do.body.i258.i
  %tv_vtotal.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 21
  %92 = ptrtoint ptr %tv_vtotal.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tv_vtotal.i, align 4
  %94 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i265.i = select i1 %tobool.not.i, i32 6817568, i32 6825760
  %map.i266.i = getelementptr inbounds %struct.nouveau_drm, ptr %95, i32 0, i32 2, i32 3, i32 0, i32 6
  %96 = ptrtoint ptr %map.i266.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %map.i266.i, align 8
  %tobool2.not.i267.i = icmp eq ptr %97, null
  br i1 %tobool2.not.i267.i, label %if.else.i272.i, label %do.body.i269.i, !prof !30

do.body.i269.i:                                   ; preds = %NVWriteRAMDAC.exit262.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %map.i266.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %map.i266.i, align 8
  %add.ptr.i268.i = getelementptr i8, ptr %99, i32 %spec.select.i265.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i268.i, i32 %93) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit273.i

if.else.i272.i:                                   ; preds = %NVWriteRAMDAC.exit262.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i270.i = getelementptr inbounds %struct.nouveau_drm, ptr %95, i32 0, i32 2, i32 3
  %conv.i271.i = zext i32 %spec.select.i265.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i270.i, i32 noundef 4, i64 noundef %conv.i271.i, i32 noundef %93) #6
  br label %NVWriteRAMDAC.exit273.i

NVWriteRAMDAC.exit273.i:                          ; preds = %if.else.i272.i, %do.body.i269.i
  %tv_vskew.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 22
  %100 = ptrtoint ptr %tv_vskew.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %tv_vskew.i, align 4
  %102 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i276.i = select i1 %tobool.not.i, i32 6817572, i32 6825764
  %map.i277.i = getelementptr inbounds %struct.nouveau_drm, ptr %103, i32 0, i32 2, i32 3, i32 0, i32 6
  %104 = ptrtoint ptr %map.i277.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %map.i277.i, align 8
  %tobool2.not.i278.i = icmp eq ptr %105, null
  br i1 %tobool2.not.i278.i, label %if.else.i283.i, label %do.body.i280.i, !prof !30

do.body.i280.i:                                   ; preds = %NVWriteRAMDAC.exit273.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %map.i277.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %map.i277.i, align 8
  %add.ptr.i279.i = getelementptr i8, ptr %107, i32 %spec.select.i276.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279.i, i32 %101) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit284.i

if.else.i283.i:                                   ; preds = %NVWriteRAMDAC.exit273.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i281.i = getelementptr inbounds %struct.nouveau_drm, ptr %103, i32 0, i32 2, i32 3
  %conv.i282.i = zext i32 %spec.select.i276.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i281.i, i32 noundef 4, i64 noundef %conv.i282.i, i32 noundef %101) #6
  br label %NVWriteRAMDAC.exit284.i

NVWriteRAMDAC.exit284.i:                          ; preds = %if.else.i283.i, %do.body.i280.i
  %tv_vsync_delay.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 23
  %108 = ptrtoint ptr %tv_vsync_delay.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tv_vsync_delay.i, align 4
  %110 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i287.i = select i1 %tobool.not.i, i32 6817576, i32 6825768
  %map.i288.i = getelementptr inbounds %struct.nouveau_drm, ptr %111, i32 0, i32 2, i32 3, i32 0, i32 6
  %112 = ptrtoint ptr %map.i288.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %map.i288.i, align 8
  %tobool2.not.i289.i = icmp eq ptr %113, null
  br i1 %tobool2.not.i289.i, label %if.else.i294.i, label %do.body.i291.i, !prof !30

do.body.i291.i:                                   ; preds = %NVWriteRAMDAC.exit284.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %114 = ptrtoint ptr %map.i288.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %map.i288.i, align 8
  %add.ptr.i290.i = getelementptr i8, ptr %115, i32 %spec.select.i287.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i290.i, i32 %109) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit295.i

if.else.i294.i:                                   ; preds = %NVWriteRAMDAC.exit284.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i292.i = getelementptr inbounds %struct.nouveau_drm, ptr %111, i32 0, i32 2, i32 3
  %conv.i293.i = zext i32 %spec.select.i287.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i292.i, i32 noundef 4, i64 noundef %conv.i293.i, i32 noundef %109) #6
  br label %NVWriteRAMDAC.exit295.i

NVWriteRAMDAC.exit295.i:                          ; preds = %if.else.i294.i, %do.body.i291.i
  %tv_htotal.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 24
  %116 = ptrtoint ptr %tv_htotal.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tv_htotal.i, align 4
  %118 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i298.i = select i1 %tobool.not.i, i32 6817580, i32 6825772
  %map.i299.i = getelementptr inbounds %struct.nouveau_drm, ptr %119, i32 0, i32 2, i32 3, i32 0, i32 6
  %120 = ptrtoint ptr %map.i299.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %map.i299.i, align 8
  %tobool2.not.i300.i = icmp eq ptr %121, null
  br i1 %tobool2.not.i300.i, label %if.else.i305.i, label %do.body.i302.i, !prof !30

do.body.i302.i:                                   ; preds = %NVWriteRAMDAC.exit295.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %122 = ptrtoint ptr %map.i299.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %map.i299.i, align 8
  %add.ptr.i301.i = getelementptr i8, ptr %123, i32 %spec.select.i298.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301.i, i32 %117) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit306.i

if.else.i305.i:                                   ; preds = %NVWriteRAMDAC.exit295.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i303.i = getelementptr inbounds %struct.nouveau_drm, ptr %119, i32 0, i32 2, i32 3
  %conv.i304.i = zext i32 %spec.select.i298.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i303.i, i32 noundef 4, i64 noundef %conv.i304.i, i32 noundef %117) #6
  br label %NVWriteRAMDAC.exit306.i

NVWriteRAMDAC.exit306.i:                          ; preds = %if.else.i305.i, %do.body.i302.i
  %tv_hskew.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 25
  %124 = ptrtoint ptr %tv_hskew.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tv_hskew.i, align 4
  %126 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i309.i = select i1 %tobool.not.i, i32 6817584, i32 6825776
  %map.i310.i = getelementptr inbounds %struct.nouveau_drm, ptr %127, i32 0, i32 2, i32 3, i32 0, i32 6
  %128 = ptrtoint ptr %map.i310.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %map.i310.i, align 8
  %tobool2.not.i311.i = icmp eq ptr %129, null
  br i1 %tobool2.not.i311.i, label %if.else.i316.i, label %do.body.i313.i, !prof !30

do.body.i313.i:                                   ; preds = %NVWriteRAMDAC.exit306.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %130 = ptrtoint ptr %map.i310.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %map.i310.i, align 8
  %add.ptr.i312.i = getelementptr i8, ptr %131, i32 %spec.select.i309.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i312.i, i32 %125) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit317.i

if.else.i316.i:                                   ; preds = %NVWriteRAMDAC.exit306.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i314.i = getelementptr inbounds %struct.nouveau_drm, ptr %127, i32 0, i32 2, i32 3
  %conv.i315.i = zext i32 %spec.select.i309.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i314.i, i32 noundef 4, i64 noundef %conv.i315.i, i32 noundef %125) #6
  br label %NVWriteRAMDAC.exit317.i

NVWriteRAMDAC.exit317.i:                          ; preds = %if.else.i316.i, %do.body.i313.i
  %tv_hsync_delay.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 26
  %132 = ptrtoint ptr %tv_hsync_delay.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tv_hsync_delay.i, align 4
  %134 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i320.i = select i1 %tobool.not.i, i32 6817588, i32 6825780
  %map.i321.i = getelementptr inbounds %struct.nouveau_drm, ptr %135, i32 0, i32 2, i32 3, i32 0, i32 6
  %136 = ptrtoint ptr %map.i321.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %map.i321.i, align 8
  %tobool2.not.i322.i = icmp eq ptr %137, null
  br i1 %tobool2.not.i322.i, label %if.else.i327.i, label %do.body.i324.i, !prof !30

do.body.i324.i:                                   ; preds = %NVWriteRAMDAC.exit317.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %138 = ptrtoint ptr %map.i321.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %map.i321.i, align 8
  %add.ptr.i323.i = getelementptr i8, ptr %139, i32 %spec.select.i320.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i323.i, i32 %133) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit328.i

if.else.i327.i:                                   ; preds = %NVWriteRAMDAC.exit317.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i325.i = getelementptr inbounds %struct.nouveau_drm, ptr %135, i32 0, i32 2, i32 3
  %conv.i326.i = zext i32 %spec.select.i320.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i325.i, i32 noundef 4, i64 noundef %conv.i326.i, i32 noundef %133) #6
  br label %NVWriteRAMDAC.exit328.i

NVWriteRAMDAC.exit328.i:                          ; preds = %if.else.i327.i, %do.body.i324.i
  %tv_hsync_delay2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 27
  %140 = ptrtoint ptr %tv_hsync_delay2.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %tv_hsync_delay2.i, align 4
  %142 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i331.i = select i1 %tobool.not.i, i32 6817592, i32 6825784
  %map.i332.i = getelementptr inbounds %struct.nouveau_drm, ptr %143, i32 0, i32 2, i32 3, i32 0, i32 6
  %144 = ptrtoint ptr %map.i332.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %map.i332.i, align 8
  %tobool2.not.i333.i = icmp eq ptr %145, null
  br i1 %tobool2.not.i333.i, label %if.else.i338.i, label %do.body.i335.i, !prof !30

do.body.i335.i:                                   ; preds = %NVWriteRAMDAC.exit328.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %map.i332.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %map.i332.i, align 8
  %add.ptr.i334.i = getelementptr i8, ptr %147, i32 %spec.select.i331.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i334.i, i32 %141) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit339.i

if.else.i338.i:                                   ; preds = %NVWriteRAMDAC.exit328.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i336.i = getelementptr inbounds %struct.nouveau_drm, ptr %143, i32 0, i32 2, i32 3
  %conv.i337.i = zext i32 %spec.select.i331.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i336.i, i32 noundef 4, i64 noundef %conv.i337.i, i32 noundef %141) #6
  br label %NVWriteRAMDAC.exit339.i

NVWriteRAMDAC.exit339.i:                          ; preds = %if.else.i338.i, %do.body.i335.i
  %spec.select.i342.v.i = select i1 %tobool.not.i, i32 6817792, i32 6825984
  %spec.select.i354.v.i = select i1 %tobool.not.i, i32 6817824, i32 6826016
  br label %for.body.i

for.body.i:                                       ; preds = %NVWriteRAMDAC.exit362.i.for.body.i_crit_edge, %NVWriteRAMDAC.exit339.i
  %i.0539.i = phi i32 [ 0, %NVWriteRAMDAC.exit339.i ], [ %inc.i, %NVWriteRAMDAC.exit362.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %i.0539.i, 2
  %arrayidx32.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 29, i32 %i.0539.i
  %148 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx32.i, align 4
  %150 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i342.i = add nuw nsw i32 %mul.i, %spec.select.i342.v.i
  %map.i343.i = getelementptr inbounds %struct.nouveau_drm, ptr %151, i32 0, i32 2, i32 3, i32 0, i32 6
  %152 = ptrtoint ptr %map.i343.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %map.i343.i, align 8
  %tobool2.not.i344.i = icmp eq ptr %153, null
  br i1 %tobool2.not.i344.i, label %if.else.i349.i, label %do.body.i346.i, !prof !30

do.body.i346.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %154 = ptrtoint ptr %map.i343.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %map.i343.i, align 8
  %add.ptr.i345.i = getelementptr i8, ptr %155, i32 %spec.select.i342.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i345.i, i32 %149) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit350.i

if.else.i349.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i347.i = getelementptr inbounds %struct.nouveau_drm, ptr %151, i32 0, i32 2, i32 3
  %conv.i348.i = zext i32 %spec.select.i342.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i347.i, i32 noundef 4, i64 noundef %conv.i348.i, i32 noundef %149) #6
  br label %NVWriteRAMDAC.exit350.i

NVWriteRAMDAC.exit350.i:                          ; preds = %if.else.i349.i, %do.body.i346.i
  %arrayidx34.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 28, i32 %i.0539.i
  %156 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx34.i, align 4
  %158 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i354.i = add nuw nsw i32 %mul.i, %spec.select.i354.v.i
  %map.i355.i = getelementptr inbounds %struct.nouveau_drm, ptr %159, i32 0, i32 2, i32 3, i32 0, i32 6
  %160 = ptrtoint ptr %map.i355.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %map.i355.i, align 8
  %tobool2.not.i356.i = icmp eq ptr %161, null
  br i1 %tobool2.not.i356.i, label %if.else.i361.i, label %do.body.i358.i, !prof !30

do.body.i358.i:                                   ; preds = %NVWriteRAMDAC.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %162 = ptrtoint ptr %map.i355.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %map.i355.i, align 8
  %add.ptr.i357.i = getelementptr i8, ptr %163, i32 %spec.select.i354.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i357.i, i32 %157) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit362.i

if.else.i361.i:                                   ; preds = %NVWriteRAMDAC.exit350.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i359.i = getelementptr inbounds %struct.nouveau_drm, ptr %159, i32 0, i32 2, i32 3
  %conv.i360.i = zext i32 %spec.select.i354.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i359.i, i32 noundef 4, i64 noundef %conv.i360.i, i32 noundef %157) #6
  br label %NVWriteRAMDAC.exit362.i

NVWriteRAMDAC.exit362.i:                          ; preds = %if.else.i361.i, %do.body.i358.i
  %inc.i = add nuw nsw i32 %i.0539.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.end.i, label %NVWriteRAMDAC.exit362.i.for.body.i_crit_edge

NVWriteRAMDAC.exit362.i.for.body.i_crit_edge:     ; preds = %NVWriteRAMDAC.exit362.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %NVWriteRAMDAC.exit362.i
  %164 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev_private.i.i, align 4
  %166 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i365.i = getelementptr i8, ptr %167, i32 -102
  %168 = ptrtoint ptr %device.i.i365.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %device.i.i365.i, align 2
  %170 = and i16 %169, 4080
  %family.i.i366.i = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 3, i32 1, i32 4
  %171 = ptrtoint ptr %family.i.i366.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %family.i.i366.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %172)
  %cmp.i.i367.i = icmp ugt i8 %172, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %170)
  %cmp5.not.i.i368.i = icmp ne i16 %170, 256
  %or.cond.i.i369.i = select i1 %cmp.i.i367.i, i1 %cmp5.not.i.i368.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %170)
  %cmp8.not.i.i370.i = icmp ne i16 %170, 336
  %or.cond21.i.i371.i = select i1 %or.cond.i.i369.i, i1 %cmp8.not.i.i370.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %170)
  %cmp11.not.i.i372.i = icmp ne i16 %170, 416
  %or.cond22.i.i373.i = select i1 %or.cond21.i.i371.i, i1 %cmp11.not.i.i372.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %170)
  %cmp14.not.i.i374.i = icmp ne i16 %170, 512
  %or.cond23.i.i375.i = select i1 %or.cond22.i.i373.i, i1 %cmp14.not.i.i374.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %170)
  %cmp.i376.i = icmp ne i16 %170, 272
  %spec.select.i377.i = select i1 %or.cond23.i.i375.i, i1 %cmp.i376.i, i1 false
  br i1 %spec.select.i377.i, label %if.then36.i, label %for.end.i.if.end53.i_crit_edge

for.end.i.if.end53.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then36.i:                                      ; preds = %for.end.i
  %dither37.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 30
  %173 = ptrtoint ptr %dither37.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %dither37.i, align 4
  %spec.select.i380.i = select i1 %tobool.not.i, i32 6817852, i32 6826044
  %map.i381.i = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 3, i32 0, i32 6
  %175 = ptrtoint ptr %map.i381.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %map.i381.i, align 8
  %tobool2.not.i382.i = icmp eq ptr %176, null
  br i1 %tobool2.not.i382.i, label %if.else.i387.i, label %do.body.i384.i, !prof !30

do.body.i384.i:                                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %177 = ptrtoint ptr %map.i381.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %map.i381.i, align 8
  %add.ptr.i383.i = getelementptr i8, ptr %178, i32 %spec.select.i380.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i383.i, i32 %174) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit388.i

if.else.i387.i:                                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i385.i = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 3
  %conv.i386.i = zext i32 %spec.select.i380.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i385.i, i32 noundef 4, i64 noundef %conv.i386.i, i32 noundef %174) #6
  br label %NVWriteRAMDAC.exit388.i

NVWriteRAMDAC.exit388.i:                          ; preds = %if.else.i387.i, %do.body.i384.i
  %spec.select.i392.v.i = select i1 %tobool.not.i, i32 6817872, i32 6826064
  %spec.select.i404.v.i = select i1 %tobool.not.i, i32 6817884, i32 6826076
  br label %for.body41.i

for.body41.i:                                     ; preds = %NVWriteRAMDAC.exit412.i.for.body41.i_crit_edge, %NVWriteRAMDAC.exit388.i
  %i.1540.i = phi i32 [ 0, %NVWriteRAMDAC.exit388.i ], [ %inc51.i, %NVWriteRAMDAC.exit412.i.for.body41.i_crit_edge ]
  %mul42.i = shl i32 %i.1540.i, 2
  %arrayidx44.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 32, i32 %i.1540.i
  %179 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx44.i, align 4
  %181 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i392.i = add nuw nsw i32 %mul42.i, %spec.select.i392.v.i
  %map.i393.i = getelementptr inbounds %struct.nouveau_drm, ptr %182, i32 0, i32 2, i32 3, i32 0, i32 6
  %183 = ptrtoint ptr %map.i393.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %map.i393.i, align 8
  %tobool2.not.i394.i = icmp eq ptr %184, null
  br i1 %tobool2.not.i394.i, label %if.else.i399.i, label %do.body.i396.i, !prof !30

do.body.i396.i:                                   ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %185 = ptrtoint ptr %map.i393.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %map.i393.i, align 8
  %add.ptr.i395.i = getelementptr i8, ptr %186, i32 %spec.select.i392.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i395.i, i32 %180) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit400.i

if.else.i399.i:                                   ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i397.i = getelementptr inbounds %struct.nouveau_drm, ptr %182, i32 0, i32 2, i32 3
  %conv.i398.i = zext i32 %spec.select.i392.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i397.i, i32 noundef 4, i64 noundef %conv.i398.i, i32 noundef %180) #6
  br label %NVWriteRAMDAC.exit400.i

NVWriteRAMDAC.exit400.i:                          ; preds = %if.else.i399.i, %do.body.i396.i
  %add48.i = add nuw nsw i32 %i.1540.i, 3
  %arrayidx49.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 32, i32 %add48.i
  %187 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx49.i, align 4
  %189 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i404.i = add nuw nsw i32 %mul42.i, %spec.select.i404.v.i
  %map.i405.i = getelementptr inbounds %struct.nouveau_drm, ptr %190, i32 0, i32 2, i32 3, i32 0, i32 6
  %191 = ptrtoint ptr %map.i405.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %map.i405.i, align 8
  %tobool2.not.i406.i = icmp eq ptr %192, null
  br i1 %tobool2.not.i406.i, label %if.else.i411.i, label %do.body.i408.i, !prof !30

do.body.i408.i:                                   ; preds = %NVWriteRAMDAC.exit400.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %193 = ptrtoint ptr %map.i405.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %map.i405.i, align 8
  %add.ptr.i407.i = getelementptr i8, ptr %194, i32 %spec.select.i404.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i407.i, i32 %188) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit412.i

if.else.i411.i:                                   ; preds = %NVWriteRAMDAC.exit400.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i409.i = getelementptr inbounds %struct.nouveau_drm, ptr %190, i32 0, i32 2, i32 3
  %conv.i410.i = zext i32 %spec.select.i404.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i409.i, i32 noundef 4, i64 noundef %conv.i410.i, i32 noundef %188) #6
  br label %NVWriteRAMDAC.exit412.i

NVWriteRAMDAC.exit412.i:                          ; preds = %if.else.i411.i, %do.body.i408.i
  %inc51.i = add nuw nsw i32 %i.1540.i, 1
  %exitcond542.not.i = icmp eq i32 %inc51.i, 3
  br i1 %exitcond542.not.i, label %NVWriteRAMDAC.exit412.i.if.end53.i_crit_edge, label %NVWriteRAMDAC.exit412.i.for.body41.i_crit_edge

NVWriteRAMDAC.exit412.i.for.body41.i_crit_edge:   ; preds = %NVWriteRAMDAC.exit412.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body41.i

NVWriteRAMDAC.exit412.i.if.end53.i_crit_edge:     ; preds = %NVWriteRAMDAC.exit412.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.end53.i:                                       ; preds = %NVWriteRAMDAC.exit412.i.if.end53.i_crit_edge, %for.end.i.if.end53.i_crit_edge
  %fp_control.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 31
  %195 = ptrtoint ptr %fp_control.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %fp_control.i, align 4
  %197 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i415.i = select i1 %tobool.not.i, i32 6817864, i32 6826056
  %map.i416.i = getelementptr inbounds %struct.nouveau_drm, ptr %198, i32 0, i32 2, i32 3, i32 0, i32 6
  %199 = ptrtoint ptr %map.i416.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %map.i416.i, align 8
  %tobool2.not.i417.i = icmp eq ptr %200, null
  br i1 %tobool2.not.i417.i, label %if.else.i422.i, label %do.body.i419.i, !prof !30

do.body.i419.i:                                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %201 = ptrtoint ptr %map.i416.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %map.i416.i, align 8
  %add.ptr.i418.i = getelementptr i8, ptr %202, i32 %spec.select.i415.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i418.i, i32 %196) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit423.i

if.else.i422.i:                                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i420.i = getelementptr inbounds %struct.nouveau_drm, ptr %198, i32 0, i32 2, i32 3
  %conv.i421.i = zext i32 %spec.select.i415.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i420.i, i32 noundef 4, i64 noundef %conv.i421.i, i32 noundef %196) #6
  br label %NVWriteRAMDAC.exit423.i

NVWriteRAMDAC.exit423.i:                          ; preds = %if.else.i422.i, %do.body.i419.i
  %fp_debug_0.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 33
  %203 = ptrtoint ptr %fp_debug_0.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %fp_debug_0.i, align 4
  %205 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i426.i = select i1 %tobool.not.i, i32 6817920, i32 6826112
  %map.i427.i = getelementptr inbounds %struct.nouveau_drm, ptr %206, i32 0, i32 2, i32 3, i32 0, i32 6
  %207 = ptrtoint ptr %map.i427.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %map.i427.i, align 8
  %tobool2.not.i428.i = icmp eq ptr %208, null
  br i1 %tobool2.not.i428.i, label %if.else.i433.i, label %do.body.i430.i, !prof !30

do.body.i430.i:                                   ; preds = %NVWriteRAMDAC.exit423.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %209 = ptrtoint ptr %map.i427.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %map.i427.i, align 8
  %add.ptr.i429.i = getelementptr i8, ptr %210, i32 %spec.select.i426.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i429.i, i32 %204) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit434.i

if.else.i433.i:                                   ; preds = %NVWriteRAMDAC.exit423.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i431.i = getelementptr inbounds %struct.nouveau_drm, ptr %206, i32 0, i32 2, i32 3
  %conv.i432.i = zext i32 %spec.select.i426.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i431.i, i32 noundef 4, i64 noundef %conv.i432.i, i32 noundef %204) #6
  br label %NVWriteRAMDAC.exit434.i

NVWriteRAMDAC.exit434.i:                          ; preds = %if.else.i433.i, %do.body.i430.i
  %fp_debug_1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 34
  %211 = ptrtoint ptr %fp_debug_1.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %fp_debug_1.i, align 4
  %213 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i437.i = select i1 %tobool.not.i, i32 6817924, i32 6826116
  %map.i438.i = getelementptr inbounds %struct.nouveau_drm, ptr %214, i32 0, i32 2, i32 3, i32 0, i32 6
  %215 = ptrtoint ptr %map.i438.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %map.i438.i, align 8
  %tobool2.not.i439.i = icmp eq ptr %216, null
  br i1 %tobool2.not.i439.i, label %if.else.i444.i, label %do.body.i441.i, !prof !30

do.body.i441.i:                                   ; preds = %NVWriteRAMDAC.exit434.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %217 = ptrtoint ptr %map.i438.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %map.i438.i, align 8
  %add.ptr.i440.i = getelementptr i8, ptr %218, i32 %spec.select.i437.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i440.i, i32 %212) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit445.i

if.else.i444.i:                                   ; preds = %NVWriteRAMDAC.exit434.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i442.i = getelementptr inbounds %struct.nouveau_drm, ptr %214, i32 0, i32 2, i32 3
  %conv.i443.i = zext i32 %spec.select.i437.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i442.i, i32 noundef 4, i64 noundef %conv.i443.i, i32 noundef %212) #6
  br label %NVWriteRAMDAC.exit445.i

NVWriteRAMDAC.exit445.i:                          ; preds = %if.else.i444.i, %do.body.i441.i
  %fp_debug_2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 35
  %219 = ptrtoint ptr %fp_debug_2.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %fp_debug_2.i, align 4
  %221 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i448.i = select i1 %tobool.not.i, i32 6817928, i32 6826120
  %map.i449.i = getelementptr inbounds %struct.nouveau_drm, ptr %222, i32 0, i32 2, i32 3, i32 0, i32 6
  %223 = ptrtoint ptr %map.i449.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %map.i449.i, align 8
  %tobool2.not.i450.i = icmp eq ptr %224, null
  br i1 %tobool2.not.i450.i, label %if.else.i455.i, label %do.body.i452.i, !prof !30

do.body.i452.i:                                   ; preds = %NVWriteRAMDAC.exit445.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %225 = ptrtoint ptr %map.i449.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %map.i449.i, align 8
  %add.ptr.i451.i = getelementptr i8, ptr %226, i32 %spec.select.i448.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i451.i, i32 %220) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit456.i

if.else.i455.i:                                   ; preds = %NVWriteRAMDAC.exit445.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i453.i = getelementptr inbounds %struct.nouveau_drm, ptr %222, i32 0, i32 2, i32 3
  %conv.i454.i = zext i32 %spec.select.i448.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i453.i, i32 noundef 4, i64 noundef %conv.i454.i, i32 noundef %220) #6
  br label %NVWriteRAMDAC.exit456.i

NVWriteRAMDAC.exit456.i:                          ; preds = %if.else.i455.i, %do.body.i452.i
  %fp_margin_color.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 36
  %227 = ptrtoint ptr %fp_margin_color.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %fp_margin_color.i, align 4
  %229 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i459.i = select i1 %tobool.not.i, i32 6817868, i32 6826060
  %map.i460.i = getelementptr inbounds %struct.nouveau_drm, ptr %230, i32 0, i32 2, i32 3, i32 0, i32 6
  %231 = ptrtoint ptr %map.i460.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %map.i460.i, align 8
  %tobool2.not.i461.i = icmp eq ptr %232, null
  br i1 %tobool2.not.i461.i, label %if.else.i466.i, label %do.body.i463.i, !prof !30

do.body.i463.i:                                   ; preds = %NVWriteRAMDAC.exit456.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %233 = ptrtoint ptr %map.i460.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %map.i460.i, align 8
  %add.ptr.i462.i = getelementptr i8, ptr %234, i32 %spec.select.i459.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i462.i, i32 %228) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit467.i

if.else.i466.i:                                   ; preds = %NVWriteRAMDAC.exit456.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i464.i = getelementptr inbounds %struct.nouveau_drm, ptr %230, i32 0, i32 2, i32 3
  %conv.i465.i = zext i32 %spec.select.i459.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i464.i, i32 noundef 4, i64 noundef %conv.i465.i, i32 noundef %228) #6
  br label %NVWriteRAMDAC.exit467.i

NVWriteRAMDAC.exit467.i:                          ; preds = %if.else.i466.i, %do.body.i463.i
  %235 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev_private.i.i, align 4
  %237 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i470.i = getelementptr i8, ptr %238, i32 -102
  %239 = ptrtoint ptr %device.i.i470.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %device.i.i470.i, align 2
  %241 = and i16 %240, 4080
  %family.i.i471.i = getelementptr inbounds %struct.nouveau_drm, ptr %236, i32 0, i32 2, i32 3, i32 1, i32 4
  %242 = ptrtoint ptr %family.i.i471.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %family.i.i471.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %243)
  %cmp.i.i472.i = icmp ugt i8 %243, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %241)
  %cmp5.not.i.i473.i = icmp ne i16 %241, 256
  %or.cond.i.i474.i = select i1 %cmp.i.i472.i, i1 %cmp5.not.i.i473.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %241)
  %cmp8.not.i.i475.i = icmp ne i16 %241, 336
  %or.cond21.i.i476.i = select i1 %or.cond.i.i474.i, i1 %cmp8.not.i.i475.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %241)
  %cmp11.not.i.i477.i = icmp ne i16 %241, 416
  %or.cond22.i.i478.i = select i1 %or.cond21.i.i476.i, i1 %cmp11.not.i.i477.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %241)
  %cmp14.not.i.i479.i = icmp ne i16 %241, 512
  %or.cond23.i.i480.i = select i1 %or.cond22.i.i478.i, i1 %cmp14.not.i.i479.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %241)
  %cmp.i481.i = icmp ne i16 %241, 272
  %spec.select.i482.i = select i1 %or.cond23.i.i480.i, i1 %cmp.i481.i, i1 false
  br i1 %spec.select.i482.i, label %if.then55.i, label %NVWriteRAMDAC.exit467.i.if.end56.i_crit_edge

NVWriteRAMDAC.exit467.i.if.end56.i_crit_edge:     ; preds = %NVWriteRAMDAC.exit467.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then55.i:                                      ; preds = %NVWriteRAMDAC.exit467.i
  %ramdac_8c0.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 37
  %244 = ptrtoint ptr %ramdac_8c0.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %ramdac_8c0.i, align 4
  %spec.select.i485.i = select i1 %tobool.not.i, i32 6817984, i32 6826176
  %map.i486.i = getelementptr inbounds %struct.nouveau_drm, ptr %236, i32 0, i32 2, i32 3, i32 0, i32 6
  %246 = ptrtoint ptr %map.i486.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %map.i486.i, align 8
  %tobool2.not.i487.i = icmp eq ptr %247, null
  br i1 %tobool2.not.i487.i, label %if.else.i492.i, label %do.body.i489.i, !prof !30

do.body.i489.i:                                   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %248 = ptrtoint ptr %map.i486.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %map.i486.i, align 8
  %add.ptr.i488.i = getelementptr i8, ptr %249, i32 %spec.select.i485.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i488.i, i32 %245) #6, !srcloc !43
  br label %if.end56.i

if.else.i492.i:                                   ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i490.i = getelementptr inbounds %struct.nouveau_drm, ptr %236, i32 0, i32 2, i32 3
  %conv.i491.i = zext i32 %spec.select.i485.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i490.i, i32 noundef 4, i64 noundef %conv.i491.i, i32 noundef %245) #6
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i492.i, %do.body.i489.i, %NVWriteRAMDAC.exit467.i.if.end56.i_crit_edge
  %250 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %251)
  %cmp62.i = icmp eq i8 %251, 5
  br i1 %cmp62.i, label %if.then64.i, label %if.end56.i.nv_load_state_ramdac.exit_crit_edge

if.end56.i.nv_load_state_ramdac.exit_crit_edge:   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv_load_state_ramdac.exit

if.then64.i:                                      ; preds = %if.end56.i
  %ramdac_a20.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 38
  %252 = ptrtoint ptr %ramdac_a20.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %ramdac_a20.i, align 4
  %254 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i496.i = select i1 %tobool.not.i, i32 6818336, i32 6826528
  %map.i497.i = getelementptr inbounds %struct.nouveau_drm, ptr %255, i32 0, i32 2, i32 3, i32 0, i32 6
  %256 = ptrtoint ptr %map.i497.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %map.i497.i, align 8
  %tobool2.not.i498.i = icmp eq ptr %257, null
  br i1 %tobool2.not.i498.i, label %if.else.i503.i, label %do.body.i500.i, !prof !30

do.body.i500.i:                                   ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %258 = ptrtoint ptr %map.i497.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %map.i497.i, align 8
  %add.ptr.i499.i = getelementptr i8, ptr %259, i32 %spec.select.i496.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i499.i, i32 %253) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit504.i

if.else.i503.i:                                   ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i501.i = getelementptr inbounds %struct.nouveau_drm, ptr %255, i32 0, i32 2, i32 3
  %conv.i502.i = zext i32 %spec.select.i496.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i501.i, i32 noundef 4, i64 noundef %conv.i502.i, i32 noundef %253) #6
  br label %NVWriteRAMDAC.exit504.i

NVWriteRAMDAC.exit504.i:                          ; preds = %if.else.i503.i, %do.body.i500.i
  %ramdac_a24.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 39
  %260 = ptrtoint ptr %ramdac_a24.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %ramdac_a24.i, align 4
  %262 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i507.i = select i1 %tobool.not.i, i32 6818340, i32 6826532
  %map.i508.i = getelementptr inbounds %struct.nouveau_drm, ptr %263, i32 0, i32 2, i32 3, i32 0, i32 6
  %264 = ptrtoint ptr %map.i508.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %map.i508.i, align 8
  %tobool2.not.i509.i = icmp eq ptr %265, null
  br i1 %tobool2.not.i509.i, label %if.else.i514.i, label %do.body.i511.i, !prof !30

do.body.i511.i:                                   ; preds = %NVWriteRAMDAC.exit504.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %266 = ptrtoint ptr %map.i508.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %map.i508.i, align 8
  %add.ptr.i510.i = getelementptr i8, ptr %267, i32 %spec.select.i507.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i510.i, i32 %261) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit515.i

if.else.i514.i:                                   ; preds = %NVWriteRAMDAC.exit504.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i512.i = getelementptr inbounds %struct.nouveau_drm, ptr %263, i32 0, i32 2, i32 3
  %conv.i513.i = zext i32 %spec.select.i507.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i512.i, i32 noundef 4, i64 noundef %conv.i513.i, i32 noundef %261) #6
  br label %NVWriteRAMDAC.exit515.i

NVWriteRAMDAC.exit515.i:                          ; preds = %if.else.i514.i, %do.body.i511.i
  %ramdac_a34.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 40
  %268 = ptrtoint ptr %ramdac_a34.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %ramdac_a34.i, align 4
  %270 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i518.i = select i1 %tobool.not.i, i32 6818356, i32 6826548
  %map.i519.i = getelementptr inbounds %struct.nouveau_drm, ptr %271, i32 0, i32 2, i32 3, i32 0, i32 6
  %272 = ptrtoint ptr %map.i519.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %map.i519.i, align 8
  %tobool2.not.i520.i = icmp eq ptr %273, null
  br i1 %tobool2.not.i520.i, label %if.else.i525.i, label %do.body.i522.i, !prof !30

do.body.i522.i:                                   ; preds = %NVWriteRAMDAC.exit515.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %274 = ptrtoint ptr %map.i519.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %map.i519.i, align 8
  %add.ptr.i521.i = getelementptr i8, ptr %275, i32 %spec.select.i518.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i521.i, i32 %269) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit526.i

if.else.i525.i:                                   ; preds = %NVWriteRAMDAC.exit515.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i523.i = getelementptr inbounds %struct.nouveau_drm, ptr %271, i32 0, i32 2, i32 3
  %conv.i524.i = zext i32 %spec.select.i518.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i523.i, i32 noundef 4, i64 noundef %conv.i524.i, i32 noundef %269) #6
  br label %NVWriteRAMDAC.exit526.i

NVWriteRAMDAC.exit526.i:                          ; preds = %if.else.i525.i, %do.body.i522.i
  %spec.select.i530.v.i = select i1 %tobool.not.i, i32 6818816, i32 6827008
  br label %for.body68.i

for.body68.i:                                     ; preds = %NVWriteRAMDAC.exit538.i.for.body68.i_crit_edge, %NVWriteRAMDAC.exit526.i
  %i.2541.i = phi i32 [ 0, %NVWriteRAMDAC.exit526.i ], [ %inc73.i, %NVWriteRAMDAC.exit538.i.for.body68.i_crit_edge ]
  %mul69.i = shl i32 %i.2541.i, 2
  %arrayidx71.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 41, i32 %i.2541.i
  %276 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx71.i, align 4
  %278 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i530.i = add nuw nsw i32 %mul69.i, %spec.select.i530.v.i
  %map.i531.i = getelementptr inbounds %struct.nouveau_drm, ptr %279, i32 0, i32 2, i32 3, i32 0, i32 6
  %280 = ptrtoint ptr %map.i531.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %map.i531.i, align 8
  %tobool2.not.i532.i = icmp eq ptr %281, null
  br i1 %tobool2.not.i532.i, label %if.else.i537.i, label %do.body.i534.i, !prof !30

do.body.i534.i:                                   ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %282 = ptrtoint ptr %map.i531.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %map.i531.i, align 8
  %add.ptr.i533.i = getelementptr i8, ptr %283, i32 %spec.select.i530.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i533.i, i32 %277) #6, !srcloc !43
  br label %NVWriteRAMDAC.exit538.i

if.else.i537.i:                                   ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i535.i = getelementptr inbounds %struct.nouveau_drm, ptr %279, i32 0, i32 2, i32 3
  %conv.i536.i = zext i32 %spec.select.i530.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i535.i, i32 noundef 4, i64 noundef %conv.i536.i, i32 noundef %277) #6
  br label %NVWriteRAMDAC.exit538.i

NVWriteRAMDAC.exit538.i:                          ; preds = %if.else.i537.i, %do.body.i534.i
  %inc73.i = add nuw nsw i32 %i.2541.i, 1
  %exitcond543.not.i = icmp eq i32 %inc73.i, 38
  br i1 %exitcond543.not.i, label %NVWriteRAMDAC.exit538.i.nv_load_state_ramdac.exit_crit_edge, label %NVWriteRAMDAC.exit538.i.for.body68.i_crit_edge

NVWriteRAMDAC.exit538.i.for.body68.i_crit_edge:   ; preds = %NVWriteRAMDAC.exit538.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body68.i

NVWriteRAMDAC.exit538.i.nv_load_state_ramdac.exit_crit_edge: ; preds = %NVWriteRAMDAC.exit538.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nv_load_state_ramdac.exit

nv_load_state_ramdac.exit:                        ; preds = %NVWriteRAMDAC.exit538.i.nv_load_state_ramdac.exit_crit_edge, %if.end56.i.nv_load_state_ramdac.exit_crit_edge
  %284 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i15 = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3
  %arrayidx.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head
  %family.i16 = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 4
  %286 = ptrtoint ptr %family.i16 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %family.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %287)
  %cmp.i17 = icmp ugt i8 %287, 1
  br i1 %cmp.i17, label %if.then.i20, label %nv_load_state_ramdac.exit.if.end235.i_crit_edge

nv_load_state_ramdac.exit.if.end235.i_crit_edge:  ; preds = %nv_load_state_ramdac.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235.i

if.then.i20:                                      ; preds = %nv_load_state_ramdac.exit
  %288 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i19 = getelementptr i8, ptr %289, i32 -102
  %290 = ptrtoint ptr %device.i.i19 to i32
  call void @__asan_load2_noabort(i32 %290)
  %291 = load i16, ptr %device.i.i19, align 2
  %292 = trunc i16 %291 to i12
  %trunc.i = and i12 %292, -16
  %293 = zext i12 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %293, ptr @__sancov_gen_cov_switch_values.17)
  switch i12 %trunc.i, label %if.then6.i [
    i12 512, label %if.then.i20.if.end.i29_crit_edge
    i12 416, label %if.then.i20.if.end.i29_crit_edge62
    i12 336, label %if.then.i20.if.end.i29_crit_edge63
    i12 256, label %if.then.i20.if.end.i29_crit_edge64
  ]

if.then.i20.if.end.i29_crit_edge64:               ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29

if.then.i20.if.end.i29_crit_edge63:               ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29

if.then.i20.if.end.i29_crit_edge62:               ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29

if.then.i20.if.end.i29_crit_edge:                 ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29

if.then6.i:                                       ; preds = %if.then.i20
  %crtc_eng_ctrl.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 14
  %294 = ptrtoint ptr %crtc_eng_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %crtc_eng_ctrl.i, align 4
  %spec.select.i.i21 = select i1 %tobool.not.i, i32 6293600, i32 6301792
  %map.i.i22 = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 0, i32 6
  %296 = ptrtoint ptr %map.i.i22 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %map.i.i22, align 8
  %tobool2.not.i.i23 = icmp eq ptr %297, null
  br i1 %tobool2.not.i.i23, label %if.else.i.i27, label %do.body.i.i25, !prof !30

do.body.i.i25:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %298 = ptrtoint ptr %map.i.i22 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %map.i.i22, align 8
  %add.ptr.i.i24 = getelementptr i8, ptr %299, i32 %spec.select.i.i21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 %295) #6, !srcloc !43
  br label %if.end.i29

if.else.i.i27:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i26 = zext i32 %spec.select.i.i21 to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef %conv.i.i26, i32 noundef %295) #6
  br label %if.end.i29

if.end.i29:                                       ; preds = %if.else.i.i27, %do.body.i.i25, %if.then.i20.if.end.i29_crit_edge, %if.then.i20.if.end.i29_crit_edge62, %if.then.i20.if.end.i29_crit_edge63, %if.then.i20.if.end.i29_crit_edge64
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 0, i32 6
  %300 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %map.i, align 8
  %tobool.not.i28 = icmp eq ptr %301, null
  br i1 %tobool.not.i28, label %if.else.i, label %do.body.i, !prof !30

do.body.i:                                        ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %302 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %map.i, align 8
  %add.ptr.i = getelementptr i8, ptr %303, i32 34564
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #6, !srcloc !43
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 34564, i32 noundef 1) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %do.body.i
  %304 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %map.i, align 8
  %tobool16.not.i = icmp eq ptr %305, null
  br i1 %tobool16.not.i, label %if.else30.i, label %do.body24.i, !prof !30

do.body24.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %306 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %map.i, align 8
  %add.ptr29.i = getelementptr i8, ptr %307, i32 33088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 0) #6, !srcloc !43
  br label %if.end31.i

if.else30.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 33088, i32 noundef 0) #6
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.else30.i, %do.body24.i
  %308 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %map.i, align 8
  %tobool35.not.i = icmp eq ptr %309, null
  br i1 %tobool35.not.i, label %if.else49.i, label %do.body43.i, !prof !30

do.body43.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  tail call void @arm_heavy_mb() #6
  %310 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %map.i, align 8
  %add.ptr48.i = getelementptr i8, ptr %311, i32 35104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 0) #6, !srcloc !43
  br label %if.end50.i

if.else49.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 35104, i32 noundef 0) #6
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.else49.i, %do.body43.i
  %312 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %map.i, align 8
  %tobool54.not.i = icmp eq ptr %313, null
  br i1 %tobool54.not.i, label %if.else68.i, label %do.body62.i, !prof !30

do.body62.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %314 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %map.i, align 8
  %add.ptr67.i = getelementptr i8, ptr %315, i32 35108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67.i, i32 0) #6, !srcloc !43
  br label %if.end69.i

if.else68.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 35108, i32 noundef 0) #6
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else68.i, %do.body62.i
  %316 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %map.i, align 8
  %tobool73.not.i = icmp eq ptr %317, null
  br i1 %tobool73.not.i, label %if.else91.i, label %do.body81.i, !prof !30

do.body81.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %ram_size.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 6
  %318 = ptrtoint ptr %ram_size.i to i32
  call void @__asan_load8_noabort(i32 %318)
  %319 = load i64, ptr %ram_size.i, align 8
  %320 = trunc i64 %319 to i32
  %conv87.i = add i32 %320, -1
  %321 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %map.i, align 8
  %add.ptr90.i = getelementptr i8, ptr %322, i32 35080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.i, i32 %conv87.i) #6, !srcloc !43
  br label %if.end98.i

if.else91.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #8
  %ram_size95.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 6
  %323 = ptrtoint ptr %ram_size95.i to i32
  call void @__asan_load8_noabort(i32 %323)
  %324 = load i64, ptr %ram_size95.i, align 8
  %325 = trunc i64 %324 to i32
  %conv97.i = add i32 %325, -1
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 35080, i32 noundef %conv97.i) #6
  br label %if.end98.i

if.end98.i:                                       ; preds = %if.else91.i, %do.body81.i
  %326 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %map.i, align 8
  %tobool102.not.i = icmp eq ptr %327, null
  br i1 %tobool102.not.i, label %if.else122.i, label %do.body110.i, !prof !30

do.body110.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %ram_size116.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 6
  %328 = ptrtoint ptr %ram_size116.i to i32
  call void @__asan_load8_noabort(i32 %328)
  %329 = load i64, ptr %ram_size116.i, align 8
  %330 = trunc i64 %329 to i32
  %conv118.i = add i32 %330, -1
  %331 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %map.i, align 8
  %add.ptr121.i = getelementptr i8, ptr %332, i32 35084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121.i, i32 %conv118.i) #6, !srcloc !43
  br label %if.end129.i

if.else122.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #8
  %ram_size126.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 6
  %333 = ptrtoint ptr %ram_size126.i to i32
  call void @__asan_load8_noabort(i32 %333)
  %334 = load i64, ptr %ram_size126.i, align 8
  %335 = trunc i64 %334 to i32
  %conv128.i = add i32 %335, -1
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 35084, i32 noundef %conv128.i) #6
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.else122.i, %do.body110.i
  %336 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %map.i, align 8
  %tobool133.not.i = icmp eq ptr %337, null
  br i1 %tobool133.not.i, label %if.else153.i, label %do.body141.i, !prof !30

do.body141.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %ram_size147.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 6
  %338 = ptrtoint ptr %ram_size147.i to i32
  call void @__asan_load8_noabort(i32 %338)
  %339 = load i64, ptr %ram_size147.i, align 8
  %340 = trunc i64 %339 to i32
  %conv149.i = add i32 %340, -1
  %341 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %map.i, align 8
  %add.ptr152.i = getelementptr i8, ptr %342, i32 34824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152.i, i32 %conv149.i) #6, !srcloc !43
  br label %if.end160.i

if.else153.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #8
  %ram_size157.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 6
  %343 = ptrtoint ptr %ram_size157.i to i32
  call void @__asan_load8_noabort(i32 %343)
  %344 = load i64, ptr %ram_size157.i, align 8
  %345 = trunc i64 %344 to i32
  %conv159.i = add i32 %345, -1
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 34824, i32 noundef %conv159.i) #6
  br label %if.end160.i

if.end160.i:                                      ; preds = %if.else153.i, %do.body141.i
  %346 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %map.i, align 8
  %tobool164.not.i = icmp eq ptr %347, null
  br i1 %tobool164.not.i, label %if.else184.i, label %do.body172.i, !prof !30

do.body172.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %ram_size178.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 6
  %348 = ptrtoint ptr %ram_size178.i to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %ram_size178.i, align 8
  %350 = trunc i64 %349 to i32
  %conv180.i = add i32 %350, -1
  %351 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %map.i, align 8
  %add.ptr183.i = getelementptr i8, ptr %352, i32 34828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183.i, i32 %conv180.i) #6, !srcloc !43
  br label %if.end191.i

if.else184.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #8
  %ram_size188.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 6
  %353 = ptrtoint ptr %ram_size188.i to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %ram_size188.i, align 8
  %355 = trunc i64 %354 to i32
  %conv190.i = add i32 %355, -1
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 34828, i32 noundef %conv190.i) #6
  br label %if.end191.i

if.end191.i:                                      ; preds = %if.else184.i, %do.body172.i
  %356 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %map.i, align 8
  %tobool195.not.i = icmp eq ptr %357, null
  br i1 %tobool195.not.i, label %if.else209.i, label %do.body203.i, !prof !30

do.body203.i:                                     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %358 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %map.i, align 8
  %add.ptr208.i = getelementptr i8, ptr %359, i32 5512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208.i, i32 0) #6, !srcloc !43
  br label %if.end210.i

if.else209.i:                                     ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @nvif_object_wr(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 5512, i32 noundef 0) #6
  br label %if.end210.i

if.end210.i:                                      ; preds = %if.else209.i, %do.body203.i
  %cursor_cfg.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 9
  %360 = ptrtoint ptr %cursor_cfg.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %cursor_cfg.i, align 4
  %362 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i542.i = select i1 %tobool.not.i, i32 6293520, i32 6301712
  %map.i543.i = getelementptr inbounds %struct.nouveau_drm, ptr %363, i32 0, i32 2, i32 3, i32 0, i32 6
  %364 = ptrtoint ptr %map.i543.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %map.i543.i, align 8
  %tobool2.not.i544.i = icmp eq ptr %365, null
  br i1 %tobool2.not.i544.i, label %if.else.i549.i, label %do.body.i546.i, !prof !30

do.body.i546.i:                                   ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %366 = ptrtoint ptr %map.i543.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %map.i543.i, align 8
  %add.ptr.i545.i = getelementptr i8, ptr %367, i32 %spec.select.i542.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i545.i, i32 %361) #6, !srcloc !43
  br label %NVWriteCRTC.exit550.i

if.else.i549.i:                                   ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i547.i = getelementptr inbounds %struct.nouveau_drm, ptr %363, i32 0, i32 2, i32 3
  %conv.i548.i = zext i32 %spec.select.i542.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i547.i, i32 noundef 4, i64 noundef %conv.i548.i, i32 noundef %361) #6
  br label %NVWriteCRTC.exit550.i

NVWriteCRTC.exit550.i:                            ; preds = %if.else.i549.i, %do.body.i546.i
  %crtc_830.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 11
  %368 = ptrtoint ptr %crtc_830.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %crtc_830.i, align 4
  %370 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i553.i = select i1 %tobool.not.i, i32 6293552, i32 6301744
  %map.i554.i = getelementptr inbounds %struct.nouveau_drm, ptr %371, i32 0, i32 2, i32 3, i32 0, i32 6
  %372 = ptrtoint ptr %map.i554.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %map.i554.i, align 8
  %tobool2.not.i555.i = icmp eq ptr %373, null
  br i1 %tobool2.not.i555.i, label %if.else.i560.i, label %do.body.i557.i, !prof !30

do.body.i557.i:                                   ; preds = %NVWriteCRTC.exit550.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %374 = ptrtoint ptr %map.i554.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %map.i554.i, align 8
  %add.ptr.i556.i = getelementptr i8, ptr %375, i32 %spec.select.i553.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i556.i, i32 %369) #6, !srcloc !43
  br label %NVWriteCRTC.exit561.i

if.else.i560.i:                                   ; preds = %NVWriteCRTC.exit550.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i558.i = getelementptr inbounds %struct.nouveau_drm, ptr %371, i32 0, i32 2, i32 3
  %conv.i559.i = zext i32 %spec.select.i553.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i558.i, i32 noundef 4, i64 noundef %conv.i559.i, i32 noundef %369) #6
  br label %NVWriteCRTC.exit561.i

NVWriteCRTC.exit561.i:                            ; preds = %if.else.i560.i, %do.body.i557.i
  %crtc_834.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 12
  %376 = ptrtoint ptr %crtc_834.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %crtc_834.i, align 4
  %378 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i564.i = select i1 %tobool.not.i, i32 6293556, i32 6301748
  %map.i565.i = getelementptr inbounds %struct.nouveau_drm, ptr %379, i32 0, i32 2, i32 3, i32 0, i32 6
  %380 = ptrtoint ptr %map.i565.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %map.i565.i, align 8
  %tobool2.not.i566.i = icmp eq ptr %381, null
  br i1 %tobool2.not.i566.i, label %if.else.i571.i, label %do.body.i568.i, !prof !30

do.body.i568.i:                                   ; preds = %NVWriteCRTC.exit561.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %382 = ptrtoint ptr %map.i565.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %map.i565.i, align 8
  %add.ptr.i567.i = getelementptr i8, ptr %383, i32 %spec.select.i564.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i567.i, i32 %377) #6, !srcloc !43
  br label %NVWriteCRTC.exit572.i

if.else.i571.i:                                   ; preds = %NVWriteCRTC.exit561.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i569.i = getelementptr inbounds %struct.nouveau_drm, ptr %379, i32 0, i32 2, i32 3
  %conv.i570.i = zext i32 %spec.select.i564.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i569.i, i32 noundef 4, i64 noundef %conv.i570.i, i32 noundef %377) #6
  br label %NVWriteCRTC.exit572.i

NVWriteCRTC.exit572.i:                            ; preds = %if.else.i571.i, %do.body.i568.i
  %384 = ptrtoint ptr %family.i16 to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %family.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %385)
  %cmp216.i = icmp ugt i8 %385, 3
  br i1 %cmp216.i, label %if.then218.i, label %NVWriteCRTC.exit572.i.if.end235.i_crit_edge

NVWriteCRTC.exit572.i.if.end235.i_crit_edge:      ; preds = %NVWriteCRTC.exit572.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235.i

if.then218.i:                                     ; preds = %NVWriteCRTC.exit572.i
  %gpio_ext.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 10
  %386 = ptrtoint ptr %gpio_ext.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %gpio_ext.i, align 4
  %388 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i575.i = select i1 %tobool.not.i, i32 6293532, i32 6301724
  %map.i576.i = getelementptr inbounds %struct.nouveau_drm, ptr %389, i32 0, i32 2, i32 3, i32 0, i32 6
  %390 = ptrtoint ptr %map.i576.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %map.i576.i, align 8
  %tobool2.not.i577.i = icmp eq ptr %391, null
  br i1 %tobool2.not.i577.i, label %if.else.i582.i, label %do.body.i579.i, !prof !30

do.body.i579.i:                                   ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %392 = ptrtoint ptr %map.i576.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %map.i576.i, align 8
  %add.ptr.i578.i = getelementptr i8, ptr %393, i32 %spec.select.i575.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i578.i, i32 %387) #6, !srcloc !43
  br label %if.end219.i

if.else.i582.i:                                   ; preds = %if.then218.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i580.i = getelementptr inbounds %struct.nouveau_drm, ptr %389, i32 0, i32 2, i32 3
  %conv.i581.i = zext i32 %spec.select.i575.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i580.i, i32 noundef 4, i64 noundef %conv.i581.i, i32 noundef %387) #6
  br label %if.end219.i

if.end219.i:                                      ; preds = %if.else.i582.i, %do.body.i579.i
  %394 = ptrtoint ptr %family.i16 to i32
  call void @__asan_load1_noabort(i32 %394)
  %.pr.i = load i8, ptr %family.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %.pr.i)
  %cmp225.i = icmp eq i8 %.pr.i, 5
  br i1 %cmp225.i, label %if.then227.i, label %if.end219.i.if.end235.i_crit_edge

if.end219.i.if.end235.i_crit_edge:                ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end235.i

if.then227.i:                                     ; preds = %if.end219.i
  %crtc_850.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 13
  %395 = ptrtoint ptr %crtc_850.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %crtc_850.i, align 4
  %397 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i586.i = select i1 %tobool.not.i, i32 6293584, i32 6301776
  %map.i587.i = getelementptr inbounds %struct.nouveau_drm, ptr %398, i32 0, i32 2, i32 3, i32 0, i32 6
  %399 = ptrtoint ptr %map.i587.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %map.i587.i, align 8
  %tobool2.not.i588.i = icmp eq ptr %400, null
  br i1 %tobool2.not.i588.i, label %if.else.i593.i, label %do.body.i590.i, !prof !30

do.body.i590.i:                                   ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %401 = ptrtoint ptr %map.i587.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %map.i587.i, align 8
  %add.ptr.i589.i = getelementptr i8, ptr %402, i32 %spec.select.i586.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i589.i, i32 %396) #6, !srcloc !43
  br label %NVWriteCRTC.exit594.i

if.else.i593.i:                                   ; preds = %if.then227.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i591.i = getelementptr inbounds %struct.nouveau_drm, ptr %398, i32 0, i32 2, i32 3
  %conv.i592.i = zext i32 %spec.select.i586.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i591.i, i32 noundef 4, i64 noundef %conv.i592.i, i32 noundef %396) #6
  br label %NVWriteCRTC.exit594.i

NVWriteCRTC.exit594.i:                            ; preds = %if.else.i593.i, %do.body.i590.i
  %403 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i597.i = select i1 %tobool.not.i, i32 6818048, i32 6826240
  %map.i598.i = getelementptr inbounds %struct.nouveau_drm, ptr %404, i32 0, i32 2, i32 3, i32 0, i32 6
  %405 = ptrtoint ptr %map.i598.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %map.i598.i, align 8
  %tobool2.not.i599.i = icmp eq ptr %406, null
  br i1 %tobool2.not.i599.i, label %if.else.i603.i, label %if.then5.i.i, !prof !30

if.then5.i.i:                                     ; preds = %NVWriteCRTC.exit594.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i600.i = getelementptr i8, ptr %406, i32 %spec.select.i597.i
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i600.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit.i

if.else.i603.i:                                   ; preds = %NVWriteCRTC.exit594.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i601.i = getelementptr inbounds %struct.nouveau_drm, ptr %404, i32 0, i32 2, i32 3
  %conv.i602.i = zext i32 %spec.select.i597.i to i64
  %call10.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i601.i, i32 noundef 4, i64 noundef %conv.i602.i) #6
  br label %NVReadRAMDAC.exit.i

NVReadRAMDAC.exit.i:                              ; preds = %if.else.i603.i, %if.then5.i.i
  %_data.0.i.i = phi i32 [ %407, %if.then5.i.i ], [ %call10.i.i, %if.else.i603.i ]
  %crtc_cfg.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 8
  %408 = ptrtoint ptr %crtc_cfg.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %crtc_cfg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %409)
  %cmp229.i = icmp eq i32 %409, 2
  br i1 %cmp229.i, label %if.then231.i, label %if.else232.i

if.then231.i:                                     ; preds = %NVReadRAMDAC.exit.i
  %or.i = or i32 %_data.0.i.i, 65536
  %410 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %dev_private.i.i, align 4
  %map.i607.i = getelementptr inbounds %struct.nouveau_drm, ptr %411, i32 0, i32 2, i32 3, i32 0, i32 6
  %412 = ptrtoint ptr %map.i607.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %map.i607.i, align 8
  %tobool2.not.i608.i = icmp eq ptr %413, null
  br i1 %tobool2.not.i608.i, label %if.else.i613.i, label %do.body.i610.i, !prof !30

do.body.i610.i:                                   ; preds = %if.then231.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %414 = ptrtoint ptr %map.i607.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %map.i607.i, align 8
  %add.ptr.i609.i = getelementptr i8, ptr %415, i32 %spec.select.i597.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i609.i, i32 %or.i) #6, !srcloc !43
  br label %if.end235.i

if.else.i613.i:                                   ; preds = %if.then231.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i611.i = getelementptr inbounds %struct.nouveau_drm, ptr %411, i32 0, i32 2, i32 3
  %conv.i612.i = zext i32 %spec.select.i597.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i611.i, i32 noundef 4, i64 noundef %conv.i612.i, i32 noundef %or.i) #6
  br label %if.end235.i

if.else232.i:                                     ; preds = %NVReadRAMDAC.exit.i
  %and.i = and i32 %_data.0.i.i, -65537
  %416 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %dev_private.i.i, align 4
  %map.i617.i = getelementptr inbounds %struct.nouveau_drm, ptr %417, i32 0, i32 2, i32 3, i32 0, i32 6
  %418 = ptrtoint ptr %map.i617.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %map.i617.i, align 8
  %tobool2.not.i618.i = icmp eq ptr %419, null
  br i1 %tobool2.not.i618.i, label %if.else.i623.i, label %do.body.i620.i, !prof !30

do.body.i620.i:                                   ; preds = %if.else232.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %420 = ptrtoint ptr %map.i617.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %map.i617.i, align 8
  %add.ptr.i619.i = getelementptr i8, ptr %421, i32 %spec.select.i597.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i619.i, i32 %and.i) #6, !srcloc !43
  br label %if.end235.i

if.else.i623.i:                                   ; preds = %if.else232.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i621.i = getelementptr inbounds %struct.nouveau_drm, ptr %417, i32 0, i32 2, i32 3
  %conv.i622.i = zext i32 %spec.select.i597.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i621.i, i32 noundef 4, i64 noundef %conv.i622.i, i32 noundef %and.i) #6
  br label %if.end235.i

if.end235.i:                                      ; preds = %if.else.i623.i, %do.body.i620.i, %if.else.i613.i, %do.body.i610.i, %if.end219.i.if.end235.i_crit_edge, %NVWriteCRTC.exit572.i.if.end235.i_crit_edge, %nv_load_state_ramdac.exit.if.end235.i_crit_edge
  %crtc_cfg236.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 8
  %422 = ptrtoint ptr %crtc_cfg236.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load i32, ptr %crtc_cfg236.i, align 4
  %424 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i627.i = select i1 %tobool.not.i, i32 6293508, i32 6301700
  %map.i628.i = getelementptr inbounds %struct.nouveau_drm, ptr %425, i32 0, i32 2, i32 3, i32 0, i32 6
  %426 = ptrtoint ptr %map.i628.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %map.i628.i, align 8
  %tobool2.not.i629.i = icmp eq ptr %427, null
  br i1 %tobool2.not.i629.i, label %if.else.i634.i, label %do.body.i631.i, !prof !30

do.body.i631.i:                                   ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @arm_heavy_mb() #6
  %428 = ptrtoint ptr %map.i628.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %map.i628.i, align 8
  %add.ptr.i630.i = getelementptr i8, ptr %429, i32 %spec.select.i627.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i630.i, i32 %423) #6, !srcloc !43
  br label %NVWriteCRTC.exit635.i

if.else.i634.i:                                   ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i632.i = getelementptr inbounds %struct.nouveau_drm, ptr %425, i32 0, i32 2, i32 3
  %conv.i633.i = zext i32 %spec.select.i627.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i632.i, i32 noundef 4, i64 noundef %conv.i633.i, i32 noundef %423) #6
  br label %NVWriteCRTC.exit635.i

NVWriteCRTC.exit635.i:                            ; preds = %if.else.i634.i, %do.body.i631.i
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 25) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 26) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 37) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 40) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 51) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 45) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 28) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 27) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 32) #6
  %430 = ptrtoint ptr %family.i16 to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %family.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %431)
  %cmp242.i = icmp ugt i8 %431, 2
  br i1 %cmp242.i, label %if.end245.i, label %NVWriteCRTC.exit635.i.if.end254.i_crit_edge

NVWriteCRTC.exit635.i.if.end254.i_crit_edge:      ; preds = %NVWriteCRTC.exit635.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254.i

if.end245.i:                                      ; preds = %NVWriteCRTC.exit635.i
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 71) #6
  %432 = ptrtoint ptr %family.i16 to i32
  call void @__asan_load1_noabort(i32 %432)
  %.pr658.i = load i8, ptr %family.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.pr658.i)
  %cmp251.i = icmp ugt i8 %.pr658.i, 3
  br i1 %cmp251.i, label %if.then253.i, label %if.end245.i.if.end254.i_crit_edge

if.end245.i.if.end254.i_crit_edge:                ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end254.i

if.then253.i:                                     ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 159) #6
  br label %if.end254.i

if.end254.i:                                      ; preds = %if.then253.i, %if.end245.i.if.end254.i_crit_edge, %NVWriteCRTC.exit635.i.if.end254.i_crit_edge
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 73) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 48) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 49) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 47) #6
  %433 = ptrtoint ptr %family.i16 to i32
  call void @__asan_load1_noabort(i32 %433)
  %434 = load i8, ptr %family.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %434)
  %cmp260.i = icmp eq i8 %434, 5
  br i1 %cmp260.i, label %if.then262.i, label %if.end254.i.if.end263.i_crit_edge

if.end254.i.if.end263.i_crit_edge:                ; preds = %if.end254.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end263.i

if.then262.i:                                     ; preds = %if.end254.i
  %435 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i.i.i = select i1 %tobool.not.i, i32 6816512, i32 6824704
  %map.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %436, i32 0, i32 2, i32 3, i32 0, i32 6
  %437 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %map.i.i.i, align 8
  %tobool2.not.i.i.i = icmp eq ptr %438, null
  br i1 %tobool2.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.i, !prof !30

if.then5.i.i.i:                                   ; preds = %if.then262.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i = getelementptr i8, ptr %438, i32 %spec.select.i.i.i
  %439 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  br label %NVReadRAMDAC.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then262.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %436, i32 0, i32 2, i32 3
  %conv.i.i.i = zext i32 %spec.select.i.i.i to i64
  %call10.i.i.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i.i.i, i32 noundef 4, i64 noundef %conv.i.i.i) #6
  br label %NVReadRAMDAC.exit.i.i

NVReadRAMDAC.exit.i.i:                            ; preds = %if.else.i.i.i, %if.then5.i.i.i
  %_data.0.i.i.i = phi i32 [ %439, %if.then5.i.i.i ], [ %call10.i.i.i, %if.else.i.i.i ]
  %440 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %dev_private.i.i, align 4
  %map.i6.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %441, i32 0, i32 2, i32 3, i32 0, i32 6
  %442 = ptrtoint ptr %map.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %map.i6.i.i, align 8
  %tobool2.not.i7.i.i = icmp eq ptr %443, null
  br i1 %tobool2.not.i7.i.i, label %if.else.i11.i.i, label %do.body.i.i.i, !prof !30

do.body.i.i.i:                                    ; preds = %NVReadRAMDAC.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @arm_heavy_mb() #6
  %444 = ptrtoint ptr %map.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %map.i6.i.i, align 8
  %add.ptr.i8.i.i = getelementptr i8, ptr %445, i32 %spec.select.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %_data.0.i.i.i) #6, !srcloc !43
  br label %if.end263.i

if.else.i11.i.i:                                  ; preds = %NVReadRAMDAC.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i9.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %441, i32 0, i32 2, i32 3
  %conv.i10.i.i = zext i32 %spec.select.i.i.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i9.i.i, i32 noundef 4, i64 noundef %conv.i10.i.i, i32 noundef %_data.0.i.i.i) #6
  br label %if.end263.i

if.end263.i:                                      ; preds = %if.else.i11.i.i, %do.body.i.i.i, %if.end254.i.if.end263.i_crit_edge
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 57) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 59) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 60) #6
  %446 = ptrtoint ptr %family.i16 to i32
  call void @__asan_load1_noabort(i32 %446)
  %447 = load i8, ptr %family.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %447)
  %cmp269.i = icmp ugt i8 %447, 1
  br i1 %cmp269.i, label %if.then271.i, label %if.end263.i.if.end272.i_crit_edge

if.end263.i.if.end272.i_crit_edge:                ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end272.i

if.then271.i:                                     ; preds = %if.end263.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 65) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 69) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 75) #6
  tail call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 82) #6
  br label %if.end272.i

if.end272.i:                                      ; preds = %if.then271.i, %if.end263.i.if.end272.i_crit_edge
  %448 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %dev_private.i.i, align 4
  %450 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %dev1.i.i, align 4
  %device.i.i.i30 = getelementptr i8, ptr %451, i32 -102
  %452 = ptrtoint ptr %device.i.i.i30 to i32
  call void @__asan_load2_noabort(i32 %452)
  %453 = load i16, ptr %device.i.i.i30, align 2
  %454 = and i16 %453, 4080
  %family.i.i.i31 = getelementptr inbounds %struct.nouveau_drm, ptr %449, i32 0, i32 2, i32 3, i32 1, i32 4
  %455 = ptrtoint ptr %family.i.i.i31 to i32
  call void @__asan_load1_noabort(i32 %455)
  %456 = load i8, ptr %family.i.i.i31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %456)
  %cmp.i.i.i32 = icmp ugt i8 %456, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %454)
  %cmp5.not.i.i.i33 = icmp ne i16 %454, 256
  %or.cond.i.i.i34 = select i1 %cmp.i.i.i32, i1 %cmp5.not.i.i.i33, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 336, i16 %454)
  %cmp8.not.i.i.i35 = icmp ne i16 %454, 336
  %or.cond21.i.i.i36 = select i1 %or.cond.i.i.i34, i1 %cmp8.not.i.i.i35, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 416, i16 %454)
  %cmp11.not.i.i.i37 = icmp ne i16 %454, 416
  %or.cond22.i.i.i38 = select i1 %or.cond21.i.i.i36, i1 %cmp11.not.i.i.i37, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %454)
  %cmp14.not.i.i.i39 = icmp ne i16 %454, 512
  %or.cond23.i.i.i40 = select i1 %or.cond22.i.i.i38, i1 %cmp14.not.i.i.i39, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 272, i16 %454)
  %cmp.i637.i = icmp ne i16 %454, 272
  %spec.select.i638.i = select i1 %or.cond23.i.i.i40, i1 %cmp.i637.i, i1 false
  br i1 %spec.select.i638.i, label %if.then274.i, label %if.end272.i.if.end359.i_crit_edge

if.end272.i.if.end359.i_crit_edge:                ; preds = %if.end272.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end359.i

if.then274.i:                                     ; preds = %if.end272.i
  %457 = ptrtoint ptr %family.i16 to i32
  call void @__asan_load1_noabort(i32 %457)
  %458 = load i8, ptr %family.i16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %458)
  %cmp280.i = icmp ult i8 %458, 3
  br i1 %cmp280.i, label %if.then282.i, label %if.then274.i.if.end354.i_crit_edge

if.then274.i.if.end354.i_crit_edge:               ; preds = %if.then274.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end354.i

if.then282.i:                                     ; preds = %if.then274.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait.i) #6
  %459 = call ptr @memset(ptr %_wait.i, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %device1.i15, i64 noundef 650000000, ptr noundef nonnull %_wait.i) #6
  %map287.i = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 0, i32 6
  br label %do.body285.i

do.body285.i:                                     ; preds = %do.cond310.i.do.body285.i_crit_edge, %if.then282.i
  %460 = ptrtoint ptr %map287.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %map287.i, align 8
  %tobool289.not.i = icmp eq ptr %461, null
  br i1 %tobool289.not.i, label %if.else302.i, label %if.then296.i, !prof !30

if.then296.i:                                     ; preds = %do.body285.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr299.i = getelementptr i8, ptr %461, i32 6296538
  %462 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr299.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  br label %if.end304.i

if.else302.i:                                     ; preds = %do.body285.i
  call void @__sanitizer_cov_trace_pc() #8
  %call303.i = call i32 @nvif_object_rd(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 6296538) #6
  br label %if.end304.i

if.end304.i:                                      ; preds = %if.else302.i, %if.then296.i
  %_data.0.i = phi i32 [ %462, %if.then296.i ], [ %call303.i, %if.else302.i ]
  %and306.i = and i32 %_data.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306.i)
  %tobool307.not.i = icmp eq i32 %and306.i, 0
  br i1 %tobool307.not.i, label %do.cond310.i, label %if.end304.i.do.end314.i_crit_edge

if.end304.i.do.end314.i_crit_edge:                ; preds = %if.end304.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end314.i

do.cond310.i:                                     ; preds = %if.end304.i
  %call311.i = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait.i) #6
  %cmp312.i = icmp sgt i64 %call311.i, -1
  br i1 %cmp312.i, label %do.cond310.i.do.body285.i_crit_edge, label %do.cond310.i.do.end314.i_crit_edge

do.cond310.i.do.end314.i_crit_edge:               ; preds = %do.cond310.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end314.i

do.cond310.i.do.body285.i_crit_edge:              ; preds = %do.cond310.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body285.i

do.end314.i:                                      ; preds = %do.cond310.i.do.end314.i_crit_edge, %if.end304.i.do.end314.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait.i) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_wait316.i) #6
  %463 = call ptr @memset(ptr %_wait316.i, i32 255, i32 40)
  call void @nvif_timer_wait_init(ptr noundef %device1.i15, i64 noundef 650000000, ptr noundef nonnull %_wait316.i) #6
  br label %do.body320.i

do.body320.i:                                     ; preds = %do.cond348.i.do.body320.i_crit_edge, %do.end314.i
  %464 = ptrtoint ptr %map287.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %map287.i, align 8
  %tobool326.not.i = icmp eq ptr %465, null
  br i1 %tobool326.not.i, label %if.else340.i, label %if.then333.i, !prof !30

if.then333.i:                                     ; preds = %do.body320.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr337.i = getelementptr i8, ptr %465, i32 6296538
  %466 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr337.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  br label %if.end342.i

if.else340.i:                                     ; preds = %do.body320.i
  call void @__sanitizer_cov_trace_pc() #8
  %call341.i = call i32 @nvif_object_rd(ptr noundef %device1.i15, i32 noundef 4, i64 noundef 6296538) #6
  br label %if.end342.i

if.end342.i:                                      ; preds = %if.else340.i, %if.then333.i
  %_data323.0.i = phi i32 [ %466, %if.then333.i ], [ %call341.i, %if.else340.i ]
  %and344.i = and i32 %_data323.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and344.i)
  %tobool345.not.i = icmp eq i32 %and344.i, 0
  br i1 %tobool345.not.i, label %if.end342.i.do.end352.i_crit_edge, label %do.cond348.i

if.end342.i.do.end352.i_crit_edge:                ; preds = %if.end342.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end352.i

do.cond348.i:                                     ; preds = %if.end342.i
  %call349.i = call i64 @nvif_timer_wait_test(ptr noundef nonnull %_wait316.i) #6
  %cmp350.i = icmp sgt i64 %call349.i, -1
  br i1 %cmp350.i, label %do.cond348.i.do.body320.i_crit_edge, label %do.cond348.i.do.end352.i_crit_edge

do.cond348.i.do.end352.i_crit_edge:               ; preds = %do.cond348.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end352.i

do.cond348.i.do.body320.i_crit_edge:              ; preds = %do.cond348.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body320.i

do.end352.i:                                      ; preds = %do.cond348.i.do.end352.i_crit_edge, %if.end342.i.do.end352.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_wait316.i) #6
  br label %if.end354.i

if.end354.i:                                      ; preds = %do.end352.i, %if.then274.i.if.end354.i_crit_edge
  call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 66) #6
  call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 83) #6
  call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 84) #6
  %mul6.i.i.i = shl i32 %head, 13
  %add7.i.i.i = add i32 %mul6.i.i.i, 6296532
  %conv.i.i644.i = sext i32 %add7.i.i.i to i64
  %add27.i.i.i = add i32 %mul6.i.i.i, 6296533
  %conv28.i.i.i = sext i32 %add27.i.i.i to i64
  br label %for.body.i41

for.body.i41:                                     ; preds = %NVWriteVgaCrtc5758.exit.i.for.body.i41_crit_edge, %if.end354.i
  %i.0660.i = phi i32 [ 0, %if.end354.i ], [ %inc.i42, %NVWriteVgaCrtc5758.exit.i.for.body.i41_crit_edge ]
  %conv357.i = trunc i32 %i.0660.i to i8
  %arrayidx358.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 2, i32 %i.0660.i
  %467 = ptrtoint ptr %arrayidx358.i to i32
  call void @__asan_load1_noabort(i32 %467)
  %468 = load i8, ptr %arrayidx358.i, align 1
  %469 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i.i640.i = getelementptr inbounds %struct.nouveau_drm, ptr %470, i32 0, i32 2, i32 3
  %map.i.i641.i = getelementptr inbounds %struct.nouveau_drm, ptr %470, i32 0, i32 2, i32 3, i32 0, i32 6
  %471 = ptrtoint ptr %map.i.i641.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %map.i.i641.i, align 8
  %tobool.not.i.i642.i = icmp eq ptr %472, null
  br i1 %tobool.not.i.i642.i, label %if.else.i.i645.i, label %if.then.i.i.i, !prof !30

if.then.i.i.i:                                    ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i643.i = getelementptr i8, ptr %472, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i643.i, i8 87) #6, !srcloc !32
  br label %if.end.i.i.i

if.else.i.i645.i:                                 ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i640.i, i32 noundef 1, i64 noundef %conv.i.i644.i, i32 noundef 87) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i645.i, %if.then.i.i.i
  %473 = ptrtoint ptr %map.i.i641.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %map.i.i641.i, align 8
  %tobool12.not.i.i.i = icmp eq ptr %474, null
  br i1 %tobool12.not.i.i.i, label %if.else25.i.i.i, label %if.then19.i.i.i, !prof !30

if.then19.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i.i.i = getelementptr i8, ptr %474, i32 %add27.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i.i.i, i8 %conv357.i) #6, !srcloc !32
  br label %NVWriteVgaCrtc.exit.i.i

if.else25.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i.i640.i, i32 noundef 1, i64 noundef %conv28.i.i.i, i32 noundef %i.0660.i) #6
  br label %NVWriteVgaCrtc.exit.i.i

NVWriteVgaCrtc.exit.i.i:                          ; preds = %if.else25.i.i.i, %if.then19.i.i.i
  %475 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i4.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %476, i32 0, i32 2, i32 3
  %map.i5.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %476, i32 0, i32 2, i32 3, i32 0, i32 6
  %477 = ptrtoint ptr %map.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %map.i5.i.i, align 8
  %tobool.not.i6.i.i = icmp eq ptr %478, null
  br i1 %tobool.not.i6.i.i, label %if.else.i12.i.i, label %if.then.i10.i.i, !prof !30

if.then.i10.i.i:                                  ; preds = %NVWriteVgaCrtc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i9.i.i = getelementptr i8, ptr %478, i32 %add7.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i9.i.i, i8 88) #6, !srcloc !32
  br label %if.end.i16.i.i

if.else.i12.i.i:                                  ; preds = %NVWriteVgaCrtc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i4.i.i, i32 noundef 1, i64 noundef %conv.i.i644.i, i32 noundef 88) #6
  br label %if.end.i16.i.i

if.end.i16.i.i:                                   ; preds = %if.else.i12.i.i, %if.then.i10.i.i
  %479 = ptrtoint ptr %map.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %map.i5.i.i, align 8
  %tobool12.not.i13.i.i = icmp eq ptr %480, null
  br i1 %tobool12.not.i13.i.i, label %if.else25.i21.i.i, label %if.then19.i18.i.i, !prof !30

if.then19.i18.i.i:                                ; preds = %if.end.i16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i17.i.i = getelementptr i8, ptr %480, i32 %add27.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i17.i.i, i8 %468) #6, !srcloc !32
  br label %NVWriteVgaCrtc5758.exit.i

if.else25.i21.i.i:                                ; preds = %if.end.i16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv29.i20.i.i = zext i8 %468 to i32
  call void @nvif_object_wr(ptr noundef %device1.i4.i.i, i32 noundef 1, i64 noundef %conv28.i.i.i, i32 noundef %conv29.i20.i.i) #6
  br label %NVWriteVgaCrtc5758.exit.i

NVWriteVgaCrtc5758.exit.i:                        ; preds = %if.else25.i21.i.i, %if.then19.i18.i.i
  %inc.i42 = add nuw nsw i32 %i.0660.i, 1
  %exitcond.not.i43 = icmp eq i32 %inc.i42, 16
  br i1 %exitcond.not.i43, label %for.end.i44, label %NVWriteVgaCrtc5758.exit.i.for.body.i41_crit_edge

NVWriteVgaCrtc5758.exit.i.for.body.i41_crit_edge: ; preds = %NVWriteVgaCrtc5758.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i41

for.end.i44:                                      ; preds = %NVWriteVgaCrtc5758.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 89) #6
  call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 91) #6
  call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 133) #6
  call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef 134) #6
  br label %if.end359.i

if.end359.i:                                      ; preds = %for.end.i44, %if.end272.i.if.end359.i_crit_edge
  %fb_start.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 7
  %481 = ptrtoint ptr %fb_start.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %fb_start.i, align 4
  %483 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %dev_private.i.i, align 4
  %spec.select.i648.i = select i1 %tobool.not.i, i32 6293504, i32 6301696
  %map.i649.i = getelementptr inbounds %struct.nouveau_drm, ptr %484, i32 0, i32 2, i32 3, i32 0, i32 6
  %485 = ptrtoint ptr %map.i649.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %map.i649.i, align 8
  %tobool2.not.i650.i = icmp eq ptr %486, null
  br i1 %tobool2.not.i650.i, label %if.else.i655.i, label %do.body.i652.i, !prof !30

do.body.i652.i:                                   ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  call void @arm_heavy_mb() #6
  %487 = ptrtoint ptr %map.i649.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %map.i649.i, align 8
  %add.ptr.i651.i = getelementptr i8, ptr %488, i32 %spec.select.i648.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i651.i, i32 %482) #6, !srcloc !43
  br label %nv_load_state_ext.exit

if.else.i655.i:                                   ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #8
  %device1.i653.i = getelementptr inbounds %struct.nouveau_drm, ptr %484, i32 0, i32 2, i32 3
  %conv.i654.i = zext i32 %spec.select.i648.i to i64
  call void @nvif_object_wr(ptr noundef %device1.i653.i, i32 noundef 4, i64 noundef %conv.i654.i, i32 noundef %482) #6
  br label %nv_load_state_ext.exit

nv_load_state_ext.exit:                           ; preds = %if.else.i655.i, %do.body.i652.i
  call void @nouveau_hw_load_state_palette(ptr noundef %dev, i32 noundef %head, ptr noundef %state)
  %489 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %arrayidx.i, align 4
  %491 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i.i46 = getelementptr inbounds %struct.nouveau_drm, ptr %492, i32 0, i32 2, i32 3
  br i1 %tobool.not.i, label %nv_load_state_ext.exit.if.end.i.i_crit_edge, label %land.lhs.true.i.i

nv_load_state_ext.exit.if.end.i.i_crit_edge:      ; preds = %nv_load_state_ext.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %nv_load_state_ext.exit
  call void @__sanitizer_cov_trace_pc() #8
  %family.i.i48 = getelementptr inbounds %struct.nouveau_drm, ptr %492, i32 0, i32 2, i32 3, i32 1, i32 4
  %493 = ptrtoint ptr %family.i.i48 to i32
  call void @__asan_load1_noabort(i32 %493)
  %494 = load i8, ptr %family.i.i48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %494)
  %cmp.i.i49 = icmp eq i8 %494, 5
  %spec.select.i.i50 = select i1 %cmp.i.i49, i32 795586, i32 787394
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i, %nv_load_state_ext.exit.if.end.i.i_crit_edge
  %reg.addr.0.i.i = phi i32 [ 787394, %nv_load_state_ext.exit.if.end.i.i_crit_edge ], [ %spec.select.i.i50, %land.lhs.true.i.i ]
  %map.i.i51 = getelementptr inbounds %struct.nouveau_drm, ptr %492, i32 0, i32 2, i32 3, i32 0, i32 6
  %495 = ptrtoint ptr %map.i.i51 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %map.i.i51, align 8
  %tobool6.not.i.i = icmp eq ptr %496, null
  br i1 %tobool6.not.i.i, label %if.else.i.i53, label %if.then9.i.i, !prof !30

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i52 = getelementptr i8, ptr %496, i32 %reg.addr.0.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i52, i8 %490) #6, !srcloc !32
  br label %NVWritePRMVIO.exit.i

if.else.i.i53:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv12.i.i = zext i32 %reg.addr.0.i.i to i64
  %conv13.i.i = zext i8 %490 to i32
  call void @nvif_object_wr(ptr noundef %device1.i.i46, i32 noundef 1, i64 noundef %conv12.i.i, i32 noundef %conv13.i.i) #6
  br label %NVWritePRMVIO.exit.i

NVWritePRMVIO.exit.i:                             ; preds = %if.else.i.i53, %if.then9.i.i
  %arrayidx1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 0
  %497 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %497)
  %498 = load i8, ptr %arrayidx1.i, align 1
  call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 0, i8 noundef zeroext %498) #6
  %arrayidx1.1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 1
  %499 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load1_noabort(i32 %499)
  %500 = load i8, ptr %arrayidx1.1.i, align 1
  call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1, i8 noundef zeroext %500) #6
  %arrayidx1.2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 2
  %501 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load1_noabort(i32 %501)
  %502 = load i8, ptr %arrayidx1.2.i, align 1
  call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 2, i8 noundef zeroext %502) #6
  %arrayidx1.3.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 3
  %503 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load1_noabort(i32 %503)
  %504 = load i8, ptr %arrayidx1.3.i, align 1
  call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 3, i8 noundef zeroext %504) #6
  %arrayidx1.4.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 3, i32 4
  %505 = ptrtoint ptr %arrayidx1.4.i to i32
  call void @__asan_load1_noabort(i32 %505)
  %506 = load i8, ptr %arrayidx1.4.i, align 1
  call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 4, i8 noundef zeroext %506) #6
  call fastcc void @nv_lock_vga_crtc_base(ptr noundef %dev, i32 noundef %head, i1 noundef zeroext false) #6
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %NVWritePRMVIO.exit.i
  %i.197.i = phi i32 [ 0, %NVWritePRMVIO.exit.i ], [ %inc7.i, %for.body5.i.for.body5.i_crit_edge ]
  call fastcc void @wr_cio_state(ptr noundef %dev, i32 noundef %head, ptr noundef %arrayidx.i, i32 noundef %i.197.i) #6
  %inc7.i = add nuw nsw i32 %i.197.i, 1
  %exitcond.not.i54 = icmp eq i32 %inc7.i, 25
  br i1 %exitcond.not.i54, label %for.end8.i, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

for.end8.i:                                       ; preds = %for.body5.i
  call fastcc void @nv_lock_vga_crtc_base(ptr noundef %dev, i32 noundef %head, i1 noundef zeroext true) #6
  %arrayidx15.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 0
  %507 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %507)
  %508 = load i8, ptr %arrayidx15.i, align 1
  call void @NVWriteVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 0, i8 noundef zeroext %508) #6
  %arrayidx15.1.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 1
  %509 = ptrtoint ptr %arrayidx15.1.i to i32
  call void @__asan_load1_noabort(i32 %509)
  %510 = load i8, ptr %arrayidx15.1.i, align 1
  call void @NVWriteVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1, i8 noundef zeroext %510) #6
  %arrayidx15.2.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 2
  %511 = ptrtoint ptr %arrayidx15.2.i to i32
  call void @__asan_load1_noabort(i32 %511)
  %512 = load i8, ptr %arrayidx15.2.i, align 1
  call void @NVWriteVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 2, i8 noundef zeroext %512) #6
  %arrayidx15.3.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 3
  %513 = ptrtoint ptr %arrayidx15.3.i to i32
  call void @__asan_load1_noabort(i32 %513)
  %514 = load i8, ptr %arrayidx15.3.i, align 1
  call void @NVWriteVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 3, i8 noundef zeroext %514) #6
  %arrayidx15.4.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 4
  %515 = ptrtoint ptr %arrayidx15.4.i to i32
  call void @__asan_load1_noabort(i32 %515)
  %516 = load i8, ptr %arrayidx15.4.i, align 1
  call void @NVWriteVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 4, i8 noundef zeroext %516) #6
  %arrayidx15.5.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 5
  %517 = ptrtoint ptr %arrayidx15.5.i to i32
  call void @__asan_load1_noabort(i32 %517)
  %518 = load i8, ptr %arrayidx15.5.i, align 1
  call void @NVWriteVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 5, i8 noundef zeroext %518) #6
  %arrayidx15.6.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 6
  %519 = ptrtoint ptr %arrayidx15.6.i to i32
  call void @__asan_load1_noabort(i32 %519)
  %520 = load i8, ptr %arrayidx15.6.i, align 1
  call void @NVWriteVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 6, i8 noundef zeroext %520) #6
  %arrayidx15.7.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 7
  %521 = ptrtoint ptr %arrayidx15.7.i to i32
  call void @__asan_load1_noabort(i32 %521)
  %522 = load i8, ptr %arrayidx15.7.i, align 1
  call void @NVWriteVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 7, i8 noundef zeroext %522) #6
  %arrayidx15.8.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 4, i32 8
  %523 = ptrtoint ptr %arrayidx15.8.i to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %arrayidx15.8.i, align 1
  call void @NVWriteVgaGr(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 8, i8 noundef zeroext %524) #6
  %525 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i64.i = getelementptr inbounds %struct.nouveau_drm, ptr %526, i32 0, i32 2, i32 3
  %map.i65.i = getelementptr inbounds %struct.nouveau_drm, ptr %526, i32 0, i32 2, i32 3, i32 0, i32 6
  %527 = ptrtoint ptr %map.i65.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load ptr, ptr %map.i65.i, align 8
  %tobool.not.i66.i = icmp eq ptr %528, null
  %mul7.i.i = shl i32 %head, 13
  %add8.i.i = add i32 %mul7.i.i, 6296538
  br i1 %tobool.not.i66.i, label %if.else.i68.i, label %if.then.i.i, !prof !30

if.then.i.i:                                      ; preds = %for.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i67.i = getelementptr i8, ptr %528, i32 %add8.i.i
  %529 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i67.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i69.i

if.else.i68.i:                                    ; preds = %for.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i.i = sext i32 %add8.i.i to i64
  %call10.i.i55 = call i32 @nvif_object_rd(ptr noundef %device1.i64.i, i32 noundef 1, i64 noundef %conv9.i.i) #6
  br label %if.end.i69.i

if.end.i69.i:                                     ; preds = %if.else.i68.i, %if.then.i.i
  %530 = ptrtoint ptr %map.i65.i to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %map.i65.i, align 8
  %tobool16.not.i.i = icmp eq ptr %531, null
  %add34.i.i = add i32 %mul7.i.i, 6296512
  br i1 %tobool16.not.i.i, label %if.else32.i.i, label %if.then23.i.i, !prof !30

if.then23.i.i:                                    ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31.i.i = getelementptr i8, ptr %531, i32 %add34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i.i, i8 0) #6, !srcloc !32
  %.pre.i = sext i32 %add34.i.i to i64
  br label %NVSetEnablePalette.exit.i

if.else32.i.i:                                    ; preds = %if.end.i69.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv35.i.i = sext i32 %add34.i.i to i64
  call void @nvif_object_wr(ptr noundef %device1.i64.i, i32 noundef 1, i64 noundef %conv35.i.i, i32 noundef 0) #6
  br label %NVSetEnablePalette.exit.i

NVSetEnablePalette.exit.i:                        ; preds = %if.else32.i.i, %if.then23.i.i
  %conv36.i.i.pre-phi.i = phi i64 [ %.pre.i, %if.then23.i.i ], [ %conv35.i.i, %if.else32.i.i ]
  %conv9.i.i.i = sext i32 %add8.i.i to i64
  br label %for.body22.i

for.body22.i:                                     ; preds = %NVWriteVgaAttr.exit.i.for.body22.i_crit_edge, %NVSetEnablePalette.exit.i
  %i.399.i = phi i32 [ 0, %NVSetEnablePalette.exit.i ], [ %inc26.i, %NVWriteVgaAttr.exit.i.for.body22.i_crit_edge ]
  %conv23.i = trunc i32 %i.399.i to i8
  %arrayidx24.i = getelementptr [2 x %struct.nv04_crtc_reg], ptr %state, i32 0, i32 %head, i32 5, i32 %i.399.i
  %532 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %arrayidx24.i, align 1
  %534 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i71.i = getelementptr inbounds %struct.nouveau_drm, ptr %535, i32 0, i32 2, i32 3
  %map.i.i.i56 = getelementptr inbounds %struct.nouveau_drm, ptr %535, i32 0, i32 2, i32 3, i32 0, i32 6
  %536 = ptrtoint ptr %map.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %map.i.i.i56, align 8
  %tobool.not.i.i.i = icmp eq ptr %537, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i60, label %if.then.i.i.i58, !prof !30

if.then.i.i.i58:                                  ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i57 = getelementptr i8, ptr %537, i32 %add8.i.i
  %538 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i57) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i.i.i61

if.else.i.i.i60:                                  ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i.i.i59 = call i32 @nvif_object_rd(ptr noundef %device1.i71.i, i32 noundef 1, i64 noundef %conv9.i.i.i) #6
  br label %if.end.i.i.i61

if.end.i.i.i61:                                   ; preds = %if.else.i.i.i60, %if.then.i.i.i58
  %539 = ptrtoint ptr %map.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %map.i.i.i56, align 8
  %tobool18.not.i.i.i = icmp eq ptr %540, null
  br i1 %tobool18.not.i.i.i, label %if.else33.i.i.i, label %if.then25.i.i.i, !prof !30

if.then25.i.i.i:                                  ; preds = %if.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr30.i.i.i = getelementptr i8, ptr %540, i32 %add34.i.i
  %541 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30.i.i.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv32.i.i.i = zext i8 %541 to i32
  br label %NVGetEnablePalette.exit.i.i

if.else33.i.i.i:                                  ; preds = %if.end.i.i.i61
  call void @__sanitizer_cov_trace_pc() #8
  %call37.i.i.i = call i32 @nvif_object_rd(ptr noundef %device1.i71.i, i32 noundef 1, i64 noundef %conv36.i.i.pre-phi.i) #6
  br label %NVGetEnablePalette.exit.i.i

NVGetEnablePalette.exit.i.i:                      ; preds = %if.else33.i.i.i, %if.then25.i.i.i
  %_data15.0.i.i.i = phi i32 [ %conv32.i.i.i, %if.then25.i.i.i ], [ %call37.i.i.i, %if.else33.i.i.i ]
  %542 = and i8 %conv23.i, -33
  %543 = trunc i32 %_data15.0.i.i.i to i8
  %544 = and i8 %543, 32
  %index.addr.0.i.i = or i8 %544, %542
  %545 = ptrtoint ptr %map.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %map.i.i.i56, align 8
  %tobool.not.i72.i = icmp eq ptr %546, null
  br i1 %tobool.not.i72.i, label %if.else13.i.i, label %if.then8.i.i, !prof !30

if.then8.i.i:                                     ; preds = %NVGetEnablePalette.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i73.i = getelementptr i8, ptr %546, i32 %add8.i.i
  %547 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i73.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end18.i.i

if.else13.i.i:                                    ; preds = %NVGetEnablePalette.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i.i = call i32 @nvif_object_rd(ptr noundef %device1.i71.i, i32 noundef 1, i64 noundef %conv9.i.i.i) #6
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.else13.i.i, %if.then8.i.i
  %548 = ptrtoint ptr %map.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %map.i.i.i56, align 8
  %tobool24.not.i.i = icmp eq ptr %549, null
  br i1 %tobool24.not.i.i, label %if.else37.i.i, label %if.then31.i.i, !prof !30

if.then31.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr36.i.i = getelementptr i8, ptr %549, i32 %add34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36.i.i, i8 %index.addr.0.i.i) #6, !srcloc !32
  br label %if.end42.i.i

if.else37.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv41.i.i = zext i8 %index.addr.0.i.i to i32
  call void @nvif_object_wr(ptr noundef %device1.i71.i, i32 noundef 1, i64 noundef %conv36.i.i.pre-phi.i, i32 noundef %conv41.i.i) #6
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.else37.i.i, %if.then31.i.i
  %550 = ptrtoint ptr %map.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load ptr, ptr %map.i.i.i56, align 8
  %tobool46.not.i.i = icmp eq ptr %551, null
  br i1 %tobool46.not.i.i, label %if.else59.i.i, label %if.then53.i.i, !prof !30

if.then53.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr58.i.i = getelementptr i8, ptr %551, i32 %add34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58.i.i, i8 %533) #6, !srcloc !32
  br label %NVWriteVgaAttr.exit.i

if.else59.i.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv63.i.i = zext i8 %533 to i32
  call void @nvif_object_wr(ptr noundef %device1.i71.i, i32 noundef 1, i64 noundef %conv36.i.i.pre-phi.i, i32 noundef %conv63.i.i) #6
  br label %NVWriteVgaAttr.exit.i

NVWriteVgaAttr.exit.i:                            ; preds = %if.else59.i.i, %if.then53.i.i
  %inc26.i = add nuw nsw i32 %i.399.i, 1
  %exitcond101.not.i = icmp eq i32 %inc26.i, 21
  br i1 %exitcond101.not.i, label %for.end27.i, label %NVWriteVgaAttr.exit.i.for.body22.i_crit_edge

NVWriteVgaAttr.exit.i.for.body22.i_crit_edge:     ; preds = %NVWriteVgaAttr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22.i

for.end27.i:                                      ; preds = %NVWriteVgaAttr.exit.i
  %552 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i75.i = getelementptr inbounds %struct.nouveau_drm, ptr %553, i32 0, i32 2, i32 3
  %map.i76.i = getelementptr inbounds %struct.nouveau_drm, ptr %553, i32 0, i32 2, i32 3, i32 0, i32 6
  %554 = ptrtoint ptr %map.i76.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %map.i76.i, align 8
  %tobool.not.i77.i = icmp eq ptr %555, null
  br i1 %tobool.not.i77.i, label %if.else.i84.i, label %if.then.i81.i, !prof !30

if.then.i81.i:                                    ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i80.i = getelementptr i8, ptr %555, i32 %add8.i.i
  %556 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i80.i) #6, !srcloc !33
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i86.i

if.else.i84.i:                                    ; preds = %for.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i83.i = call i32 @nvif_object_rd(ptr noundef %device1.i75.i, i32 noundef 1, i64 noundef %conv9.i.i.i) #6
  br label %if.end.i86.i

if.end.i86.i:                                     ; preds = %if.else.i84.i, %if.then.i81.i
  %557 = ptrtoint ptr %map.i76.i to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %map.i76.i, align 8
  %tobool16.not.i85.i = icmp eq ptr %558, null
  br i1 %tobool16.not.i85.i, label %if.else32.i94.i, label %if.then23.i90.i, !prof !30

if.then23.i90.i:                                  ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr31.i89.i = getelementptr i8, ptr %558, i32 %add34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i89.i, i8 32) #6, !srcloc !32
  br label %nv_load_state_vga.exit

if.else32.i94.i:                                  ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @nvif_object_wr(ptr noundef %device1.i75.i, i32 noundef 1, i64 noundef %conv36.i.i.pre-phi.i, i32 noundef 32) #6
  br label %nv_load_state_vga.exit

nv_load_state_vga.exit:                           ; preds = %if.else32.i94.i, %if.then23.i90.i
  call fastcc void @NVVgaProtect(ptr noundef %dev, i32 noundef %head, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @NVVgaProtect(ptr nocapture noundef readonly %dev, i32 noundef %head, i1 noundef zeroext %protect) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i8 @NVReadVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1)
  br i1 %protect, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 0, i8 noundef zeroext 1) #6
  %0 = or i8 %call, 32
  tail call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1, i8 noundef zeroext %0)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = and i8 %call, -33
  tail call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 1, i8 noundef zeroext %1)
  tail call void @NVWriteVgaSeq(ptr noundef %dev, i32 noundef %head, i8 noundef zeroext 0, i8 noundef zeroext 3) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  %mul7.i = shl i32 %head, 13
  %add8.i = add i32 %mul7.i, 6296538
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !30

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add8.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv9.i = sext i32 %add8.i to i64
  %call10.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv9.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %7 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i, align 8
  %tobool16.not.i = icmp eq ptr %8, null
  br i1 %tobool16.not.i, label %if.else32.i, label %if.then23.i, !prof !30

if.then23.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv26.i = select i1 %protect, i8 0, i8 32
  %add30.i = add i32 %mul7.i, 6296512
  %add.ptr31.i = getelementptr i8, ptr %8, i32 %add30.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 %conv26.i) #6, !srcloc !32
  br label %NVSetEnablePalette.exit

if.else32.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add34.i = add i32 %mul7.i, 6296512
  %conv35.i = sext i32 %add34.i to i64
  %conv40.i = select i1 %protect, i32 0, i32 32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv35.i, i32 noundef %conv40.i) #6
  br label %NVSetEnablePalette.exit

NVSetEnablePalette.exit:                          ; preds = %if.else32.i, %if.then23.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wr_cio_state(ptr nocapture noundef readonly %dev, i32 noundef %head, ptr nocapture noundef readonly %crtcstate, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.nv04_crtc_reg, ptr %crtcstate, i32 0, i32 1, i32 %index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  %mul6.i = shl i32 %head, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !30

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %index to i8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #6, !srcloc !32
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i32 %add7.i to i64
  %conv8.i = and i32 %index, 255
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef %conv8.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %7, null
  %add27.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else25.i, label %if.then19.i, !prof !30

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i = getelementptr i8, ptr %7, i32 %add27.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i, i8 %1) #6, !srcloc !32
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv28.i = sext i32 %add27.i to i64
  %conv29.i = zext i8 %1 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #6
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv_lock_vga_crtc_base(ptr nocapture noundef readonly %dev, i32 noundef %head, i1 noundef zeroext %lock) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3
  %map.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 6
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %mul6.i = shl i32 %head, 13
  %add7.i = add i32 %mul6.i, 6296532
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !30

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 17) #6, !srcloc !32
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv.i, i32 noundef 17) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 8
  %tobool12.not.i = icmp eq ptr %5, null
  %add29.i = add i32 %mul6.i, 6296533
  br i1 %tobool12.not.i, label %if.else27.i, label %if.then19.i, !prof !30

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i = getelementptr i8, ptr %5, i32 %add29.i
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr24.i) #6, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  %conv26.i = zext i8 %6 to i32
  br label %NVReadVgaCrtc.exit

if.else27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv30.i = sext i32 %add29.i to i64
  %call31.i = tail call i32 @nvif_object_rd(ptr noundef %device1.i, i32 noundef 1, i64 noundef %conv30.i) #6
  br label %NVReadVgaCrtc.exit

NVReadVgaCrtc.exit:                               ; preds = %if.else27.i, %if.then19.i
  %_data.0.i = phi i32 [ %conv26.i, %if.then19.i ], [ %call31.i, %if.else27.i ]
  %conv34.i = trunc i32 %_data.0.i to i8
  %and6 = and i8 %conv34.i, 127
  %masksel = select i1 %lock, i8 -128, i8 0
  %cr11.0 = or i8 %and6, %masksel
  %7 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_private.i.i, align 4
  %device1.i2 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3
  %map.i3 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 0, i32 6
  %9 = ptrtoint ptr %map.i3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i3, align 8
  %tobool.not.i4 = icmp eq ptr %10, null
  br i1 %tobool.not.i4, label %if.else.i10, label %if.then.i8, !prof !30

if.then.i8:                                       ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 %add7.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i7, i8 17) #6, !srcloc !32
  br label %if.end.i12

if.else.i10:                                      ; preds = %NVReadVgaCrtc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i9 = sext i32 %add7.i to i64
  tail call void @nvif_object_wr(ptr noundef %device1.i2, i32 noundef 1, i64 noundef %conv.i9, i32 noundef 17) #6
  br label %if.end.i12

if.end.i12:                                       ; preds = %if.else.i10, %if.then.i8
  %11 = ptrtoint ptr %map.i3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i3, align 8
  %tobool12.not.i11 = icmp eq ptr %12, null
  br i1 %tobool12.not.i11, label %if.else25.i, label %if.then19.i14, !prof !30

if.then19.i14:                                    ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr24.i13 = getelementptr i8, ptr %12, i32 %add29.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr24.i13, i8 %cr11.0) #6, !srcloc !32
  br label %NVWriteVgaCrtc.exit

if.else25.i:                                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #8
  %conv28.i = sext i32 %add29.i to i64
  %conv29.i = zext i8 %cr11.0 to i32
  tail call void @nvif_object_wr(ptr noundef %device1.i2, i32 noundef 1, i64 noundef %conv28.i, i32 noundef %conv29.i) #6
  br label %NVWriteVgaCrtc.exit

NVWriteVgaCrtc.exit:                              ; preds = %if.else25.i, %if.then19.i14
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv04/hw.c", i32 329, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nouveau_hw_save_vga_fonts._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nouveau_hw_save_vga_fonts._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/dispnv04/hw.c", i32 334, i32 3}
!12 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nouveau_hw_save_vga_fonts._entry.7, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nouveau_hw_save_vga_fonts._entry_ptr.10, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/dispnv04/hw.c", i32 277, i32 2}
!17 = !{ptr @.str.12, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.13, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nouveau_hw_fix_bad_vpll._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @nouveau_hw_fix_bad_vpll._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2152955028}
!32 = !{i64 5413683}
!33 = !{i64 5414078}
!34 = !{i64 2152953423}
!35 = !{i64 5414298}
!36 = !{i64 2157282803}
!37 = !{i64 2157283903}
!38 = !{i64 2157284994}
!39 = !{i64 2157261199}
!40 = !{!"auto-init"}
!41 = !{i64 2157289943}
!42 = !{i64 2157290233}
!43 = !{i64 5413880}
!44 = !{i64 2157262260}
!45 = !{i64 2157258810}
!46 = !{i64 2157259871}
!47 = !{i64 2157298678}
!48 = !{i64 2157299661}
!49 = !{i64 2157300697}
!50 = !{i64 2157301733}
!51 = !{i64 2157302909}
!52 = !{i64 2157304120}
!53 = !{i64 2157305331}
!54 = !{i64 2157306542}
!55 = !{i64 2157307560}
!56 = !{i64 2157310479}
!57 = !{i64 2157313232}
