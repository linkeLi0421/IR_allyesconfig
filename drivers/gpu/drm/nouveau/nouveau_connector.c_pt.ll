; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_connector.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_connector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.moderec = type { i32, i32 }
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
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.98, %struct.anon.99, %struct.anon.101, ptr, %struct.anon.102, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.103, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.115 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.98 = type { ptr, i32, i32, i8 }
%struct.anon.99 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.100] }
%struct.anon.100 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.101 = type { i64, i64 }
%struct.anon.102 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { ptr, i64 }
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
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.116, %struct.anon.117, %struct.anon.119, %union.anon.120 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.116 = type { i32, i32 }
%struct.anon.117 = type { i32, %struct.anon.118, i8 }
%struct.anon.118 = type { i32, i32, i32 }
%struct.anon.119 = type { i32, i32 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i8 }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.nvif_notify_conn_req_v0 = type { i8, i8, i8, [5 x i8] }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.nvif_notify_conn_rep_v0 = type { i8, i8, [6 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.122, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.123, %struct.anon.130, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.anon.122 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.130 = type { i8 }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.125 }
%union.anon.125 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }

@nouveau_conn_native_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 69, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: native mode from preferred\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nouveau_conn_native_mode\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/nouveau/nouveau_connector.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_conn_native_mode._entry_ptr = internal global ptr @nouveau_conn_native_mode._entry, section ".printk_index", align 4
@nouveau_conn_native_mode._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 93, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: native mode from largest: %dx%d@%d\0A\00", [56 x i8] zeroinitializer }, align 32
@nouveau_conn_native_mode._entry_ptr.7 = internal global ptr @nouveau_conn_native_mode._entry.5, section ".printk_index", align 4
@__UNIQUE_ID_tv_disable323 = internal constant [49 x i8] c"nouveau.parm=tv_disable:Disable TV-out detection\00", section ".modinfo", align 1
@nouveau_tv_disable = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_tv_disable = internal constant [19 x i8] c"nouveau.tv_disable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_tv_disable = internal constant %struct.kernel_param { ptr @__param_str_tv_disable, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_tv_disable } }, section "__param", align 4
@__UNIQUE_ID_tv_disabletype324 = internal constant [32 x i8] c"nouveau.parmtype=tv_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ignorelid325 = internal constant [46 x i8] c"nouveau.parm=ignorelid:Ignore ACPI lid status\00", section ".modinfo", align 1
@nouveau_ignorelid = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_ignorelid = internal constant [18 x i8] c"nouveau.ignorelid\00", align 1
@__param_ignorelid = internal constant %struct.kernel_param { ptr @__param_str_ignorelid, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_ignorelid } }, section "__param", align 4
@__UNIQUE_ID_ignorelidtype326 = internal constant [31 x i8] c"nouveau.parmtype=ignorelid:int\00", section ".modinfo", align 1
@__UNIQUE_ID_duallink327 = internal constant [62 x i8] c"nouveau.parm=duallink:Allow dual-link TMDS (default: enabled)\00", section ".modinfo", align 1
@nouveau_duallink = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_duallink = internal constant [17 x i8] c"nouveau.duallink\00", align 1
@__param_duallink = internal constant %struct.kernel_param { ptr @__param_str_duallink, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_duallink } }, section "__param", align 4
@__UNIQUE_ID_duallinktype328 = internal constant [30 x i8] c"nouveau.parmtype=duallink:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hdmimhz329 = internal constant [63 x i8] c"nouveau.parm=hdmimhz:Force a maximum HDMI pixel clock (in MHz)\00", section ".modinfo", align 1
@nouveau_hdmimhz = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_hdmimhz = internal constant [16 x i8] c"nouveau.hdmimhz\00", align 1
@__param_hdmimhz = internal constant %struct.kernel_param { ptr @__param_str_hdmimhz, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_hdmimhz } }, section "__param", align 4
@__UNIQUE_ID_hdmimhztype330 = internal constant [29 x i8] c"nouveau.parmtype=hdmimhz:int\00", section ".modinfo", align 1
@nouveau_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr @nouveau_conn_reset, ptr @nouveau_connector_detect, ptr @nouveau_connector_force, ptr @drm_helper_probe_single_connector_modes, ptr @nouveau_connector_set_property, ptr @nouveau_connector_late_register, ptr @nouveau_connector_early_unregister, ptr @nouveau_connector_destroy, ptr @nouveau_conn_atomic_duplicate_state, ptr @nouveau_conn_atomic_destroy_state, ptr @nouveau_conn_atomic_set_property, ptr @nouveau_conn_atomic_get_property, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nouveau_connector_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1289, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: unknown connector type %02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nouveau_connector_create\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nouveau_connector_create._entry_ptr = internal global ptr @nouveau_connector_create._entry, section ".printk_index", align 4
@nouveau_connector_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 1349, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Error parsing LVDS table, disabling\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nouveau_connector_create._entry_ptr.14 = internal global ptr @nouveau_connector_create._entry.11, section ".printk_index", align 4
@nouveau_connector_funcs_lvds = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr @nouveau_conn_reset, ptr @nouveau_connector_detect_lvds, ptr @nouveau_connector_force, ptr @drm_helper_probe_single_connector_modes, ptr @nouveau_connector_set_property, ptr @nouveau_connector_late_register, ptr @nouveau_connector_early_unregister, ptr @nouveau_connector_destroy, ptr @nouveau_conn_atomic_duplicate_state, ptr @nouveau_conn_atomic_destroy_state, ptr @nouveau_conn_atomic_set_property, ptr @nouveau_conn_atomic_get_property, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sor-%04x-%04x\00", [18 x i8] zeroinitializer }, align 32
@nouveau_connector_create._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 1367, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Failed to init AUX adapter for sor-%04x-%04x: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@nouveau_connector_create._entry_ptr.18 = internal global ptr @nouveau_connector_create._entry.16, section ".printk_index", align 4
@nouveau_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @nouveau_connector_get_modes, ptr null, ptr @nouveau_connector_mode_valid, ptr null, ptr @nouveau_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kmsHotplug\00", [21 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nouveau_connector_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 591, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: DDC responded, but no EDID for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nouveau_connector_detect\00", [39 x i8] zeroinitializer }, align 32
@nouveau_connector_detect._entry_ptr = internal global ptr @nouveau_connector_detect._entry, section ".printk_index", align 4
@nouveau_connector_force._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 754, ptr @.str.13, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: can't find encoder to force %s on!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nouveau_connector_force\00", [40 x i8] zeroinitializer }, align 32
@nouveau_connector_force._entry_ptr = internal global ptr @nouveau_connector_force._entry, section ".printk_index", align 4
@scaler_modes = internal constant { [15 x %struct.moderec], [40 x i8] } { [15 x %struct.moderec] [%struct.moderec { i32 1920, i32 1200 }, %struct.moderec { i32 1920, i32 1080 }, %struct.moderec { i32 1680, i32 1050 }, %struct.moderec { i32 1600, i32 1200 }, %struct.moderec { i32 1400, i32 1050 }, %struct.moderec { i32 1280, i32 1024 }, %struct.moderec { i32 1280, i32 960 }, %struct.moderec { i32 1152, i32 864 }, %struct.moderec { i32 1024, i32 768 }, %struct.moderec { i32 800, i32 600 }, %struct.moderec { i32 720, i32 400 }, %struct.moderec { i32 640, i32 480 }, %struct.moderec { i32 640, i32 400 }, %struct.moderec { i32 640, i32 350 }, %struct.moderec zeroinitializer], [40 x i8] zeroinitializer }, align 32
@nouveau_connector_hotplug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1178, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %splugged %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nouveau_connector_hotplug\00", [38 x i8] zeroinitializer }, align 32
@nouveau_connector_hotplug._entry_ptr = internal global ptr @nouveau_connector_hotplug._entry, section ".printk_index", align 4
@.str.26 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"un\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 64, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 14]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 10, i64 11]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 13]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 13]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 10, i64 14]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 11, i64 14]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 65, i64 71]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 16, i64 17, i64 19]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.37 = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 16, i64 17, i64 19, i64 48, i64 49, i64 56, i64 57, i64 64, i64 65, i64 70, i64 71, i64 72, i64 96, i64 97, i64 99, i64 100, i64 101, i64 112, i64 113]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 14]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 12, i64 256, i64 336]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 64, i64 65, i64 71]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6]
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 69, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 92, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"nouveau_tv_disable\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 363, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"nouveau_ignorelid\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 367, i32 5 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"nouveau_duallink\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 371, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"nouveau_hdmimhz\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 375, i32 5 }
@___asan_gen_.81 = private unnamed_addr constant [24 x i8] c"nouveau_connector_funcs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1115, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1288, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1349, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [29 x i8] c"nouveau_connector_funcs_lvds\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1132, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1361, i32 40 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1366, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant [31 x i8] c"nouveau_connector_helper_funcs\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1108, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1430, i32 45 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 590, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 753, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [13 x i8] c"scaler_modes\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 803, i32 23 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [47 x i8] c"../drivers/gpu/drm/nouveau/nouveau_connector.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 1178, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_duallink327, ptr @__UNIQUE_ID_duallinktype328, ptr @__UNIQUE_ID_hdmimhz329, ptr @__UNIQUE_ID_hdmimhztype330, ptr @__UNIQUE_ID_ignorelid325, ptr @__UNIQUE_ID_ignorelidtype326, ptr @__UNIQUE_ID_tv_disable323, ptr @__UNIQUE_ID_tv_disabletype324, ptr @__param_duallink, ptr @__param_hdmimhz, ptr @__param_ignorelid, ptr @__param_tv_disable, ptr @nouveau_conn_native_mode._entry, ptr @nouveau_conn_native_mode._entry.5, ptr @nouveau_conn_native_mode._entry_ptr, ptr @nouveau_conn_native_mode._entry_ptr.7, ptr @nouveau_connector_create._entry, ptr @nouveau_connector_create._entry.11, ptr @nouveau_connector_create._entry.16, ptr @nouveau_connector_create._entry_ptr, ptr @nouveau_connector_create._entry_ptr.14, ptr @nouveau_connector_create._entry_ptr.18, ptr @nouveau_connector_detect._entry, ptr @nouveau_connector_detect._entry_ptr, ptr @nouveau_connector_force._entry, ptr @nouveau_connector_force._entry_ptr, ptr @nouveau_connector_hotplug._entry, ptr @nouveau_connector_hotplug._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @nouveau_tv_disable, ptr @nouveau_ignorelid, ptr @nouveau_duallink, ptr @nouveau_hdmimhz, ptr @nouveau_connector_funcs, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @nouveau_connector_funcs_lvds, ptr @.str.15, ptr @.str.17, ptr @nouveau_connector_helper_funcs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @scaler_modes, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_conn_native_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_conn_native_mode._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_tv_disable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_ignorelid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_duallink to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_hdmimhz to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_connector_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_connector_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_connector_funcs_lvds to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_connector_create._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_connector_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_connector_force._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaler_modes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_connector_hotplug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_conn_native_mode(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %probed_modes = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 19
  %4 = ptrtoint ptr %probed_modes to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn128 = load ptr, ptr %probed_modes, align 4
  %cmp.not130 = icmp eq ptr %.pn128, %probed_modes
  br i1 %cmp.not130, label %entry.do.body62_crit_edge, label %for.body.lr.ph

entry.do.body62_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

for.body.lr.ph:                                   ; preds = %entry
  %helper_private = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 35
  %5 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %helper_private, align 4
  %mode_valid = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %6, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn135 = phi ptr [ %.pn128, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %largest.0134 = phi ptr [ null, %for.body.lr.ph ], [ %largest.1, %for.inc.for.body_crit_edge ]
  %high_v.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %high_v.1, %for.inc.for.body_crit_edge ]
  %high_h.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %high_h.1, %for.inc.for.body_crit_edge ]
  %high_w.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %high_w.1, %for.inc.for.body_crit_edge ]
  %mode.0136 = getelementptr i8, ptr %.pn135, i32 -64
  %7 = ptrtoint ptr %mode_valid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode_valid, align 4
  %call4 = tail call i32 %8(ptr noundef %connector, ptr noundef %mode.0136) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %flags = getelementptr i8, ptr %.pn135, i32 -40
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr i8, ptr %.pn135, i32 -2
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 2
  %13 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.end22, label %do.body

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %14 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.do.end20_crit_edge, label %do.body11

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %drm13 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %drm13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drm13, align 8
  %dev14 = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev14, align 8
  %dev15 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev15, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef %name) #15
  br label %do.end20

do.end20:                                         ; preds = %do.body11, %do.body.do.end20_crit_edge
  %call21 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %mode.0136) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %hdisplay = getelementptr i8, ptr %.pn135, i32 -60
  %21 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %hdisplay, align 4
  %conv23 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %high_w.0131, i32 %conv23)
  %cmp24 = icmp sgt i32 %high_w.0131, %conv23
  br i1 %cmp24, label %if.end22.for.inc_crit_edge, label %if.end27

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_cmp4(i32 %high_w.0131, i32 %conv23)
  %cmp30 = icmp eq i32 %high_w.0131, %conv23
  br i1 %cmp30, label %land.lhs.true, label %if.end27.if.end51_crit_edge

if.end27.if.end51_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

land.lhs.true:                                    ; preds = %if.end27
  %vdisplay = getelementptr i8, ptr %.pn135, i32 -50
  %23 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vdisplay, align 2
  %conv32 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %high_h.0132, i32 %conv32)
  %cmp33 = icmp sgt i32 %high_h.0132, %conv32
  br i1 %cmp33, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true41

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true41:                                  ; preds = %land.lhs.true
  %25 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vdisplay, align 2
  %conv43 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %high_h.0132, i32 %conv43)
  %cmp44 = icmp eq i32 %high_h.0132, %conv43
  br i1 %cmp44, label %land.lhs.true46, label %land.lhs.true41.if.end51_crit_edge

land.lhs.true41.if.end51_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

land.lhs.true46:                                  ; preds = %land.lhs.true41
  %call47 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode.0136) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call47, i32 %high_v.0133)
  %cmp48 = icmp slt i32 %call47, %high_v.0133
  br i1 %cmp48, label %land.lhs.true46.for.inc_crit_edge, label %land.lhs.true46.if.end51_crit_edge

land.lhs.true46.if.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

land.lhs.true46.for.inc_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end51:                                         ; preds = %land.lhs.true46.if.end51_crit_edge, %land.lhs.true41.if.end51_crit_edge, %if.end27.if.end51_crit_edge
  %27 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %hdisplay, align 4
  %conv53 = zext i16 %28 to i32
  %vdisplay54 = getelementptr i8, ptr %.pn135, i32 -50
  %29 = ptrtoint ptr %vdisplay54 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vdisplay54, align 2
  %conv55 = zext i16 %30 to i32
  %call56 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode.0136) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end51, %land.lhs.true46.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end22.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %high_w.1 = phi i32 [ %high_w.0131, %for.body.for.inc_crit_edge ], [ %high_w.0131, %lor.lhs.false.for.inc_crit_edge ], [ %high_w.0131, %if.end22.for.inc_crit_edge ], [ %high_w.0131, %land.lhs.true.for.inc_crit_edge ], [ %high_w.0131, %land.lhs.true46.for.inc_crit_edge ], [ %conv53, %if.end51 ]
  %high_h.1 = phi i32 [ %high_h.0132, %for.body.for.inc_crit_edge ], [ %high_h.0132, %lor.lhs.false.for.inc_crit_edge ], [ %high_h.0132, %if.end22.for.inc_crit_edge ], [ %high_h.0132, %land.lhs.true.for.inc_crit_edge ], [ %high_h.0132, %land.lhs.true46.for.inc_crit_edge ], [ %conv55, %if.end51 ]
  %high_v.1 = phi i32 [ %high_v.0133, %for.body.for.inc_crit_edge ], [ %high_v.0133, %lor.lhs.false.for.inc_crit_edge ], [ %high_v.0133, %if.end22.for.inc_crit_edge ], [ %high_v.0133, %land.lhs.true.for.inc_crit_edge ], [ %high_v.0133, %land.lhs.true46.for.inc_crit_edge ], [ %call56, %if.end51 ]
  %largest.1 = phi ptr [ %largest.0134, %for.body.for.inc_crit_edge ], [ %largest.0134, %lor.lhs.false.for.inc_crit_edge ], [ %largest.0134, %if.end22.for.inc_crit_edge ], [ %largest.0134, %land.lhs.true.for.inc_crit_edge ], [ %largest.0134, %land.lhs.true46.for.inc_crit_edge ], [ %mode.0136, %if.end51 ]
  %31 = ptrtoint ptr %.pn135 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn = load ptr, ptr %.pn135, align 4
  %cmp.not = icmp eq ptr %.pn, %probed_modes
  br i1 %cmp.not, label %for.inc.do.body62_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.body62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body62

do.body62:                                        ; preds = %for.inc.do.body62_crit_edge, %entry.do.body62_crit_edge
  %high_w.0.lcssa = phi i32 [ 0, %entry.do.body62_crit_edge ], [ %high_w.1, %for.inc.do.body62_crit_edge ]
  %high_h.0.lcssa = phi i32 [ 0, %entry.do.body62_crit_edge ], [ %high_h.1, %for.inc.do.body62_crit_edge ]
  %high_v.0.lcssa = phi i32 [ 0, %entry.do.body62_crit_edge ], [ %high_v.1, %for.inc.do.body62_crit_edge ]
  %largest.0.lcssa = phi ptr [ null, %entry.do.body62_crit_edge ], [ %largest.1, %for.inc.do.body62_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %32 = load i32, ptr @__drm_debug, align 4
  %and.i121 = and i32 %32, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %tobool.i122.not = icmp eq i32 %and.i121, 0
  br i1 %tobool.i122.not, label %do.body62.do.end80_crit_edge, label %do.body65

do.body62.do.end80_crit_edge:                     ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end80

do.body65:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #14
  %drm71 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %drm71 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drm71, align 8
  %dev72 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev72, align 8
  %dev73 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev73, align 4
  %name74 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.6, ptr noundef %name74, i32 noundef %high_w.0.lcssa, i32 noundef %high_h.0.lcssa, i32 noundef %high_v.0.lcssa) #15
  br label %do.end80

do.end80:                                         ; preds = %do.body65, %do.body62.do.end80_crit_edge
  %tobool81.not = icmp eq ptr %largest.0.lcssa, null
  br i1 %tobool81.not, label %do.end80.cleanup_crit_edge, label %cond.true

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.true:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #14
  %call82 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull %largest.0.lcssa) #12
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %do.end80.cleanup_crit_edge, %do.end20
  %retval.0 = phi ptr [ %call21, %do.end20 ], [ %call82, %cond.true ], [ null, %do.end80.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nouveau_conn_atomic_get_property(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %state, ptr noundef readnone %property, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i, align 4
  %scaling_mode_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 73
  %6 = ptrtoint ptr %scaling_mode_property to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scaling_mode_property, align 4
  %cmp = icmp eq ptr %7, %property
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %scaler = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scaler, align 4
  %conv = sext i32 %9 to i64
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %underscan_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %underscan_property to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %underscan_property, align 8
  %cmp3 = icmp eq ptr %11, %property
  br i1 %cmp3, label %if.then5, label %if.else9

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %underscan = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %underscan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %underscan, align 4
  %conv8 = zext i32 %13 to i64
  br label %cleanup.sink.split

if.else9:                                         ; preds = %if.else
  %underscan_hborder_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 8
  %14 = ptrtoint ptr %underscan_hborder_property to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %underscan_hborder_property, align 4
  %cmp10 = icmp eq ptr %15, %property
  br i1 %cmp10, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #14
  %hborder = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 2, i32 1, i32 1
  %16 = ptrtoint ptr %hborder to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hborder, align 4
  %conv15 = zext i32 %17 to i64
  br label %cleanup.sink.split

if.else16:                                        ; preds = %if.else9
  %underscan_vborder_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 9
  %18 = ptrtoint ptr %underscan_vborder_property to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %underscan_vborder_property, align 8
  %cmp17 = icmp eq ptr %19, %property
  br i1 %cmp17, label %if.then19, label %if.else23

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #14
  %vborder = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 2, i32 1, i32 2
  %20 = ptrtoint ptr %vborder to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vborder, align 4
  %conv22 = zext i32 %21 to i64
  br label %cleanup.sink.split

if.else23:                                        ; preds = %if.else16
  %dithering_mode = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 5
  %22 = ptrtoint ptr %dithering_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dithering_mode, align 8
  %cmp24 = icmp eq ptr %23, %property
  br i1 %cmp24, label %if.then26, label %if.else29

if.then26:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #14
  %dither = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 1
  %24 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dither, align 4
  %conv28 = zext i32 %25 to i64
  br label %cleanup.sink.split

if.else29:                                        ; preds = %if.else23
  %dithering_depth = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 6
  %26 = ptrtoint ptr %dithering_depth to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dithering_depth, align 4
  %cmp30 = icmp eq ptr %27, %property
  br i1 %cmp30, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #14
  %depth = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %depth, align 4
  %conv34 = zext i32 %29 to i64
  br label %cleanup.sink.split

if.else35:                                        ; preds = %if.else29
  %vibrant_hue_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 10
  %30 = ptrtoint ptr %vibrant_hue_property to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vibrant_hue_property, align 4
  %cmp36 = icmp eq ptr %31, %property
  br i1 %cmp36, label %if.then38, label %if.else40

if.then38:                                        ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #14
  %vibrant_hue = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %vibrant_hue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vibrant_hue, align 4
  %conv39 = sext i32 %33 to i64
  br label %cleanup.sink.split

if.else40:                                        ; preds = %if.else35
  %color_vibrance_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 11
  %34 = ptrtoint ptr %color_vibrance_property to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %color_vibrance_property, align 8
  %cmp41 = icmp eq ptr %35, %property
  br i1 %cmp41, label %if.then43, label %if.else40.cleanup_crit_edge

if.else40.cleanup_crit_edge:                      ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #14
  %procamp44 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 3
  %36 = ptrtoint ptr %procamp44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %procamp44, align 4
  %conv45 = sext i32 %37 to i64
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then43, %if.then38, %if.then32, %if.then26, %if.then19, %if.then12, %if.then5, %if.then
  %conv.sink = phi i64 [ %conv, %if.then ], [ %conv15, %if.then12 ], [ %conv28, %if.then26 ], [ %conv39, %if.then38 ], [ %conv45, %if.then43 ], [ %conv34, %if.then32 ], [ %conv22, %if.then19 ], [ %conv8, %if.then5 ]
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv.sink, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else40.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else40.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nouveau_conn_atomic_set_property(ptr nocapture noundef readonly %connector, ptr nocapture noundef %state, ptr noundef readnone %property, i64 noundef %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i, align 4
  %scaling_mode_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 73
  %6 = ptrtoint ptr %scaling_mode_property to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scaling_mode_property, align 4
  %cmp = icmp eq ptr %7, %property
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_switch(i64 %val, ptr @__sancov_gen_cov_switch_values)
  switch i64 %val, label %if.then.cleanup_crit_edge [
    i64 0, label %sw.bb
    i64 1, label %if.then.sw.epilog8_crit_edge
    i64 2, label %if.then.sw.epilog8_crit_edge206
    i64 3, label %if.then.sw.epilog8_crit_edge207
  ]

if.then.sw.epilog8_crit_edge207:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog8

if.then.sw.epilog8_crit_edge206:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog8

if.then.sw.epilog8_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %8 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %connector_type, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %9, label %sw.bb.sw.epilog8_crit_edge [
    i32 7, label %sw.bb.sw.bb2_crit_edge
    i32 14, label %sw.bb.sw.bb2_crit_edge208
  ]

sw.bb.sw.bb2_crit_edge208:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

sw.bb.sw.epilog8_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog8

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge208
  %oclass = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 4, i32 0, i32 4
  %11 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20592, i32 %12)
  %cmp4 = icmp slt i32 %12, 20592
  br i1 %cmp4, label %sw.bb2.cleanup_crit_edge, label %sw.bb2.sw.epilog8_crit_edge

sw.bb2.sw.epilog8_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog8

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog8:                                       ; preds = %sw.bb2.sw.epilog8_crit_edge, %sw.bb.sw.epilog8_crit_edge, %if.then.sw.epilog8_crit_edge, %if.then.sw.epilog8_crit_edge206, %if.then.sw.epilog8_crit_edge207
  %scaler = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 2
  %13 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scaler, align 4
  %conv = sext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp9.not = icmp eq i64 %conv, %val
  br i1 %cmp9.not, label %sw.epilog8.cleanup_crit_edge, label %if.then11

sw.epilog8.cleanup_crit_edge:                     ; preds = %sw.epilog8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then11:                                        ; preds = %sw.epilog8
  call void @__sanitizer_cov_trace_pc() #14
  %conv12 = trunc i64 %val to i32
  %15 = ptrtoint ptr %scaler to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv12, ptr %scaler, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %underscan_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 7
  %16 = ptrtoint ptr %underscan_property to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %underscan_property, align 8
  %cmp16 = icmp eq ptr %17, %property
  br i1 %cmp16, label %if.then18, label %if.else34

if.then18:                                        ; preds = %if.else
  %underscan = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %underscan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %underscan, align 4
  %conv21 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv21, i64 %val)
  %cmp22.not = icmp eq i64 %conv21, %val
  br i1 %cmp22.not, label %if.then18.cleanup_crit_edge, label %if.then24

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then24:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  %conv25 = trunc i64 %val to i32
  %20 = ptrtoint ptr %underscan to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv25, ptr %underscan, align 4
  br label %cleanup.sink.split

if.else34:                                        ; preds = %if.else
  %underscan_hborder_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 8
  %21 = ptrtoint ptr %underscan_hborder_property to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %underscan_hborder_property, align 4
  %cmp35 = icmp eq ptr %22, %property
  br i1 %cmp35, label %if.then37, label %if.else53

if.then37:                                        ; preds = %if.else34
  %hborder = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 2, i32 1, i32 1
  %23 = ptrtoint ptr %hborder to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hborder, align 4
  %conv40 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv40, i64 %val)
  %cmp41.not = icmp eq i64 %conv40, %val
  br i1 %cmp41.not, label %if.then37.cleanup_crit_edge, label %if.then43

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then43:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #14
  %conv44 = trunc i64 %val to i32
  %25 = ptrtoint ptr %hborder to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv44, ptr %hborder, align 4
  br label %cleanup.sink.split

if.else53:                                        ; preds = %if.else34
  %underscan_vborder_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 9
  %26 = ptrtoint ptr %underscan_vborder_property to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %underscan_vborder_property, align 8
  %cmp54 = icmp eq ptr %27, %property
  br i1 %cmp54, label %if.then56, label %if.else72

if.then56:                                        ; preds = %if.else53
  %vborder = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 2, i32 1, i32 2
  %28 = ptrtoint ptr %vborder to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vborder, align 4
  %conv59 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv59, i64 %val)
  %cmp60.not = icmp eq i64 %conv59, %val
  br i1 %cmp60.not, label %if.then56.cleanup_crit_edge, label %if.then62

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then62:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #14
  %conv63 = trunc i64 %val to i32
  %30 = ptrtoint ptr %vborder to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv63, ptr %vborder, align 4
  br label %cleanup.sink.split

if.else72:                                        ; preds = %if.else53
  %dithering_mode = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 5
  %31 = ptrtoint ptr %dithering_mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dithering_mode, align 8
  %cmp73 = icmp eq ptr %32, %property
  br i1 %cmp73, label %if.then75, label %if.else89

if.then75:                                        ; preds = %if.else72
  %dither = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 1
  %33 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dither, align 4
  %conv77 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv77, i64 %val)
  %cmp78.not = icmp eq i64 %conv77, %val
  br i1 %cmp78.not, label %if.then75.cleanup_crit_edge, label %if.then80

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then80:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #14
  %conv81 = trunc i64 %val to i32
  %35 = ptrtoint ptr %dither to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv81, ptr %dither, align 4
  br label %cleanup.sink.split

if.else89:                                        ; preds = %if.else72
  %dithering_depth = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 6
  %36 = ptrtoint ptr %dithering_depth to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dithering_depth, align 4
  %cmp90 = icmp eq ptr %37, %property
  br i1 %cmp90, label %if.then92, label %if.else106

if.then92:                                        ; preds = %if.else89
  %dither93 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 1
  %38 = ptrtoint ptr %dither93 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dither93, align 4
  %conv95 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv95, i64 %val)
  %cmp96.not = icmp eq i64 %conv95, %val
  br i1 %cmp96.not, label %if.then92.cleanup_crit_edge, label %if.then98

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then98:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #14
  %conv99 = trunc i64 %val to i32
  %depth = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv99, ptr %depth, align 4
  br label %cleanup.sink.split

if.else106:                                       ; preds = %if.else89
  %vibrant_hue_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 10
  %41 = ptrtoint ptr %vibrant_hue_property to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vibrant_hue_property, align 4
  %cmp107 = icmp eq ptr %42, %property
  br i1 %cmp107, label %if.then109, label %if.else122

if.then109:                                       ; preds = %if.else106
  %vibrant_hue = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %vibrant_hue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %vibrant_hue, align 4
  %conv110 = sext i32 %44 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv110, i64 %val)
  %cmp111.not = icmp eq i64 %conv110, %val
  br i1 %cmp111.not, label %if.then109.cleanup_crit_edge, label %if.then113

if.then109.cleanup_crit_edge:                     ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then113:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #14
  %conv114 = trunc i64 %val to i32
  %45 = ptrtoint ptr %vibrant_hue to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv114, ptr %vibrant_hue, align 4
  br label %cleanup.sink.split

if.else122:                                       ; preds = %if.else106
  %color_vibrance_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 11
  %46 = ptrtoint ptr %color_vibrance_property to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %color_vibrance_property, align 8
  %cmp123 = icmp eq ptr %47, %property
  br i1 %cmp123, label %if.then125, label %if.else122.cleanup_crit_edge

if.else122.cleanup_crit_edge:                     ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then125:                                       ; preds = %if.else122
  %procamp126 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 3
  %48 = ptrtoint ptr %procamp126 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %procamp126, align 4
  %conv127 = sext i32 %49 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv127, i64 %val)
  %cmp128.not = icmp eq i64 %conv127, %val
  br i1 %cmp128.not, label %if.then125.cleanup_crit_edge, label %if.then130

if.then125.cleanup_crit_edge:                     ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then130:                                       ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #14
  %conv131 = trunc i64 %val to i32
  %50 = ptrtoint ptr %procamp126 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv131, ptr %procamp126, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then130, %if.then113, %if.then98, %if.then80, %if.then62, %if.then43, %if.then24, %if.then11
  %.sink = phi i8 [ 64, %if.then11 ], [ 64, %if.then43 ], [ -128, %if.then80 ], [ 32, %if.then113 ], [ 32, %if.then130 ], [ -128, %if.then98 ], [ 64, %if.then62 ], [ 64, %if.then24 ]
  %set29 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %state, i32 0, i32 4
  %51 = ptrtoint ptr %set29 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %set29, align 4
  %bf.set = or i8 %bf.load, %.sink
  store i8 %bf.set, ptr %set29, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then125.cleanup_crit_edge, %if.else122.cleanup_crit_edge, %if.then109.cleanup_crit_edge, %if.then92.cleanup_crit_edge, %if.then75.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %sw.epilog8.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.else122.cleanup_crit_edge ], [ 0, %if.then18.cleanup_crit_edge ], [ 0, %if.then56.cleanup_crit_edge ], [ 0, %if.then92.cleanup_crit_edge ], [ 0, %if.then125.cleanup_crit_edge ], [ 0, %if.then109.cleanup_crit_edge ], [ 0, %if.then75.cleanup_crit_edge ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %sw.epilog8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_conn_atomic_destroy_state(ptr nocapture readnone %connector, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef %state) #12
  tail call void @kfree(ptr noundef %state) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_conn_atomic_duplicate_state(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 156) #16
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %connector, ptr noundef nonnull %call7.i) #12
  %dither = getelementptr inbounds %struct.nouveau_conn_atom, ptr %call7.i, i32 0, i32 1
  %dither2 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dither2 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %dither2, align 4
  %5 = ptrtoint ptr %dither to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %dither, align 4
  %scaler = getelementptr inbounds %struct.nouveau_conn_atom, ptr %call7.i, i32 0, i32 2
  %scaler3 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %scaler, ptr %scaler3, i32 20)
  %procamp = getelementptr inbounds %struct.nouveau_conn_atom, ptr %call7.i, i32 0, i32 3
  %procamp4 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %procamp4 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %procamp4, align 4
  %9 = ptrtoint ptr %procamp to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %procamp, align 8
  %set = getelementptr inbounds %struct.nouveau_conn_atom, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %set to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %set, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_conn_reset(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %5, 16
  %and2.i.i.i = and i32 %and.i.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 27
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %11, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge

drm_drv_uses_atomic_modeset.exit.if.then_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

drm_drv_uses_atomic_modeset.exit.if.else_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 156) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !97

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 253, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end26:                                         ; preds = %if.then
  %state = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 8
  %tobool27.not = icmp eq ptr %14, null
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef nonnull %14) #12
  tail call void @kfree(ptr noundef nonnull %14) #12
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  tail call void @__drm_atomic_helper_connector_reset(ptr noundef %connector, ptr noundef nonnull %call7.i.i) #12
  br label %if.end32

if.else:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %properties_state = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 12
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end30
  %asyc.0 = phi ptr [ %call7.i.i, %if.end30 ], [ %properties_state, %if.else ]
  %dither = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0, i32 0, i32 1
  %15 = ptrtoint ptr %dither to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 34, ptr %dither, align 4
  %depth = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %depth to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %depth, align 4
  %scaler = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0, i32 0, i32 2
  %17 = ptrtoint ptr %scaler to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %scaler, align 4
  %underscan = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %underscan to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %underscan, align 4
  %procamp = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0, i32 0, i32 3
  %19 = ptrtoint ptr %procamp to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 150, ptr %procamp, align 4
  %vibrant_hue = getelementptr inbounds %struct.nouveau_conn_atom, ptr %asyc.0, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %vibrant_hue to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 90, ptr %vibrant_hue, align 4
  %21 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %connector, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %display.i, align 4
  %oclass = getelementptr inbounds %struct.nouveau_display, ptr %26, i32 0, i32 4, i32 0, i32 4
  %27 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20592, i32 %28)
  %cmp = icmp slt i32 %28, 20592
  br i1 %cmp, label %if.then40, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then40:                                        ; preds = %if.end32
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %29 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cond = icmp eq i32 %30, 7
  br i1 %cond, label %sw.bb, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %scaler to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %scaler, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.then40.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_conn_attach_properties(ptr noundef %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %display.i, align 4
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %7, i32 0, i32 24
  %8 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %9, 16
  %and2.i.i.i = and i32 %and.i.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 27
  %12 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %15, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge

drm_drv_uses_atomic_modeset.exit.if.then_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

drm_drv_uses_atomic_modeset.exit.if.else_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %state = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state, align 8
  br label %if.end

if.else:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %properties_state = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %armc.0 = phi ptr [ %17, %if.then ], [ %properties_state, %if.else ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %18 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp eq i32 %19, 2
  br i1 %cmp, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %base = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %dvi_i_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 57
  %20 = ptrtoint ptr %dvi_i_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dvi_i_subconnector_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %21, i64 noundef 0) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %underscan_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 7
  %22 = ptrtoint ptr %underscan_property to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %underscan_property, align 8
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end6.if.end22_crit_edge, label %land.lhs.true

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end6
  %24 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %connector_type, align 8
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %25, label %land.lhs.true.if.end22_crit_edge [
    i32 3, label %land.lhs.true.if.then17_crit_edge
    i32 2, label %land.lhs.true.if.then17_crit_edge104
    i32 11, label %land.lhs.true.if.then17_crit_edge105
    i32 10, label %land.lhs.true.if.then17_crit_edge106
  ]

land.lhs.true.if.then17_crit_edge106:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

land.lhs.true.if.then17_crit_edge105:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

land.lhs.true.if.then17_crit_edge104:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then17:                                        ; preds = %land.lhs.true.if.then17_crit_edge, %land.lhs.true.if.then17_crit_edge104, %land.lhs.true.if.then17_crit_edge105, %land.lhs.true.if.then17_crit_edge106
  %base18 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  tail call void @drm_object_attach_property(ptr noundef %base18, ptr noundef nonnull %23, i64 noundef 0) #12
  %underscan_hborder_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 8
  %27 = ptrtoint ptr %underscan_hborder_property to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %underscan_hborder_property, align 4
  tail call void @drm_object_attach_property(ptr noundef %base18, ptr noundef %28, i64 noundef 0) #12
  %underscan_vborder_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 9
  %29 = ptrtoint ptr %underscan_vborder_property to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %underscan_vborder_property, align 8
  tail call void @drm_object_attach_property(ptr noundef %base18, ptr noundef %30, i64 noundef 0) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %land.lhs.true.if.end22_crit_edge, %if.end6.if.end22_crit_edge
  %vibrant_hue_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 10
  %31 = ptrtoint ptr %vibrant_hue_property to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vibrant_hue_property, align 4
  %tobool23.not = icmp eq ptr %32, null
  br i1 %tobool23.not, label %if.end22.if.end27_crit_edge, label %if.then24

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %base25 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %vibrant_hue = getelementptr inbounds %struct.nouveau_conn_atom, ptr %armc.0, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %vibrant_hue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %vibrant_hue, align 4
  %conv = sext i32 %34 to i64
  tail call void @drm_object_attach_property(ptr noundef %base25, ptr noundef nonnull %32, i64 noundef %conv) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22.if.end27_crit_edge
  %color_vibrance_property = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 11
  %35 = ptrtoint ptr %color_vibrance_property to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %color_vibrance_property, align 8
  %tobool28.not = icmp eq ptr %36, null
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %if.then29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %base30 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %procamp32 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %armc.0, i32 0, i32 3
  %37 = ptrtoint ptr %procamp32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %procamp32, align 4
  %conv33 = sext i32 %38 to i64
  tail call void @drm_object_attach_property(ptr noundef %base30, ptr noundef nonnull %36, i64 noundef %conv33) #12
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %if.end27.if.end34_crit_edge
  %39 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %connector_type, align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %40, label %if.end34.sw.epilog_crit_edge [
    i32 13, label %if.end34.sw.epilog61_crit_edge
    i32 1, label %sw.bb
  ]

if.end34.sw.epilog61_crit_edge:                   ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog61

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end34
  %oclass = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 4, i32 0, i32 4
  %42 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20592, i32 %43)
  %cmp37 = icmp slt i32 %43, 20592
  br i1 %cmp37, label %sw.bb.sw.epilog61_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb.sw.epilog61_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog61

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %if.end34.sw.epilog_crit_edge
  %base41 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %scaling_mode_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 73
  %44 = ptrtoint ptr %scaling_mode_property to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %scaling_mode_property, align 4
  %scaler = getelementptr inbounds %struct.nouveau_conn_atom, ptr %armc.0, i32 0, i32 2
  %46 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scaler, align 4
  %conv43 = sext i32 %47 to i64
  tail call void @drm_object_attach_property(ptr noundef %base41, ptr noundef %45, i64 noundef %conv43) #12
  %48 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load i32, ptr %connector_type, align 8
  %49 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %.pr, label %sw.default46 [
    i32 13, label %sw.epilog.sw.epilog61_crit_edge
    i32 1, label %sw.epilog.sw.epilog61_crit_edge107
  ]

sw.epilog.sw.epilog61_crit_edge107:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog61

sw.epilog.sw.epilog61_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog61

sw.default46:                                     ; preds = %sw.epilog
  %dithering_mode = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 5
  %50 = ptrtoint ptr %dithering_mode to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dithering_mode, align 8
  %tobool47.not = icmp eq ptr %51, null
  br i1 %tobool47.not, label %sw.default46.if.end53_crit_edge, label %if.then48

sw.default46.if.end53_crit_edge:                  ; preds = %sw.default46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then48:                                        ; preds = %sw.default46
  call void @__sanitizer_cov_trace_pc() #14
  %dither = getelementptr inbounds %struct.nouveau_conn_atom, ptr %armc.0, i32 0, i32 1
  %52 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dither, align 4
  %conv52 = zext i32 %53 to i64
  tail call void @drm_object_attach_property(ptr noundef %base41, ptr noundef nonnull %51, i64 noundef %conv52) #12
  br label %if.end53

if.end53:                                         ; preds = %if.then48, %sw.default46.if.end53_crit_edge
  %dithering_depth = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 6
  %54 = ptrtoint ptr %dithering_depth to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dithering_depth, align 4
  %tobool54.not = icmp eq ptr %55, null
  br i1 %tobool54.not, label %if.end53.sw.epilog61_crit_edge, label %if.then55

if.end53.sw.epilog61_crit_edge:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog61

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %depth = getelementptr inbounds %struct.nouveau_conn_atom, ptr %armc.0, i32 0, i32 1, i32 1
  %56 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %depth, align 4
  %conv59 = zext i32 %57 to i64
  tail call void @drm_object_attach_property(ptr noundef %base41, ptr noundef nonnull %55, i64 noundef %conv59) #12
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %if.then55, %if.end53.sw.epilog61_crit_edge, %sw.epilog.sw.epilog61_crit_edge, %sw.epilog.sw.epilog61_crit_edge107, %sw.bb.sw.epilog61_crit_edge, %if.end34.sw.epilog61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @find_encoder(ptr nocapture noundef readonly %connector, i32 noundef %type) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %2 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn32 = load ptr, ptr %encoder_list, align 4
  %cmp.not33 = icmp eq ptr %.pn32, %encoder_list
  br i1 %cmp.not33, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %possible_encoders = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %3 = ptrtoint ptr %possible_encoders to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %possible_encoders, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %type)
  %cmp5 = icmp eq i32 %type, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn34 = phi ptr [ %.pn32, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %index.i.i = getelementptr i8, ptr %.pn34, i32 36
  %5 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %6
  %and = and i32 %shl.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %cmp5, label %cleanup.split.loop.exit26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %dcb = getelementptr i8, ptr %.pn34, i32 80
  %7 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dcb, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %lor.lhs.false.for.inc_crit_edge, label %land.lhs.true

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false
  %type8 = getelementptr inbounds %struct.dcb_output, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %type8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %type)
  %cmp9 = icmp eq i32 %10, %type
  br i1 %cmp9, label %cleanup.split.loop.exit28, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.split.loop.exit26:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %enc.0.le30 = getelementptr i8, ptr %.pn34, i32 -4
  br label %cleanup

cleanup.split.loop.exit28:                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %enc.0.le = getelementptr i8, ptr %.pn34, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit28, %cleanup.split.loop.exit26, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %enc.0.le30, %cleanup.split.loop.exit26 ], [ %enc.0.le, %cleanup.split.loop.exit28 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_connector_hpd(ptr nocapture noundef readonly %connector) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %index.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i, align 4
  %shl.i = shl nuw i32 1, %5
  %hpd_lock = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %hpd_lock, i32 noundef 0) #12
  %hpd_pending = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %hpd_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hpd_pending, align 8
  %and = and i32 %7, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %7, %shl.i
  %8 = ptrtoint ptr %hpd_pending to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %hpd_pending, align 8
  %hpd_work = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %hpd_work) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %hpd_lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_connector_create(ptr noundef %dev, ptr nocapture noundef readonly %dcbe) local_unnamed_addr #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  %aux_name = alloca [48 x i8], align 1
  %dummy = alloca i8, align 1
  %.compoundliteral = alloca %struct.nvif_notify_conn_req_v0, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %display.i = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %display.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %display.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #12
  %4 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !98
  %5 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %aux_name) #12
  %7 = call ptr @memset(ptr %aux_name, i32 0, i32 48)
  %connector2 = getelementptr inbounds %struct.dcb_output, ptr %dcbe, i32 0, i32 6
  %8 = ptrtoint ptr %connector2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %connector2, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #12
  %10 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %dummy, align 1, !annotation !98
  call void @drm_connector_list_iter_begin(ptr noundef %dev, ptr noundef nonnull %conn_iter) #12
  %call3369 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #12
  %tobool.not370 = icmp eq ptr %call3369, null
  br i1 %tobool.not370, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %if.end10.while.body_crit_edge, %entry.while.body_crit_edge
  %call3371 = phi ptr [ %call3, %if.end10.while.body_crit_edge ], [ %call3369, %entry.while.body_crit_edge ]
  %connector_type.i = getelementptr inbounds %struct.drm_connector, ptr %call3371, i32 0, i32 10
  %11 = ptrtoint ptr %connector_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %connector_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 10
  br i1 %cmp.not.i, label %if.end.i, label %while.body.if.else_crit_edge

while.body.if.else_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.end.i:                                         ; preds = %while.body
  %13 = ptrtoint ptr %call3371 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call3371, align 8
  %encoder_list.i.i = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 30, i32 16
  %15 = ptrtoint ptr %encoder_list.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn32.i.i = load ptr, ptr %encoder_list.i.i, align 4
  %cmp.not33.i.i = icmp eq ptr %.pn32.i.i, %encoder_list.i.i
  br i1 %cmp.not33.i.i, label %if.end.i.if.else_crit_edge, label %for.body.lr.ph.i.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %possible_encoders.i.i = getelementptr inbounds %struct.drm_connector, ptr %call3371, i32 0, i32 40
  %16 = ptrtoint ptr %possible_encoders.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %possible_encoders.i.i, align 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn34.i.i = phi ptr [ %.pn32.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %index.i.i.i.i = getelementptr i8, ptr %.pn34.i.i, i32 36
  %18 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %19
  %and.i.i = and i32 %shl.i.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %find_encoder.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %20 = ptrtoint ptr %.pn34.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i.i = load ptr, ptr %.pn34.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %encoder_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.else_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.inc.i.i.if.else_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

find_encoder.exit.i:                              ; preds = %for.body.i.i
  %enc.0.le30.i.i = getelementptr i8, ptr %.pn34.i.i, i32 -4
  %tobool.not.i = icmp eq ptr %enc.0.le30.i.i, null
  br i1 %tobool.not.i, label %find_encoder.exit.i.if.else_crit_edge, label %nouveau_connector_is_mst.exit

find_encoder.exit.i.if.else_crit_edge:            ; preds = %find_encoder.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

nouveau_connector_is_mst.exit:                    ; preds = %find_encoder.exit.i
  %encoder_type.i = getelementptr i8, ptr %.pn34.i.i, i32 32
  %21 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %encoder_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %22)
  %cmp4.i = icmp eq i32 %22, 7
  br i1 %cmp4.i, label %nouveau_connector_is_mst.exit.if.end10_crit_edge, label %nouveau_connector_is_mst.exit.if.else_crit_edge

nouveau_connector_is_mst.exit.if.else_crit_edge:  ; preds = %nouveau_connector_is_mst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

nouveau_connector_is_mst.exit.if.end10_crit_edge: ; preds = %nouveau_connector_is_mst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.else:                                          ; preds = %nouveau_connector_is_mst.exit.if.else_crit_edge, %find_encoder.exit.i.if.else_crit_edge, %for.inc.i.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %while.body.if.else_crit_edge
  %index6 = getelementptr inbounds %struct.nouveau_connector, ptr %call3371, i32 0, i32 2
  %23 = ptrtoint ptr %index6 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index6, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %9)
  %cmp = icmp eq i8 %24, %9
  br i1 %cmp, label %if.then9, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #12
  br label %cleanup

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %nouveau_connector_is_mst.exit.if.end10_crit_edge
  %call3 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #12
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end10.while.end_crit_edge, label %if.end10.while.body_crit_edge

if.end10.while.body_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end10.while.end_crit_edge, %entry.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 3056) #16
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %while.end.cleanup_crit_edge, label %if.end15

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %while.end
  %index17 = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %index17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %9, ptr %index17, align 4
  %call19 = call ptr @olddcb_conn(ptr noundef %dev, i8 noundef zeroext %9) #12
  %dcb = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %dcb to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call19, ptr %dcb, align 8
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.else74, label %if.then22

if.then22:                                        ; preds = %if.end15
  %call27 = call ptr @olddcb_conntab(ptr noundef %dev) #12
  %28 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dcb, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv40 = zext i8 %31 to i32
  %type41 = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv40, ptr %type41, align 8
  %call43 = call fastcc i32 @drm_conntype_from_dcb(i32 noundef %conv40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %do.body, label %if.then22.if.end55_crit_edge

if.then22.if.end55_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

do.body:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  %drm48 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %drm48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drm48, align 8
  %dev49 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev49, align 8
  %dev50 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev50, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.8, ptr noundef %name, i32 noundef %conv40) #15
  %39 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 255, ptr %type41, align 8
  br label %if.end55

if.end55:                                         ; preds = %do.body, %if.then22.if.end55_crit_edge
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %40 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i, align 4
  %device2.i = getelementptr i8, ptr %41, i32 -102
  %42 = ptrtoint ptr %device2.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %device2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1057, i16 %43)
  %cmp.i = icmp eq i16 %43, 1057
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end55.if.end64_crit_edge

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

land.lhs.true.i:                                  ; preds = %if.end55
  %subsystem_vendor.i = getelementptr i8, ptr %41, i32 -100
  %44 = ptrtoint ptr %subsystem_vendor.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %subsystem_vendor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5208, i16 %45)
  %cmp5.i = icmp eq i16 %45, 5208
  br i1 %cmp5.i, label %nv_match_device.exit, label %land.lhs.true.i.if.end64thread-pre-split_crit_edge

land.lhs.true.i.if.end64thread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64thread-pre-split

nv_match_device.exit:                             ; preds = %land.lhs.true.i
  %subsystem_device.i = getelementptr i8, ptr %41, i32 -98
  %46 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %subsystem_device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13388, i16 %47)
  %cmp8.i = icmp eq i16 %47, 13388
  br i1 %cmp8.i, label %if.then57, label %nv_match_device.exit.if.end64thread-pre-split_crit_edge

nv_match_device.exit.if.end64thread-pre-split_crit_edge: ; preds = %nv_match_device.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64thread-pre-split

if.then57:                                        ; preds = %nv_match_device.exit
  %48 = ptrtoint ptr %type41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %49)
  %cmp59 = icmp eq i32 %49, 97
  br i1 %cmp59, label %if.then61, label %if.then57.if.end64thread-pre-split_crit_edge

if.then57.if.end64thread-pre-split_crit_edge:     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64thread-pre-split

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #14
  %50 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 48, ptr %type41, align 8
  br label %if.end64thread-pre-split

if.end64thread-pre-split:                         ; preds = %if.then61, %if.then57.if.end64thread-pre-split_crit_edge, %nv_match_device.exit.if.end64thread-pre-split_crit_edge, %land.lhs.true.i.if.end64thread-pre-split_crit_edge
  %51 = ptrtoint ptr %device2.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %.pr379 = load i16, ptr %device2.i, align 2
  br label %if.end64

if.end64:                                         ; preds = %if.end64thread-pre-split, %if.end55.if.end64_crit_edge
  %52 = phi i16 [ %.pr379, %if.end64thread-pre-split ], [ %43, %if.end55.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1026, i16 %52)
  %cmp.i356 = icmp eq i16 %52, 1026
  br i1 %cmp.i356, label %land.lhs.true.i359, label %if.end64.if.end76_crit_edge

if.end64.if.end76_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

land.lhs.true.i359:                               ; preds = %if.end64
  %subsystem_vendor.i357 = getelementptr i8, ptr %41, i32 -100
  %53 = ptrtoint ptr %subsystem_vendor.i357 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %subsystem_vendor.i357, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5208, i16 %54)
  %cmp5.i358 = icmp eq i16 %54, 5208
  br i1 %cmp5.i358, label %nv_match_device.exit364, label %land.lhs.true.i359.if.end76_crit_edge

land.lhs.true.i359.if.end76_crit_edge:            ; preds = %land.lhs.true.i359
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

nv_match_device.exit364:                          ; preds = %land.lhs.true.i359
  %subsystem_device.i360 = getelementptr i8, ptr %41, i32 -98
  %55 = ptrtoint ptr %subsystem_device.i360 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %subsystem_device.i360, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13397, i16 %56)
  %cmp8.i362 = icmp eq i16 %56, 13397
  br i1 %cmp8.i362, label %if.then66, label %nv_match_device.exit364.if.end76_crit_edge

nv_match_device.exit364.if.end76_crit_edge:       ; preds = %nv_match_device.exit364
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then66:                                        ; preds = %nv_match_device.exit364
  %57 = ptrtoint ptr %type41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %58)
  %cmp68 = icmp eq i32 %58, 97
  br i1 %cmp68, label %if.then70, label %if.then66.if.end76_crit_edge

if.then66.if.end76_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end76

if.then70:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %type41 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 48, ptr %type41, align 8
  br label %if.end76

if.else74:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %type75 = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %type75 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 255, ptr %type75, align 8
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then70, %if.then66.if.end76_crit_edge, %nv_match_device.exit364.if.end76_crit_edge, %land.lhs.true.i359.if.end76_crit_edge, %if.end64.if.end76_crit_edge
  %type77 = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %type77 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %62)
  %cmp78 = icmp eq i32 %62, 255
  br i1 %cmp78, label %if.then80, label %if.end76.if.end141_crit_edge

if.end76.if.end141_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.then80:                                        ; preds = %if.end76
  %63 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_private.i, align 4
  %entries = getelementptr inbounds %struct.nouveau_drm, ptr %64, i32 0, i32 18, i32 22, i32 1
  %65 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp84372 = icmp sgt i32 %66, 0
  br i1 %cmp84372, label %for.body.lr.ph, label %if.then80.if.end141_crit_edge

if.then80.if.end141_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

for.body.lr.ph:                                   ; preds = %if.then80
  %67 = ptrtoint ptr %index17 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %index17, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0374 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %encoders.0373 = phi i32 [ 0, %for.body.lr.ph ], [ %encoders.1, %for.inc.for.body_crit_edge ]
  %connector88 = getelementptr %struct.nouveau_drm, ptr %64, i32 0, i32 18, i32 22, i32 2, i32 %i.0374, i32 6
  %69 = ptrtoint ptr %connector88 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %connector88, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %70, i8 %68)
  %cmp92 = icmp eq i8 %70, %68
  br i1 %cmp92, label %if.then94, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then94:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %type97 = getelementptr %struct.nouveau_drm, ptr %64, i32 0, i32 18, i32 22, i32 2, i32 %i.0374, i32 3
  %71 = ptrtoint ptr %type97 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type97, align 4
  %shl98 = shl nuw i32 1, %72
  %or99 = or i32 %shl98, %encoders.0373
  br label %for.inc

for.inc:                                          ; preds = %if.then94, %for.body.for.inc_crit_edge
  %encoders.1 = phi i32 [ %or99, %if.then94 ], [ %encoders.0373, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0374, 1
  %exitcond.not = icmp eq i32 %inc, %66
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %and = and i32 %encoders.1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool101.not = icmp eq i32 %and, 0
  %and111 = and i32 %encoders.1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  br i1 %tobool101.not, label %if.else110, label %if.then102

if.then102:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %. = select i1 %tobool112.not, i32 71, i32 70
  br label %if.end141.sink.split

if.else110:                                       ; preds = %for.end
  %and122 = and i32 %encoders.1, 1
  br i1 %tobool112.not, label %if.else121, label %if.then113

if.then113:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #14
  %73 = xor i32 %and122, 49
  br label %if.end141.sink.split

if.else121:                                       ; preds = %if.else110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122)
  %tobool123.not = icmp eq i32 %and122, 0
  br i1 %tobool123.not, label %if.else126, label %if.else121.if.end141.sink.split_crit_edge

if.else121.if.end141.sink.split_crit_edge:        ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.sink.split

if.else126:                                       ; preds = %if.else121
  %and127 = and i32 %encoders.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.else131, label %if.else126.if.end141.sink.split_crit_edge

if.else126.if.end141.sink.split_crit_edge:        ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.sink.split

if.else131:                                       ; preds = %if.else126
  %and132 = and i32 %encoders.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %if.else131.if.end141_crit_edge, label %if.else131.if.end141.sink.split_crit_edge

if.else131.if.end141.sink.split_crit_edge:        ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141.sink.split

if.else131.if.end141_crit_edge:                   ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end141

if.end141.sink.split:                             ; preds = %if.else131.if.end141.sink.split_crit_edge, %if.else126.if.end141.sink.split_crit_edge, %if.else121.if.end141.sink.split_crit_edge, %if.then113, %if.then102
  %.sink401 = phi i32 [ %., %if.then102 ], [ %73, %if.then113 ], [ 0, %if.else121.if.end141.sink.split_crit_edge ], [ 64, %if.else126.if.end141.sink.split_crit_edge ], [ 16, %if.else131.if.end141.sink.split_crit_edge ]
  %74 = ptrtoint ptr %type77 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %.sink401, ptr %type77, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.end141.sink.split, %if.else131.if.end141_crit_edge, %if.then80.if.end141_crit_edge, %if.end76.if.end141_crit_edge
  %75 = ptrtoint ptr %type77 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type77, align 8
  %call143 = call fastcc i32 @drm_conntype_from_dcb(i32 noundef %76)
  %77 = zext i32 %call143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call143, label %if.end141.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 10, label %if.end141.sw.bb162_crit_edge
    i32 14, label %if.end141.sw.bb162_crit_edge410
  ]

if.end141.sw.bb162_crit_edge410:                  ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162

if.end141.sw.bb162_crit_edge:                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb162

if.end141.sw.epilog_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end141
  %call144 = call i32 @nouveau_bios_parse_lvds_table(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %dummy, ptr noundef nonnull %dummy) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %sw.bb.sw.epilog_crit_edge, label %do.body147

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.body147:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %drm153 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %78 = ptrtoint ptr %drm153 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %drm153, align 8
  %dev154 = getelementptr inbounds %struct.nouveau_drm, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %dev154 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev154, align 8
  %dev155 = getelementptr inbounds %struct.drm_device, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %dev155 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev155, align 4
  %name156 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.12, ptr noundef %name156) #15
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  %84 = inttoptr i32 %call144 to ptr
  br label %cleanup

sw.bb162:                                         ; preds = %if.end141.sw.bb162_crit_edge, %if.end141.sw.bb162_crit_edge410
  %kdev = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %kdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %kdev, align 4
  %aux = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 5
  %dev163 = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 5, i32 2
  %87 = ptrtoint ptr %dev163 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %dev163, align 8
  %drm_dev = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 5, i32 3
  %88 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %dev, ptr %drm_dev, align 4
  %transfer = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 5, i32 8
  %89 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @nouveau_connector_aux_xfer, ptr %transfer, align 8
  %hasht = getelementptr inbounds %struct.dcb_output, ptr %dcbe, i32 0, i32 1
  %90 = ptrtoint ptr %hasht to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %hasht, align 4
  %conv167 = zext i16 %91 to i32
  %hashm = getelementptr inbounds %struct.dcb_output, ptr %dcbe, i32 0, i32 2
  %92 = ptrtoint ptr %hashm to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %hashm, align 2
  %conv168 = zext i16 %93 to i32
  %call169 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %aux_name, i32 noundef 48, ptr noundef nonnull @.str.15, i32 noundef %conv167, i32 noundef %conv168)
  %call171 = call noalias ptr @kstrdup(ptr noundef nonnull %aux_name, i32 noundef 3264) #12
  %94 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call171, ptr %aux, align 8
  call void @drm_dp_aux_init(ptr noundef %aux) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb162, %sw.bb.sw.epilog_crit_edge, %if.end141.sw.epilog_crit_edge
  %funcs.0 = phi ptr [ @nouveau_connector_funcs_lvds, %sw.bb.sw.epilog_crit_edge ], [ @nouveau_connector_funcs, %sw.bb162 ], [ @nouveau_connector_funcs, %if.end141.sw.epilog_crit_edge ]
  %disp196 = getelementptr inbounds %struct.nouveau_display, ptr %3, i32 0, i32 4
  %oclass = getelementptr inbounds %struct.nouveau_display, ptr %3, i32 0, i32 4, i32 0, i32 4
  %95 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33391, i32 %96)
  %cmp197 = icmp sgt i32 %96, 33391
  br i1 %cmp197, label %land.lhs.true, label %sw.epilog.if.end207_crit_edge

sw.epilog.if.end207_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

land.lhs.true:                                    ; preds = %sw.epilog
  %97 = zext i32 %call143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call143, label %land.lhs.true.if.end207_crit_edge [
    i32 10, label %land.lhs.true.if.then206_crit_edge
    i32 14, label %land.lhs.true.if.then206_crit_edge411
    i32 11, label %land.lhs.true.if.then206_crit_edge412
  ]

land.lhs.true.if.then206_crit_edge412:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then206

land.lhs.true.if.then206_crit_edge411:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then206

land.lhs.true.if.then206_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then206

land.lhs.true.if.end207_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.then206:                                       ; preds = %land.lhs.true.if.then206_crit_edge, %land.lhs.true.if.then206_crit_edge411, %land.lhs.true.if.then206_crit_edge412
  %stereo_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 14
  %98 = ptrtoint ptr %stereo_allowed to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %stereo_allowed, align 2
  br label %if.end207

if.end207:                                        ; preds = %if.then206, %land.lhs.true.if.end207_crit_edge, %sw.epilog.if.end207_crit_edge
  %interlace_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 12
  %99 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %interlace_allowed, align 8
  %doublescan_allowed = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 13
  %100 = ptrtoint ptr %doublescan_allowed to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %doublescan_allowed, align 1
  %call208 = call i32 @drm_connector_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %funcs.0, i32 noundef %call143) #12
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 35
  %101 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @nouveau_connector_helper_funcs, ptr %helper_private.i, align 4
  %funcs209 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 21
  %102 = ptrtoint ptr %funcs209 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %funcs209, align 8
  %reset = getelementptr inbounds %struct.drm_connector_funcs, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reset, align 4
  call void %105(ptr noundef nonnull %call7.i.i) #12
  call void @nouveau_conn_attach_properties(ptr noundef nonnull %call7.i.i)
  %106 = ptrtoint ptr %type77 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type77, align 8
  %108 = zext i32 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %107, label %sw.default220 [
    i32 64, label %if.end207.sw.bb211_crit_edge
    i32 65, label %if.end207.sw.bb211_crit_edge413
    i32 71, label %if.end207.sw.bb211_crit_edge414
  ]

if.end207.sw.bb211_crit_edge414:                  ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb211

if.end207.sw.bb211_crit_edge413:                  ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb211

if.end207.sw.bb211_crit_edge:                     ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb211

sw.bb211:                                         ; preds = %if.end207.sw.bb211_crit_edge, %if.end207.sw.bb211_crit_edge413, %if.end207.sw.bb211_crit_edge414
  %109 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 20592, i32 %110)
  %cmp215 = icmp slt i32 %110, 20592
  %spec.select = zext i1 %cmp215 to i32
  %111 = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 7
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %spec.select, ptr %111, align 4
  %113 = ptrtoint ptr %type77 to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr = load i32, ptr %type77, align 8
  br label %sw.epilog222

sw.default220:                                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  %scaling_mode221 = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 7
  %114 = ptrtoint ptr %scaling_mode221 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %scaling_mode221, align 4
  br label %sw.epilog222

sw.epilog222:                                     ; preds = %sw.default220, %sw.bb211
  %115 = phi i32 [ %.pr, %sw.bb211 ], [ %107, %sw.default220 ]
  %116 = zext i32 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %115, label %sw.default225 [
    i32 16, label %sw.epilog222.sw.epilog226_crit_edge
    i32 17, label %sw.epilog222.sw.epilog226_crit_edge415
    i32 19, label %sw.epilog222.sw.epilog226_crit_edge416
    i32 0, label %sw.epilog222.sw.epilog226_crit_edge417
  ]

sw.epilog222.sw.epilog226_crit_edge417:           ; preds = %sw.epilog222
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog226

sw.epilog222.sw.epilog226_crit_edge416:           ; preds = %sw.epilog222
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog226

sw.epilog222.sw.epilog226_crit_edge415:           ; preds = %sw.epilog222
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog226

sw.epilog222.sw.epilog226_crit_edge:              ; preds = %sw.epilog222
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog226

sw.default225:                                    ; preds = %sw.epilog222
  call void @__sanitizer_cov_trace_pc() #14
  %dithering_mode = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 6
  %117 = ptrtoint ptr %dithering_mode to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 34, ptr %dithering_mode, align 8
  br label %sw.epilog226

sw.epilog226:                                     ; preds = %sw.default225, %sw.epilog222.sw.epilog226_crit_edge, %sw.epilog222.sw.epilog226_crit_edge415, %sw.epilog222.sw.epilog226_crit_edge416, %sw.epilog222.sw.epilog226_crit_edge417
  %118 = zext i32 %call143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call143, label %sw.epilog226.sw.epilog229_crit_edge [
    i32 10, label %sw.epilog226.sw.bb227_crit_edge
    i32 14, label %sw.epilog226.sw.bb227_crit_edge418
  ]

sw.epilog226.sw.bb227_crit_edge418:               ; preds = %sw.epilog226
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb227

sw.epilog226.sw.bb227_crit_edge:                  ; preds = %sw.epilog226
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb227

sw.epilog226.sw.epilog229_crit_edge:              ; preds = %sw.epilog226
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog229

sw.bb227:                                         ; preds = %sw.epilog226.sw.bb227_crit_edge, %sw.epilog226.sw.bb227_crit_edge418
  %aux228 = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 5
  call void @drm_dp_cec_register_connector(ptr noundef %aux228, ptr noundef nonnull %call7.i.i) #12
  br label %sw.epilog229

sw.epilog229:                                     ; preds = %sw.bb227, %sw.epilog226.sw.epilog229_crit_edge
  %119 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %.compoundliteral, align 1
  %mask = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %.compoundliteral, i32 0, i32 1
  %120 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 7, ptr %mask, align 1
  %conn = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %.compoundliteral, i32 0, i32 2
  %121 = ptrtoint ptr %conn to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %9, ptr %conn, align 1
  %pad03 = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %.compoundliteral, i32 0, i32 3
  %122 = call ptr @memset(ptr %pad03, i32 0, i32 5)
  %hpd = getelementptr inbounds %struct.nouveau_connector, ptr %call7.i.i, i32 0, i32 4
  %call233 = call i32 @nvif_notify_ctor(ptr noundef %disp196, ptr noundef nonnull @.str.19, ptr noundef nonnull @nouveau_connector_hotplug, i1 noundef zeroext true, i8 noundef zeroext 1, ptr noundef nonnull %.compoundliteral, i32 noundef 8, i32 noundef 8, ptr noundef %hpd) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  %spec.select402 = select i1 %tobool234.not, i8 1, i8 2
  %123 = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i, i32 0, i32 33
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %spec.select402, ptr %123, align 4
  %call239 = call i32 @drm_connector_register(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog229, %do.body147, %while.end.cleanup_crit_edge, %if.then9
  %retval.0 = phi ptr [ %call3371, %if.then9 ], [ %call7.i.i, %sw.epilog229 ], [ %84, %do.body147 ], [ inttoptr (i32 -12 to ptr), %while.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %aux_name) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @olddcb_conn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @olddcb_conntab(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @drm_conntype_from_dcb(i32 noundef %dcb) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %dcb to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %dcb, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 16, label %entry.sw.bb1_crit_edge
    i32 17, label %entry.sw.bb1_crit_edge9
    i32 19, label %entry.sw.bb1_crit_edge10
    i32 56, label %entry.sw.bb2_crit_edge
    i32 57, label %entry.sw.bb2_crit_edge11
    i32 48, label %entry.sw.bb2_crit_edge12
    i32 49, label %sw.bb3
    i32 64, label %entry.sw.bb4_crit_edge
    i32 65, label %entry.sw.bb4_crit_edge13
    i32 100, label %entry.sw.bb5_crit_edge
    i32 101, label %entry.sw.bb5_crit_edge14
    i32 70, label %entry.sw.bb5_crit_edge15
    i32 72, label %entry.sw.bb5_crit_edge16
    i32 113, label %entry.sw.bb5_crit_edge17
    i32 71, label %sw.bb6
    i32 96, label %entry.sw.bb7_crit_edge
    i32 97, label %entry.sw.bb7_crit_edge18
    i32 99, label %entry.sw.bb7_crit_edge19
    i32 112, label %sw.bb8
  ]

entry.sw.bb7_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb7

entry.sw.bb5_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5

entry.sw.bb4_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb4

entry.sw.bb2_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb1

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge9, %entry.sw.bb1_crit_edge10
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge11, %entry.sw.bb2_crit_edge12
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge13
  br label %return

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge14, %entry.sw.bb5_crit_edge15, %entry.sw.bb5_crit_edge16, %entry.sw.bb5_crit_edge17
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge18, %entry.sw.bb7_crit_edge19
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 15, %sw.bb8 ], [ 11, %sw.bb7 ], [ 14, %sw.bb6 ], [ 10, %sw.bb5 ], [ 7, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 13, %sw.bb1 ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bios_parse_lvds_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_connector_aux_xfer(ptr nocapture noundef readonly %obj, ptr nocapture noundef %msg) #0 align 64 {
entry:
  %size = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %obj, i32 -1136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %size) #12
  %size1 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %size1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size1, align 4
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %size, align 1
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 16
  %5 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn32.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not33.i = icmp eq ptr %.pn32.i, %encoder_list.i
  br i1 %cmp.not33.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %possible_encoders.i = getelementptr i8, ptr %obj, i32 -320
  %6 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn34.i = phi ptr [ %.pn32.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn34.i, i32 36
  %8 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %9
  %and.i = and i32 %shl.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %dcb.i = getelementptr i8, ptr %.pn34.i, i32 80
  %10 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dcb.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %if.else.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %type8.i = getelementptr inbounds %struct.dcb_output, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %type8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %13)
  %cmp9.i = icmp eq i32 %13, 6
  br i1 %cmp9.i, label %find_encoder.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %14 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn34.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

find_encoder.exit:                                ; preds = %land.lhs.true.i
  %enc.0.le.i = getelementptr i8, ptr %.pn34.i, i32 -4
  %tobool.not = icmp eq ptr %enc.0.le.i, null
  br i1 %tobool.not, label %find_encoder.exit.cleanup_crit_edge, label %lor.lhs.false

find_encoder.exit.cleanup_crit_edge:              ; preds = %find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %find_encoder.exit
  %aux2 = getelementptr i8, ptr %.pn34.i, i32 96
  %15 = ptrtoint ptr %aux2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux2, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ugt i32 %1, 16
  br i1 %cmp, label %do.end, label %if.end30, !prof !97

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1197, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end30:                                         ; preds = %if.end
  %call31 = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef nonnull %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %request = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %request to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %request, align 4
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg, align 4
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  %call35 = call i32 @nvkm_i2c_aux_xfer(ptr noundef nonnull %16, i1 noundef zeroext false, i8 noundef zeroext %18, i32 noundef %20, ptr noundef %22, ptr noundef nonnull %size) #12
  call void @nvkm_i2c_aux_release(ptr noundef nonnull %16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %cmp36 = icmp sgt i32 %call35, -1
  br i1 %cmp36, label %if.then38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  %conv39 = trunc i32 %call35 to i8
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %23 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv39, ptr %reply, align 1
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %size, align 1
  %conv40 = zext i8 %25 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %find_encoder.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -7, %do.end ], [ %conv40, %if.then38 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %find_encoder.exit.cleanup_crit_edge ], [ %call31, %if.end30.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %size) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_cec_register_connector(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_connector_hotplug(ptr noundef %notify) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notify, i32 -1052
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %data = getelementptr inbounds %struct.nvif_notify, ptr %notify, i32 0, i32 7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %mask = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.not = icmp eq i8 %7, 2
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nouveau_dp_irq(ptr noundef %3, ptr noundef %add.ptr) #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %9 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.do.end19_crit_edge, label %do.body7

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end19

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %drm9 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %drm9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drm9, align 8
  %dev10 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev10, align 8
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %cond = select i1 %cmp.not, ptr @.str.27, ptr @.str.26
  %name14 = getelementptr i8, ptr %notify, i32 -1000
  %16 = ptrtoint ptr %name14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name14, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull %cond, ptr noundef %17) #15
  br label %do.end19

do.end19:                                         ; preds = %do.body7, %do.body.do.end19_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_private.i.i, align 4
  %index.i.i = getelementptr i8, ptr %notify, i32 -904
  %22 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i, align 4
  %shl.i.i = shl nuw i32 1, %23
  %hpd_lock.i = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %hpd_lock.i, i32 noundef 0) #12
  %hpd_pending.i = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 22
  %24 = ptrtoint ptr %hpd_pending.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hpd_pending.i, align 8
  %and.i32 = and i32 %25, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i32)
  %tobool.not.i = icmp eq i32 %and.i32, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end19.nouveau_connector_hpd.exit_crit_edge

do.end19.nouveau_connector_hpd.exit_crit_edge:    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_connector_hpd.exit

if.then.i:                                        ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  %or.i = or i32 %25, %shl.i.i
  %26 = ptrtoint ptr %hpd_pending.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %hpd_pending.i, align 8
  %hpd_work.i = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %hpd_work.i) #12
  br label %nouveau_connector_hpd.exit

nouveau_connector_hpd.exit:                       ; preds = %if.then.i, %do.end19.nouveau_connector_hpd.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %hpd_lock.i) #12
  br label %cleanup

cleanup:                                          ; preds = %nouveau_connector_hpd.exit, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_connector_dpms(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_connector_detect(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  %reg.addr.i.i.i = alloca i8, align 1
  %val.i.i.i = alloca i8, align 1
  %msgs.i.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %call3 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #12
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  br i1 %call3, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !99
  br label %if.end11

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp7.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp7.not
  br i1 %or.cond, label %if.else.if.end11_crit_edge, label %if.then8

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.else
  %7 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev4, align 4
  %call.i169 = tail call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #12
  %edid1.i = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 9
  %9 = ptrtoint ptr %edid1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edid1.i, align 4
  %cmp.not.i = icmp eq ptr %10, null
  br i1 %cmp.not.i, label %if.then8.cleanup110_crit_edge, label %if.then.i

if.then8.cleanup110_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup110

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %call.i170 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #12
  tail call void @kfree(ptr noundef nonnull %10) #12
  %11 = ptrtoint ptr %edid1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %edid1.i, align 4
  br label %cleanup110

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then
  %12 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connector, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 16
  %14 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn73.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not76.i = icmp eq ptr %.pn73.i, %encoder_list.i
  br i1 %cmp.not76.i, label %if.end11.if.else74_crit_edge, label %for.body.lr.ph.i

if.end11.if.else74_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else74

for.body.lr.ph.i:                                 ; preds = %if.end11
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %15 = getelementptr inbounds i8, ptr %msgs.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 1
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 0, i32 3
  %arrayinit.element.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1
  %flags4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 1
  %len5.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 2
  %buf6.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i.i, i32 1, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn77.i = phi ptr [ %.pn73.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %encoder.078.i = getelementptr i8, ptr %.pn77.i, i32 -4
  %16 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i.i = getelementptr i8, ptr %.pn77.i, i32 36
  %18 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %19
  %and.i = and i32 %shl.i.i, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %dcb.i = getelementptr i8, ptr %.pn77.i, i32 80
  %20 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dcb.i, align 4
  %type.i = getelementptr inbounds %struct.dcb_output, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cond.i = icmp eq i32 %23, 6
  br i1 %cond.i, label %sw.bb.i, label %sw.default.i

sw.bb.i:                                          ; preds = %if.else.i
  %call12.i = call i32 @nouveau_dp_detect(ptr noundef %connector, ptr noundef %encoder.078.i) #12
  %24 = zext i32 %call12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call12.i, label %sw.bb.i.for.inc.i_crit_edge [
    i32 2, label %sw.bb.i.if.else74_crit_edge
    i32 1, label %sw.epilog.i
  ]

sw.bb.i.if.else74_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else74

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.default.i:                                     ; preds = %if.else.i
  %i2c.i = getelementptr i8, ptr %.pn77.i, i32 92
  %25 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c.i, align 4
  %tobool25.not.i = icmp eq ptr %26, null
  br i1 %tobool25.not.i, label %sw.default.i.for.inc.i_crit_edge, label %if.end31.i

sw.default.i.for.inc.i_crit_edge:                 ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end31.i:                                       ; preds = %sw.default.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #12
  %27 = ptrtoint ptr %reg.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %reg.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.i.i.i) #12
  %28 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %val.i.i.i, align 1, !annotation !98
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i.i) #12
  %29 = call ptr @memset(ptr %15, i32 255, i32 16)
  %30 = ptrtoint ptr %msgs.i.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 80, ptr %msgs.i.i.i, align 4
  %31 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i.i.i, align 2
  %32 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %15, align 4
  %33 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %reg.addr.i.i.i, ptr %buf.i.i.i, align 4
  %34 = ptrtoint ptr %arrayinit.element.i.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 80, ptr %arrayinit.element.i.i.i, align 4
  %35 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1, ptr %flags4.i.i.i, align 2
  %36 = ptrtoint ptr %len5.i.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %len5.i.i.i, align 4
  %37 = ptrtoint ptr %buf6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %val.i.i.i, ptr %buf6.i.i.i, align 4
  %call.i.i.i171 = call i32 @i2c_transfer(ptr noundef nonnull %26, ptr noundef nonnull %msgs.i.i.i, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i171)
  %cmp.not.i.i.i = icmp ne i32 %call.i.i.i171, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg.addr.i.i.i) #12
  %tobool40.not.i = icmp eq ptr %encoder.078.i, null
  %or.cond.i = select i1 %cmp.not.i.i.i, i1 true, i1 %tobool40.not.i
  br i1 %or.cond.i, label %if.end31.i.for.inc.i_crit_edge, label %if.end31.i.land.lhs.true13_crit_edge

if.end31.i.land.lhs.true13_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13

if.end31.i.for.inc.i_crit_edge:                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

sw.epilog.i:                                      ; preds = %sw.bb.i
  %tobool40.not.old.i = icmp eq ptr %encoder.078.i, null
  br i1 %tobool40.not.old.i, label %sw.epilog.i.for.inc.i_crit_edge, label %sw.epilog.i.land.lhs.true13_crit_edge

sw.epilog.i.land.lhs.true13_crit_edge:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog.i.for.inc.i_crit_edge, %if.end31.i.for.inc.i_crit_edge, %sw.default.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %38 = ptrtoint ptr %.pn77.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn.i = load ptr, ptr %.pn77.i, align 4
  %39 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %connector, align 8
  %encoder_list9.i = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 30, i32 16
  %cmp.not.i172 = icmp eq ptr %.pn.i, %encoder_list9.i
  br i1 %cmp.not.i172, label %for.inc.i.if.else74_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.if.else74_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else74

land.lhs.true13:                                  ; preds = %sw.epilog.i.land.lhs.true13_crit_edge, %if.end31.i.land.lhs.true13_crit_edge
  %dcb.i.le = getelementptr i8, ptr %.pn77.i, i32 80
  %i2c14 = getelementptr i8, ptr %.pn77.i, i32 92
  %41 = ptrtoint ptr %i2c14 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c14, align 4
  %cmp15.not = icmp eq ptr %42, null
  br i1 %cmp15.not, label %land.lhs.true13.if.else74_crit_edge, label %if.then16

land.lhs.true13.if.else74_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else74

if.then16:                                        ; preds = %land.lhs.true13
  %call25 = call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %42) #12
  %edid1.i173 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 9
  %43 = ptrtoint ptr %edid1.i173 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %edid1.i173, align 4
  %cmp.not.i174 = icmp eq ptr %44, %call25
  br i1 %cmp.not.i174, label %if.then16.nouveau_connector_set_edid.exit177_crit_edge, label %if.then.i176

if.then16.nouveau_connector_set_edid.exit177_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_connector_set_edid.exit177

if.then.i176:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  %call.i175 = call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call25) #12
  call void @kfree(ptr noundef %44) #12
  %45 = ptrtoint ptr %edid1.i173 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call25, ptr %edid1.i173, align 4
  br label %nouveau_connector_set_edid.exit177

nouveau_connector_set_edid.exit177:               ; preds = %if.then.i176, %if.then16.nouveau_connector_set_edid.exit177_crit_edge
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %cleanup.thread, label %if.end36

cleanup.thread:                                   ; preds = %nouveau_connector_set_edid.exit177
  call void @__sanitizer_cov_trace_pc() #14
  %drm30 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %drm30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %drm30, align 8
  %dev31 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev31, align 8
  %dev32 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev32, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %name33 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %52 = ptrtoint ptr %name33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.20, ptr noundef %name, ptr noundef %53) #15
  br label %detect_analog

if.end36:                                         ; preds = %nouveau_connector_set_edid.exit177
  %54 = ptrtoint ptr %dcb.i.le to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dcb.i.le, align 4
  %type37 = getelementptr inbounds %struct.dcb_output, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %type37 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp38 = icmp eq i32 %57, 2
  br i1 %cmp38, label %if.then39, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  %58 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %connector, align 8
  %encoder_list.i178 = getelementptr inbounds %struct.drm_device, ptr %59, i32 0, i32 30, i32 16
  %60 = ptrtoint ptr %encoder_list.i178 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn32.i = load ptr, ptr %encoder_list.i178, align 4
  %cmp.not33.i = icmp eq ptr %.pn32.i, %encoder_list.i178
  br i1 %cmp.not33.i, label %if.then39.cleanup_crit_edge, label %for.body.lr.ph.i180

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i180:                              ; preds = %if.then39
  %61 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i185

for.body.i185:                                    ; preds = %for.inc.i190.for.body.i185_crit_edge, %for.body.lr.ph.i180
  %.pn34.i = phi ptr [ %.pn32.i, %for.body.lr.ph.i180 ], [ %.pn.i188, %for.inc.i190.for.body.i185_crit_edge ]
  %index.i.i.i181 = getelementptr i8, ptr %.pn34.i, i32 36
  %63 = ptrtoint ptr %index.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index.i.i.i181, align 4
  %shl.i.i182 = shl nuw i32 1, %64
  %and.i183 = and i32 %shl.i.i182, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool.not.i184 = icmp eq i32 %and.i183, 0
  br i1 %tobool.not.i184, label %for.body.i185.for.inc.i190_crit_edge, label %if.else.i186

for.body.i185.for.inc.i190_crit_edge:             ; preds = %for.body.i185
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i190

if.else.i186:                                     ; preds = %for.body.i185
  %dcb.i187 = getelementptr i8, ptr %.pn34.i, i32 80
  %65 = ptrtoint ptr %dcb.i187 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dcb.i187, align 4
  %tobool6.not.i = icmp eq ptr %66, null
  br i1 %tobool6.not.i, label %if.else.i186.for.inc.i190_crit_edge, label %land.lhs.true.i

if.else.i186.for.inc.i190_crit_edge:              ; preds = %if.else.i186
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i190

land.lhs.true.i:                                  ; preds = %if.else.i186
  %type8.i = getelementptr inbounds %struct.dcb_output, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %type8.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp9.i = icmp eq i32 %68, 0
  br i1 %cmp9.i, label %cleanup.split.loop.exit28.i, label %land.lhs.true.i.for.inc.i190_crit_edge

land.lhs.true.i.for.inc.i190_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i190

for.inc.i190:                                     ; preds = %land.lhs.true.i.for.inc.i190_crit_edge, %if.else.i186.for.inc.i190_crit_edge, %for.body.i185.for.inc.i190_crit_edge
  %69 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn.i188 = load ptr, ptr %.pn34.i, align 4
  %cmp.not.i189 = icmp eq ptr %.pn.i188, %encoder_list.i178
  br i1 %cmp.not.i189, label %for.inc.i190.if.end41_crit_edge, label %for.inc.i190.for.body.i185_crit_edge

for.inc.i190.for.body.i185_crit_edge:             ; preds = %for.inc.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i185

for.inc.i190.if.end41_crit_edge:                  ; preds = %for.inc.i190
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

cleanup.split.loop.exit28.i:                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %enc.0.le.i = getelementptr i8, ptr %.pn34.i, i32 -4
  br label %if.end41

if.end41:                                         ; preds = %cleanup.split.loop.exit28.i, %for.inc.i190.if.end41_crit_edge, %if.end36.if.end41_crit_edge
  %nv_partner.0 = phi ptr [ null, %if.end36.if.end41_crit_edge ], [ %enc.0.le.i, %cleanup.split.loop.exit28.i ], [ null, %for.inc.i190.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp44 = icmp eq i32 %57, 0
  br i1 %cmp44, label %if.then45, label %if.end47.thread

if.then45:                                        ; preds = %if.end41
  %70 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %connector, align 8
  %encoder_list.i192 = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 30, i32 16
  %72 = ptrtoint ptr %encoder_list.i192 to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn32.i193 = load ptr, ptr %encoder_list.i192, align 4
  %cmp.not33.i194 = icmp eq ptr %.pn32.i193, %encoder_list.i192
  br i1 %cmp.not33.i194, label %if.then45.cleanup_crit_edge, label %for.body.lr.ph.i196

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i196:                              ; preds = %if.then45
  %73 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i202

for.body.i202:                                    ; preds = %for.inc.i211.for.body.i202_crit_edge, %for.body.lr.ph.i196
  %.pn34.i197 = phi ptr [ %.pn32.i193, %for.body.lr.ph.i196 ], [ %.pn.i209, %for.inc.i211.for.body.i202_crit_edge ]
  %index.i.i.i198 = getelementptr i8, ptr %.pn34.i197, i32 36
  %75 = ptrtoint ptr %index.i.i.i198 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %index.i.i.i198, align 4
  %shl.i.i199 = shl nuw i32 1, %76
  %and.i200 = and i32 %shl.i.i199, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %tobool.not.i201 = icmp eq i32 %and.i200, 0
  br i1 %tobool.not.i201, label %for.body.i202.for.inc.i211_crit_edge, label %if.else.i203

for.body.i202.for.inc.i211_crit_edge:             ; preds = %for.body.i202
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i211

if.else.i203:                                     ; preds = %for.body.i202
  %dcb.i204 = getelementptr i8, ptr %.pn34.i197, i32 80
  %77 = ptrtoint ptr %dcb.i204 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dcb.i204, align 4
  %tobool6.not.i205 = icmp eq ptr %78, null
  br i1 %tobool6.not.i205, label %if.else.i203.for.inc.i211_crit_edge, label %land.lhs.true.i208

if.else.i203.for.inc.i211_crit_edge:              ; preds = %if.else.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i211

land.lhs.true.i208:                               ; preds = %if.else.i203
  %type8.i206 = getelementptr inbounds %struct.dcb_output, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %type8.i206 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %type8.i206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp9.i207 = icmp eq i32 %80, 2
  br i1 %cmp9.i207, label %if.end47, label %land.lhs.true.i208.for.inc.i211_crit_edge

land.lhs.true.i208.for.inc.i211_crit_edge:        ; preds = %land.lhs.true.i208
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i211

for.inc.i211:                                     ; preds = %land.lhs.true.i208.for.inc.i211_crit_edge, %if.else.i203.for.inc.i211_crit_edge, %for.body.i202.for.inc.i211_crit_edge
  %81 = ptrtoint ptr %.pn34.i197 to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn.i209 = load ptr, ptr %.pn34.i197, align 4
  %cmp.not.i210 = icmp eq ptr %.pn.i209, %encoder_list.i192
  br i1 %cmp.not.i210, label %for.inc.i211.cleanup_crit_edge, label %for.inc.i211.for.body.i202_crit_edge

for.inc.i211.for.body.i202_crit_edge:             ; preds = %for.inc.i211
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i202

for.inc.i211.cleanup_crit_edge:                   ; preds = %for.inc.i211
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true.i208
  %enc.0.le.i212 = getelementptr i8, ptr %.pn34.i197, i32 -4
  %tobool48.not = icmp eq ptr %enc.0.le.i212, null
  br i1 %tobool48.not, label %if.end47.cleanup_crit_edge, label %land.lhs.true49

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end47.thread:                                  ; preds = %if.end41
  %tobool48.not334 = icmp eq ptr %nv_partner.0, null
  br i1 %tobool48.not334, label %if.end47.thread.cleanup_crit_edge, label %if.end47.thread.lor.lhs.false_crit_edge

if.end47.thread.lor.lhs.false_crit_edge:          ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

if.end47.thread.cleanup_crit_edge:                ; preds = %if.end47.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true49:                                  ; preds = %if.end47
  br i1 %cmp44, label %land.lhs.true53, label %land.lhs.true49.lor.lhs.false_crit_edge

land.lhs.true49.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true53:                                  ; preds = %land.lhs.true49
  %dcb54 = getelementptr i8, ptr %.pn34.i197, i32 80
  %82 = ptrtoint ptr %dcb54 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dcb54, align 4
  %type55 = getelementptr inbounds %struct.dcb_output, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %type55 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %type55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp56 = icmp eq i32 %85, 2
  br i1 %cmp56, label %land.lhs.true53.if.then64_crit_edge, label %land.lhs.true53.lor.lhs.false_crit_edge

land.lhs.true53.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true53.if.then64_crit_edge:              ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

lor.lhs.false:                                    ; preds = %land.lhs.true53.lor.lhs.false_crit_edge, %land.lhs.true49.lor.lhs.false_crit_edge, %if.end47.thread.lor.lhs.false_crit_edge
  %nv_partner.1335337 = phi ptr [ %enc.0.le.i212, %land.lhs.true53.lor.lhs.false_crit_edge ], [ %enc.0.le.i212, %land.lhs.true49.lor.lhs.false_crit_edge ], [ %nv_partner.0, %if.end47.thread.lor.lhs.false_crit_edge ]
  br i1 %cmp38, label %land.lhs.true60, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true60:                                  ; preds = %lor.lhs.false
  %dcb61 = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_partner.1335337, i32 0, i32 1
  %86 = ptrtoint ptr %dcb61 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dcb61, align 4
  %type62 = getelementptr inbounds %struct.dcb_output, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %type62 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp63 = icmp eq i32 %89, 0
  br i1 %cmp63, label %land.lhs.true60.if.then64_crit_edge, label %land.lhs.true60.cleanup_crit_edge

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true60.if.then64_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then64

if.then64:                                        ; preds = %land.lhs.true60.if.then64_crit_edge, %land.lhs.true53.if.then64_crit_edge
  %input = getelementptr inbounds %struct.edid, ptr %call25, i32 0, i32 8
  %90 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %input, align 1
  %92 = lshr i8 %91, 6
  %93 = and i8 %92, 2
  %94 = zext i8 %93 to i32
  %95 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %connector, align 8
  %encoder_list.i216 = getelementptr inbounds %struct.drm_device, ptr %96, i32 0, i32 30, i32 16
  %97 = ptrtoint ptr %encoder_list.i216 to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn32.i217 = load ptr, ptr %encoder_list.i216, align 4
  %cmp.not33.i218 = icmp eq ptr %.pn32.i217, %encoder_list.i216
  br i1 %cmp.not33.i218, label %if.then64.cleanup_crit_edge, label %for.body.lr.ph.i220

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph.i220:                              ; preds = %if.then64
  %98 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i226

for.body.i226:                                    ; preds = %for.inc.i235.for.body.i226_crit_edge, %for.body.lr.ph.i220
  %.pn34.i221 = phi ptr [ %.pn32.i217, %for.body.lr.ph.i220 ], [ %.pn.i233, %for.inc.i235.for.body.i226_crit_edge ]
  %index.i.i.i222 = getelementptr i8, ptr %.pn34.i221, i32 36
  %100 = ptrtoint ptr %index.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %index.i.i.i222, align 4
  %shl.i.i223 = shl nuw i32 1, %101
  %and.i224 = and i32 %shl.i.i223, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i224)
  %tobool.not.i225 = icmp eq i32 %and.i224, 0
  br i1 %tobool.not.i225, label %for.body.i226.for.inc.i235_crit_edge, label %if.else.i227

for.body.i226.for.inc.i235_crit_edge:             ; preds = %for.body.i226
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i235

if.else.i227:                                     ; preds = %for.body.i226
  %dcb.i228 = getelementptr i8, ptr %.pn34.i221, i32 80
  %102 = ptrtoint ptr %dcb.i228 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dcb.i228, align 4
  %tobool6.not.i229 = icmp eq ptr %103, null
  br i1 %tobool6.not.i229, label %if.else.i227.for.inc.i235_crit_edge, label %land.lhs.true.i232

if.else.i227.for.inc.i235_crit_edge:              ; preds = %if.else.i227
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i235

land.lhs.true.i232:                               ; preds = %if.else.i227
  %type8.i230 = getelementptr inbounds %struct.dcb_output, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %type8.i230 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %type8.i230, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %105, i32 %94)
  %cmp9.i231 = icmp eq i32 %105, %94
  br i1 %cmp9.i231, label %cleanup.split.loop.exit28.i237, label %land.lhs.true.i232.for.inc.i235_crit_edge

land.lhs.true.i232.for.inc.i235_crit_edge:        ; preds = %land.lhs.true.i232
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i235

for.inc.i235:                                     ; preds = %land.lhs.true.i232.for.inc.i235_crit_edge, %if.else.i227.for.inc.i235_crit_edge, %for.body.i226.for.inc.i235_crit_edge
  %106 = ptrtoint ptr %.pn34.i221 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pn.i233 = load ptr, ptr %.pn34.i221, align 4
  %cmp.not.i234 = icmp eq ptr %.pn.i233, %encoder_list.i216
  br i1 %cmp.not.i234, label %for.inc.i235.cleanup_crit_edge, label %for.inc.i235.for.body.i226_crit_edge

for.inc.i235.for.body.i226_crit_edge:             ; preds = %for.inc.i235
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i226

for.inc.i235.cleanup_crit_edge:                   ; preds = %for.inc.i235
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.split.loop.exit28.i237:                   ; preds = %land.lhs.true.i232
  call void @__sanitizer_cov_trace_pc() #14
  %enc.0.le.i236 = getelementptr i8, ptr %.pn34.i221, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit28.i237, %for.inc.i235.cleanup_crit_edge, %if.then64.cleanup_crit_edge, %land.lhs.true60.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end47.thread.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %for.inc.i211.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.then39.cleanup_crit_edge
  %nv_encoder.0 = phi ptr [ %encoder.078.i, %land.lhs.true60.cleanup_crit_edge ], [ %encoder.078.i, %lor.lhs.false.cleanup_crit_edge ], [ %encoder.078.i, %if.end47.cleanup_crit_edge ], [ %enc.0.le.i236, %cleanup.split.loop.exit28.i237 ], [ null, %if.then64.cleanup_crit_edge ], [ %encoder.078.i, %if.then45.cleanup_crit_edge ], [ %encoder.078.i, %if.then39.cleanup_crit_edge ], [ %encoder.078.i, %if.end47.thread.cleanup_crit_edge ], [ null, %for.inc.i235.cleanup_crit_edge ], [ %encoder.078.i, %for.inc.i211.cleanup_crit_edge ]
  call fastcc void @nouveau_connector_set_encoder(ptr noundef %connector, ptr noundef %nv_encoder.0)
  %aux = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 5
  %107 = ptrtoint ptr %edid1.i173 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %edid1.i173, align 4
  call void @drm_dp_cec_set_edid(ptr noundef %aux, ptr noundef %108) #12
  br label %out

if.else74:                                        ; preds = %land.lhs.true13.if.else74_crit_edge, %for.inc.i.if.else74_crit_edge, %sw.bb.i.if.else74_crit_edge, %if.end11.if.else74_crit_edge
  %edid1.i240 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 9
  %109 = ptrtoint ptr %edid1.i240 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %edid1.i240, align 4
  %cmp.not.i241 = icmp eq ptr %110, null
  br i1 %cmp.not.i241, label %if.else74.detect_analog_crit_edge, label %if.then.i243

if.else74.detect_analog_crit_edge:                ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  br label %detect_analog

if.then.i243:                                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #14
  %call.i242 = call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #12
  call void @kfree(ptr noundef nonnull %110) #12
  %111 = ptrtoint ptr %edid1.i240 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %edid1.i240, align 4
  br label %detect_analog

detect_analog:                                    ; preds = %if.then.i243, %if.else74.detect_analog_crit_edge, %cleanup.thread
  %112 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %connector, align 8
  %encoder_list.i245 = getelementptr inbounds %struct.drm_device, ptr %113, i32 0, i32 30, i32 16
  %114 = ptrtoint ptr %encoder_list.i245 to i32
  call void @__asan_load4_noabort(i32 %114)
  %.pn32.i246 = load ptr, ptr %encoder_list.i245, align 4
  %cmp.not33.i247 = icmp eq ptr %.pn32.i246, %encoder_list.i245
  br i1 %cmp.not33.i247, label %detect_analog.out_crit_edge, label %for.body.lr.ph.i249

detect_analog.out_crit_edge:                      ; preds = %detect_analog
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph.i249:                              ; preds = %detect_analog
  %possible_encoders.i248 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %115 = ptrtoint ptr %possible_encoders.i248 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %possible_encoders.i248, align 8
  br label %for.body.i255

for.body.i255:                                    ; preds = %for.inc.i264.for.body.i255_crit_edge, %for.body.lr.ph.i249
  %.pn34.i250 = phi ptr [ %.pn32.i246, %for.body.lr.ph.i249 ], [ %.pn.i262, %for.inc.i264.for.body.i255_crit_edge ]
  %index.i.i.i251 = getelementptr i8, ptr %.pn34.i250, i32 36
  %117 = ptrtoint ptr %index.i.i.i251 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %index.i.i.i251, align 4
  %shl.i.i252 = shl nuw i32 1, %118
  %and.i253 = and i32 %shl.i.i252, %116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i253)
  %tobool.not.i254 = icmp eq i32 %and.i253, 0
  br i1 %tobool.not.i254, label %for.body.i255.for.inc.i264_crit_edge, label %if.else.i256

for.body.i255.for.inc.i264_crit_edge:             ; preds = %for.body.i255
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i264

if.else.i256:                                     ; preds = %for.body.i255
  %dcb.i257 = getelementptr i8, ptr %.pn34.i250, i32 80
  %119 = ptrtoint ptr %dcb.i257 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dcb.i257, align 4
  %tobool6.not.i258 = icmp eq ptr %120, null
  br i1 %tobool6.not.i258, label %if.else.i256.for.inc.i264_crit_edge, label %land.lhs.true.i261

if.else.i256.for.inc.i264_crit_edge:              ; preds = %if.else.i256
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i264

land.lhs.true.i261:                               ; preds = %if.else.i256
  %type8.i259 = getelementptr inbounds %struct.dcb_output, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %type8.i259 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %type8.i259, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp9.i260 = icmp eq i32 %122, 0
  br i1 %cmp9.i260, label %find_encoder.exit268, label %land.lhs.true.i261.for.inc.i264_crit_edge

land.lhs.true.i261.for.inc.i264_crit_edge:        ; preds = %land.lhs.true.i261
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i264

for.inc.i264:                                     ; preds = %land.lhs.true.i261.for.inc.i264_crit_edge, %if.else.i256.for.inc.i264_crit_edge, %for.body.i255.for.inc.i264_crit_edge
  %123 = ptrtoint ptr %.pn34.i250 to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pn.i262 = load ptr, ptr %.pn34.i250, align 4
  %cmp.not.i263 = icmp eq ptr %.pn.i262, %encoder_list.i245
  br i1 %cmp.not.i263, label %for.inc.i264.land.lhs.true82_crit_edge, label %for.inc.i264.for.body.i255_crit_edge

for.inc.i264.for.body.i255_crit_edge:             ; preds = %for.inc.i264
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i255

for.inc.i264.land.lhs.true82_crit_edge:           ; preds = %for.inc.i264
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true82

find_encoder.exit268:                             ; preds = %land.lhs.true.i261
  %enc.0.le.i265 = getelementptr i8, ptr %.pn34.i250, i32 -4
  %tobool81.not = icmp eq ptr %enc.0.le.i265, null
  br i1 %tobool81.not, label %find_encoder.exit268.land.lhs.true82_crit_edge, label %find_encoder.exit268.if.end86_crit_edge

find_encoder.exit268.if.end86_crit_edge:          ; preds = %find_encoder.exit268
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

find_encoder.exit268.land.lhs.true82_crit_edge:   ; preds = %find_encoder.exit268
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true82

land.lhs.true82:                                  ; preds = %find_encoder.exit268.land.lhs.true82_crit_edge, %for.inc.i264.land.lhs.true82_crit_edge
  %124 = load i32, ptr @nouveau_tv_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool83.not.not = icmp eq i32 %124, 0
  br i1 %tobool83.not.not, label %for.body.lr.ph.i273, label %land.lhs.true82.out_crit_edge

land.lhs.true82.out_crit_edge:                    ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph.i273:                              ; preds = %land.lhs.true82
  %125 = ptrtoint ptr %possible_encoders.i248 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %possible_encoders.i248, align 8
  br label %for.body.i279

for.body.i279:                                    ; preds = %for.inc.i288.for.body.i279_crit_edge, %for.body.lr.ph.i273
  %.pn34.i274 = phi ptr [ %.pn32.i246, %for.body.lr.ph.i273 ], [ %.pn.i286, %for.inc.i288.for.body.i279_crit_edge ]
  %index.i.i.i275 = getelementptr i8, ptr %.pn34.i274, i32 36
  %127 = ptrtoint ptr %index.i.i.i275 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %index.i.i.i275, align 4
  %shl.i.i276 = shl nuw i32 1, %128
  %and.i277 = and i32 %shl.i.i276, %126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i277)
  %tobool.not.i278 = icmp eq i32 %and.i277, 0
  br i1 %tobool.not.i278, label %for.body.i279.for.inc.i288_crit_edge, label %if.else.i280

for.body.i279.for.inc.i288_crit_edge:             ; preds = %for.body.i279
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i288

if.else.i280:                                     ; preds = %for.body.i279
  %dcb.i281 = getelementptr i8, ptr %.pn34.i274, i32 80
  %129 = ptrtoint ptr %dcb.i281 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dcb.i281, align 4
  %tobool6.not.i282 = icmp eq ptr %130, null
  br i1 %tobool6.not.i282, label %if.else.i280.for.inc.i288_crit_edge, label %land.lhs.true.i285

if.else.i280.for.inc.i288_crit_edge:              ; preds = %if.else.i280
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i288

land.lhs.true.i285:                               ; preds = %if.else.i280
  %type8.i283 = getelementptr inbounds %struct.dcb_output, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %type8.i283 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %type8.i283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp9.i284 = icmp eq i32 %132, 1
  br i1 %cmp9.i284, label %cleanup.split.loop.exit28.i290, label %land.lhs.true.i285.for.inc.i288_crit_edge

land.lhs.true.i285.for.inc.i288_crit_edge:        ; preds = %land.lhs.true.i285
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i288

for.inc.i288:                                     ; preds = %land.lhs.true.i285.for.inc.i288_crit_edge, %if.else.i280.for.inc.i288_crit_edge, %for.body.i279.for.inc.i288_crit_edge
  %133 = ptrtoint ptr %.pn34.i274 to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pn.i286 = load ptr, ptr %.pn34.i274, align 4
  %cmp.not.i287 = icmp eq ptr %.pn.i286, %encoder_list.i245
  br i1 %cmp.not.i287, label %for.inc.i288.out_crit_edge, label %for.inc.i288.for.body.i279_crit_edge

for.inc.i288.for.body.i279_crit_edge:             ; preds = %for.inc.i288
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i279

for.inc.i288.out_crit_edge:                       ; preds = %for.inc.i288
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

cleanup.split.loop.exit28.i290:                   ; preds = %land.lhs.true.i285
  call void @__sanitizer_cov_trace_pc() #14
  %enc.0.le.i289 = getelementptr i8, ptr %.pn34.i274, i32 -4
  br label %if.end86

if.end86:                                         ; preds = %cleanup.split.loop.exit28.i290, %find_encoder.exit268.if.end86_crit_edge
  %nv_encoder.1 = phi ptr [ %enc.0.le.i265, %find_encoder.exit268.if.end86_crit_edge ], [ %enc.0.le.i289, %cleanup.split.loop.exit28.i290 ]
  %tobool87.not = icmp ne ptr %nv_encoder.1, null
  %134 = and i1 %tobool87.not, %force
  br i1 %134, label %if.then91, label %if.end86.out_crit_edge

if.end86.out_crit_edge:                           ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then91:                                        ; preds = %if.end86
  %helper_private = getelementptr inbounds %struct.drm_encoder, ptr %nv_encoder.1, i32 0, i32 11
  %135 = ptrtoint ptr %helper_private to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %helper_private, align 4
  %detect = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %136, i32 0, i32 7
  %137 = ptrtoint ptr %detect to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %detect, align 4
  %call93 = call i32 %138(ptr noundef nonnull %nv_encoder.1, ptr noundef %connector) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call93)
  %cmp94 = icmp eq i32 %call93, 1
  br i1 %cmp94, label %if.then96, label %if.then91.out_crit_edge

if.then91.out_crit_edge:                          ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then96:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nouveau_connector_set_encoder(ptr noundef %connector, ptr noundef nonnull %nv_encoder.1)
  br label %out

out:                                              ; preds = %if.then96, %if.then91.out_crit_edge, %if.end86.out_crit_edge, %for.inc.i288.out_crit_edge, %land.lhs.true82.out_crit_edge, %detect_analog.out_crit_edge, %cleanup
  %conn_status.3 = phi i32 [ 1, %cleanup ], [ 2, %if.end86.out_crit_edge ], [ 1, %if.then96 ], [ 2, %if.then91.out_crit_edge ], [ 2, %land.lhs.true82.out_crit_edge ], [ 2, %detect_analog.out_crit_edge ], [ 2, %for.inc.i288.out_crit_edge ]
  %edid102 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 9
  %139 = ptrtoint ptr %edid102 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %edid102, align 4
  %tobool103.not = icmp eq ptr %140, null
  br i1 %tobool103.not, label %if.then104, label %out.if.end106_crit_edge

out.if.end106_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then104:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %aux105 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 5
  call void @drm_dp_cec_unset_edid(ptr noundef %aux105) #12
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %out.if.end106_crit_edge
  %dev107 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %141 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev107, align 4
  %call.i293 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %142, i32 0, i32 12, i32 22
  %143 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store volatile i64 %call.i293, ptr %last_busy.i, align 8
  %144 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %dev107, align 4
  %call.i294 = call i32 @__pm_runtime_suspend(ptr noundef %145, i32 noundef 13) #12
  br label %cleanup110

cleanup110:                                       ; preds = %if.end106, %if.then.i, %if.then8.cleanup110_crit_edge
  %retval.0 = phi i32 [ %conn_status.3, %if.end106 ], [ 2, %if.then8.cleanup110_crit_edge ], [ 2, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_connector_force(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %type2 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 1
  %4 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %5)
  %cmp = icmp eq i32 %5, 48
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %force = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 37
  %6 = ptrtoint ptr %force to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %force, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp3 = icmp eq i32 %7, 3
  %. = select i1 %cmp3, i32 2, i32 0
  br label %if.end6

if.end6:                                          ; preds = %if.then, %entry.if.end6_crit_edge
  %type.0 = phi i32 [ %., %if.then ], [ -1, %entry.if.end6_crit_edge ]
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %8 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn32.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not33.i = icmp eq ptr %.pn32.i, %encoder_list.i
  br i1 %cmp.not33.i, label %if.end6.do.body_crit_edge, label %for.body.lr.ph.i

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.body.lr.ph.i:                                 ; preds = %if.end6
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %9 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %possible_encoders.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %type.0)
  %cmp5.i = icmp eq i32 %type.0, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn34.i = phi ptr [ %.pn32.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn34.i, i32 36
  %11 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %12
  %and.i = and i32 %shl.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  br i1 %cmp5.i, label %if.else.i.find_encoder.exit_crit_edge, label %lor.lhs.false.i

if.else.i.find_encoder.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_encoder.exit

lor.lhs.false.i:                                  ; preds = %if.else.i
  %dcb.i = getelementptr i8, ptr %.pn34.i, i32 80
  %13 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dcb.i, align 4
  %tobool6.not.i = icmp eq ptr %14, null
  br i1 %tobool6.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %type8.i = getelementptr inbounds %struct.dcb_output, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %type8.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %type.0)
  %cmp9.i = icmp eq i32 %16, %type.0
  br i1 %cmp9.i, label %land.lhs.true.i.find_encoder.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i.find_encoder.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_encoder.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %17 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn34.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

find_encoder.exit:                                ; preds = %land.lhs.true.i.find_encoder.exit_crit_edge, %if.else.i.find_encoder.exit_crit_edge
  %retval.0.i = getelementptr i8, ptr %.pn34.i, i32 -4
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %find_encoder.exit.do.body_crit_edge, label %if.end16

find_encoder.exit.do.body_crit_edge:              ; preds = %find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %find_encoder.exit.do.body_crit_edge, %for.inc.i.do.body_crit_edge, %if.end6.do.body_crit_edge
  %drm10 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %drm10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %drm10, align 8
  %dev11 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev11, align 8
  %dev12 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev12, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  %name13 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %24 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.22, ptr noundef %name, ptr noundef %25) #15
  %status = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 18
  %26 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %status, align 8
  br label %cleanup

if.end16:                                         ; preds = %find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @nouveau_connector_set_encoder(ptr noundef %connector, ptr noundef nonnull %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_connector_set_property(ptr noundef %connector, ptr noundef %property, i64 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %detected_encoder = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 8
  %0 = ptrtoint ptr %detected_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %detected_encoder, align 8
  %properties_state = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 12
  %funcs = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 21
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 8
  %atomic_set_property = getelementptr inbounds %struct.drm_connector_funcs, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %atomic_set_property to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atomic_set_property, align 4
  %call2 = tail call i32 %5(ptr noundef %connector, ptr noundef %properties_state, ptr noundef %property, i64 noundef %value) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %land.lhs.true

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then4, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %slave_funcs.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %slave_funcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slave_funcs.i, align 4
  %set_property = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %set_property to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_property, align 4
  %call6 = tail call i32 %13(ptr noundef nonnull %1, ptr noundef %connector, ptr noundef %property, i64 noundef %value) #12
  br label %cleanup

if.end7:                                          ; preds = %entry
  %scaler = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 12, i32 2
  %14 = ptrtoint ptr %scaler to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scaler, align 4
  %scaling_mode = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 7
  %16 = ptrtoint ptr %scaling_mode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %scaling_mode, align 4
  %dither = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %dither to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dither, align 4
  %dithering_mode = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 6
  %19 = ptrtoint ptr %dithering_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dithering_mode, align 8
  %encoder9 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 41
  %20 = ptrtoint ptr %encoder9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %encoder9, align 4
  %tobool10.not = icmp eq ptr %21, null
  br i1 %tobool10.not, label %if.end7.if.end28_crit_edge, label %land.lhs.true11

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true11:                                  ; preds = %if.end7
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crtc, align 4
  %tobool13.not = icmp eq ptr %23, null
  br i1 %tobool13.not, label %land.lhs.true11.if.end28_crit_edge, label %if.then14

land.lhs.true11.if.end28_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then14:                                        ; preds = %land.lhs.true11
  %mode19 = getelementptr inbounds %struct.drm_crtc, ptr %23, i32 0, i32 12
  %x = getelementptr inbounds %struct.drm_crtc, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %x, align 4
  %y = getelementptr inbounds %struct.drm_crtc, ptr %23, i32 0, i32 15
  %26 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %y, align 8
  %call24 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %23, ptr noundef %mode19, i32 noundef %25, i32 noundef %27, ptr noundef null) #12
  br i1 %call24, label %if.then14.if.end28_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14.if.end28_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end28:                                         ; preds = %if.then14.if.end28_crit_edge, %land.lhs.true11.if.end28_crit_edge, %if.end7.if.end28_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then14.cleanup_crit_edge, %if.then4, %land.lhs.true.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ 0, %if.end28 ], [ %call2, %land.lhs.true.cleanup_crit_edge ], [ %call2, %if.then.cleanup_crit_edge ], [ -22, %if.then14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_connector_late_register(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nouveau_backlight_init(ptr noundef %connector) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %0 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connector_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 14, label %if.end.if.then3_crit_edge
    i32 10, label %if.end.if.then3_crit_edge17
  ]

if.end.if.then3_crit_edge17:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %if.end.if.then3_crit_edge17
  %aux = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 5
  %call5 = tail call i32 @drm_dp_aux_register(ptr noundef %aux) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.cleanup_crit_edge, label %backlight_fini

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

backlight_fini:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nouveau_backlight_fini(ptr noundef %connector) #12
  br label %cleanup

cleanup:                                          ; preds = %backlight_fini, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %backlight_fini ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_connector_early_unregister(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %0 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %connector_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %1, label %entry.if.end_crit_edge [
    i32 14, label %entry.if.then_crit_edge
    i32 10, label %entry.if.then_crit_edge6
  ]

entry.if.then_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge6
  %aux = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 5
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @nouveau_backlight_fini(ptr noundef %connector) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 4
  %call1 = tail call i32 @nvif_notify_dtor(ptr noundef %hpd) #12
  %edid = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 9
  %0 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid, align 4
  tail call void @kfree(ptr noundef %1) #12
  tail call void @drm_connector_unregister(ptr noundef %connector) #12
  tail call void @drm_connector_cleanup(ptr noundef %connector) #12
  %transfer = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %aux = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 5
  tail call void @drm_dp_cec_unregister_connector(ptr noundef %aux) #12
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aux, align 8
  tail call void @kfree(ptr noundef %5) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %connector) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_kms_helper_is_poll_worker() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_connector_set_encoder(ptr noundef %connector, ptr noundef %nv_encoder) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  %detected_encoder = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 8
  %4 = ptrtoint ptr %detected_encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %detected_encoder, align 8
  %cmp = icmp eq ptr %5, %nv_encoder
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i, align 4
  %8 = ptrtoint ptr %detected_encoder to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nv_encoder, ptr %detected_encoder, align 8
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 4
  %9 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp6 = icmp ugt i8 %10, 5
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 1
  %11 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  br i1 %cmp6, label %if.then8, label %if.else14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %cmp9 = icmp eq i32 %14, 6
  br i1 %cmp9, label %if.then11, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %caps = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 13
  %15 = ptrtoint ptr %caps to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %caps, align 4
  %bf.load.lobit = lshr i8 %bf.load, 7
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then8.if.end13_crit_edge
  %.sink = phi i8 [ %bf.load.lobit, %if.then11 ], [ 1, %if.then8.if.end13_crit_edge ]
  %16 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 12
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %16, align 8
  %doublescan_allowed = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 13
  %18 = ptrtoint ptr %doublescan_allowed to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %doublescan_allowed, align 1
  br label %if.end59

if.else14:                                        ; preds = %if.end
  %19 = and i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %switch = icmp eq i32 %19, 2
  %doublescan_allowed24 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 13
  br i1 %switch, label %if.then23, label %if.else26

if.then23:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %doublescan_allowed24 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %doublescan_allowed24, align 1
  %interlace_allowed25 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 12
  %21 = ptrtoint ptr %interlace_allowed25 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %interlace_allowed25, align 8
  br label %if.end59

if.else26:                                        ; preds = %if.else14
  %22 = ptrtoint ptr %doublescan_allowed24 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %doublescan_allowed24, align 1
  %23 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %family, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %24, label %if.else26.if.else55_crit_edge [
    i8 3, label %if.else26.if.then53_crit_edge
    i8 2, label %land.lhs.true
  ]

if.else26.if.then53_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

if.else26.if.else55_crit_edge:                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else55

land.lhs.true:                                    ; preds = %if.else26
  %device43 = getelementptr i8, ptr %3, i32 -102
  %26 = ptrtoint ptr %device43 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %device43, align 2
  %28 = trunc i16 %27 to i12
  %trunc = and i12 %28, -16
  %29 = zext i12 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.42)
  switch i12 %trunc, label %land.lhs.true.if.then53_crit_edge [
    i12 256, label %land.lhs.true.if.else55_crit_edge
    i12 336, label %land.lhs.true.if.else55_crit_edge97
  ]

land.lhs.true.if.else55_crit_edge97:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else55

land.lhs.true.if.else55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else55

land.lhs.true.if.then53_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then53

if.then53:                                        ; preds = %land.lhs.true.if.then53_crit_edge, %if.else26.if.then53_crit_edge
  %interlace_allowed54 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 12
  %30 = ptrtoint ptr %interlace_allowed54 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %interlace_allowed54, align 8
  br label %if.end59

if.else55:                                        ; preds = %land.lhs.true.if.else55_crit_edge, %land.lhs.true.if.else55_crit_edge97, %if.else26.if.else55_crit_edge
  %interlace_allowed56 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 12
  %31 = ptrtoint ptr %interlace_allowed56 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %interlace_allowed56, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else55, %if.then53, %if.then23, %if.end13
  %type60 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 1
  %32 = ptrtoint ptr %type60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %33)
  %cmp61 = icmp eq i32 %33, 48
  br i1 %cmp61, label %if.then63, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  %base = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %dvi_i_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 57
  %34 = ptrtoint ptr %dvi_i_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dvi_i_subconnector_property, align 4
  %dcb64 = getelementptr inbounds %struct.nouveau_encoder, ptr %nv_encoder, i32 0, i32 1
  %36 = ptrtoint ptr %dcb64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dcb64, align 4
  %type65 = getelementptr inbounds %struct.dcb_output, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %type65 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp66 = icmp eq i32 %39, 2
  %cond = select i1 %cmp66, i32 3, i32 4
  %40 = zext i32 %cond to i64
  %call69 = tail call i32 @drm_object_property_set_value(ptr noundef %base, ptr noundef %35, i64 noundef %40) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end59.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_cec_set_edid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_cec_unset_edid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_dp_detect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_helper_set_mode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_backlight_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_backlight_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_cec_unregister_connector(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_connector_detect_lvds(ptr noundef %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %4 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn32.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not33.i = icmp eq ptr %.pn32.i, %encoder_list.i
  br i1 %cmp.not33.i, label %entry.out_crit_edge, label %for.body.lr.ph.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph.i:                                 ; preds = %entry
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 40
  %5 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %possible_encoders.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn34.i = phi ptr [ %.pn32.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn34.i, i32 36
  %7 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %dcb.i = getelementptr i8, ptr %.pn34.i, i32 80
  %9 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dcb.i, align 4
  %tobool6.not.i = icmp eq ptr %10, null
  br i1 %tobool6.not.i, label %if.else.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %type8.i = getelementptr inbounds %struct.dcb_output, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %type8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp9.i = icmp eq i32 %12, 3
  br i1 %cmp9.i, label %find_encoder.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %.pn34.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn34.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

find_encoder.exit:                                ; preds = %land.lhs.true.i
  %dcb.i.le = getelementptr i8, ptr %.pn34.i, i32 80
  %enc.0.le.i = getelementptr i8, ptr %.pn34.i, i32 -4
  %tobool.not = icmp eq ptr %enc.0.le.i, null
  br i1 %tobool.not, label %find_encoder.exit.out_crit_edge, label %if.end

find_encoder.exit.out_crit_edge:                  ; preds = %find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %find_encoder.exit
  %fp_no_ddc = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 9
  %14 = ptrtoint ptr %fp_no_ddc to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fp_no_ddc, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool4.not = icmp eq i8 %15, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %call7 = tail call i32 @nouveau_connector_detect(ptr noundef %connector, i1 noundef zeroext %force)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp = icmp eq i32 %call7, 1
  br i1 %cmp, label %if.then8, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %edid9 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 9
  %16 = ptrtoint ptr %edid9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edid9, align 4
  br label %out

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call19 = tail call zeroext i1 @nouveau_bios_fp_mode(ptr noundef %1, ptr noundef null) #12
  br i1 %call19, label %land.lhs.true, label %if.end11.if.end26_crit_edge

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end11
  %18 = ptrtoint ptr %fp_no_ddc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %fp_no_ddc, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool22.not = icmp eq i8 %19, 0
  br i1 %tobool22.not, label %lor.lhs.false, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %land.lhs.true
  %20 = ptrtoint ptr %dcb.i.le to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dcb.i.le, align 4
  %use_straps_for_mode = getelementptr inbounds %struct.dcb_output, ptr %21, i32 0, i32 13, i32 0, i32 1
  %22 = ptrtoint ptr %use_straps_for_mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %use_straps_for_mode, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  br i1 %tobool24.not, label %lor.lhs.false.if.end26_crit_edge, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.end26:                                         ; preds = %lor.lhs.false.if.end26_crit_edge, %if.end11.if.end26_crit_edge
  %24 = ptrtoint ptr %fp_no_ddc to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fp_no_ddc, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool29.not = icmp eq i8 %25, 0
  br i1 %tobool29.not, label %if.then30, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then30:                                        ; preds = %if.end26
  %call31 = tail call ptr @nouveau_bios_embedded_edid(ptr noundef %1) #12
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.then30.out_crit_edge, label %if.then33

if.then30.out_crit_edge:                          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call ptr @kmemdup(ptr noundef nonnull %call31, i32 noundef 128, i32 noundef 3264) #12
  %tobool35.not = icmp eq ptr %call34, null
  %spec.select59 = select i1 %tobool35.not, i32 2, i32 1
  br label %out

out:                                              ; preds = %if.then33, %if.then30.out_crit_edge, %if.end26.out_crit_edge, %lor.lhs.false.out_crit_edge, %land.lhs.true.out_crit_edge, %if.then8, %find_encoder.exit.out_crit_edge, %for.inc.i.out_crit_edge, %entry.out_crit_edge
  %retval.0.i63 = phi ptr [ %enc.0.le.i, %if.end26.out_crit_edge ], [ %enc.0.le.i, %if.then30.out_crit_edge ], [ %enc.0.le.i, %if.then8 ], [ null, %find_encoder.exit.out_crit_edge ], [ %enc.0.le.i, %lor.lhs.false.out_crit_edge ], [ %enc.0.le.i, %land.lhs.true.out_crit_edge ], [ %enc.0.le.i, %if.then33 ], [ null, %entry.out_crit_edge ], [ null, %for.inc.i.out_crit_edge ]
  %edid.1 = phi ptr [ null, %if.end26.out_crit_edge ], [ null, %if.then30.out_crit_edge ], [ %17, %if.then8 ], [ null, %find_encoder.exit.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ null, %land.lhs.true.out_crit_edge ], [ %call34, %if.then33 ], [ null, %entry.out_crit_edge ], [ null, %for.inc.i.out_crit_edge ]
  %status.1 = phi i32 [ 2, %if.end26.out_crit_edge ], [ 2, %if.then30.out_crit_edge ], [ 1, %if.then8 ], [ 2, %find_encoder.exit.out_crit_edge ], [ 1, %lor.lhs.false.out_crit_edge ], [ 1, %land.lhs.true.out_crit_edge ], [ %spec.select59, %if.then33 ], [ 2, %entry.out_crit_edge ], [ 2, %for.inc.i.out_crit_edge ]
  %edid1.i = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 9
  %26 = ptrtoint ptr %edid1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %edid1.i, align 4
  %cmp.not.i60 = icmp eq ptr %27, %edid.1
  br i1 %cmp.not.i60, label %out.nouveau_connector_set_edid.exit_crit_edge, label %if.then.i

out.nouveau_connector_set_edid.exit_crit_edge:    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_connector_set_edid.exit

if.then.i:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %edid.1) #12
  tail call void @kfree(ptr noundef %27) #12
  %28 = ptrtoint ptr %edid1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %edid.1, ptr %edid1.i, align 4
  br label %nouveau_connector_set_edid.exit

nouveau_connector_set_edid.exit:                  ; preds = %if.then.i, %out.nouveau_connector_set_edid.exit_crit_edge
  tail call fastcc void @nouveau_connector_set_encoder(ptr noundef %connector, ptr noundef %retval.0.i63)
  ret i32 %status.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nouveau_bios_fp_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_bios_embedded_edid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_xfer(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  %mode = alloca %struct.drm_display_mode, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %detected_encoder = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 8
  %4 = ptrtoint ptr %detected_encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %detected_encoder, align 8
  %native_mode = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 10
  %6 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %native_mode, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @drm_mode_destroy(ptr noundef %1, ptr noundef nonnull %7) #12
  %8 = ptrtoint ptr %native_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %native_mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %edid = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 9
  %9 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edid, align 4
  %tobool6.not = icmp eq ptr %10, null
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %10) #12
  br label %if.end20

if.else:                                          ; preds = %if.end
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp = icmp eq i32 %14, 3
  br i1 %cmp, label %land.lhs.true, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true:                                    ; preds = %if.else
  %use_straps_for_mode = getelementptr inbounds %struct.dcb_output, ptr %12, i32 0, i32 13, i32 0, i32 1
  %15 = ptrtoint ptr %use_straps_for_mode to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_straps_for_mode, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool11.not = icmp eq i8 %16, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %land.lhs.true.land.lhs.true13_crit_edge

land.lhs.true.land.lhs.true13_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13

lor.lhs.false:                                    ; preds = %land.lhs.true
  %fp_no_ddc = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 9
  %17 = ptrtoint ptr %fp_no_ddc to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fp_no_ddc, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool12.not = icmp eq i8 %18, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.end20_crit_edge, label %lor.lhs.false.land.lhs.true13_crit_edge

lor.lhs.false.land.lhs.true13_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true13

lor.lhs.false.if.end20_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

land.lhs.true13:                                  ; preds = %lor.lhs.false.land.lhs.true13_crit_edge, %land.lhs.true.land.lhs.true13_crit_edge
  %call14 = tail call zeroext i1 @nouveau_bios_fp_mode(ptr noundef %1, ptr noundef null) #12
  br i1 %call14, label %if.then15, label %land.lhs.true13.if.end20_crit_edge

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %mode) #12
  %19 = call ptr @memset(ptr %mode, i32 255, i32 112)
  %call16 = call zeroext i1 @nouveau_bios_fp_mode(ptr noundef %1, ptr noundef nonnull %mode) #12
  %call17 = call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull %mode) #12
  %20 = ptrtoint ptr %native_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17, ptr %native_mode, align 8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %mode) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %land.lhs.true13.if.end20_crit_edge, %lor.lhs.false.if.end20_crit_edge, %if.else.if.end20_crit_edge, %if.then7
  %ret.0 = phi i32 [ %call9, %if.then7 ], [ 0, %if.then15 ], [ 0, %land.lhs.true13.if.end20_crit_edge ], [ 0, %lor.lhs.false.if.end20_crit_edge ], [ 0, %if.else.if.end20_crit_edge ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 10
  %21 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %22)
  %cmp21.not = icmp eq i32 %22, 7
  br i1 %cmp21.not, label %if.end20.if.end23_crit_edge, label %if.then22

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  %23 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %connector, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_private.i.i, align 4
  %27 = ptrtoint ptr %detected_encoder to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %detected_encoder, align 8
  %29 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %native_mode, align 8
  %31 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %edid, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.then22.if.end.i_crit_edge, label %land.lhs.true.i

if.then22.if.end.i_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then22
  %bpc.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %33 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bpc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool2.not.i = icmp eq i32 %34, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.end23_crit_edge

land.lhs.true.i.if.end23_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then22.if.end.i_crit_edge
  %type.i = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 1
  %35 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %36)
  %cmp.i = icmp eq i32 %36, 71
  br i1 %cmp.i, label %if.then3.i, label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %bpc5.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %37 = ptrtoint ptr %bpc5.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6, ptr %bpc5.i, align 8
  br label %if.end23

if.end6.i:                                        ; preds = %if.end.i
  %dcb.i = getelementptr inbounds %struct.nouveau_encoder, ptr %28, i32 0, i32 1
  %38 = ptrtoint ptr %dcb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dcb.i, align 4
  %type7.i = getelementptr inbounds %struct.dcb_output, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %type7.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %41)
  %cmp8.not.i = icmp eq i32 %41, 3
  %bpc14.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  br i1 %cmp8.not.i, label %if.end12.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %42 = ptrtoint ptr %bpc14.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8, ptr %bpc14.i, align 8
  br label %if.end23

if.end12.i:                                       ; preds = %if.end6.i
  %43 = ptrtoint ptr %bpc14.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 6, ptr %bpc14.i, align 8
  %fp_no_ddc.i = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 18, i32 9
  %44 = ptrtoint ptr %fp_no_ddc.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fp_no_ddc.i, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool15.not.i = icmp eq i8 %45, 0
  br i1 %tobool15.not.i, label %if.end22.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end12.i
  %if_is_24bit.i = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 18, i32 24, i32 11
  %46 = ptrtoint ptr %if_is_24bit.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %if_is_24bit.i, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool17.not.i = icmp eq i8 %47, 0
  br i1 %tobool17.not.i, label %if.then16.i.if.end23_crit_edge, label %if.then18.i

if.then16.i.if.end23_crit_edge:                   ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then18.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %bpc14.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %bpc14.i, align 8
  br label %if.end23

if.end22.i:                                       ; preds = %if.end12.i
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %36)
  %cmp27.i = icmp eq i32 %36, 65
  %or.cond.i = select i1 %tobool.not.not.i, i1 %cmp27.i, i1 false
  br i1 %or.cond.i, label %if.then28.i, label %if.end36.i

if.then28.i:                                      ; preds = %if.end22.i
  %arrayidx.i = getelementptr i8, ptr %32, i32 121
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %50)
  %cmp30.i = icmp eq i8 %50, 2
  br i1 %cmp30.i, label %if.then28.i.land.lhs.true44.critedge.i_crit_edge, label %if.then28.i.land.lhs.true38.i_crit_edge

if.then28.i.land.lhs.true38.i_crit_edge:          ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true38.i

if.then28.i.land.lhs.true44.critedge.i_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true44.critedge.i

if.end36.i:                                       ; preds = %if.end22.i
  %51 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %30, align 4
  %duallink_transition_clk.i = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 18, i32 24, i32 12
  %53 = ptrtoint ptr %duallink_transition_clk.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %duallink_transition_clk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp33.not.i = icmp slt i32 %52, %54
  br i1 %cmp33.not.i, label %if.end36.i.land.lhs.true38.i_crit_edge, label %if.end36.i.land.lhs.true44.critedge.i_crit_edge

if.end36.i.land.lhs.true44.critedge.i_crit_edge:  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true44.critedge.i

if.end36.i.land.lhs.true38.i_crit_edge:           ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true38.i

land.lhs.true38.i:                                ; preds = %if.end36.i.land.lhs.true38.i_crit_edge, %if.then28.i.land.lhs.true38.i_crit_edge
  %strapless_is_24bit.i = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 18, i32 24, i32 13
  %55 = ptrtoint ptr %strapless_is_24bit.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %strapless_is_24bit.i, align 4
  %57 = and i8 %56, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool41.not.i = icmp eq i8 %57, 0
  br i1 %tobool41.not.i, label %land.lhs.true38.i.if.end23_crit_edge, label %land.lhs.true38.i.if.then50.i_crit_edge

land.lhs.true38.i.if.then50.i_crit_edge:          ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50.i

land.lhs.true38.i.if.end23_crit_edge:             ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true44.critedge.i:                       ; preds = %if.end36.i.land.lhs.true44.critedge.i_crit_edge, %if.then28.i.land.lhs.true44.critedge.i_crit_edge
  %strapless_is_24bit46.i = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 18, i32 24, i32 13
  %58 = ptrtoint ptr %strapless_is_24bit46.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %strapless_is_24bit46.i, align 4
  %60 = and i8 %59, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool49.not.i = icmp eq i8 %60, 0
  br i1 %tobool49.not.i, label %land.lhs.true44.critedge.i.if.end23_crit_edge, label %land.lhs.true44.critedge.i.if.then50.i_crit_edge

land.lhs.true44.critedge.i.if.then50.i_crit_edge: ; preds = %land.lhs.true44.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50.i

land.lhs.true44.critedge.i.if.end23_crit_edge:    ; preds = %land.lhs.true44.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then50.i:                                      ; preds = %land.lhs.true44.critedge.i.if.then50.i_crit_edge, %land.lhs.true38.i.if.then50.i_crit_edge
  %61 = ptrtoint ptr %bpc14.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 8, ptr %bpc14.i, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then50.i, %land.lhs.true44.critedge.i.if.end23_crit_edge, %land.lhs.true38.i.if.end23_crit_edge, %if.then18.i, %if.then16.i.if.end23_crit_edge, %if.then9.i, %if.then3.i, %land.lhs.true.i.if.end23_crit_edge, %if.end20.if.end23_crit_edge
  %62 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %native_mode, align 8
  %tobool25.not = icmp eq ptr %63, null
  br i1 %tobool25.not, label %if.then26, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = call ptr @nouveau_conn_native_mode(ptr noundef %connector)
  %64 = ptrtoint ptr %native_mode to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call27, ptr %native_mode, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp30 = icmp eq i32 %ret.0, 0
  br i1 %cmp30, label %land.lhs.true31, label %if.end29.if.end38_crit_edge

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

land.lhs.true31:                                  ; preds = %if.end29
  %65 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %native_mode, align 8
  %tobool33.not = icmp eq ptr %66, null
  br i1 %tobool33.not, label %land.lhs.true31.if.end38_crit_edge, label %if.then34

land.lhs.true31.if.end38_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull %66) #12
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call37) #12
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %land.lhs.true31.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %ret.1 = phi i32 [ 1, %if.then34 ], [ 0, %land.lhs.true31.if.end38_crit_edge ], [ %ret.0, %if.end29.if.end38_crit_edge ]
  %67 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %68)
  %cmp40 = icmp eq i32 %68, 7
  br i1 %cmp40, label %if.then41, label %if.end38.if.end42_crit_edge

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %if.end38
  %69 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %connector, align 8
  %dev_private.i.i98 = getelementptr inbounds %struct.drm_device, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %dev_private.i.i98 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_private.i.i98, align 4
  %73 = ptrtoint ptr %detected_encoder to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %detected_encoder, align 8
  %75 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %native_mode, align 8
  %77 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %edid, align 4
  %tobool.not.i102 = icmp eq ptr %78, null
  br i1 %tobool.not.i102, label %if.then41.if.end.i108_crit_edge, label %land.lhs.true.i105

if.then41.if.end.i108_crit_edge:                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i108

land.lhs.true.i105:                               ; preds = %if.then41
  %bpc.i103 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %79 = ptrtoint ptr %bpc.i103 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bpc.i103, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool2.not.i104 = icmp eq i32 %80, 0
  br i1 %tobool2.not.i104, label %land.lhs.true.i105.if.end.i108_crit_edge, label %land.lhs.true.i105.if.end42_crit_edge

land.lhs.true.i105.if.end42_crit_edge:            ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.lhs.true.i105.if.end.i108_crit_edge:         ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i108

if.end.i108:                                      ; preds = %land.lhs.true.i105.if.end.i108_crit_edge, %if.then41.if.end.i108_crit_edge
  %type.i106 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 1
  %81 = ptrtoint ptr %type.i106 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %type.i106, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %82)
  %cmp.i107 = icmp eq i32 %82, 71
  br i1 %cmp.i107, label %if.then3.i110, label %if.end6.i115

if.then3.i110:                                    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #14
  %bpc5.i109 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %83 = ptrtoint ptr %bpc5.i109 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 6, ptr %bpc5.i109, align 8
  br label %if.end42

if.end6.i115:                                     ; preds = %if.end.i108
  %dcb.i111 = getelementptr inbounds %struct.nouveau_encoder, ptr %74, i32 0, i32 1
  %84 = ptrtoint ptr %dcb.i111 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dcb.i111, align 4
  %type7.i112 = getelementptr inbounds %struct.dcb_output, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %type7.i112 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %type7.i112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %87)
  %cmp8.not.i113 = icmp eq i32 %87, 3
  %bpc14.i114 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  br i1 %cmp8.not.i113, label %if.end12.i119, label %if.then9.i116

if.then9.i116:                                    ; preds = %if.end6.i115
  call void @__sanitizer_cov_trace_pc() #14
  %88 = ptrtoint ptr %bpc14.i114 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 8, ptr %bpc14.i114, align 8
  br label %if.end42

if.end12.i119:                                    ; preds = %if.end6.i115
  %89 = ptrtoint ptr %bpc14.i114 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 6, ptr %bpc14.i114, align 8
  %fp_no_ddc.i117 = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 18, i32 9
  %90 = ptrtoint ptr %fp_no_ddc.i117 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %fp_no_ddc.i117, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool15.not.i118 = icmp eq i8 %91, 0
  br i1 %tobool15.not.i118, label %if.end22.i127, label %if.then16.i122

if.then16.i122:                                   ; preds = %if.end12.i119
  %if_is_24bit.i120 = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 18, i32 24, i32 11
  %92 = ptrtoint ptr %if_is_24bit.i120 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %if_is_24bit.i120, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool17.not.i121 = icmp eq i8 %93, 0
  br i1 %tobool17.not.i121, label %if.then16.i122.if.end42_crit_edge, label %if.then18.i123

if.then16.i122.if.end42_crit_edge:                ; preds = %if.then16.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then18.i123:                                   ; preds = %if.then16.i122
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %bpc14.i114 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 8, ptr %bpc14.i114, align 8
  br label %if.end42

if.end22.i127:                                    ; preds = %if.end12.i119
  %tobool.not.not.i124 = xor i1 %tobool.not.i102, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %82)
  %cmp27.i125 = icmp eq i32 %82, 65
  %or.cond.i126 = select i1 %tobool.not.not.i124, i1 %cmp27.i125, i1 false
  br i1 %or.cond.i126, label %if.then28.i130, label %if.end36.i133

if.then28.i130:                                   ; preds = %if.end22.i127
  %arrayidx.i128 = getelementptr i8, ptr %78, i32 121
  %95 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %96)
  %cmp30.i129 = icmp eq i8 %96, 2
  br i1 %cmp30.i129, label %if.then28.i130.land.lhs.true44.critedge.i139_crit_edge, label %if.then28.i130.land.lhs.true38.i136_crit_edge

if.then28.i130.land.lhs.true38.i136_crit_edge:    ; preds = %if.then28.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true38.i136

if.then28.i130.land.lhs.true44.critedge.i139_crit_edge: ; preds = %if.then28.i130
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true44.critedge.i139

if.end36.i133:                                    ; preds = %if.end22.i127
  %97 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %76, align 4
  %duallink_transition_clk.i131 = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 18, i32 24, i32 12
  %99 = ptrtoint ptr %duallink_transition_clk.i131 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %duallink_transition_clk.i131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp33.not.i132 = icmp slt i32 %98, %100
  br i1 %cmp33.not.i132, label %if.end36.i133.land.lhs.true38.i136_crit_edge, label %if.end36.i133.land.lhs.true44.critedge.i139_crit_edge

if.end36.i133.land.lhs.true44.critedge.i139_crit_edge: ; preds = %if.end36.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true44.critedge.i139

if.end36.i133.land.lhs.true38.i136_crit_edge:     ; preds = %if.end36.i133
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true38.i136

land.lhs.true38.i136:                             ; preds = %if.end36.i133.land.lhs.true38.i136_crit_edge, %if.then28.i130.land.lhs.true38.i136_crit_edge
  %strapless_is_24bit.i134 = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 18, i32 24, i32 13
  %101 = ptrtoint ptr %strapless_is_24bit.i134 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %strapless_is_24bit.i134, align 4
  %103 = and i8 %102, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool41.not.i135 = icmp eq i8 %103, 0
  br i1 %tobool41.not.i135, label %land.lhs.true38.i136.if.end42_crit_edge, label %land.lhs.true38.i136.if.then50.i140_crit_edge

land.lhs.true38.i136.if.then50.i140_crit_edge:    ; preds = %land.lhs.true38.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50.i140

land.lhs.true38.i136.if.end42_crit_edge:          ; preds = %land.lhs.true38.i136
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

land.lhs.true44.critedge.i139:                    ; preds = %if.end36.i133.land.lhs.true44.critedge.i139_crit_edge, %if.then28.i130.land.lhs.true44.critedge.i139_crit_edge
  %strapless_is_24bit46.i137 = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 18, i32 24, i32 13
  %104 = ptrtoint ptr %strapless_is_24bit46.i137 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %strapless_is_24bit46.i137, align 4
  %106 = and i8 %105, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool49.not.i138 = icmp eq i8 %106, 0
  br i1 %tobool49.not.i138, label %land.lhs.true44.critedge.i139.if.end42_crit_edge, label %land.lhs.true44.critedge.i139.if.then50.i140_crit_edge

land.lhs.true44.critedge.i139.if.then50.i140_crit_edge: ; preds = %land.lhs.true44.critedge.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then50.i140

land.lhs.true44.critedge.i139.if.end42_crit_edge: ; preds = %land.lhs.true44.critedge.i139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then50.i140:                                   ; preds = %land.lhs.true44.critedge.i139.if.then50.i140_crit_edge, %land.lhs.true38.i136.if.then50.i140_crit_edge
  %107 = ptrtoint ptr %bpc14.i114 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 8, ptr %bpc14.i114, align 8
  br label %if.end42

if.end42:                                         ; preds = %if.then50.i140, %land.lhs.true44.critedge.i139.if.end42_crit_edge, %land.lhs.true38.i136.if.end42_crit_edge, %if.then18.i123, %if.then16.i122.if.end42_crit_edge, %if.then9.i116, %if.then3.i110, %land.lhs.true.i105.if.end42_crit_edge, %if.end38.if.end42_crit_edge
  %dcb43 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 1
  %108 = ptrtoint ptr %dcb43 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dcb43, align 4
  %type44 = getelementptr inbounds %struct.dcb_output, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %type44 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %type44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %111)
  %cmp45 = icmp eq i32 %111, 1
  br i1 %cmp45, label %if.then46, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %slave_funcs.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %5, i32 0, i32 1
  %112 = ptrtoint ptr %slave_funcs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %slave_funcs.i, align 4
  %get_modes = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %113, i32 0, i32 9
  %114 = ptrtoint ptr %get_modes to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %get_modes, align 4
  %call48 = call i32 %115(ptr noundef %5, ptr noundef %connector) #12
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end42.if.end49_crit_edge
  %ret.2 = phi i32 [ %call48, %if.then46 ], [ %ret.1, %if.end42.if.end49_crit_edge ]
  %type50 = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 1
  %116 = ptrtoint ptr %type50 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %type50, align 8
  %118 = zext i32 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %117, label %if.end49.if.end60_crit_edge [
    i32 64, label %if.end49.if.then58_crit_edge
    i32 65, label %if.end49.if.then58_crit_edge148
    i32 71, label %if.end49.if.then58_crit_edge149
  ]

if.end49.if.then58_crit_edge149:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.end49.if.then58_crit_edge148:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.end49.if.then58_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then58

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end60

if.then58:                                        ; preds = %if.end49.if.then58_crit_edge, %if.end49.if.then58_crit_edge148, %if.end49.if.then58_crit_edge149
  %119 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %native_mode, align 8
  %121 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %connector, align 8
  %tobool.not.i143 = icmp eq ptr %120, null
  br i1 %tobool.not.i143, label %if.then58.nouveau_connector_scaler_modes_add.exit_crit_edge, label %while.cond.preheader.i

if.then58.nouveau_connector_scaler_modes_add.exit_crit_edge: ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_connector_scaler_modes_add.exit

while.cond.preheader.i:                           ; preds = %if.then58
  %hdisplay4.i = getelementptr inbounds %struct.drm_display_mode, ptr %120, i32 0, i32 1
  %vdisplay6.i = getelementptr inbounds %struct.drm_display_mode, ptr %120, i32 0, i32 6
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end29.i, %while.cond.preheader.i
  %mode.0.ph.i = phi ptr [ @scaler_modes, %while.cond.preheader.i ], [ %incdec.ptr.i, %if.end29.i ]
  %modes.0.ph.i = phi i32 [ 0, %while.cond.preheader.i ], [ %modes.1.i, %if.end29.i ]
  %vdisplay.i = getelementptr inbounds %struct.moderec, ptr %mode.0.ph.i, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.then21.i.while.cond.i_crit_edge, %while.cond.outer.i
  %123 = ptrtoint ptr %mode.0.ph.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %mode.0.ph.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool2.not.i144 = icmp eq i32 %124, 0
  br i1 %tobool2.not.i144, label %while.cond.i.nouveau_connector_scaler_modes_add.exit_crit_edge, label %while.body.i

while.cond.i.nouveau_connector_scaler_modes_add.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_connector_scaler_modes_add.exit

while.body.i:                                     ; preds = %while.cond.i
  %125 = ptrtoint ptr %hdisplay4.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %hdisplay4.i, align 4
  %conv.i = zext i16 %126 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %conv.i)
  %cmp.not.i = icmp sgt i32 %124, %conv.i
  br i1 %cmp.not.i, label %while.body.i.if.end29.i_crit_edge, label %land.lhs.true.i146

while.body.i.if.end29.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.lhs.true.i146:                               ; preds = %while.body.i
  %127 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vdisplay.i, align 4
  %129 = ptrtoint ptr %vdisplay6.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %vdisplay6.i, align 2
  %conv7.i = zext i16 %130 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %conv7.i)
  %cmp8.not.i145 = icmp sgt i32 %128, %conv7.i
  br i1 %cmp8.not.i145, label %land.lhs.true.i146.if.end29.i_crit_edge, label %land.lhs.true10.i

land.lhs.true.i146.if.end29.i_crit_edge:          ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

land.lhs.true10.i:                                ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %conv.i)
  %cmp14.not.i = icmp eq i32 %124, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %128, i32 %conv7.i)
  %cmp19.not.i = icmp eq i32 %128, %conv7.i
  %or.cond.i147 = select i1 %cmp14.not.i, i1 %cmp19.not.i, i1 false
  br i1 %or.cond.i147, label %land.lhs.true10.i.if.end29.i_crit_edge, label %if.then21.i

land.lhs.true10.i.if.end29.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then21.i:                                      ; preds = %land.lhs.true10.i
  %call24.i = call i32 @drm_mode_vrefresh(ptr noundef nonnull %120) #12
  %call25.i = call ptr @drm_cvt_mode(ptr noundef %122, i32 noundef %124, i32 noundef %128, i32 noundef %call24.i, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #12
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.then21.i.while.cond.i_crit_edge, label %if.end28.i

if.then21.i.while.cond.i_crit_edge:               ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end28.i:                                       ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call25.i) #12
  %inc.i = add i32 %modes.0.ph.i, 1
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.end28.i, %land.lhs.true10.i.if.end29.i_crit_edge, %land.lhs.true.i146.if.end29.i_crit_edge, %while.body.i.if.end29.i_crit_edge
  %modes.1.i = phi i32 [ %inc.i, %if.end28.i ], [ %modes.0.ph.i, %while.body.i.if.end29.i_crit_edge ], [ %modes.0.ph.i, %land.lhs.true.i146.if.end29.i_crit_edge ], [ %modes.0.ph.i, %land.lhs.true10.i.if.end29.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.moderec, ptr %mode.0.ph.i, i32 1
  br label %while.cond.outer.i

nouveau_connector_scaler_modes_add.exit:          ; preds = %while.cond.i.nouveau_connector_scaler_modes_add.exit_crit_edge, %if.then58.nouveau_connector_scaler_modes_add.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then58.nouveau_connector_scaler_modes_add.exit_crit_edge ], [ %modes.0.ph.i, %while.cond.i.nouveau_connector_scaler_modes_add.exit_crit_edge ]
  %add = add i32 %retval.0.i, %ret.2
  br label %if.end60

if.end60:                                         ; preds = %nouveau_connector_scaler_modes_add.exit, %if.end49.if.end60_crit_edge
  %ret.3 = phi i32 [ %add, %nouveau_connector_scaler_modes_add.exit ], [ %ret.2, %if.end49.if.end60_crit_edge ]
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_connector_mode_valid(ptr noundef %connector, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %detected_encoder = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 8
  %0 = ptrtoint ptr %detected_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %detected_encoder, align 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %dcb = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dcb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dcb, align 4
  %type = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %7, label %do.body [
    i32 3, label %sw.bb
    i32 2, label %sw.bb13
    i32 0, label %sw.bb15
    i32 1, label %sw.bb20
    i32 6, label %sw.bb23
  ]

sw.bb:                                            ; preds = %entry
  %native_mode = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 10
  %9 = ptrtoint ptr %native_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %native_mode, align 8
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %sw.bb.sw.epilog.thread_crit_edge, label %land.lhs.true

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread

land.lhs.true:                                    ; preds = %sw.bb
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %11 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay, align 4
  %hdisplay4 = getelementptr inbounds %struct.drm_display_mode, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %hdisplay4 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hdisplay4, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %14)
  %cmp = icmp ugt i16 %12, %14
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %15 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay, align 2
  %vdisplay9 = getelementptr inbounds %struct.drm_display_mode, ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %vdisplay9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vdisplay9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp11 = icmp ugt i16 %16, %18
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.sw.epilog.thread_crit_edge

lor.lhs.false.sw.epilog.thread_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.thread

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %19 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %connector, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i.i, align 4
  %23 = load i32, ptr @nouveau_duallink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %sw.bb13.land.end.i_crit_edge, label %land.rhs.i

sw.bb13.land.end.i_crit_edge:                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end.i

land.rhs.i:                                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #14
  %duallink_possible.i = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %duallink_possible.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %duallink_possible.i, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool5.not.i = icmp eq i8 %25, 0
  %phi.sel.i = select i1 %tobool5.not.i, i32 1, i32 2
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %sw.bb13.land.end.i_crit_edge
  %26 = phi i32 [ 1, %sw.bb13.land.end.i_crit_edge ], [ %phi.sel.i, %land.rhs.i ]
  %edid.i = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 9
  %27 = ptrtoint ptr %edid.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edid.i, align 4
  %call6.i = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %28) #12
  %spec.select104.i = select i1 %call6.i, i32 1, i32 %26
  br i1 %call6.i, label %if.then8.i, label %land.end.i.if.end46.i_crit_edge

land.end.i.if.end46.i_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

if.then8.i:                                       ; preds = %land.end.i
  %29 = load i32, ptr @nouveau_hdmimhz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i = icmp sgt i32 %29, 0
  br i1 %cmp.i, label %if.then9.i, label %if.end10.i

if.then9.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i = mul i32 %29, 1000
  br label %sw.epilog

if.end10.i:                                       ; preds = %if.then8.i
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 3, i32 1, i32 2
  %30 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %chipset.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 287, i16 %31)
  %cmp12.i = icmp ugt i16 %31, 287
  br i1 %cmp12.i, label %if.then14.i, label %if.end28.i

if.then14.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %scrambling.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 16, i32 0, i32 2
  %32 = ptrtoint ptr %scrambling.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %scrambling.i, align 2, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool15.not.i = icmp eq i8 %33, 0
  %cond17.i = select i1 %tobool15.not.i, i32 340000, i32 594000
  %max_tmds_clock18.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 9
  %34 = ptrtoint ptr %max_tmds_clock18.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_tmds_clock18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool19.not.i = icmp eq i32 %35, 0
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 %cond17.i) #12
  %cond27.i = select i1 %tobool19.not.i, i32 %cond17.i, i32 %36
  br label %sw.epilog

if.end28.i:                                       ; preds = %if.end10.i
  %family.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 3, i32 1, i32 4
  %37 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %family.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %38)
  %cmp33.i = icmp ugt i8 %38, 7
  br i1 %cmp33.i, label %if.end28.i.sw.epilog_crit_edge, label %if.end36.i

if.end28.i.sw.epilog_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end36.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %38)
  %cmp42.i = icmp eq i8 %38, 7
  br i1 %cmp42.i, label %if.end36.i.sw.epilog_crit_edge, label %if.end36.i.if.end46.i_crit_edge

if.end36.i.if.end46.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46.i

if.end36.i.sw.epilog_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end46.i:                                       ; preds = %if.end36.i.if.end46.i_crit_edge, %land.end.i.if.end46.i_crit_edge
  %location.i = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 8
  %39 = ptrtoint ptr %location.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %location.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp48.not.i = icmp eq i8 %40, 0
  br i1 %cmp48.not.i, label %lor.lhs.false.i, label %if.end46.i.if.then57.i_crit_edge

if.end46.i.if.then57.i_crit_edge:                 ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57.i

lor.lhs.false.i:                                  ; preds = %if.end46.i
  %chipset53.i = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 2, i32 3, i32 1, i32 2
  %41 = ptrtoint ptr %chipset53.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %chipset53.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 69, i16 %42)
  %cmp55.i = icmp ugt i16 %42, 69
  br i1 %cmp55.i, label %lor.lhs.false.i.if.then57.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then57.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then57.i

if.then57.i:                                      ; preds = %lor.lhs.false.i.if.then57.i_crit_edge, %if.end46.i.if.then57.i_crit_edge
  %mul58.i = mul nuw nsw i32 %spec.select104.i, 165000
  br label %sw.epilog

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %42)
  %cmp64.i = icmp ugt i16 %42, 63
  br i1 %cmp64.i, label %if.then66.i, label %if.else68.i

if.then66.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul67.i = mul nuw nsw i32 %spec.select104.i, 155000
  br label %sw.epilog

if.else68.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 23, i16 %42)
  %cmp74.i = icmp ugt i16 %42, 23
  br i1 %cmp74.i, label %if.then76.i, label %if.else78.i

if.then76.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul77.i = mul nuw nsw i32 %spec.select104.i, 135000
  br label %sw.epilog

if.else78.i:                                      ; preds = %if.else68.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul79.i = mul nuw nsw i32 %spec.select104.i, 112000
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %43 = getelementptr inbounds %struct.dcb_output, ptr %5, i32 0, i32 13
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool17.not = icmp eq i32 %45, 0
  %spec.store.select = select i1 %tobool17.not, i32 350000, i32 %45
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %slave_funcs.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %slave_funcs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %slave_funcs.i, align 4
  %mode_valid = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %mode_valid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mode_valid, align 4
  %call22 = tail call i32 %49(ptr noundef %1, ptr noundef %mode) #12
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call24 = tail call i32 @nv50_dp_mode_valid(ptr noundef %connector, ptr noundef %1, ptr noundef %mode, ptr noundef null) #12
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_connector.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1081, 0\0A.popsection", ""() #12, !srcloc !101
  unreachable

sw.epilog.thread:                                 ; preds = %lor.lhs.false.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge
  %flags65 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %50 = ptrtoint ptr %flags65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags65, align 4
  %and66 = and i32 %51, 507904
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and66)
  %cmp2867 = icmp eq i32 %and66, 16384
  %mul68 = zext i1 %cmp2867 to i32
  %spec.select69 = shl i32 %3, %mul68
  br label %if.end35

sw.epilog:                                        ; preds = %sw.bb15, %if.else78.i, %if.then76.i, %if.then66.i, %if.then57.i, %if.end36.i.sw.epilog_crit_edge, %if.end28.i.sw.epilog_crit_edge, %if.then14.i, %if.then9.i
  %max_clock.0 = phi i32 [ %spec.store.select, %sw.bb15 ], [ %mul.i, %if.then9.i ], [ %cond27.i, %if.then14.i ], [ %mul58.i, %if.then57.i ], [ %mul67.i, %if.then66.i ], [ %mul77.i, %if.then76.i ], [ %mul79.i, %if.else78.i ], [ 297000, %if.end28.i.sw.epilog_crit_edge ], [ 225000, %if.end36.i.sw.epilog_crit_edge ]
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %52 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags, align 4
  %and = and i32 %53, 507904
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp28 = icmp eq i32 %and, 16384
  %mul = zext i1 %cmp28 to i32
  %spec.select = shl i32 %3, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000, i32 %spec.select)
  %cmp32 = icmp ult i32 %spec.select, 25000
  br i1 %cmp32, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end35_crit_edge

sw.epilog.if.end35_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %sw.epilog.if.end35_crit_edge, %sw.epilog.thread
  %spec.select72 = phi i32 [ %spec.select69, %sw.epilog.thread ], [ %spec.select, %sw.epilog.if.end35_crit_edge ]
  %max_clock.071 = phi i32 [ 400000, %sw.epilog.thread ], [ %max_clock.0, %sw.epilog.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select72, i32 %max_clock.071)
  %cmp36 = icmp ugt i32 %spec.select72, %max_clock.071
  %. = select i1 %cmp36, i32 15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %sw.epilog.cleanup_crit_edge, %sw.bb23, %sw.bb20, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %sw.bb23 ], [ %call22, %sw.bb20 ], [ 29, %lor.lhs.false.cleanup_crit_edge ], [ 29, %land.lhs.true.cleanup_crit_edge ], [ 16, %sw.epilog.cleanup_crit_edge ], [ %., %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @nouveau_connector_best_encoder(ptr nocapture noundef readonly %connector) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %detected_encoder = getelementptr inbounds %struct.nouveau_connector, ptr %connector, i32 0, i32 8
  %0 = ptrtoint ptr %detected_encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %detected_encoder, align 8
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dp_mode_valid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_dp_irq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !37, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !56, !57, !59, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !79, !81, !83, !84, !85, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 69, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nouveau_conn_native_mode._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nouveau_conn_native_mode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 92, i32 2}
!10 = !{ptr @nouveau_conn_native_mode._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nouveau_conn_native_mode._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_tv_disable323, !13, !"__UNIQUE_ID_tv_disable323", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 362, i32 1}
!14 = !{ptr @nouveau_tv_disable, !15, !"nouveau_tv_disable", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 363, i32 5}
!16 = !{ptr @__param_tv_disable, !17, !"__param_tv_disable", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 364, i32 1}
!18 = !{ptr @__UNIQUE_ID_tv_disabletype324, !17, !"__UNIQUE_ID_tv_disabletype324", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_ignorelid325, !20, !"__UNIQUE_ID_ignorelid325", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 366, i32 1}
!21 = !{ptr @nouveau_ignorelid, !22, !"nouveau_ignorelid", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 367, i32 5}
!23 = !{ptr @__param_ignorelid, !24, !"__param_ignorelid", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 368, i32 1}
!25 = !{ptr @__UNIQUE_ID_ignorelidtype326, !24, !"__UNIQUE_ID_ignorelidtype326", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_duallink327, !27, !"__UNIQUE_ID_duallink327", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 370, i32 1}
!28 = !{ptr @nouveau_duallink, !29, !"nouveau_duallink", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 371, i32 5}
!30 = !{ptr @__param_duallink, !31, !"__param_duallink", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 372, i32 1}
!32 = !{ptr @__UNIQUE_ID_duallinktype328, !31, !"__UNIQUE_ID_duallinktype328", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_hdmimhz329, !34, !"__UNIQUE_ID_hdmimhz329", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 374, i32 1}
!35 = !{ptr @nouveau_hdmimhz, !36, !"nouveau_hdmimhz", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 375, i32 5}
!37 = !{ptr @__param_hdmimhz, !38, !"__param_hdmimhz", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 376, i32 1}
!39 = !{ptr @__UNIQUE_ID_hdmimhztype330, !38, !"__UNIQUE_ID_hdmimhztype330", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 1288, i32 4}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @nouveau_connector_create._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @nouveau_connector_create._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 1349, i32 4}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @nouveau_connector_create._entry.11, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @nouveau_connector_create._entry_ptr.14, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 1361, i32 40}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 1366, i32 4}
!55 = !{ptr @nouveau_connector_create._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @nouveau_connector_create._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 1430, i32 45}
!59 = !{ptr @__param_str_tv_disable, !17, !"__param_str_tv_disable", i1 false, i1 false}
!60 = !{ptr @__param_str_ignorelid, !24, !"__param_str_ignorelid", i1 false, i1 false}
!61 = !{ptr @__param_str_duallink, !31, !"__param_str_duallink", i1 false, i1 false}
!62 = !{ptr @__param_str_hdmimhz, !38, !"__param_str_hdmimhz", i1 false, i1 false}
!63 = !{ptr @nouveau_connector_funcs, !64, !"nouveau_connector_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 1115, i32 1}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 590, i32 4}
!67 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nouveau_connector_detect._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @nouveau_connector_detect._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 753, i32 3}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @nouveau_connector_force._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @nouveau_connector_force._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @nouveau_connector_funcs_lvds, !76, !"nouveau_connector_funcs_lvds", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 1132, i32 1}
!77 = !{ptr @nouveau_connector_helper_funcs, !78, !"nouveau_connector_helper_funcs", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 1108, i32 1}
!79 = !{ptr @scaler_modes, !80, !"scaler_modes", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 803, i32 23}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/nouveau/nouveau_connector.c", i32 1178, i32 2}
!83 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @nouveau_connector_hotplug._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @nouveau_connector_hotplug._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{!"auto-init"}
!99 = !{i64 2148526662, i64 2148526688, i64 2148526717, i64 2148526751, i64 2148526782, i64 2148526805}
!100 = !{i8 0, i8 2}
!101 = !{i64 2158110996, i64 2158111505, i64 2158111033, i64 2158111089, i64 2158111123, i64 2158111147, i64 2158111188, i64 2158111209, i64 2158111237, i64 2158111271}
