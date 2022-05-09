; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cdns_mhdp_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.drm_connector, %struct.drm_bridge, %struct.cdns_mhdp_link, %struct.drm_dp_aux, %struct.cdns_mhdp_host, %struct.cdns_mhdp_sink, %struct.cdns_mhdp_display_fmt, i8, i8, i8, %struct.spinlock, i8, i8, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, i32, %struct.cdns_mhdp_hdcp, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.cdns_mhdp_link = type { i8, i32, i32, i32 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.cdns_mhdp_host = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cdns_mhdp_sink = type { i32, i8, i8, i8, i8, i8 }
%struct.cdns_mhdp_display_fmt = type { i32, i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cdns_mhdp_hdcp = type { %struct.delayed_work, %struct.work_struct, %struct.mutex, i32, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.84 = type { i32, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }

@cdns_mhdp_hdcp_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"(work_completion)(&(&mhdp->hdcp.check_work)->work)\00", [45 x i8] zeroinitializer }, align 32
@cdns_mhdp_hdcp_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&(&mhdp->hdcp.check_work)->timer\00", [63 x i8] zeroinitializer }, align 32
@cdns_mhdp_hdcp_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&mhdp->hdcp.prop_work)\00", [55 x i8] zeroinitializer }, align 32
@cdns_mhdp_hdcp_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mhdp->hdcp.mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c\00", [44 x i8] zeroinitializer }, align 32
@_cdns_mhdp_hdcp_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.7, i32 427, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HDCP authentication failed (%d tries/%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_cdns_mhdp_hdcp_enable\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@_cdns_mhdp_hdcp_enable._entry_ptr = internal global ptr @_cdns_mhdp_hdcp_enable._entry, section ".printk_index", align 4
@cdns_mhdp_hdcp_handle_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.7, ptr @.str.14, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cdns_mhdp8546\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cdns_mhdp_hdcp_handle_status\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HDCP Error = %d\00", [16 x i8] zeroinitializer }, align 32
@cdns_mhdp_hdcp_auth_14.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.15, ptr @.str.7, ptr @.str.16, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_mhdp_hdcp_auth_14\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HDCP: Starting 1.4 Authentication\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_mhdp_hdcp_auth_22.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.17, ptr @.str.7, ptr @.str.18, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_mhdp_hdcp_auth_22\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HDCP: Start 2.2 Authentication\0A\00", [32 x i8] zeroinitializer }, align 32
@cdns_mhdp_hdcp_auth_check.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.19, ptr @.str.7, ptr @.str.20, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_mhdp_hdcp_auth_check\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Authentication completed successfully!\0A\00", [56 x i8] zeroinitializer }, align 32
@cdns_mhdp_hdcp_auth_check.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.19, ptr @.str.7, ptr @.str.21, i8 0, i8 77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Authentication failed\0A\00", [41 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.22, ptr @.str.7, ptr @.str.23, i8 0, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"_cdns_mhdp_hdcp_disable\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s:%d] HDCP is being disabled...\0A\00", [61 x i8] zeroinitializer }, align 32
@cdns_mhdp_hdcp_check_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.7, i32 447, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[%s:%d] HDCP link failed, retrying authentication\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cdns_mhdp_hdcp_check_link\00", [38 x i8] zeroinitializer }, align 32
@cdns_mhdp_hdcp_check_link._entry_ptr = internal global ptr @cdns_mhdp_hdcp_check_link._entry, section ".printk_index", align 4
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 567, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 568, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 569, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 38, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 426, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 165, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 363, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 339, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 304, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 308, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 396, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [55 x i8] c"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 445, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @_cdns_mhdp_hdcp_enable._entry, ptr @_cdns_mhdp_hdcp_enable._entry_ptr, ptr @cdns_mhdp_hdcp_check_link._entry, ptr @cdns_mhdp_hdcp_check_link._entry_ptr, ptr @cdns_mhdp_hdcp_init.__key, ptr @.str, ptr @cdns_mhdp_hdcp_init.__key.1, ptr @.str.2, ptr @cdns_mhdp_hdcp_init.__key.3, ptr @.str.4, ptr @cdns_mhdp_hdcp_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_hdcp_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_hdcp_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_hdcp_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_hdcp_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_cdns_mhdp_hdcp_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_mhdp_hdcp_check_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_mhdp_hdcp_set_lc(ptr noundef %mhdp, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #4
  %call.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.cdns_mhdp_secure_mailbox_send.exit_crit_edge

entry.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond.1.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.body6.i.preheader, label %for.cond.2.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond.2.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.body6.i.preheader:                            ; preds = %for.cond.2.i
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %val, align 1
  %call8.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond3.i, label %for.body6.i.preheader.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.body6.i.preheader.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.body6.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i:                                      ; preds = %for.body6.i.preheader
  %arrayidx7.i.1 = getelementptr i8, ptr %val, i32 1
  %2 = ptrtoint ptr %arrayidx7.i.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx7.i.1, align 1
  %call8.i.1 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.1)
  %tobool9.not.i.1 = icmp eq i32 %call8.i.1, 0
  br i1 %tobool9.not.i.1, label %for.cond3.i.1, label %for.cond3.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.1:                                    ; preds = %for.cond3.i
  %arrayidx7.i.2 = getelementptr i8, ptr %val, i32 2
  %4 = ptrtoint ptr %arrayidx7.i.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7.i.2, align 1
  %call8.i.2 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.2)
  %tobool9.not.i.2 = icmp eq i32 %call8.i.2, 0
  br i1 %tobool9.not.i.2, label %for.cond3.i.2, label %for.cond3.i.1.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.1.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.2:                                    ; preds = %for.cond3.i.1
  %arrayidx7.i.3 = getelementptr i8, ptr %val, i32 3
  %6 = ptrtoint ptr %arrayidx7.i.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i.3, align 1
  %call8.i.3 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.3)
  %tobool9.not.i.3 = icmp eq i32 %call8.i.3, 0
  br i1 %tobool9.not.i.3, label %for.cond3.i.3, label %for.cond3.i.2.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.2.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.3:                                    ; preds = %for.cond3.i.2
  %arrayidx7.i.4 = getelementptr i8, ptr %val, i32 4
  %8 = ptrtoint ptr %arrayidx7.i.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx7.i.4, align 1
  %call8.i.4 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.4)
  %tobool9.not.i.4 = icmp eq i32 %call8.i.4, 0
  br i1 %tobool9.not.i.4, label %for.cond3.i.4, label %for.cond3.i.3.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.3.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.4:                                    ; preds = %for.cond3.i.3
  %arrayidx7.i.5 = getelementptr i8, ptr %val, i32 5
  %10 = ptrtoint ptr %arrayidx7.i.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7.i.5, align 1
  %call8.i.5 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.5)
  %tobool9.not.i.5 = icmp eq i32 %call8.i.5, 0
  br i1 %tobool9.not.i.5, label %for.cond3.i.5, label %for.cond3.i.4.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.4.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.5:                                    ; preds = %for.cond3.i.4
  %arrayidx7.i.6 = getelementptr i8, ptr %val, i32 6
  %12 = ptrtoint ptr %arrayidx7.i.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7.i.6, align 1
  %call8.i.6 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.6)
  %tobool9.not.i.6 = icmp eq i32 %call8.i.6, 0
  br i1 %tobool9.not.i.6, label %for.cond3.i.6, label %for.cond3.i.5.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.5.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.6:                                    ; preds = %for.cond3.i.5
  %arrayidx7.i.7 = getelementptr i8, ptr %val, i32 7
  %14 = ptrtoint ptr %arrayidx7.i.7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.i.7, align 1
  %call8.i.7 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.7)
  %tobool9.not.i.7 = icmp eq i32 %call8.i.7, 0
  br i1 %tobool9.not.i.7, label %for.cond3.i.7, label %for.cond3.i.6.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.6.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.7:                                    ; preds = %for.cond3.i.6
  %arrayidx7.i.8 = getelementptr i8, ptr %val, i32 8
  %16 = ptrtoint ptr %arrayidx7.i.8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx7.i.8, align 1
  %call8.i.8 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.8)
  %tobool9.not.i.8 = icmp eq i32 %call8.i.8, 0
  br i1 %tobool9.not.i.8, label %for.cond3.i.8, label %for.cond3.i.7.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.7.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.8:                                    ; preds = %for.cond3.i.7
  %arrayidx7.i.9 = getelementptr i8, ptr %val, i32 9
  %18 = ptrtoint ptr %arrayidx7.i.9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx7.i.9, align 1
  %call8.i.9 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.9)
  %tobool9.not.i.9 = icmp eq i32 %call8.i.9, 0
  br i1 %tobool9.not.i.9, label %for.cond3.i.9, label %for.cond3.i.8.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.8.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.9:                                    ; preds = %for.cond3.i.8
  %arrayidx7.i.10 = getelementptr i8, ptr %val, i32 10
  %20 = ptrtoint ptr %arrayidx7.i.10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx7.i.10, align 1
  %call8.i.10 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.10)
  %tobool9.not.i.10 = icmp eq i32 %call8.i.10, 0
  br i1 %tobool9.not.i.10, label %for.cond3.i.10, label %for.cond3.i.9.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.9.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.10:                                   ; preds = %for.cond3.i.9
  %arrayidx7.i.11 = getelementptr i8, ptr %val, i32 11
  %22 = ptrtoint ptr %arrayidx7.i.11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx7.i.11, align 1
  %call8.i.11 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.11)
  %tobool9.not.i.11 = icmp eq i32 %call8.i.11, 0
  br i1 %tobool9.not.i.11, label %for.cond3.i.11, label %for.cond3.i.10.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.10.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.11:                                   ; preds = %for.cond3.i.10
  %arrayidx7.i.12 = getelementptr i8, ptr %val, i32 12
  %24 = ptrtoint ptr %arrayidx7.i.12 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx7.i.12, align 1
  %call8.i.12 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.12)
  %tobool9.not.i.12 = icmp eq i32 %call8.i.12, 0
  br i1 %tobool9.not.i.12, label %for.cond3.i.12, label %for.cond3.i.11.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.11.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.12:                                   ; preds = %for.cond3.i.11
  %arrayidx7.i.13 = getelementptr i8, ptr %val, i32 13
  %26 = ptrtoint ptr %arrayidx7.i.13 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx7.i.13, align 1
  %call8.i.13 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.13)
  %tobool9.not.i.13 = icmp eq i32 %call8.i.13, 0
  br i1 %tobool9.not.i.13, label %for.cond3.i.13, label %for.cond3.i.12.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.12.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.13:                                   ; preds = %for.cond3.i.12
  %arrayidx7.i.14 = getelementptr i8, ptr %val, i32 14
  %28 = ptrtoint ptr %arrayidx7.i.14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx7.i.14, align 1
  %call8.i.14 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %29) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.14)
  %tobool9.not.i.14 = icmp eq i32 %call8.i.14, 0
  br i1 %tobool9.not.i.14, label %for.cond3.i.14, label %for.cond3.i.13.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond3.i.13.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond3.i.14:                                   ; preds = %for.cond3.i.13
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx7.i.15 = getelementptr i8, ptr %val, i32 15
  %30 = ptrtoint ptr %arrayidx7.i.15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx7.i.15, align 1
  %call8.i.15 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %31) #4
  br label %cdns_mhdp_secure_mailbox_send.exit

cdns_mhdp_secure_mailbox_send.exit:               ; preds = %for.cond3.i.14, %for.cond3.i.13.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.12.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.11.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.10.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.9.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.8.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.7.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.6.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.5.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.4.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.3.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.2.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.1.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.body6.i.preheader.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond.2.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond.1.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %entry.cdns_mhdp_secure_mailbox_send.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call.1.i, %for.cond.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call.2.i, %for.cond.1.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call.3.i, %for.cond.2.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i, %for.body6.i.preheader.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.1, %for.cond3.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.2, %for.cond3.i.1.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.3, %for.cond3.i.2.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.4, %for.cond3.i.3.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.5, %for.cond3.i.4.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.6, %for.cond3.i.5.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.7, %for.cond3.i.6.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.8, %for.cond3.i.7.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.9, %for.cond3.i.8.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.10, %for.cond3.i.9.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.11, %for.cond3.i.10.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.12, %for.cond3.i.11.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.13, %for.cond3.i.12.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.14, %for.cond3.i.13.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i.15, %for.cond3.i.14 ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #4
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_mhdp_hdcp_set_public_key_param(ptr noundef %mhdp, ptr nocapture noundef readonly %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #4
  %call.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.cdns_mhdp_secure_mailbox_send.exit_crit_edge

entry.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond.1.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext -125) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.cond.2.i.for.body6.i_crit_edge, label %for.cond.2.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.cond.2.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.cond.2.i.for.body6.i_crit_edge:               ; preds = %for.cond.2.i
  br label %for.body6.i

for.cond3.i:                                      ; preds = %for.body6.i
  %inc13.i = add nuw nsw i32 %i.130.i, 1
  %exitcond.not.i = icmp eq i32 %inc13.i, 387
  br i1 %exitcond.not.i, label %for.cond3.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, label %for.cond3.i.for.body6.i_crit_edge

for.cond3.i.for.body6.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body6.i

for.cond3.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

for.body6.i:                                      ; preds = %for.cond3.i.for.body6.i_crit_edge, %for.cond.2.i.for.body6.i_crit_edge
  %i.130.i = phi i32 [ %inc13.i, %for.cond3.i.for.body6.i_crit_edge ], [ 0, %for.cond.2.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr i8, ptr %val, i32 %i.130.i
  %0 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx7.i, align 1
  %call8.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %for.cond3.i, label %for.body6.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge

for.body6.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge: ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_secure_mailbox_send.exit

cdns_mhdp_secure_mailbox_send.exit:               ; preds = %for.body6.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond3.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond.2.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond.1.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %for.cond.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge, %entry.cdns_mhdp_secure_mailbox_send.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call.1.i, %for.cond.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call.2.i, %for.cond.1.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call.3.i, %for.cond.2.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ 0, %for.cond3.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge ], [ %call8.i, %for.body6.i.cdns_mhdp_secure_mailbox_send.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_mhdp_hdcp_enable(ptr noundef %mhdp, i8 noundef zeroext %content_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %call = tail call fastcc i32 @_cdns_mhdp_hdcp_enable(ptr noundef %mhdp, i8 noundef zeroext %content_type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hdcp = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28
  %hdcp_content_type = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 4
  %0 = ptrtoint ptr %hdcp_content_type to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %content_type, ptr %hdcp_content_type, align 4
  %value = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 3
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %value, align 4
  %prop_work = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %prop_work) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i17 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %hdcp, i32 noundef 2048) #4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_cdns_mhdp_hdcp_enable(ptr noundef %mhdp, i8 noundef zeroext %content_type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %content_type)
  %cmp1 = icmp eq i8 %content_type, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %content_type)
  %switch = icmp ult i8 %content_type, 2
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %name.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 9, i32 7
  %base.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 9, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.063 = phi i32 [ -1, %entry ], [ %ret.2, %for.inc.for.body_crit_edge ]
  br i1 %switch, label %if.then, label %for.body.if.end8_crit_edge

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then:                                          ; preds = %for.body
  %call.i = tail call fastcc i32 @cdns_mhdp_hdcp_set_config(ptr noundef %mhdp, i8 noundef zeroext 0, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call4.i = tail call fastcc i32 @cdns_mhdp_hdcp_auth_22(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool6.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call fastcc i32 @cdns_mhdp_hdcp_auth_check(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.cleanup_crit_edge, label %cdns_mhdp_hdcp_auth.exit

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cdns_mhdp_hdcp_auth.exit:                         ; preds = %if.end8.i
  %call12.i = tail call fastcc i32 @cdns_mhdp_hdcp_auth_check(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not = icmp eq i32 %call12.i, 0
  br i1 %tobool.not, label %cdns_mhdp_hdcp_auth.exit.cleanup_crit_edge, label %cdns_mhdp_hdcp_auth.exit.if.end_crit_edge

cdns_mhdp_hdcp_auth.exit.if.end_crit_edge:        ; preds = %cdns_mhdp_hdcp_auth.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

cdns_mhdp_hdcp_auth.exit.cleanup_crit_edge:       ; preds = %cdns_mhdp_hdcp_auth.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %cdns_mhdp_hdcp_auth.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %ret.1.i52 = phi i32 [ %call12.i, %cdns_mhdp_hdcp_auth.exit.if.end_crit_edge ], [ %call4.i, %if.end.i.if.end_crit_edge ], [ %call.i, %if.then.if.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_cdns_mhdp_hdcp_enable, %if.then.i)) #4
          to label %_cdns_mhdp_hdcp_disable.exit [label %if.then.i], !srcloc !58

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %2 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name.i, align 4
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef %3, i32 noundef %5) #4
  br label %_cdns_mhdp_hdcp_disable.exit

_cdns_mhdp_hdcp_disable.exit:                     ; preds = %if.then.i, %if.end
  %call4.i32 = tail call fastcc i32 @cdns_mhdp_hdcp_set_config(ptr noundef %mhdp, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  br label %if.end8

if.end8:                                          ; preds = %_cdns_mhdp_hdcp_disable.exit, %for.body.if.end8_crit_edge
  %ret.1 = phi i32 [ %ret.1.i52, %_cdns_mhdp_hdcp_disable.exit ], [ %ret.063, %for.body.if.end8_crit_edge ]
  br i1 %cmp1, label %if.then12, label %if.end8.for.inc_crit_edge

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then12:                                        ; preds = %if.end8
  %call.i33 = tail call fastcc i32 @cdns_mhdp_hdcp_set_config(ptr noundef %mhdp, i8 noundef zeroext 1, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %if.end.i35, label %if.then12.if.end16_crit_edge

if.then12.if.end16_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end.i35:                                       ; preds = %if.then12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_hdcp_auth_14.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_cdns_mhdp_hdcp_enable, %if.then.i.i)) #4
          to label %cdns_mhdp_hdcp_auth_14.exit.i [label %if.then.i.i], !srcloc !58

if.then.i.i:                                      ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_hdcp_auth_14.__UNIQUE_ID_ddebug311, ptr noundef %7, ptr noundef nonnull @.str.16) #4
  br label %cdns_mhdp_hdcp_auth_14.exit.i

cdns_mhdp_hdcp_auth_14.exit.i:                    ; preds = %if.then.i.i, %if.end.i35
  %call3.i.i = tail call fastcc i32 @cdns_mhdp_hdcp_check_receviers(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool6.not.i36 = icmp eq i32 %call3.i.i, 0
  br i1 %tobool6.not.i36, label %if.end8.i39, label %cdns_mhdp_hdcp_auth_14.exit.i.if.end16_crit_edge

cdns_mhdp_hdcp_auth_14.exit.i.if.end16_crit_edge: ; preds = %cdns_mhdp_hdcp_auth_14.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.end8.i39:                                      ; preds = %cdns_mhdp_hdcp_auth_14.exit.i
  %call9.i37 = tail call fastcc i32 @cdns_mhdp_hdcp_auth_check(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i37)
  %tobool10.not.i38 = icmp eq i32 %call9.i37, 0
  br i1 %tobool10.not.i38, label %if.end8.i39.cleanup_crit_edge, label %cdns_mhdp_hdcp_auth.exit43

if.end8.i39.cleanup_crit_edge:                    ; preds = %if.end8.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cdns_mhdp_hdcp_auth.exit43:                       ; preds = %if.end8.i39
  %call12.i40 = tail call fastcc i32 @cdns_mhdp_hdcp_auth_check(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i40)
  %tobool14.not = icmp eq i32 %call12.i40, 0
  br i1 %tobool14.not, label %cdns_mhdp_hdcp_auth.exit43.cleanup_crit_edge, label %cdns_mhdp_hdcp_auth.exit43.if.end16_crit_edge

cdns_mhdp_hdcp_auth.exit43.if.end16_crit_edge:    ; preds = %cdns_mhdp_hdcp_auth.exit43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

cdns_mhdp_hdcp_auth.exit43.cleanup_crit_edge:     ; preds = %cdns_mhdp_hdcp_auth.exit43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %cdns_mhdp_hdcp_auth.exit43.if.end16_crit_edge, %cdns_mhdp_hdcp_auth_14.exit.i.if.end16_crit_edge, %if.then12.if.end16_crit_edge
  %ret.1.i4258 = phi i32 [ %call12.i40, %cdns_mhdp_hdcp_auth.exit43.if.end16_crit_edge ], [ %call3.i.i, %cdns_mhdp_hdcp_auth_14.exit.i.if.end16_crit_edge ], [ %call.i33, %if.then12.if.end16_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_cdns_mhdp_hdcp_enable, %if.then.i47)) #4
          to label %_cdns_mhdp_hdcp_disable.exit49 [label %if.then.i47], !srcloc !58

if.then.i47:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312, ptr noundef %9, ptr noundef nonnull @.str.23, ptr noundef %11, i32 noundef %13) #4
  br label %_cdns_mhdp_hdcp_disable.exit49

_cdns_mhdp_hdcp_disable.exit49:                   ; preds = %if.then.i47, %if.end16
  %call4.i48 = tail call fastcc i32 @cdns_mhdp_hdcp_set_config(ptr noundef %mhdp, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  br label %for.inc

for.inc:                                          ; preds = %_cdns_mhdp_hdcp_disable.exit49, %if.end8.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.1.i4258, %_cdns_mhdp_hdcp_disable.exit49 ], [ %ret.1, %if.end8.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.8, i32 noundef 3, i32 noundef %ret.2) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %cdns_mhdp_hdcp_auth.exit43.cleanup_crit_edge, %if.end8.i39.cleanup_crit_edge, %cdns_mhdp_hdcp_auth.exit.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %do.end ], [ 0, %cdns_mhdp_hdcp_auth.exit.cleanup_crit_edge ], [ 0, %cdns_mhdp_hdcp_auth.exit43.cleanup_crit_edge ], [ 0, %if.end8.i.cleanup_crit_edge ], [ 0, %if.end8.i39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cdns_mhdp_hdcp_disable(ptr noundef %mhdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %value = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 3
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 4
  %prop_work = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %prop_work) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_hdcp_disable, %if.then.i)) #4
          to label %_cdns_mhdp_hdcp_disable.exit [label %if.then.i], !srcloc !58

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 9, i32 7
  %6 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i, align 4
  %base.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 9, i32 6
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312, ptr noundef %5, ptr noundef nonnull @.str.23, ptr noundef %7, i32 noundef %9) #4
  br label %_cdns_mhdp_hdcp_disable.exit

_cdns_mhdp_hdcp_disable.exit:                     ; preds = %if.then.i, %if.then
  %call4.i = tail call fastcc i32 @cdns_mhdp_hdcp_set_config(ptr noundef %mhdp, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  br label %if.end

if.end:                                           ; preds = %_cdns_mhdp_hdcp_disable.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call4.i, %_cdns_mhdp_hdcp_disable.exit ], [ 0, %entry.if.end_crit_edge ]
  %hdcp = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %hdcp) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cdns_mhdp_hdcp_init(ptr noundef %mhdp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %hdcp = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28
  tail call void @__init_work(ptr noundef %hdcp, i32 noundef 0) #4
  %0 = ptrtoint ptr %hdcp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %hdcp, align 4
  %lockdep_map = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 0, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @cdns_mhdp_hdcp_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry11 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 0, i32 0, i32 1
  %1 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 0, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry11, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 0, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @cdns_mhdp_hdcp_check_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @cdns_mhdp_hdcp_init.__key.1) #4
  %prop_work = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 1
  tail call void @__init_work(ptr noundef %prop_work, i32 noundef 0) #4
  %4 = ptrtoint ptr %prop_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %prop_work, align 4
  %lockdep_map29 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.4, ptr noundef nonnull @cdns_mhdp_hdcp_init.__key.3, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry32 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 1, i32 1
  %5 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i51 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i51 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry32, ptr %prev.i51, align 4
  %func35 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 1, i32 2
  %7 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cdns_mhdp_hdcp_prop_work, ptr %func35, align 4
  %mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @cdns_mhdp_hdcp_init.__key.5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_hdcp_check_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %work, i32 -3580
  %call4 = tail call fastcc i32 @cdns_mhdp_hdcp_check_link(ptr noundef %add.ptr3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 2048) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_mhdp_hdcp_prop_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %connector = getelementptr i8, ptr %work, i32 -3464
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 1
  %call = tail call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef null) #4
  %mutex = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %value = getelementptr i8, ptr %work, i32 136
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %state8 = getelementptr i8, ptr %work, i32 -2472
  %4 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state8, align 8
  %content_protection = getelementptr inbounds %struct.drm_connector_state, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %content_protection to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %content_protection, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  tail call void @drm_modeset_unlock(ptr noundef %connection_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mbox_mutex) #4
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 38, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call20 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call20, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 42) #4
  %sapb_regs = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 1
  %0 = ptrtoint ptr %sapb_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sapb_regs, align 4
  %add.ptr81 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool36.not82 = icmp eq i32 %2, 0
  br i1 %tobool36.not82, label %if.end.do.body62_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.do.body62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

land.lhs.true:                                    ; preds = %if.then53.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call40 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call40, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call40, %add.i
  br i1 %cmp3.i, label %if.then43, label %if.then53

if.then43:                                        ; preds = %land.lhs.true
  %3 = ptrtoint ptr %sapb_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sapb_regs, align 4
  %add.ptr47 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp eq i32 %5, 0
  br i1 %phi.cmp, label %if.then43.do.body62_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then43.do.body62_crit_edge:                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

if.then53:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #4
  %6 = ptrtoint ptr %sapb_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sapb_regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  %tobool36.not = icmp eq i32 %8, 0
  br i1 %tobool36.not, label %if.then53.do.body62_crit_edge, label %if.then53.land.lhs.true_crit_edge

if.then53.land.lhs.true_crit_edge:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.then53.do.body62_crit_edge:                    ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body62

do.body62:                                        ; preds = %if.then53.do.body62_crit_edge, %if.then43.do.body62_crit_edge, %if.end.do.body62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %conv = zext i8 %val to i32
  %9 = shl nuw i32 %conv, 24
  %10 = ptrtoint ptr %sapb_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sapb_regs, align 4
  %add.ptr66 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %9) #4, !srcloc !64
  br label %cleanup

cleanup:                                          ; preds = %do.body62, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body62 ], [ -110, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_hdcp_set_config(ptr noundef %mhdp, i8 noundef zeroext %hdcp_config, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %hdcp_port_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdcp_port_status) #4
  %0 = ptrtoint ptr %hdcp_port_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hdcp_port_status, align 2, !annotation !65
  %cond = select i1 %enable, i8 4, i8 0
  %or = or i8 %cond, %hdcp_config
  %mbox_mutex.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex.i, i32 noundef 0) #4
  %call.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %entry.cdns_mhdp_hdcp_tx_config.exit_crit_edge

entry.cdns_mhdp_hdcp_tx_config.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_config.exit

for.cond.i.i:                                     ; preds = %entry
  %call.1.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.cdns_mhdp_hdcp_tx_config.exit_crit_edge

for.cond.i.i.cdns_mhdp_hdcp_tx_config.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_config.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call.2.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.cdns_mhdp_hdcp_tx_config.exit_crit_edge

for.cond.1.i.i.cdns_mhdp_hdcp_tx_config.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_config.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call.3.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.body6.i.preheader.i, label %for.cond.2.i.i.cdns_mhdp_hdcp_tx_config.exit_crit_edge

for.cond.2.i.i.cdns_mhdp_hdcp_tx_config.exit_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_config.exit

for.body6.i.preheader.i:                          ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call8.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext %or) #4
  br label %cdns_mhdp_hdcp_tx_config.exit

cdns_mhdp_hdcp_tx_config.exit:                    ; preds = %for.body6.i.preheader.i, %for.cond.2.i.i.cdns_mhdp_hdcp_tx_config.exit_crit_edge, %for.cond.1.i.i.cdns_mhdp_hdcp_tx_config.exit_crit_edge, %for.cond.i.i.cdns_mhdp_hdcp_tx_config.exit_crit_edge, %entry.cdns_mhdp_hdcp_tx_config.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i) #4
  %call4 = tail call i32 @cdns_mhdp_wait_for_sw_event(ptr noundef %mhdp, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %cdns_mhdp_hdcp_tx_config.exit.cleanup_crit_edge, label %if.end

cdns_mhdp_hdcp_tx_config.exit.cleanup_crit_edge:  ; preds = %cdns_mhdp_hdcp_tx_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %cdns_mhdp_hdcp_tx_config.exit
  %call6 = call fastcc i32 @cdns_mhdp_hdcp_get_status(ptr noundef %mhdp, ptr noundef nonnull %hdcp_port_status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %hdcp_port_status to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %hdcp_port_status, align 2
  %3 = lshr i16 %2, 5
  %4 = trunc i16 %3 to i8
  %conv1.i = and i8 %4, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool.not.i = icmp eq i8 %conv1.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.cdns_mhdp_hdcp_handle_status.exit_crit_edge, label %do.body.i

lor.lhs.false.cdns_mhdp_hdcp_handle_status.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_handle_status.exit

do.body.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_hdcp_handle_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_hdcp_set_config, %if.then5.i)) #4
          to label %cdns_mhdp_hdcp_handle_status.exit [label %if.then5.i], !srcloc !58

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %conv6.i = zext i8 %conv1.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_hdcp_handle_status.__UNIQUE_ID_ddebug307, ptr noundef %6, ptr noundef nonnull @.str.14, i32 noundef %conv6.i) #4
  br label %cdns_mhdp_hdcp_handle_status.exit

cdns_mhdp_hdcp_handle_status.exit:                ; preds = %if.then5.i, %do.body.i, %lor.lhs.false.cdns_mhdp_hdcp_handle_status.exit_crit_edge
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %spec.select = sext i1 %not.tobool.not.i to i32
  br label %cleanup

cleanup:                                          ; preds = %cdns_mhdp_hdcp_handle_status.exit, %if.end.cleanup_crit_edge, %cdns_mhdp_hdcp_tx_config.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %cdns_mhdp_hdcp_tx_config.exit.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ %spec.select, %cdns_mhdp_hdcp_handle_status.exit ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdcp_port_status) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_hdcp_auth_22(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  %hdcp_port_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdcp_port_status) #4
  %0 = ptrtoint ptr %hdcp_port_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hdcp_port_status, align 2, !annotation !65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_hdcp_auth_22.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_hdcp_auth_22, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_hdcp_auth_22.__UNIQUE_ID_ddebug310, ptr noundef %2, ptr noundef nonnull @.str.18) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @cdns_mhdp_wait_for_sw_event(ptr noundef %mhdp, i32 noundef 32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %and = and i32 %call3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.if.end16_crit_edge, label %if.then8

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then8:                                         ; preds = %if.end6
  %sw_events = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 27
  %3 = ptrtoint ptr %sw_events to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sw_events, align 8
  %and9 = and i32 %4, -17
  store i32 %and9, ptr %sw_events, align 8
  %call10 = call fastcc i32 @cdns_mhdp_hdcp_get_status(ptr noundef %mhdp, ptr noundef nonnull %hdcp_port_status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then8
  %5 = ptrtoint ptr %hdcp_port_status to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hdcp_port_status, align 2
  %7 = lshr i16 %6, 5
  %8 = trunc i16 %7 to i8
  %conv1.i = and i8 %8, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool.not.i = icmp eq i8 %conv1.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.if.end16_crit_edge, label %do.body.i

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.body.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_hdcp_handle_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_hdcp_auth_22, %if.then5.i)) #4
          to label %cleanup [label %if.then5.i], !srcloc !58

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %conv6.i = zext i8 %conv1.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_hdcp_handle_status.__UNIQUE_ID_ddebug307, ptr noundef %10, ptr noundef nonnull @.str.14, i32 noundef %conv6.i) #4
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %mbox_mutex.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex.i, i32 noundef 0) #4
  %call.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.end16.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge

if.end16.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

for.cond.i.i:                                     ; preds = %if.end16
  %call.1.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge

for.cond.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call.2.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge

for.cond.1.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call.3.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %if.end.i, label %for.cond.2.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge

for.cond.2.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

if.end.i:                                         ; preds = %for.cond.2.i.i
  %call1.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_recv_header(ptr noundef %mhdp, i8 noundef zeroext 7, i16 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.body.i.preheader.i, label %if.end.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge

if.end.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

for.body.i.preheader.i:                           ; preds = %if.end.i
  %call.i1.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp2.i.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp2.i.i, label %for.body.i.preheader.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, label %if.end.i.i

for.body.i.preheader.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

if.end.i.i:                                       ; preds = %for.body.i.preheader.i
  %call.i1.1.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.1.i)
  %cmp2.i.1.i = icmp slt i32 %call.i1.1.i, 0
  br i1 %cmp2.i.1.i, label %if.end.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, label %if.end.i.1.i

if.end.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

if.end.i.1.i:                                     ; preds = %if.end.i.i
  %call.i1.2.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.2.i)
  %cmp2.i.2.i = icmp slt i32 %call.i1.2.i, 0
  br i1 %cmp2.i.2.i, label %if.end.i.1.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, label %if.end.i.2.i

if.end.i.1.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge: ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

if.end.i.2.i:                                     ; preds = %if.end.i.1.i
  %call.i1.3.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.3.i)
  %cmp2.i.3.i = icmp slt i32 %call.i1.3.i, 0
  br i1 %cmp2.i.3.i, label %if.end.i.2.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, label %if.end.i.3.i

if.end.i.2.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge: ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

if.end.i.3.i:                                     ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i1.4.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  br label %cdns_mhdp_hdcp_tx_is_km_stored.exit

cdns_mhdp_hdcp_tx_is_km_stored.exit:              ; preds = %if.end.i.3.i, %if.end.i.2.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, %if.end.i.1.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, %if.end.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, %for.body.i.preheader.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, %if.end.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, %for.cond.2.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, %for.cond.1.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, %for.cond.i.i.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge, %if.end16.cdns_mhdp_hdcp_tx_is_km_stored.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i) #4
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex.i, i32 noundef 0) #4
  %call.i.i35 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool.not.i.i36 = icmp eq i32 %call.i.i35, 0
  br i1 %tobool.not.i.i36, label %for.cond.i.i39, label %cdns_mhdp_hdcp_tx_is_km_stored.exit.cdns_mhdp_hdcp_km_stored_resp.exit_crit_edge

cdns_mhdp_hdcp_tx_is_km_stored.exit.cdns_mhdp_hdcp_km_stored_resp.exit_crit_edge: ; preds = %cdns_mhdp_hdcp_tx_is_km_stored.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_km_stored_resp.exit

for.cond.i.i39:                                   ; preds = %cdns_mhdp_hdcp_tx_is_km_stored.exit
  %call.1.i.i37 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i37)
  %tobool.not.1.i.i38 = icmp eq i32 %call.1.i.i37, 0
  br i1 %tobool.not.1.i.i38, label %for.cond.1.i.i42, label %for.cond.i.i39.cdns_mhdp_hdcp_km_stored_resp.exit_crit_edge

for.cond.i.i39.cdns_mhdp_hdcp_km_stored_resp.exit_crit_edge: ; preds = %for.cond.i.i39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_km_stored_resp.exit

for.cond.1.i.i42:                                 ; preds = %for.cond.i.i39
  %call.2.i.i40 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i40)
  %tobool.not.2.i.i41 = icmp eq i32 %call.2.i.i40, 0
  br i1 %tobool.not.2.i.i41, label %for.cond.2.i.i44, label %for.cond.1.i.i42.cdns_mhdp_hdcp_km_stored_resp.exit_crit_edge

for.cond.1.i.i42.cdns_mhdp_hdcp_km_stored_resp.exit_crit_edge: ; preds = %for.cond.1.i.i42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_km_stored_resp.exit

for.cond.2.i.i44:                                 ; preds = %for.cond.1.i.i42
  call void @__sanitizer_cov_trace_pc() #6
  %call.3.i.i43 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  br label %cdns_mhdp_hdcp_km_stored_resp.exit

cdns_mhdp_hdcp_km_stored_resp.exit:               ; preds = %for.cond.2.i.i44, %for.cond.1.i.i42.cdns_mhdp_hdcp_km_stored_resp.exit_crit_edge, %for.cond.i.i39.cdns_mhdp_hdcp_km_stored_resp.exit_crit_edge, %cdns_mhdp_hdcp_tx_is_km_stored.exit.cdns_mhdp_hdcp_km_stored_resp.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i) #4
  %call19 = tail call fastcc i32 @cdns_mhdp_hdcp_check_receviers(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp ne i32 %call19, 0
  %. = sext i1 %tobool20.not to i32
  br label %cleanup

cleanup:                                          ; preds = %cdns_mhdp_hdcp_km_stored_resp.exit, %if.then5.i, %do.body.i, %if.then8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end.cleanup_crit_edge ], [ -1, %if.then8.cleanup_crit_edge ], [ %., %cdns_mhdp_hdcp_km_stored_resp.exit ], [ -1, %do.body.i ], [ -1, %if.then5.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdcp_port_status) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_hdcp_auth_check(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  %hdcp_port_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdcp_port_status) #4
  %0 = ptrtoint ptr %hdcp_port_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hdcp_port_status, align 2, !annotation !65
  %call = tail call i32 @cdns_mhdp_wait_for_sw_event(ptr noundef %mhdp, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @cdns_mhdp_hdcp_get_status(ptr noundef %mhdp, ptr noundef nonnull %hdcp_port_status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %1 = ptrtoint ptr %hdcp_port_status to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %hdcp_port_status, align 2
  %3 = lshr i16 %2, 5
  %4 = trunc i16 %3 to i8
  %conv1.i = and i8 %4, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv1.i)
  %tobool.not.i = icmp eq i8 %conv1.i, 0
  br i1 %tobool.not.i, label %if.end6, label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_hdcp_handle_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_hdcp_auth_check, %if.then5.i)) #4
          to label %cleanup [label %if.then5.i], !srcloc !58

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %conv6.i = zext i8 %conv1.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_hdcp_handle_status.__UNIQUE_ID_ddebug307, ptr noundef %6, ptr noundef nonnull @.str.14, i32 noundef %conv6.i) #4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %7 = and i16 %2, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool8.not = icmp eq i16 %7, 0
  br i1 %tobool8.not, label %do.body17, label %do.body

do.body:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_hdcp_auth_check.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_hdcp_auth_check, %if.then14)) #4
          to label %cleanup [label %if.then14], !srcloc !58

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_hdcp_auth_check.__UNIQUE_ID_ddebug308, ptr noundef %9, ptr noundef nonnull @.str.20) #4
  br label %cleanup

do.body17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cdns_mhdp_hdcp_auth_check.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_hdcp_auth_check, %if.then29)) #4
          to label %cleanup [label %if.then29], !srcloc !58

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %dev30 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %10 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cdns_mhdp_hdcp_auth_check.__UNIQUE_ID_ddebug309, ptr noundef %11, ptr noundef nonnull @.str.21) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %do.body17, %if.then14, %do.body, %if.then5.i, %do.body.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.then14 ], [ -1, %if.then29 ], [ -1, %do.body.i ], [ -1, %if.then5.i ], [ 0, %do.body ], [ -1, %do.body17 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdcp_port_status) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdns_mhdp_wait_for_sw_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_hdcp_get_status(ptr noundef %mhdp, ptr nocapture noundef writeonly %hdcp_port_status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex, i32 noundef 0) #4
  %call.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %entry.err_get_hdcp_status_crit_edge

entry.err_get_hdcp_status_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

for.cond.i:                                       ; preds = %entry
  %call.1.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.err_get_hdcp_status_crit_edge

for.cond.i.err_get_hdcp_status_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

for.cond.1.i:                                     ; preds = %for.cond.i
  %call.2.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.err_get_hdcp_status_crit_edge

for.cond.1.i.err_get_hdcp_status_crit_edge:       ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call.3.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end, label %for.cond.2.i.err_get_hdcp_status_crit_edge

for.cond.2.i.err_get_hdcp_status_crit_edge:       ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

if.end:                                           ; preds = %for.cond.2.i
  %call1 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_recv_header(ptr noundef %mhdp, i8 noundef zeroext 6, i16 noundef zeroext 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.body.i.preheader, label %if.end.err_get_hdcp_status_crit_edge

if.end.err_get_hdcp_status_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

for.body.i.preheader:                             ; preds = %if.end
  %call.i22 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp2.i = icmp slt i32 %call.i22, 0
  br i1 %cmp2.i, label %for.body.i.preheader.err_get_hdcp_status_crit_edge, label %if.end.i

for.body.i.preheader.err_get_hdcp_status_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

if.end.i:                                         ; preds = %for.body.i.preheader
  %call.i22.1 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.1)
  %cmp2.i.1 = icmp slt i32 %call.i22.1, 0
  br i1 %cmp2.i.1, label %if.end.i.err_get_hdcp_status_crit_edge, label %if.end.i.1

if.end.i.err_get_hdcp_status_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

if.end.i.1:                                       ; preds = %if.end.i
  %call.i22.2 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.2)
  %cmp2.i.2 = icmp slt i32 %call.i22.2, 0
  br i1 %cmp2.i.2, label %if.end.i.1.err_get_hdcp_status_crit_edge, label %if.end.i.2

if.end.i.1.err_get_hdcp_status_crit_edge:         ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

if.end.i.2:                                       ; preds = %if.end.i.1
  %call.i22.3 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.3)
  %cmp2.i.3 = icmp slt i32 %call.i22.3, 0
  br i1 %cmp2.i.3, label %if.end.i.2.err_get_hdcp_status_crit_edge, label %if.end.i.3

if.end.i.2.err_get_hdcp_status_crit_edge:         ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

if.end.i.3:                                       ; preds = %if.end.i.2
  %call.i22.4 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.4)
  %cmp2.i.4 = icmp slt i32 %call.i22.4, 0
  br i1 %cmp2.i.4, label %if.end.i.3.err_get_hdcp_status_crit_edge, label %if.end.i.4

if.end.i.3.err_get_hdcp_status_crit_edge:         ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_get_hdcp_status

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #6
  %0 = trunc i32 %call.i22 to i16
  %conv = shl i16 %0, 8
  %1 = trunc i32 %call.i22.1 to i16
  %conv12 = and i16 %1, 255
  %or = or i16 %conv, %conv12
  %2 = ptrtoint ptr %hdcp_port_status to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %or, ptr %hdcp_port_status, align 2
  br label %err_get_hdcp_status

err_get_hdcp_status:                              ; preds = %if.end.i.4, %if.end.i.3.err_get_hdcp_status_crit_edge, %if.end.i.2.err_get_hdcp_status_crit_edge, %if.end.i.1.err_get_hdcp_status_crit_edge, %if.end.i.err_get_hdcp_status_crit_edge, %for.body.i.preheader.err_get_hdcp_status_crit_edge, %if.end.err_get_hdcp_status_crit_edge, %for.cond.2.i.err_get_hdcp_status_crit_edge, %for.cond.1.i.err_get_hdcp_status_crit_edge, %for.cond.i.err_get_hdcp_status_crit_edge, %entry.err_get_hdcp_status_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_get_hdcp_status_crit_edge ], [ 0, %if.end.i.4 ], [ %call.3.i, %for.cond.2.i.err_get_hdcp_status_crit_edge ], [ %call.2.i, %for.cond.1.i.err_get_hdcp_status_crit_edge ], [ %call.1.i, %for.cond.i.err_get_hdcp_status_crit_edge ], [ %call.i, %entry.err_get_hdcp_status_crit_edge ], [ %call.i22, %for.body.i.preheader.err_get_hdcp_status_crit_edge ], [ %call.i22.1, %if.end.i.err_get_hdcp_status_crit_edge ], [ %call.i22.2, %if.end.i.1.err_get_hdcp_status_crit_edge ], [ %call.i22.3, %if.end.i.2.err_get_hdcp_status_crit_edge ], [ %call.i22.4, %if.end.i.3.err_get_hdcp_status_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mbox_mutex) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_secure_mailbox_recv_header(ptr noundef %mhdp, i8 noundef zeroext %opcode, i16 noundef zeroext %req_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %call to i8
  %call.1 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  %conv.1 = trunc i32 %call.1 to i8
  %call.2 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  %call.3 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  %0 = trunc i32 %call.2 to i16
  %header.sroa.8.2.insert.shift = shl i16 %0, 8
  %1 = trunc i32 %call.3 to i16
  %header.sroa.8.3.insert.ext = and i16 %1, 255
  %header.sroa.8.3.insert.insert12 = or i16 %header.sroa.8.2.insert.shift, %header.sroa.8.3.insert.ext
  %conv3 = zext i16 %header.sroa.8.3.insert.insert12 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %conv, i8 %opcode)
  %cmp7.not = icmp eq i8 %conv, %opcode
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv.1)
  %cmp12.not = icmp eq i8 %conv.1, 7
  %or.cond13 = select i1 %cmp7.not, i1 %cmp12.not, i1 false
  br i1 %or.cond13, label %lor.lhs.false14, label %if.end.3.if.then21_crit_edge

if.end.3.if.then21_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

lor.lhs.false14:                                  ; preds = %if.end.3
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %opcode)
  %cmp16.not = icmp eq i8 %opcode, 9
  call void @__sanitizer_cov_trace_cmp2(i16 %header.sroa.8.3.insert.insert12, i16 %req_size)
  %cmp19.not = icmp eq i16 %header.sroa.8.3.insert.insert12, %req_size
  %or.cond = select i1 %cmp16.not, i1 true, i1 %cmp19.not
  br i1 %or.cond, label %lor.lhs.false14.cleanup_crit_edge, label %lor.lhs.false14.if.then21_crit_edge

lor.lhs.false14.if.then21_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then21:                                        ; preds = %lor.lhs.false14.if.then21_crit_edge, %if.end.3.if.then21_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %header.sroa.8.3.insert.insert12)
  %cmp233.not = icmp eq i16 %header.sroa.8.3.insert.insert12, 0
  br i1 %cmp233.not, label %if.then21.cleanup_crit_edge, label %if.then21.for.body25_crit_edge

if.then21.for.body25_crit_edge:                   ; preds = %if.then21
  br label %for.body25

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %if.then21.for.body25_crit_edge
  %i.14 = phi i32 [ %inc32, %for.body25.for.body25_crit_edge ], [ 0, %if.then21.for.body25_crit_edge ]
  %call26 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  %inc32 = add nuw nsw i32 %i.14, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc32, i32 %conv3)
  %exitcond.not = icmp eq i32 %inc32, %conv3
  %or.cond14 = select i1 %cmp27, i1 true, i1 %exitcond.not
  br i1 %or.cond14, label %for.body25.cleanup_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body25

for.body25.cleanup_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body25.cleanup_crit_edge, %if.then21.cleanup_crit_edge, %lor.lhs.false14.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false14.cleanup_crit_edge ], [ -22, %if.then21.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %if.end.cleanup_crit_edge ], [ %call.2, %if.end.1.cleanup_crit_edge ], [ %call.3, %if.end.2.cleanup_crit_edge ], [ -22, %for.body25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mbox_mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %mbox_mutex) #4
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 22, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call20 = tail call i64 @ktime_get() #4
  %add.i = add i64 %call20, 2000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 26) #4
  %sapb_regs = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 1
  %0 = ptrtoint ptr %sapb_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sapb_regs, align 4
  %add.ptr83 = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool36.not84 = icmp eq i32 %2, 0
  br i1 %tobool36.not84, label %if.end.if.end61_crit_edge, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

land.lhs.true:                                    ; preds = %if.then53.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call40 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %call40, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call40, %add.i
  br i1 %cmp3.i, label %if.then43, label %if.then53

if.then43:                                        ; preds = %land.lhs.true
  %3 = ptrtoint ptr %sapb_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sapb_regs, align 4
  %add.ptr47 = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %phi.cmp = icmp eq i32 %5, 0
  br i1 %phi.cmp, label %if.then43.if.end61_crit_edge, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then43.if.end61_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.then53:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #4
  %6 = ptrtoint ptr %sapb_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sapb_regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  %tobool36.not = icmp eq i32 %8, 0
  br i1 %tobool36.not, label %if.then53.if.end61_crit_edge, label %if.then53.land.lhs.true_crit_edge

if.then53.land.lhs.true_crit_edge:                ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

if.then53.if.end61_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end61

if.end61:                                         ; preds = %if.then53.if.end61_crit_edge, %if.then43.if.end61_crit_edge, %if.end.if.end61_crit_edge
  %9 = ptrtoint ptr %sapb_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sapb_regs, align 4
  %add.ptr65 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #4, !srcloc !60
  %12 = lshr i32 %11, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %if.end61 ], [ -110, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_hdcp_check_receviers(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cdns_mhdp_wait_for_sw_event(ptr noundef %mhdp, i32 noundef 128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_mutex.i = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex.i, i32 noundef 0) #4
  %call.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %if.end.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge

if.end.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid.exit

for.cond.i.i:                                     ; preds = %if.end
  %call.1.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge

for.cond.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid.exit

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %call.2.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge

for.cond.1.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid.exit

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %call.3.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %if.end.i, label %for.cond.2.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge

for.cond.2.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid.exit

if.end.i:                                         ; preds = %for.cond.2.i.i
  %call1.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_recv_header(ptr noundef %mhdp, i8 noundef zeroext 9, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.body.i.preheader.i, label %if.end.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge

if.end.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid.exit

for.body.i.preheader.i:                           ; preds = %if.end.i
  %call.i1.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %cmp2.i.i = icmp slt i32 %call.i1.i, 0
  br i1 %cmp2.i.i, label %for.body.i.preheader.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, label %if.end.i.i

for.body.i.preheader.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid.exit

if.end.i.i:                                       ; preds = %for.body.i.preheader.i
  %call.i1.1.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.1.i)
  %cmp2.i.1.i = icmp slt i32 %call.i1.1.i, 0
  br i1 %cmp2.i.1.i, label %if.end.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, label %if.end.i.1.i

if.end.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid.exit

if.end.i.1.i:                                     ; preds = %if.end.i.i
  %conv4.i.i = trunc i32 %call.i1.i to i8
  %conv.i = and i32 %call.i1.i, 255
  %mul.i = mul nuw nsw i32 %conv.i, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv4.i.i)
  %cmp10.not.i.i = icmp eq i8 %conv4.i.i, 0
  br i1 %cmp10.not.i.i, label %if.end.i.1.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, label %if.end.i.1.i.for.body.i6.i_crit_edge

if.end.i.1.i.for.body.i6.i_crit_edge:             ; preds = %if.end.i.1.i
  br label %for.body.i6.i

if.end.i.1.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge: ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid.exit

for.body.i6.i:                                    ; preds = %for.body.i6.i.for.body.i6.i_crit_edge, %if.end.i.1.i.for.body.i6.i_crit_edge
  %i.011.i3.i = phi i32 [ %inc.i9.i, %for.body.i6.i.for.body.i6.i_crit_edge ], [ 0, %if.end.i.1.i.for.body.i6.i_crit_edge ]
  %call.i4.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_read(ptr noundef %mhdp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp2.i5.i = icmp slt i32 %call.i4.i, 0
  %inc.i9.i = add nuw nsw i32 %i.011.i3.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i9.i, i32 %mul.i)
  %exitcond.not.i10.i = icmp eq i32 %inc.i9.i, %mul.i
  %or.cond = select i1 %cmp2.i5.i, i1 true, i1 %exitcond.not.i10.i
  br i1 %or.cond, label %for.body.i6.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, label %for.body.i6.i.for.body.i6.i_crit_edge

for.body.i6.i.for.body.i6.i_crit_edge:            ; preds = %for.body.i6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i6.i

for.body.i6.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge: ; preds = %for.body.i6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid.exit

cdns_mhdp_hdcp_rx_id_valid.exit:                  ; preds = %for.body.i6.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, %if.end.i.1.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, %if.end.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, %for.body.i.preheader.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, %if.end.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, %for.cond.2.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, %for.cond.1.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, %for.cond.i.i.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge, %if.end.cdns_mhdp_hdcp_rx_id_valid.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i) #4
  tail call void @mutex_lock_nested(ptr noundef %mbox_mutex.i, i32 noundef 0) #4
  %call.i.i8 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i8)
  %tobool.not.i.i9 = icmp eq i32 %call.i.i8, 0
  br i1 %tobool.not.i.i9, label %for.cond.i.i12, label %cdns_mhdp_hdcp_rx_id_valid.exit.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge

cdns_mhdp_hdcp_rx_id_valid.exit.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge: ; preds = %cdns_mhdp_hdcp_rx_id_valid.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid_response.exit

for.cond.i.i12:                                   ; preds = %cdns_mhdp_hdcp_rx_id_valid.exit
  %call.1.i.i10 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i10)
  %tobool.not.1.i.i11 = icmp eq i32 %call.1.i.i10, 0
  br i1 %tobool.not.1.i.i11, label %for.cond.1.i.i15, label %for.cond.i.i12.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge

for.cond.i.i12.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge: ; preds = %for.cond.i.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid_response.exit

for.cond.1.i.i15:                                 ; preds = %for.cond.i.i12
  %call.2.i.i13 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i13)
  %tobool.not.2.i.i14 = icmp eq i32 %call.2.i.i13, 0
  br i1 %tobool.not.2.i.i14, label %for.cond.2.i.i18, label %for.cond.1.i.i15.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge

for.cond.1.i.i15.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge: ; preds = %for.cond.1.i.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid_response.exit

for.cond.2.i.i18:                                 ; preds = %for.cond.1.i.i15
  %call.3.i.i16 = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i16)
  %tobool.not.3.i.i17 = icmp eq i32 %call.3.i.i16, 0
  br i1 %tobool.not.3.i.i17, label %for.body6.i.preheader.i, label %for.cond.2.i.i18.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge

for.cond.2.i.i18.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge: ; preds = %for.cond.2.i.i18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cdns_mhdp_hdcp_rx_id_valid_response.exit

for.body6.i.preheader.i:                          ; preds = %for.cond.2.i.i18
  call void @__sanitizer_cov_trace_pc() #6
  %call8.i.i = tail call fastcc i32 @cdns_mhdp_secure_mailbox_write(ptr noundef %mhdp, i8 noundef zeroext 1) #4
  br label %cdns_mhdp_hdcp_rx_id_valid_response.exit

cdns_mhdp_hdcp_rx_id_valid_response.exit:         ; preds = %for.body6.i.preheader.i, %for.cond.2.i.i18.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge, %for.cond.1.i.i15.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge, %for.cond.i.i12.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge, %cdns_mhdp_hdcp_rx_id_valid.exit.cdns_mhdp_hdcp_rx_id_valid_response.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mbox_mutex.i) #4
  br label %cleanup

cleanup:                                          ; preds = %cdns_mhdp_hdcp_rx_id_valid_response.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cdns_mhdp_hdcp_rx_id_valid_response.exit ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_mhdp_hdcp_check_link(ptr noundef %mhdp) unnamed_addr #0 align 64 {
entry:
  %hdcp_port_status = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdcp_port_status) #4
  %0 = ptrtoint ptr %hdcp_port_status to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %hdcp_port_status, align 2, !annotation !65
  %mutex = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %value = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 3
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @cdns_mhdp_hdcp_get_status(ptr noundef %mhdp, ptr noundef nonnull %hdcp_port_status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %hdcp_port_status to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %hdcp_port_status, align 2
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool2.not = icmp eq i16 %5, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %dev = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 9, i32 7
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %base = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 9, i32 6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef %9, i32 noundef %11) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cdns_mhdp_hdcp_check_link, %if.then.i)) #4
          to label %_cdns_mhdp_hdcp_disable.exit [label %if.then.i], !srcloc !58

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312, ptr noundef %13, ptr noundef nonnull @.str.23, ptr noundef %15, i32 noundef %17) #4
  br label %_cdns_mhdp_hdcp_disable.exit

_cdns_mhdp_hdcp_disable.exit:                     ; preds = %if.then.i, %do.end
  %call4.i = tail call fastcc i32 @cdns_mhdp_hdcp_set_config(ptr noundef %mhdp, i8 noundef zeroext 0, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool7.not = icmp eq i32 %call4.i, 0
  br i1 %tobool7.not, label %if.end13, label %_cdns_mhdp_hdcp_disable.exit.out.sink.split_crit_edge

_cdns_mhdp_hdcp_disable.exit.out.sink.split_crit_edge: ; preds = %_cdns_mhdp_hdcp_disable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.sink.split

if.end13:                                         ; preds = %_cdns_mhdp_hdcp_disable.exit
  %hdcp_content_type = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 4
  %18 = ptrtoint ptr %hdcp_content_type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hdcp_content_type, align 4
  %call15 = tail call fastcc i32 @_cdns_mhdp_hdcp_enable(ptr noundef %mhdp, i8 noundef zeroext %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end13.out_crit_edge, label %if.end13.out.sink.split_crit_edge

if.end13.out.sink.split_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out.sink.split

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

out.sink.split:                                   ; preds = %if.end13.out.sink.split_crit_edge, %_cdns_mhdp_hdcp_disable.exit.out.sink.split_crit_edge
  %ret.0.ph = phi i32 [ -1, %_cdns_mhdp_hdcp_disable.exit.out.sink.split_crit_edge ], [ %call15, %if.end13.out.sink.split_crit_edge ]
  %20 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %value, align 4
  %prop_work21 = getelementptr inbounds %struct.cdns_mhdp_device, ptr %mhdp, i32 0, i32 28, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %21 = load ptr, ptr @system_wq, align 4
  %call.i.i42 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %prop_work21) #4
  br label %out

out:                                              ; preds = %out.sink.split, %if.end13.out_crit_edge, %land.lhs.true.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %if.end13.out_crit_edge ], [ 0, %land.lhs.true.out_crit_edge ], [ %ret.0.ph, %out.sink.split ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdcp_port_status) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !10, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @cdns_mhdp_hdcp_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 567, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @cdns_mhdp_hdcp_init.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cdns_mhdp_hdcp_init.__key.3, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 568, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @cdns_mhdp_hdcp_init.__key.5, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 569, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 38, i32 2}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 426, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @_cdns_mhdp_hdcp_enable._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @_cdns_mhdp_hdcp_enable._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 165, i32 3}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cdns_mhdp_hdcp_handle_status.__UNIQUE_ID_ddebug307, !21, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 363, i32 2}
!27 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @cdns_mhdp_hdcp_auth_14.__UNIQUE_ID_ddebug311, !26, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 339, i32 2}
!31 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cdns_mhdp_hdcp_auth_22.__UNIQUE_ID_ddebug310, !30, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 304, i32 3}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cdns_mhdp_hdcp_auth_check.__UNIQUE_ID_ddebug308, !34, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 308, i32 2}
!39 = !{ptr @cdns_mhdp_hdcp_auth_check.__UNIQUE_ID_ddebug309, !38, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 396, i32 2}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @_cdns_mhdp_hdcp_disable.__UNIQUE_ID_ddebug312, !41, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-hdcp.c", i32 445, i32 2}
!46 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cdns_mhdp_hdcp_check_link._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @cdns_mhdp_hdcp_check_link._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148163705, i64 2148163710, i64 2148163723, i64 2148163767, i64 2148163801, i64 2148163822}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 696966}
!61 = !{i64 2156604735}
!62 = !{i64 2156605253}
!63 = !{i64 2156605487}
!64 = !{i64 696548}
!65 = !{!"auto-init"}
!66 = !{i64 2156601597}
!67 = !{i64 2156602115}
!68 = !{i64 2156602645}
