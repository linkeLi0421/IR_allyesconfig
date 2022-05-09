; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_dp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.92, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.87 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.92 = type { i32, ptr }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.101, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.102, %struct.anon.109, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.anon.101 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.109 = type { i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.nv50_mstm = type { ptr, %struct.drm_dp_mst_topology_mgr, i8, i8, i8, i8, i8, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct, %struct.mutex }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.111, %struct.anon.112, %struct.anon.114, %union.anon.115 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.111 = type { i32, i32 }
%struct.anon.112 = type { i32, %struct.anon.113, i8 }
%struct.anon.113 = type { i32, i32, i32 }
%struct.anon.114 = type { i32, i32 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { i8 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.120, %struct.anon.121, %struct.anon.123, ptr, %struct.anon.124, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.125, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.131 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.120 = type { ptr, i32, i32, i8 }
%struct.anon.121 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.122] }
%struct.anon.122 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.123 = type { i64, i64 }
%struct.anon.124 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { ptr, i64 }
%struct.anon.125 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.126, %struct.anon.127, %struct.anon.128, %struct.anon.129 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.95, i8 }
%union.anon.95 = type { %struct.anon.99 }
%struct.anon.99 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.126 = type { i32 }
%struct.anon.127 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.128 = type { i16, i16 }
%struct.anon.129 = type { i16, i16, i16, %struct.anon.130, i16 }
%struct.anon.130 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.131 = type { ptr, %struct.mutex, i8 }

@__UNIQUE_ID_mst323 = internal constant [68 x i8] c"nouveau.parm=mst:Enable DisplayPort multi-stream (default: enabled)\00", section ".modinfo", align 1
@__param_str_mst = internal constant [12 x i8] c"nouveau.mst\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_mst = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_mst = internal constant %struct.kernel_param { ptr @__param_str_mst, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_mst } }, section "__param", align 4
@__UNIQUE_ID_msttype324 = internal constant [25 x i8] c"nouveau.parmtype=mst:int\00", section ".modinfo", align 1
@nouveau_dp_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 152, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: display: %dx%d dpcd 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nouveau_dp_detect\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/nouveau/nouveau_dp.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_dp_detect._entry_ptr = internal global ptr @nouveau_dp_detect._entry, section ".printk_index", align 4
@nouveau_dp_detect._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: encoder: %dx%d\0A\00", [44 x i8] zeroinitializer }, align 32
@nouveau_dp_detect._entry_ptr.7 = internal global ptr @nouveau_dp_detect._entry.5, section ".printk_index", align 4
@nouveau_dp_detect._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 163, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: maximum: %dx%d\0A\00", [44 x i8] zeroinitializer }, align 32
@nouveau_dp_detect._entry_ptr.10 = internal global ptr @nouveau_dp_detect._entry.8, section ".printk_index", align 4
@nouveau_dp_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: service %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nouveau_dp_irq\00", [17 x i8] zeroinitializer }, align 32
@nouveau_dp_irq._entry_ptr = internal global ptr @nouveau_dp_irq._entry, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"nouveau_mst\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 36, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 150, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 153, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 162, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [40 x i8] c"../drivers/gpu/drm/nouveau/nouveau_dp.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 197, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_mst323, ptr @__UNIQUE_ID_msttype324, ptr @__param_mst, ptr @nouveau_dp_detect._entry, ptr @nouveau_dp_detect._entry.5, ptr @nouveau_dp_detect._entry.8, ptr @nouveau_dp_detect._entry_ptr, ptr @nouveau_dp_detect._entry_ptr.10, ptr @nouveau_dp_detect._entry_ptr.7, ptr @nouveau_dp_irq._entry, ptr @nouveau_dp_irq._entry_ptr, ptr @nouveau_mst, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_mst to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_dp_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_dp_detect._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_dp_detect._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_dp_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_dp_detect(ptr noundef %nv_connector, ptr noundef %nv_encoder) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nv_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nv_encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %4 = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %dpcd5 = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 4
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %nv_connector, i32 0, i32 10
  %7 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %8)
  %cmp = icmp eq i32 %8, 14
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = ptrtoint ptr %dpcd5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dpcd5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp6.not = icmp eq i8 %10, 0
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %hpd_irq_lock = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %hpd_irq_lock, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end20_crit_edge, label %if.then8

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then8:                                         ; preds = %if.end
  %suspended = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %suspended, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.then8.if.end20_crit_edge, label %if.then10

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then10:                                        ; preds = %if.then8
  %is_mst = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %is_mst to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_mst, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.else, label %if.then10.if.end145_crit_edge

if.then10.if.end145_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end145

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #5
  %status13 = getelementptr inbounds %struct.drm_connector, ptr %nv_connector, i32 0, i32 18
  %15 = ptrtoint ptr %status13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp14 = icmp eq i32 %16, 1
  %spec.select = zext i1 %cmp14 to i32
  br label %land.lhs.true138

if.end20:                                         ; preds = %if.then8.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %aux1.i = getelementptr inbounds %struct.nouveau_connector, ptr %nv_connector, i32 0, i32 5
  %call.i = tail call i32 @drm_dp_read_dpcd_caps(ptr noundef %aux1.i, ptr noundef %dpcd5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end20.if.then34.i_crit_edge, label %if.end.i

if.end20.if.then34.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then34.i

if.end.i:                                         ; preds = %if.end20
  %desc.i = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 6
  %arrayidx.i.i = getelementptr %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 4, i32 5
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.i.i = icmp ne i8 %19, 0
  %call4.i = tail call i32 @drm_dp_read_desc(ptr noundef %aux1.i, ptr noundef %desc.i, i1 noundef zeroext %tobool.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.if.then34.i_crit_edge, label %if.end7.i

if.end.i.if.then34.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then34.i

if.end7.i:                                        ; preds = %if.end.i
  %20 = load i32, ptr @nouveau_mst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %if.end7.i.if.end14.i_crit_edge, label %if.then8.i

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.then8.i:                                       ; preds = %if.end7.i
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %4, align 4
  %tobool10.not.i = icmp eq ptr %22, null
  br i1 %tobool10.not.i, label %if.then8.i.if.end14.i_crit_edge, label %if.then11.i

if.then8.i.if.end14.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #5
  %call12.i = tail call zeroext i1 @drm_dp_read_mst_cap(ptr noundef %aux1.i, ptr noundef %dpcd5) #3
  %can_mst.i = getelementptr inbounds %struct.nv50_mstm, ptr %22, i32 0, i32 2
  %frombool.i = zext i1 %call12.i to i8
  %23 = ptrtoint ptr %can_mst.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool.i, ptr %can_mst.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.then8.i.if.end14.i_crit_edge, %if.end7.i.if.end14.i_crit_edge
  %call.i.i = tail call zeroext i1 @drm_dp_read_sink_count_cap(ptr noundef %nv_connector, ptr noundef %dpcd5, ptr noundef %desc.i) #3
  br i1 %call.i.i, label %if.then16.i, label %if.end14.i.out.i_crit_edge

if.end14.i.out.i_crit_edge:                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.i

if.then16.i:                                      ; preds = %if.end14.i
  %call17.i = tail call i32 @drm_dp_read_sink_count(ptr noundef %aux1.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.then16.i.if.then34.i_crit_edge, label %if.end20.i

if.then16.i.if.then34.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then34.i

if.end20.i:                                       ; preds = %if.then16.i
  %conv.i = trunc i32 %call17.i to i8
  %sink_count.i = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 7
  %24 = ptrtoint ptr %sink_count.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %sink_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %tobool22.not.i = icmp eq i8 %conv.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.out_crit_edge, label %if.end20.i.out.i_crit_edge

if.end20.i.out.i_crit_edge:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.i

if.end20.i.out_crit_edge:                         ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

out.i:                                            ; preds = %if.end20.i.out.i_crit_edge, %if.end14.i.out.i_crit_edge
  %downstream_ports.i = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 5
  %call27.i = tail call i32 @drm_dp_read_downstream_info(ptr noundef %aux1.i, ptr noundef %dpcd5, ptr noundef %downstream_ports.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %out.i.if.then34.i_crit_edge, label %if.end25

out.i.if.then34.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then34.i

if.then34.i:                                      ; preds = %out.i.if.then34.i_crit_edge, %if.then16.i.if.then34.i_crit_edge, %if.end.i.if.then34.i_crit_edge, %if.end20.if.then34.i_crit_edge
  %sink_count35.i = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 7
  %25 = ptrtoint ptr %sink_count35.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sink_count35.i, align 4
  br label %out

if.end25:                                         ; preds = %out.i
  br i1 %tobool.not, label %if.end25.if.end35_crit_edge, label %land.lhs.true27

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

land.lhs.true27:                                  ; preds = %if.end25
  %can_mst = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 2
  %26 = ptrtoint ptr %can_mst to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %can_mst, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool28.not = icmp eq i8 %27, 0
  br i1 %tobool28.not, label %land.lhs.true27.if.end35_crit_edge, label %land.lhs.true30

land.lhs.true27.if.end35_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

land.lhs.true30:                                  ; preds = %land.lhs.true27
  %is_mst31 = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 3
  %28 = ptrtoint ptr %is_mst31 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_mst31, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not = icmp eq i8 %29, 0
  br i1 %tobool32.not, label %land.lhs.true30.if.end35_crit_edge, label %land.lhs.true30.if.end145_crit_edge

land.lhs.true30.if.end145_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end145

land.lhs.true30.if.end35_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.end35:                                         ; preds = %land.lhs.true30.if.end35_crit_edge, %land.lhs.true27.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %arrayidx36 = getelementptr %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %31 to i32
  %mul = mul nuw nsw i32 %conv37, 27000
  %link_bw = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 2
  %32 = ptrtoint ptr %link_bw to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %link_bw, align 4
  %arrayidx38 = getelementptr %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx38, align 1
  %35 = and i8 %34, 31
  %and = zext i8 %35 to i32
  %link_nr = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 12, i32 0, i32 1
  %36 = ptrtoint ptr %link_nr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and, ptr %link_nr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %37 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end35.do.body57_crit_edge, label %do.body42

if.end35.do.body57_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body57

do.body42:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %drm44 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %drm44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drm44, align 8
  %dev45 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev45, align 8
  %dev46 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev46, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %44 = ptrtoint ptr %dpcd5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dpcd5, align 1
  %conv51 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %and, i32 noundef %mul, i32 noundef %conv51) #6
  br label %do.body57

do.body57:                                        ; preds = %do.body42, %if.end35.do.body57_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %46 = load i32, ptr @__drm_debug, align 4
  %and.i200 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %tobool.i201.not = icmp eq i32 %and.i200, 0
  br i1 %tobool.i201.not, label %do.body57.do.end78_crit_edge, label %do.body60

do.body57.do.end78_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end78

do.body60:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #5
  %drm66 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %drm66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %drm66, align 8
  %dev67 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev67, align 8
  %dev68 = getelementptr inbounds %struct.drm_device, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev68, align 4
  %name69 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 1
  %53 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dcb, align 4
  %link_nr71 = getelementptr inbounds %struct.dcb_output, ptr %54, i32 0, i32 13, i32 0, i32 1
  %55 = ptrtoint ptr %link_nr71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %link_nr71, align 4
  %link_bw73 = getelementptr inbounds %struct.dcb_output, ptr %54, i32 0, i32 13, i32 0, i32 2
  %57 = ptrtoint ptr %link_bw73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %link_bw73, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.6, ptr noundef %name69, i32 noundef %56, i32 noundef %58) #6
  br label %do.end78

do.end78:                                         ; preds = %do.body60, %do.body57.do.end78_crit_edge
  %dcb79 = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 1
  %59 = ptrtoint ptr %dcb79 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dcb79, align 4
  %link_nr80 = getelementptr inbounds %struct.dcb_output, ptr %60, i32 0, i32 13, i32 0, i32 1
  %61 = ptrtoint ptr %link_nr80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %link_nr80, align 4
  %63 = ptrtoint ptr %link_nr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %link_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp82 = icmp slt i32 %62, %64
  br i1 %cmp82, label %if.then84, label %do.end78.if.end88_crit_edge

do.end78.if.end88_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end88

if.then84:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #5
  %65 = ptrtoint ptr %link_nr to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %link_nr, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %do.end78.if.end88_crit_edge
  %link_bw90 = getelementptr inbounds %struct.dcb_output, ptr %60, i32 0, i32 13, i32 0, i32 2
  %66 = ptrtoint ptr %link_bw90 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %link_bw90, align 4
  %68 = ptrtoint ptr %link_bw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %link_bw, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp92 = icmp slt i32 %67, %69
  br i1 %cmp92, label %if.then94, label %if.end88.do.body99_crit_edge

if.end88.do.body99_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body99

if.then94:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #5
  %70 = ptrtoint ptr %link_bw to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %67, ptr %link_bw, align 4
  br label %do.body99

do.body99:                                        ; preds = %if.then94, %if.end88.do.body99_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %71 = load i32, ptr @__drm_debug, align 4
  %and.i202 = and i32 %71, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202)
  %tobool.i203.not = icmp eq i32 %and.i202, 0
  br i1 %tobool.i203.not, label %do.body99.do.end119_crit_edge, label %do.body102

do.body99.do.end119_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end119

do.body102:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #5
  %drm108 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %72 = ptrtoint ptr %drm108 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %drm108, align 8
  %dev109 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %dev109 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev109, align 8
  %dev110 = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev110, align 4
  %name111 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %78 = ptrtoint ptr %link_nr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %link_nr, align 4
  %80 = ptrtoint ptr %link_bw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %link_bw, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.9, ptr noundef %name111, i32 noundef %79, i32 noundef %81) #6
  br label %do.end119

do.end119:                                        ; preds = %do.body102, %do.body99.do.end119_crit_edge
  br i1 %tobool.not, label %do.end119.if.end145_crit_edge, label %land.lhs.true121

do.end119.if.end145_crit_edge:                    ; preds = %do.end119
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end145

land.lhs.true121:                                 ; preds = %do.end119
  %can_mst122 = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 2
  %82 = ptrtoint ptr %can_mst122 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %can_mst122, align 4, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool123.not = icmp eq i8 %83, 0
  br i1 %tobool123.not, label %land.lhs.true121.out.thread210_crit_edge, label %if.then125

land.lhs.true121.out.thread210_crit_edge:         ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.thread210

if.then125:                                       ; preds = %land.lhs.true121
  %call126 = tail call i32 @nv50_mstm_detect(ptr noundef %nv_encoder) #3
  %84 = zext i32 %call126 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call126, label %if.then125.land.lhs.true138_crit_edge [
    i32 1, label %if.then125.if.end145_crit_edge
    i32 0, label %if.then125.out.thread210_crit_edge
  ]

if.then125.out.thread210_crit_edge:               ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.thread210

if.then125.if.end145_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end145

if.then125.land.lhs.true138_crit_edge:            ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true138

out.thread210:                                    ; preds = %if.then125.out.thread210_crit_edge, %land.lhs.true121.out.thread210_crit_edge
  br label %land.lhs.true138

out:                                              ; preds = %if.then34.i, %if.end20.i.out_crit_edge
  br i1 %tobool.not, label %out.if.end145_crit_edge, label %out.land.lhs.true138_crit_edge

out.land.lhs.true138_crit_edge:                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true138

out.if.end145_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end145

land.lhs.true138:                                 ; preds = %out.land.lhs.true138_crit_edge, %out.thread210, %if.then125.land.lhs.true138_crit_edge, %if.else
  %ret.0207 = phi i32 [ 0, %out.land.lhs.true138_crit_edge ], [ %spec.select, %if.else ], [ 1, %out.thread210 ], [ %call126, %if.then125.land.lhs.true138_crit_edge ]
  %suspended139 = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 4
  %85 = ptrtoint ptr %suspended139 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %suspended139, align 2, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool140.not = icmp ne i8 %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0207)
  %cmp142.not = icmp eq i32 %ret.0207, 2
  %or.cond = select i1 %tobool140.not, i1 true, i1 %cmp142.not
  br i1 %or.cond, label %land.lhs.true138.if.end145_crit_edge, label %if.then144

land.lhs.true138.if.end145_crit_edge:             ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end145

if.then144:                                       ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @nv50_mstm_remove(ptr noundef nonnull %6) #3
  br label %if.end145

if.end145:                                        ; preds = %if.then144, %land.lhs.true138.if.end145_crit_edge, %out.if.end145_crit_edge, %if.then125.if.end145_crit_edge, %do.end119.if.end145_crit_edge, %land.lhs.true30.if.end145_crit_edge, %if.then10.if.end145_crit_edge
  %ret.0208 = phi i32 [ %ret.0207, %if.then144 ], [ %ret.0207, %land.lhs.true138.if.end145_crit_edge ], [ 0, %out.if.end145_crit_edge ], [ 1, %do.end119.if.end145_crit_edge ], [ 2, %if.then125.if.end145_crit_edge ], [ 2, %land.lhs.true30.if.end145_crit_edge ], [ 2, %if.then10.if.end145_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %hpd_irq_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end145, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0208, %if.end145 ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_mstm_detect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_mstm_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_dp_irq(ptr noundef %drm, ptr noundef %nv_connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @find_encoder(ptr noundef %nv_connector, i32 noundef 6) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.nouveau_encoder, ptr %call, i32 0, i32 12
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %3 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.do.end13_crit_edge, label %do.body4

if.end.do.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end13

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %drm6 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %drm6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm6, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  %name8 = getelementptr inbounds %struct.drm_connector, ptr %nv_connector, i32 0, i32 7
  %10 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name8, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef %name, ptr noundef %11) #6
  br label %do.end13

do.end13:                                         ; preds = %do.body4, %if.end.do.end13_crit_edge
  %hpd_irq_lock = getelementptr inbounds %struct.nouveau_encoder, ptr %call, i32 0, i32 12, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %hpd_irq_lock, i32 noundef 0) #3
  %tobool14.not = icmp eq ptr %2, null
  br i1 %tobool14.not, label %do.end13.if.else_crit_edge, label %land.lhs.true

do.end13.if.else_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

land.lhs.true:                                    ; preds = %do.end13
  %is_mst = getelementptr inbounds %struct.nv50_mstm, ptr %2, i32 0, i32 3
  %12 = ptrtoint ptr %is_mst to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_mst, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %land.lhs.true.if.else_crit_edge, label %if.then16

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else

if.then16:                                        ; preds = %land.lhs.true
  %call17 = tail call zeroext i1 @nv50_mstm_service(ptr noundef %drm, ptr noundef %nv_connector, ptr noundef nonnull %2) #3
  tail call void @mutex_unlock(ptr noundef %hpd_irq_lock) #3
  br i1 %call17, label %if.then16.cleanup_crit_edge, label %if.then16.if.then37_crit_edge

if.then16.if.then37_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end13.if.else_crit_edge
  %aux = getelementptr inbounds %struct.nouveau_connector, ptr %nv_connector, i32 0, i32 5
  tail call void @drm_dp_cec_irq(ptr noundef %aux) #3
  %dpcd.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call, i32 0, i32 12, i32 0, i32 4
  %desc.i = getelementptr inbounds %struct.nouveau_encoder, ptr %call, i32 0, i32 12, i32 0, i32 6
  %call.i = tail call zeroext i1 @drm_dp_read_sink_count_cap(ptr noundef %nv_connector, ptr noundef %dpcd.i, ptr noundef %desc.i) #3
  br i1 %call.i, label %if.then21, label %if.end38.critedge

if.then21:                                        ; preds = %if.else
  %call23 = tail call i32 @drm_dp_read_sink_count(ptr noundef %aux) #3
  %sink_count = getelementptr inbounds %struct.nouveau_encoder, ptr %call, i32 0, i32 12, i32 0, i32 7
  %14 = ptrtoint ptr %sink_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sink_count, align 4
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call23, i32 %conv)
  %cmp.not = icmp eq i32 %call23, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %cmp27 = icmp sgt i32 %call23, -1
  br i1 %cmp27, label %if.then29, label %if.end34

if.then29:                                        ; preds = %if.then21
  %conv30 = trunc i32 %call23 to i8
  %16 = ptrtoint ptr %sink_count to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv30, ptr %sink_count, align 4
  tail call void @mutex_unlock(ptr noundef %hpd_irq_lock) #3
  br i1 %cmp.not, label %if.then29.cleanup_crit_edge, label %if.then29.if.then37_crit_edge

if.then29.if.then37_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end34:                                         ; preds = %if.then21
  tail call void @mutex_unlock(ptr noundef %hpd_irq_lock) #3
  br i1 %cmp.not, label %if.end34.cleanup_crit_edge, label %if.end34.if.then37_crit_edge

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %if.then29.if.then37_crit_edge, %if.then16.if.then37_crit_edge
  tail call void @nouveau_connector_hpd(ptr noundef %nv_connector) #3
  br label %cleanup

if.end38.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mutex_unlock(ptr noundef %hpd_irq_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end38.critedge, %if.then37, %if.end34.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_encoder(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv50_mstm_service(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_cec_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_sink_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_connector_hpd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_dp_mode_valid(ptr nocapture noundef readonly %connector, ptr noundef %outp, ptr nocapture noundef readonly %mode, ptr noundef writeonly %out_clock) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpc, align 8
  %conv = mul i32 %3, 3
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.nouveau_encoder, ptr %outp, i32 0, i32 13
  %6 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %caps, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and3 = and i32 %5, 507904
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and3)
  %cmp = icmp eq i32 %and3, 16384
  %mul6 = zext i1 %cmp to i32
  %spec.select = shl i32 %1, %mul6
  %link_nr = getelementptr inbounds %struct.nouveau_encoder, ptr %outp, i32 0, i32 12, i32 0, i32 1
  %7 = ptrtoint ptr %link_nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %link_nr, align 4
  %link_bw = getelementptr inbounds %struct.nouveau_encoder, ptr %outp, i32 0, i32 12, i32 0, i32 2
  %9 = ptrtoint ptr %link_bw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %link_bw, align 4
  %mul8 = mul i32 %10, %8
  %conv9 = and i32 %conv, 255
  %mul10 = mul i32 %spec.select, %conv9
  %sub = add i32 %mul10, 7
  %div46 = lshr i32 %sub, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div46, i32 %mul8)
  %cmp11 = icmp ugt i32 %div46, %mul8
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %dpcd = getelementptr inbounds %struct.nouveau_encoder, ptr %outp, i32 0, i32 12, i32 0, i32 4
  %downstream_ports = getelementptr inbounds %struct.nouveau_encoder, ptr %outp, i32 0, i32 12, i32 0, i32 5
  %call = tail call i32 @drm_dp_downstream_max_dotclock(ptr noundef %dpcd, ptr noundef %downstream_ports) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %call)
  %cmp18 = icmp ugt i32 %spec.select, %call
  %or.cond = select i1 %tobool16.not, i1 %cmp18, i1 false
  br i1 %or.cond, label %if.end14.cleanup_crit_edge, label %if.end21

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %spec.select)
  %cmp22 = icmp ult i32 %spec.select, 25000
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %tobool26.not = icmp eq ptr %out_clock, null
  br i1 %tobool26.not, label %if.end25.cleanup_crit_edge, label %if.then27

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %out_clock to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %out_clock, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 7, %land.lhs.true.cleanup_crit_edge ], [ 15, %if.end.cleanup_crit_edge ], [ 15, %if.end14.cleanup_crit_edge ], [ 16, %if.end21.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_downstream_max_dotclock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_dpcd_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_desc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_read_mst_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_downstream_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_read_sink_count_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !26, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__UNIQUE_ID_mst323, !1, !"__UNIQUE_ID_mst323", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_dp.c", i32 35, i32 1}
!2 = !{ptr @__param_mst, !3, !"__param_mst", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nouveau_dp.c", i32 37, i32 1}
!4 = !{ptr @__UNIQUE_ID_msttype324, !3, !"__UNIQUE_ID_msttype324", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nouveau_dp.c", i32 150, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nouveau_dp_detect._entry, !6, !"_entry", i1 false, i1 false}
!12 = !{ptr @nouveau_dp_detect._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/nouveau/nouveau_dp.c", i32 153, i32 2}
!15 = !{ptr @nouveau_dp_detect._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @nouveau_dp_detect._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nouveau_dp.c", i32 162, i32 2}
!19 = !{ptr @nouveau_dp_detect._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @nouveau_dp_detect._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nouveau_dp.c", i32 197, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nouveau_dp_irq._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nouveau_dp_irq._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__param_str_mst, !3, !"__param_str_mst", i1 false, i1 false}
!27 = !{ptr @nouveau_mst, !28, !"nouveau_mst", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nouveau_dp.c", i32 36, i32 12}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i8 0, i8 2}
