; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/cdns-dsi.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/cdns-dsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_host_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cdns_dsi = type { %struct.mipi_dsi_host, ptr, %struct.cdns_dsi_input, %struct.cdns_dsi_output, i32, i32, %struct.completion, ptr, ptr, ptr, i8, ptr }
%struct.mipi_dsi_host = type { ptr, ptr, %struct.list_head }
%struct.cdns_dsi_input = type { i32, %struct.drm_bridge }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.cdns_dsi_output = type { ptr, ptr, ptr, %union.phy_configure_opts }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cdns_dsi_cfg = type { i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.mipi_dsi_packet = type { i32, [4 x i8], i32, ptr }
%struct.mipi_dsi_msg = type { i8, i8, i16, i32, ptr, i32, ptr }

@__initcall__kmod_cdns_dsi__308_1297_cdns_dsi_platform_driver_init6 = internal global ptr @cdns_dsi_platform_driver_init, section ".initcall6.init", align 4
@cdns_dsi_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_dsi_drm_probe, ptr @cdns_dsi_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_dsi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_dsi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_dsi_platform_driver_exit = internal global ptr @cdns_dsi_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [62 x i8] c"cdns_dsi.author=Boris Brezillon <boris.brezillon@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [40 x i8] c"cdns_dsi.description=Cadence DSI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [46 x i8] c"cdns_dsi.file=drivers/gpu/drm/bridge/cdns-dsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [21 x i8] c"cdns_dsi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias313 = internal constant [33 x i8] c"cdns_dsi.alias=platform:cdns-dsi\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdns-dsi\00", [23 x i8] zeroinitializer }, align 32
@cdns_dsi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,dsi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cdns_dsi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cdns_dsi_suspend, ptr @cdns_dsi_resume, ptr @cdns_dsi_suspend, ptr @cdns_dsi_resume, ptr @cdns_dsi_suspend, ptr @cdns_dsi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_dsi_suspend, ptr @cdns_dsi_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi_p_clk\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi_p_rst\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dsi_sys_clk\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dphy\00", [27 x i8] zeroinitializer }, align 32
@cdns_dsi_drm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1216, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid vendor id\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cdns_dsi_drm_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/bridge/cdns-dsi.c\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_dsi_drm_probe._entry_ptr = internal global ptr @cdns_dsi_drm_probe._entry, section ".printk_index", align 4
@cdns_dsi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @cdns_dsi_bridge_attach, ptr null, ptr @cdns_dsi_bridge_mode_valid, ptr null, ptr @cdns_dsi_bridge_disable, ptr null, ptr null, ptr null, ptr @cdns_dsi_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cdns_dsi_ops = internal constant { %struct.mipi_dsi_host_ops, [20 x i8] } { %struct.mipi_dsi_host_ops { ptr @cdns_dsi_attach, ptr @cdns_dsi_detach, ptr @cdns_dsi_transfer }, [20 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cdns_dsi_bridge_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.7, i32 656, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"cdns-dsi driver is only compatible with DRM devices supporting atomic updates\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_dsi_bridge_attach\00", [41 x i8] zeroinitializer }, align 32
@cdns_dsi_bridge_attach._entry_ptr = internal global ptr @cdns_dsi_bridge_attach._entry, section ".printk_index", align 4
@cdns_dsi_bridge_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cdns_dsi_bridge_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 887, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported DSI format\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cdns_dsi_bridge_enable\00", [41 x i8] zeroinitializer }, align 32
@cdns_dsi_bridge_enable._entry_ptr = internal global ptr @cdns_dsi_bridge_enable._entry, section ".printk_index", align 4
@cdns_dsi_hs_init.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cdns_dsi_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.7, i32 973, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to add DSI device %s (err = %d)\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdns_dsi_attach\00", [16 x i8] zeroinitializer }, align 32
@cdns_dsi_attach._entry_ptr = internal global ptr @cdns_dsi_attach._entry, section ".printk_index", align 4
@switch.table.cdns_dsi_bridge_mode_valid = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.cdns_dsi_check_conf = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.cdns_dsi_check_conf.17 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"cdns_dsi_platform_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1288, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1292, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"cdns_dsi_of_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1283, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"cdns_dsi_pm_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1167, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1189, i32 44 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1194, i32 9 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1198, i32 46 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1206, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1216, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"cdns_dsi_bridge_funcs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 917, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"cdns_dsi_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1139, i32 39 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 87, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 655, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 887, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [37 x i8] c"../drivers/gpu/drm/bridge/cdns-dsi.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 972, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [40 x i8] c"switch.table.cdns_dsi_bridge_mode_valid\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [33 x i8] c"switch.table.cdns_dsi_check_conf\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [36 x i8] c"switch.table.cdns_dsi_check_conf.17\00", align 1
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias313, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_cdns_dsi_platform_driver_exit, ptr @__initcall__kmod_cdns_dsi__308_1297_cdns_dsi_platform_driver_init6, ptr @cdns_dsi_attach._entry, ptr @cdns_dsi_attach._entry_ptr, ptr @cdns_dsi_bridge_attach._entry, ptr @cdns_dsi_bridge_attach._entry_ptr, ptr @cdns_dsi_bridge_enable._entry, ptr @cdns_dsi_bridge_enable._entry_ptr, ptr @cdns_dsi_drm_probe._entry, ptr @cdns_dsi_drm_probe._entry_ptr, ptr @cdns_dsi_platform_driver_exit, ptr @cdns_dsi_platform_driver, ptr @.str, ptr @cdns_dsi_of_match, ptr @cdns_dsi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @cdns_dsi_bridge_funcs, ptr @cdns_dsi_ops, ptr @init_completion.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @switch.table.cdns_dsi_bridge_mode_valid, ptr @switch.table.cdns_dsi_check_conf, ptr @switch.table.cdns_dsi_check_conf.17], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dsi_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dsi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dsi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dsi_drm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dsi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dsi_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dsi_bridge_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dsi_bridge_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_dsi_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns_dsi_bridge_mode_valid to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns_dsi_check_conf to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cdns_dsi_check_conf.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_dsi_platform_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_dsi_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_dsi_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_drm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 500, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %input1 = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 2
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %dsi_p_clk = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %dsi_p_clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %dsi_p_clk, align 4
  %cmp.i211 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call.i212 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %dsi_p_rst = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %dsi_p_rst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i212, ptr %dsi_p_rst, align 4
  %cmp.i213 = icmp ugt ptr %call.i212, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i213, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call.i212 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  %dsi_sys_clk = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %dsi_sys_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call26, ptr %dsi_sys_clk, align 4
  %cmp.i214 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i214, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %call33 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %if.end32.cleanup_crit_edge, label %if.end35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %if.end32
  %call37 = tail call ptr @devm_phy_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  %dphy = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 11
  %9 = ptrtoint ptr %dphy to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call37, ptr %dphy, align 4
  %cmp.i215 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %11 = ptrtoint ptr %dsi_p_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dsi_p_clk, align 4
  %call45 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48:                                         ; preds = %if.end43
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 508
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %16 = and i32 %15, 61695
  call void @__sanitizer_cov_trace_const_cmp4(i32 53450, i32 %16)
  %cmp52.not = icmp eq i32 %16, 53450
  br i1 %cmp52.not, label %if.end55, label %do.end

do.end:                                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #11
  br label %err_disable_pclk

if.end55:                                         ; preds = %if.end48
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !71
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %and63 = lshr i32 %20, 13
  %shr64 = and i32 %and63, 7
  %shl = shl nuw nsw i32 4, %shr64
  %direct_cmd_fifo_depth = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %direct_cmd_fifo_depth to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl, ptr %direct_cmd_fifo_depth, align 4
  %and65 = and i32 %20, 63
  %rx_fifo_depth = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %rx_fifo_depth to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and65, ptr %rx_fifo_depth, align 4
  %direct_cmd_comp = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %direct_cmd_comp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %direct_cmd_comp, align 4
  %wait.i = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 6, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr70 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr75 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr80 = getelementptr i8, ptr %29, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 0) #8, !srcloc !75
  %30 = ptrtoint ptr %input1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %input1, align 4
  %funcs = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 2, i32 1, i32 7
  %31 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cdns_dsi_bridge_funcs, ptr %funcs, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %of_node83 = getelementptr inbounds %struct.cdns_dsi, ptr %call.i, i32 0, i32 2, i32 1, i32 4
  %34 = ptrtoint ptr %of_node83 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %of_node83, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr88 = getelementptr i8, ptr %36, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr93 = getelementptr i8, ptr %38, i32 328
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  tail call void @arm_heavy_mb() #8
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr98 = getelementptr i8, ptr %40, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr103 = getelementptr i8, ptr %42, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr108 = getelementptr i8, ptr %44, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr113 = getelementptr i8, ptr %46, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr118 = getelementptr i8, ptr %48, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 0) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  %add.ptr123 = getelementptr i8, ptr %50, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr123, i32 0) #8, !srcloc !75
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end55.dev_name.exit_crit_edge

if.end55.dev_name.exit_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end55.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %54, %if.end.i ], [ %52, %if.end55.dev_name.exit_crit_edge ]
  %call.i216 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call33, ptr noundef nonnull @cdns_dsi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %tobool128.not = icmp eq i32 %call.i216, 0
  br i1 %tobool128.not, label %if.end130, label %dev_name.exit.err_disable_pclk_crit_edge

dev_name.exit.err_disable_pclk_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_pclk

if.end130:                                        ; preds = %dev_name.exit
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev, ptr %call.i, align 4
  %ops = getelementptr inbounds %struct.mipi_dsi_host, ptr %call.i, i32 0, i32 1
  %56 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @cdns_dsi_ops, ptr %ops, align 4
  %call136 = tail call i32 @mipi_dsi_host_register(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %err_disable_runtime_pm

if.end139:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %dsi_p_clk to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dsi_p_clk, align 4
  tail call void @clk_disable(ptr noundef %58) #8
  tail call void @clk_unprepare(ptr noundef %58) #8
  br label %cleanup

err_disable_runtime_pm:                           ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %err_disable_pclk

err_disable_pclk:                                 ; preds = %err_disable_runtime_pm, %dev_name.exit.err_disable_pclk_crit_edge, %do.end
  %ret.0 = phi i32 [ -22, %do.end ], [ %call.i216, %dev_name.exit.err_disable_pclk_crit_edge ], [ %call136, %err_disable_runtime_pm ]
  %59 = ptrtoint ptr %dsi_p_clk to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dsi_p_clk, align 4
  tail call void @clk_disable(ptr noundef %60) #8
  tail call void @clk_unprepare(ptr noundef %60) #8
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pclk, %if.end139, %if.end43.cleanup_crit_edge, %if.then40, %if.end32.cleanup_crit_edge, %if.then29, %if.then21, %if.then13, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %4, %if.then13 ], [ %6, %if.then21 ], [ %8, %if.then29 ], [ %10, %if.then40 ], [ %ret.0, %err_disable_pclk ], [ 0, %if.end139 ], [ -12, %entry.cleanup_crit_edge ], [ %call33, %if.end32.cleanup_crit_edge ], [ %call45, %if.end43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_drm_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mipi_dsi_host_unregister(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %clk) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.cdns_dsi, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 376
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 312
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %6 = xor i32 %2, -1
  %7 = and i32 %5, %6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %9, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %7) #8, !srcloc !75
  %direct_cmd_comp = getelementptr inbounds %struct.cdns_dsi, ptr %data, i32 0, i32 6
  tail call void @complete(ptr noundef %direct_cmd_comp) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_host_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %5, 16
  %and2.i.i = and i32 %and.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i13 = getelementptr i8, ptr %bridge, i32 -24
  %8 = ptrtoint ptr %add.ptr.i13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %10 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder, align 4
  %bridge5 = getelementptr i8, ptr %bridge, i32 288
  %12 = ptrtoint ptr %bridge5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bridge5, align 4
  %call6 = tail call i32 @drm_bridge_attach(ptr noundef %11, ptr noundef %13, ptr noundef %bridge, i32 noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call6, %if.end ], [ -524, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_bridge_mode_valid(ptr noundef %bridge, ptr nocapture noundef readnone %info, ptr noundef %mode) #2 align 64 {
entry:
  %dsi_cfg = alloca %struct.cdns_dsi_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i32 = getelementptr i8, ptr %bridge, i32 -24
  %output2 = getelementptr i8, ptr %bridge, i32 280
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dsi_cfg) #8
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %0 = call ptr @memset(ptr %dsi_cfg, i32 255, i32 20)
  %1 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %vtotal, align 4
  %conv = zext i16 %2 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %3 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %vsync_end, align 2
  %conv3 = zext i16 %4 to i32
  %sub = sub nsw i32 %conv, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp = icmp slt i32 %sub, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %5 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vsync_start, align 4
  %conv7 = zext i16 %6 to i32
  %sub8 = sub nsw i32 %conv3, %conv7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub8)
  %cmp9 = icmp slt i32 %sub8, 2
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %7 = ptrtoint ptr %output2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %output2, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %switch.lookup, label %if.end12.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

if.end12.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cdns_dsi_bridge_mode_valid, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup, %if.end12.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %if.end12.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %13 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hdisplay, align 4
  %conv14 = zext i16 %14 to i32
  %mul = mul nsw i32 %retval.0.i, %conv14
  %15 = and i32 %mul, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.end16, label %mipi_dsi_pixel_format_to_bpp.exit.cleanup_crit_edge

mipi_dsi_pixel_format_to_bpp.exit.cleanup_crit_edge: ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call fastcc i32 @cdns_dsi_check_conf(ptr noundef %add.ptr.i32, ptr noundef %mode, ptr noundef nonnull %dsi_cfg, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %. = select i1 %tobool18.not, i32 0, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %mipi_dsi_pixel_format_to_bpp.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 4, %entry.cleanup_crit_edge ], [ 4, %if.end.cleanup_crit_edge ], [ 3, %mipi_dsi_pixel_format_to_bpp.exit.cleanup_crit_edge ], [ %., %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dsi_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_dsi_bridge_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %add.ptr.i27 = getelementptr i8, ptr %bridge, i32 -24
  %regs = getelementptr i8, ptr %bridge, i32 -8
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %3 = and i32 %2, -771753473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #8, !srcloc !75
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #8, !srcloc !71
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 4
  %add = add i32 %11, 13
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and13 = and i32 %9, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  tail call void @arm_heavy_mb() #8
  %12 = tail call i32 @llvm.bswap.i32(i32 %and13)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %12) #8, !srcloc !75
  %15 = ptrtoint ptr %add.ptr.i27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i27, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %16, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cdns_dsi_bridge_enable(ptr noundef %bridge) #2 align 64 {
entry:
  %dsi_cfg = alloca %struct.cdns_dsi_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %add.ptr.i645 = getelementptr i8, ptr %bridge, i32 -24
  %output2 = getelementptr i8, ptr %bridge, i32 280
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dsi_cfg) #8
  %0 = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 4
  %4 = call ptr @memset(ptr %dsi_cfg, i32 255, i32 20)
  %5 = ptrtoint ptr %add.ptr.i645 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i645, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end25, !prof !93

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 792, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %entry
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %7 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %encoder, align 4
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crtc, align 4
  %state = getelementptr inbounds %struct.drm_crtc, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %output2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %output2, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lanes, align 8
  %call27 = call fastcc i32 @cdns_dsi_check_conf(ptr noundef %add.ptr.i645, ptr noundef %adjusted_mode, ptr noundef nonnull %dsi_cfg, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end25.if.end70_crit_edge, label %land.rhs

if.end25.if.end70_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

land.rhs:                                         ; preds = %if.end25
  %.b642 = load i1, ptr @cdns_dsi_bridge_enable.__already_done, align 1
  br i1 %.b642, label %land.rhs.if.end70_crit_edge, label %if.then43, !prof !94

land.rhs.if.end70_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then43:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cdns_dsi_bridge_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 798, i32 noundef 9, ptr noundef null) #8
  br label %if.end70

if.end70:                                         ; preds = %if.then43, %land.rhs.if.end70_crit_edge, %if.end25.if.end70_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr i8, ptr %bridge, i32 -8
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i646 = getelementptr i8, ptr %18, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i646, i32 -217645056) #8, !srcloc !75
  %dphy.i = getelementptr i8, ptr %bridge, i32 472
  %19 = ptrtoint ptr %dphy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dphy.i, align 4
  %call.i647 = tail call i32 @phy_init(ptr noundef %20) #8
  %21 = ptrtoint ptr %dphy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dphy.i, align 4
  %call3.i = tail call i32 @phy_set_mode_ext(ptr noundef %22, i32 noundef 16, i32 noundef 0) #8
  %23 = ptrtoint ptr %dphy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dphy.i, align 4
  %phy_opts.i = getelementptr i8, ptr %bridge, i32 292
  %call5.i = tail call i32 @phy_configure(ptr noundef %24, ptr noundef %phy_opts.i) #8
  %25 = ptrtoint ptr %dphy.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dphy.i, align 4
  %call7.i = tail call i32 @phy_power_on(ptr noundef %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %28, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 16777216) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 -251461632) #8, !srcloc !75
  %call18.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call18.i, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 737) #8
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %add.ptr30126.i = getelementptr i8, ptr %32, i32 36
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30126.i) #8, !srcloc !71
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %and127.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool.not128.i = icmp eq i32 %and127.i, 0
  br i1 %tobool.not128.i, label %if.end70.land.lhs.true.i_crit_edge, label %if.end70.for.end.i_crit_edge

if.end70.for.end.i_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end70.land.lhs.true.i_crit_edge:               ; preds = %if.end70
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then49.i.land.lhs.true.i_crit_edge, %if.end70.land.lhs.true.i_crit_edge
  %call36.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call36.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call36.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then39.i, label %if.then49.i

if.then39.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %36, i32 36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43.i) #8, !srcloc !71
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  br label %for.end.i

if.then49.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #8
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %40, i32 36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #8, !srcloc !71
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %and.i = and i32 %42, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then49.i.land.lhs.true.i_crit_edge, label %if.then49.i.for.end.i_crit_edge

if.then49.i.for.end.i_crit_edge:                  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then49.i.land.lhs.true.i_crit_edge:            ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %if.then49.i.for.end.i_crit_edge, %if.then39.i, %if.end70.for.end.i_crit_edge
  %status.0.i = phi i32 [ %38, %if.then39.i ], [ %34, %if.end70.for.end.i_crit_edge ], [ %42, %if.then49.i.for.end.i_crit_edge ]
  %and52.i = and i32 %status.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %land.rhs.i, label %for.end.i.cdns_dsi_hs_init.exit_crit_edge

for.end.i.cdns_dsi_hs_init.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_dsi_hs_init.exit

land.rhs.i:                                       ; preds = %for.end.i
  %.b124.i = load i1, ptr @cdns_dsi_hs_init.__already_done, align 1
  br i1 %.b124.i, label %land.rhs.i.cdns_dsi_hs_init.exit_crit_edge, label %if.then62.i, !prof !94

land.rhs.i.cdns_dsi_hs_init.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cdns_dsi_hs_init.exit

if.then62.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cdns_dsi_hs_init.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 737, i32 noundef 9, ptr noundef null) #8
  br label %cdns_dsi_hs_init.exit

cdns_dsi_hs_init.exit:                            ; preds = %if.then62.i, %land.rhs.i.cdns_dsi_hs_init.exit_crit_edge, %for.end.i.cdns_dsi_hs_init.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %output2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %output2, align 4
  %lanes.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lanes.i, align 8
  %sub.i = sub i32 16, %46
  %shr100.i = lshr i32 -1, %sub.i
  %and101.i = and i32 %shr100.i, -1114112
  %or103.i = or i32 %and101.i, 1049585
  %47 = tail call i32 @llvm.bswap.i32(i32 %or103.i) #8
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %add.ptr105.i = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 %47) #8, !srcloc !75
  tail call fastcc void @cdns_dsi_init_link(ptr noundef %add.ptr.i645)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  tail call void @arm_heavy_mb() #8
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %1, align 4
  %shl = shl i32 %51, 16
  %52 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %0, align 4
  %or = or i32 %shl, %53
  %54 = tail call i32 @llvm.bswap.i32(i32 %or)
  %55 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %56, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %54) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %57 = ptrtoint ptr %dsi_cfg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dsi_cfg, align 4
  %shl84 = shl i32 %58, 16
  %59 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %2, align 4
  %or85 = or i32 %shl84, %60
  %61 = tail call i32 @llvm.bswap.i32(i32 %or85)
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %add.ptr87 = getelementptr i8, ptr %63, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %61) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  tail call void @arm_heavy_mb() #8
  %crtc_vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 25
  %64 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %crtc_vtotal, align 4
  %conv = zext i16 %65 to i32
  %crtc_vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 24
  %66 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %crtc_vsync_end, align 2
  %conv91 = zext i16 %67 to i32
  %68 = xor i32 %conv91, -1
  %sub92 = add nsw i32 %68, %conv
  %shl93 = shl nsw i32 %sub92, 6
  %crtc_vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 23
  %69 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %crtc_vsync_start, align 4
  %conv94 = zext i16 %70 to i32
  %crtc_vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 20
  %71 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %crtc_vdisplay, align 2
  %conv95 = zext i16 %72 to i32
  %sub96 = sub nsw i32 %conv94, %conv95
  %shl97 = shl nsw i32 %sub96, 12
  %sub103 = add nuw nsw i32 %conv91, 1
  %add = sub nsw i32 %sub103, %conv94
  %or98 = or i32 %add, %shl93
  %or104 = or i32 %or98, %shl97
  %73 = tail call i32 @llvm.bswap.i32(i32 %or104)
  %74 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regs.i, align 4
  %add.ptr106 = getelementptr i8, ptr %75, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %73) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %76 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %crtc_vdisplay, align 2
  %conv111 = zext i16 %77 to i32
  %78 = tail call i32 @llvm.bswap.i32(i32 %conv111)
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %add.ptr113 = getelementptr i8, ptr %80, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 %78) #8, !srcloc !75
  %81 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %3, align 4
  %add116.neg = sub i32 -20, %53
  %sub117 = add i32 %add116.neg, %82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %83 = tail call i32 @llvm.bswap.i32(i32 %sub117)
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %add.ptr122 = getelementptr i8, ptr %85, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %83) #8, !srcloc !75
  %86 = ptrtoint ptr %output2 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %output2, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %87, i32 0, i32 6
  %88 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mode_flags, align 8
  %and = and i32 %89, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool124.not = icmp eq i32 %and, 0
  br i1 %tobool124.not, label %cdns_dsi_hs_init.exit.if.end133_crit_edge, label %do.body126

cdns_dsi_hs_init.exit.if.end133_crit_edge:        ; preds = %cdns_dsi_hs_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

do.body126:                                       ; preds = %cdns_dsi_hs_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %sub129 = shl i32 %sub117, 16
  %shl130 = add i32 %sub129, -393216
  %90 = tail call i32 @llvm.bswap.i32(i32 %shl130)
  %91 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i, align 4
  %add.ptr132 = getelementptr i8, ptr %92, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %90) #8, !srcloc !75
  br label %if.end133

if.end133:                                        ; preds = %do.body126, %cdns_dsi_hs_init.exit.if.end133_crit_edge
  %sub135 = add i32 %82, -10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %93 = tail call i32 @llvm.bswap.i32(i32 %sub135)
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 4
  %add.ptr140 = getelementptr i8, ptr %95, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %93) #8, !srcloc !75
  %96 = ptrtoint ptr %output2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %output2, align 4
  %mode_flags142 = getelementptr inbounds %struct.mipi_dsi_device, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %mode_flags142 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mode_flags142, align 8
  %and143 = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %do.body146, label %if.end133.if.end153_crit_edge

if.end133.if.end153_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

do.body146:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %sub149 = shl i32 %82, 16
  %shl150 = add i32 %sub149, -1048576
  %100 = tail call i32 @llvm.bswap.i32(i32 %shl150)
  %101 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i, align 4
  %add.ptr152 = getelementptr i8, ptr %102, i32 248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 %100) #8, !srcloc !75
  br label %if.end153

if.end153:                                        ; preds = %do.body146, %if.end133.if.end153_crit_edge
  %add155 = add i32 %16, -1
  %sub156 = add i32 %add155, %82
  %div157 = udiv i32 %sub156, %16
  %sub160 = add i32 %add155, %53
  %div161 = udiv i32 %sub160, %16
  %sub162 = sub i32 %div157, %div161
  %103 = ptrtoint ptr %output2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %output2, align 4
  %mode_flags164 = getelementptr inbounds %struct.mipi_dsi_device, ptr %104, i32 0, i32 6
  %105 = ptrtoint ptr %mode_flags164 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mode_flags164, align 8
  %and165 = and i32 %106, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.then167, label %if.end153.if.else364_crit_edge

if.end153.if.else364_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else364

if.then167:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  %sub169 = add i32 %16, 3
  %div170 = sdiv i32 %sub169, %16
  %sub171 = sub i32 %sub162, %div170
  br label %if.else364

if.else364:                                       ; preds = %if.then167, %if.end153.if.else364_crit_edge
  %tmp.0 = phi i32 [ %sub162, %if.end153.if.else364_crit_edge ], [ %sub171, %if.then167 ]
  %hs_clk_rate = getelementptr i8, ptr %bridge, i32 380
  %107 = ptrtoint ptr %hs_clk_rate to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hs_clk_rate, align 4
  %109 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %108, i64 8000000000) #12, !srcloc !109
  %asmresult1.i = extractvalue { i64, i64 } %109, 1
  %extract.t682 = trunc i64 %asmresult1.i to i32
  %hs_prepare = getelementptr i8, ptr %bridge, i32 336
  %110 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %hs_prepare, align 4
  %hs_zero = getelementptr i8, ptr %bridge, i32 352
  %112 = ptrtoint ptr %hs_zero to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hs_zero, align 4
  %add372 = add i32 %113, %111
  %div373 = udiv i32 %add372, %extract.t682
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %shl377 = shl i32 %div373, 17
  %or378 = or i32 %shl377, %tmp.0
  %114 = tail call i32 @llvm.bswap.i32(i32 %or378)
  %115 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i, align 4
  %add.ptr380 = getelementptr i8, ptr %116, i32 220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr380, i32 %114) #8, !srcloc !75
  %call381 = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #8
  %div382 = sdiv i32 1000000000, %call381
  %div383 = udiv i32 %div382, %extract.t682
  call void @__sanitizer_cov_trace_const_cmp4(i32 262144, i32 %div383)
  %cmp386678 = icmp ult i32 %div383, 262144
  br i1 %cmp386678, label %if.else364.for.end_crit_edge, label %if.else364.if.end389_crit_edge

if.else364.if.end389_crit_edge:                   ; preds = %if.else364
  br label %if.end389

if.else364.for.end_crit_edge:                     ; preds = %if.else364
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end389:                                        ; preds = %if.end389.if.end389_crit_edge, %if.else364.if.end389_crit_edge
  %tmp.1680 = phi i32 [ %shr390, %if.end389.if.end389_crit_edge ], [ %div383, %if.else364.if.end389_crit_edge ]
  %div.0679 = phi i32 [ %inc, %if.end389.if.end389_crit_edge ], [ 0, %if.else364.if.end389_crit_edge ]
  %shr390 = lshr i32 %tmp.1680, 1
  %inc = add nuw nsw i32 %div.0679, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %div.0679)
  %cmp384 = icmp ugt i32 %div.0679, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %tmp.1680)
  %cmp386 = icmp ult i32 %tmp.1680, 524288
  %or.cond = select i1 %cmp384, i1 true, i1 %cmp386
  br i1 %or.cond, label %if.end389.for.end_crit_edge, label %if.end389.if.end389_crit_edge

if.end389.if.end389_crit_edge:                    ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end389

if.end389.for.end_crit_edge:                      ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end389.for.end_crit_edge, %if.else364.for.end_crit_edge
  %div.0.lcssa = phi i32 [ 0, %if.else364.for.end_crit_edge ], [ %inc, %if.end389.for.end_crit_edge ]
  %tmp.1.lcssa = phi i32 [ %div383, %if.else364.for.end_crit_edge ], [ %shr390, %if.end389.for.end_crit_edge ]
  %117 = tail call i32 @llvm.umin.i32(i32 %tmp.1.lcssa, i32 262143)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !111
  tail call void @arm_heavy_mb() #8
  %shl398 = shl nuw nsw i32 %117, 4
  %or399 = or i32 %shl398, %div.0.lcssa
  %118 = tail call i32 @llvm.bswap.i32(i32 %or399)
  %119 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i, align 4
  %add.ptr401 = getelementptr i8, ptr %120, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr401, i32 %118) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  tail call void @arm_heavy_mb() #8
  %121 = tail call i32 @llvm.bswap.i32(i32 %117)
  %122 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i, align 4
  %add.ptr406 = getelementptr i8, ptr %123, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr406, i32 %121) #8, !srcloc !75
  %124 = ptrtoint ptr %output2 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %output2, align 4
  %mode_flags408 = getelementptr inbounds %struct.mipi_dsi_device, ptr %125, i32 0, i32 6
  %126 = ptrtoint ptr %mode_flags408 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mode_flags408, align 8
  %and409 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and409)
  %tobool410.not = icmp eq i32 %and409, 0
  br i1 %tobool410.not, label %for.end.if.end434_crit_edge, label %if.then411

for.end.if.end434_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end434

if.then411:                                       ; preds = %for.end
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %125, i32 0, i32 5
  %128 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %129)
  %130 = icmp ult i32 %129, 4
  br i1 %130, label %switch.lookup, label %do.end418

do.end418:                                        ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %add.ptr.i645 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i645, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %132, ptr noundef nonnull @.str.13) #11
  br label %cleanup

switch.lookup:                                    ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #10
  %switch.idx.mult = mul i32 %129, -20480
  %switch.offset = add i32 %switch.idx.mult, 65024
  %and423 = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and423)
  %tobool424.not = icmp eq i32 %and423, 0
  %or426 = or i32 %switch.offset, 1572864
  %spec.select643 = select i1 %tobool424.not, i32 %switch.offset, i32 %or426
  %or428 = or i32 %spec.select643, -2136997888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %133 = tail call i32 @llvm.bswap.i32(i32 %or428)
  %134 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regs.i, align 4
  %add.ptr433 = getelementptr i8, ptr %135, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr433, i32 %133) #8, !srcloc !75
  br label %if.end434

if.end434:                                        ; preds = %switch.lookup, %for.end.if.end434_crit_edge
  %136 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i, align 4
  %add.ptr436 = getelementptr i8, ptr %137, i32 4
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr436) #8, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %139 = and i32 %138, -234881537
  %140 = tail call i32 @llvm.bswap.i32(i32 %139)
  %141 = ptrtoint ptr %output2 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %output2, align 4
  %mode_flags442 = getelementptr inbounds %struct.mipi_dsi_device, ptr %142, i32 0, i32 6
  %143 = ptrtoint ptr %mode_flags442 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %mode_flags442, align 8
  %and443 = shl i32 %144, 8
  %145 = and i32 %and443, 131072
  %146 = or i32 %145, %140
  %147 = xor i32 %146, 131072
  %and450 = and i32 %144, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and450)
  %tobool451.not = icmp eq i32 %and450, 0
  br i1 %tobool451.not, label %if.end434.do.body458_crit_edge, label %if.then452

if.end434.do.body458_crit_edge:                   ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body458

if.then452:                                       ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #10
  %148 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %add.ptr.i, align 4
  %shl453 = shl i32 %149, 2
  %or455 = or i32 %147, %shl453
  %or456 = or i32 %or455, 34
  br label %do.body458

do.body458:                                       ; preds = %if.then452, %if.end434.do.body458_crit_edge
  %tmp.6 = phi i32 [ %or456, %if.then452 ], [ %147, %if.end434.do.body458_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %150 = tail call i32 @llvm.bswap.i32(i32 %tmp.6)
  %151 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i, align 4
  %add.ptr462 = getelementptr i8, ptr %152, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr462, i32 %150) #8, !srcloc !75
  %153 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i, align 4
  %add.ptr466 = getelementptr i8, ptr %154, i32 12
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr466) #8, !srcloc !71
  %156 = tail call i32 @llvm.bswap.i32(i32 %155)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  %157 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %add.ptr.i, align 4
  %add471 = add i32 %158, 13
  %shl472 = shl nuw i32 1, %add471
  %or473 = or i32 %shl472, %156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %159 = tail call i32 @llvm.bswap.i32(i32 %or473)
  %160 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs.i, align 4
  %add.ptr478 = getelementptr i8, ptr %161, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr478, i32 %159) #8, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %do.body458, %do.end418, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dsi_cfg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_dsi_check_conf(ptr noundef %dsi, ptr noundef readonly %mode, ptr nocapture noundef %dsi_cfg, i1 noundef zeroext %mode_valid_check) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output1 = getelementptr inbounds %struct.cdns_dsi, ptr %dsi, i32 0, i32 3
  %phy_opts = getelementptr inbounds %struct.cdns_dsi, ptr %dsi, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output1, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lanes, align 8
  %4 = call ptr @memset(ptr %dsi_cfg, i32 0, i32 20)
  %5 = load ptr, ptr %output1, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_flags.i, align 8
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %10 = icmp ult i32 %9, 4
  br i1 %10, label %switch.lookup, label %entry.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge

entry.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mipi_dsi_pixel_format_to_bpp.exit.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cdns_dsi_check_conf, i32 0, i32 %9
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit.i

mipi_dsi_pixel_format_to_bpp.exit.i:              ; preds = %switch.lookup, %entry.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %entry.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge ]
  br i1 %mode_valid_check, label %if.end19.i, label %if.end19.thread.i

if.end19.i:                                       ; preds = %mipi_dsi_pixel_format_to_bpp.exit.i
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %12 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %htotal.i, align 2
  %conv.i = zext i16 %13 to i32
  %hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %cond.in.in.i = select i1 %tobool.not.i, ptr %hsync_start.i, ptr %hsync_end.i
  %14 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %cond.in.i = load i16, ptr %cond.in.in.i, align 2
  %cond.i = zext i16 %cond.in.i to i32
  %sub.i = sub nsw i32 %conv.i, %cond.i
  %mul.i.i = mul nsw i32 %sub.i, %retval.0.i.i
  %sub.i.i = add nsw i32 %mul.i.i, 7
  %div5.i.i = lshr i32 %sub.i.i, 3
  %15 = tail call i32 @llvm.usub.sat.i32(i32 %div5.i.i, i32 12) #8
  %hbp.i = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 2
  %16 = ptrtoint ptr %hbp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hbp.i, align 4
  br i1 %tobool.not.i, label %if.end38.thread25.i, label %if.end19.i.if.end38.i_crit_edge

if.end19.i.if.end38.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.end38.thread25.i:                              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  %hdisplay26.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %17 = ptrtoint ptr %hdisplay26.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %cond46.in29.i = load i16, ptr %hdisplay26.i, align 4
  %cond4630.i = zext i16 %cond46.in29.i to i32
  %mul.i431.i = mul nsw i32 %retval.0.i.i, %cond4630.i
  %sub.i532.i = add nsw i32 %mul.i431.i, 7
  %div5.i633.i = lshr i32 %sub.i532.i, 3
  %hact34.i = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 3
  %18 = ptrtoint ptr %hact34.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div5.i633.i, ptr %hact34.i, align 4
  br label %if.then.i.i

if.end19.thread.i:                                ; preds = %mipi_dsi_pixel_format_to_bpp.exit.i
  %crtc_htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %19 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %crtc_htotal.i, align 2
  %conv9.i = zext i16 %20 to i32
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %cond17.in.in.i = select i1 %tobool.not.i, ptr %crtc_hsync_start.i, ptr %crtc_hsync_end.i
  %21 = ptrtoint ptr %cond17.in.in.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %cond17.in.i = load i16, ptr %cond17.in.in.i, align 2
  %cond17.i = zext i16 %cond17.in.i to i32
  %sub18.i = sub nsw i32 %conv9.i, %cond17.i
  %mul.i11.i = mul nsw i32 %sub18.i, %retval.0.i.i
  %sub.i12.i = add nsw i32 %mul.i11.i, 7
  %div5.i13.i = lshr i32 %sub.i12.i, 3
  %22 = tail call i32 @llvm.usub.sat.i32(i32 %div5.i13.i, i32 12) #8
  %hbp14.i = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 2
  %23 = ptrtoint ptr %hbp14.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %hbp14.i, align 4
  br i1 %tobool.not.i, label %if.end38.thread.i, label %if.end19.thread.i.if.end38.i_crit_edge

if.end19.thread.i.if.end38.i_crit_edge:           ; preds = %if.end19.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.end38.thread.i:                                ; preds = %if.end19.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %crtc_hdisplay16.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %24 = ptrtoint ptr %crtc_hdisplay16.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %cond46.in18.i = load i16, ptr %crtc_hdisplay16.i, align 4
  %cond4619.i = zext i16 %cond46.in18.i to i32
  %mul.i420.i = mul nsw i32 %retval.0.i.i, %cond4619.i
  %sub.i521.i = add nsw i32 %mul.i420.i, 7
  %div5.i622.i = lshr i32 %sub.i521.i, 3
  %hact23.i = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 3
  %25 = ptrtoint ptr %hact23.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div5.i622.i, ptr %hact23.i, align 4
  br label %if.end.i.i

if.end38.i:                                       ; preds = %if.end19.thread.i.if.end38.i_crit_edge, %if.end19.i.if.end38.i_crit_edge
  %hsync_end.sink.i = phi ptr [ %hsync_end.i, %if.end19.i.if.end38.i_crit_edge ], [ %crtc_hsync_end.i, %if.end19.thread.i.if.end38.i_crit_edge ]
  %hsync_start.sink.i = phi ptr [ %hsync_start.i, %if.end19.i.if.end38.i_crit_edge ], [ %crtc_hsync_start.i, %if.end19.thread.i.if.end38.i_crit_edge ]
  %26 = ptrtoint ptr %hsync_end.sink.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hsync_end.sink.i, align 4
  %conv26.i = zext i16 %27 to i32
  %28 = ptrtoint ptr %hsync_start.sink.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %hsync_start.sink.i, align 2
  %conv28.i = zext i16 %29 to i32
  %sub29.i = sub nsw i32 %conv26.i, %conv28.i
  %mul.i1.i = mul nsw i32 %sub29.i, %retval.0.i.i
  %sub.i2.i = add nsw i32 %mul.i1.i, 7
  %div5.i3.i = lshr i32 %sub.i2.i, 3
  %30 = tail call i32 @llvm.usub.sat.i32(i32 %div5.i3.i, i32 14) #8
  %hsa.i = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 1
  %31 = ptrtoint ptr %hsa.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %hsa.i, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %cond46.in.in.i = select i1 %mode_valid_check, ptr %hdisplay.i, ptr %crtc_hdisplay.i
  %32 = ptrtoint ptr %cond46.in.in.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %cond46.in.i = load i16, ptr %cond46.in.in.i, align 4
  %cond46.i = zext i16 %cond46.in.i to i32
  %mul.i4.i = mul nsw i32 %retval.0.i.i, %cond46.i
  %sub.i5.i = add nsw i32 %mul.i4.i, 7
  %div5.i6.i = lshr i32 %sub.i5.i, 3
  %hact.i = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 3
  %33 = ptrtoint ptr %hact.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div5.i6.i, ptr %hact.i, align 4
  br i1 %mode_valid_check, label %if.end38.i.if.then.i.i_crit_edge, label %if.end38.i.if.end.i.i_crit_edge

if.end38.i.if.end.i.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end38.i.if.then.i.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end38.i.if.then.i.i_crit_edge, %if.end38.thread25.i
  %hdisplay35.i = phi ptr [ %hdisplay26.i, %if.end38.thread25.i ], [ %hdisplay.i, %if.end38.i.if.then.i.i_crit_edge ]
  %hsync_start.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  br label %cdns_dsi_mode2cfg.exit

if.end.i.i:                                       ; preds = %if.end38.i.if.end.i.i_crit_edge, %if.end38.thread.i
  %crtc_hdisplay24.i = phi ptr [ %crtc_hdisplay16.i, %if.end38.thread.i ], [ %crtc_hdisplay.i, %if.end38.i.if.end.i.i_crit_edge ]
  %crtc_hsync_start.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  br label %cdns_dsi_mode2cfg.exit

cdns_dsi_mode2cfg.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %crtc_hdisplay.sink.i.i = phi ptr [ %crtc_hdisplay24.i, %if.end.i.i ], [ %hdisplay35.i, %if.then.i.i ]
  %conv2.sink.in.in.i.i = phi ptr [ %crtc_hsync_start.i.i, %if.end.i.i ], [ %hsync_start.i.i, %if.then.i.i ]
  %34 = ptrtoint ptr %conv2.sink.in.in.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %conv2.sink.in.i.i = load i16, ptr %conv2.sink.in.in.i.i, align 2
  %conv2.sink.i.i = zext i16 %conv2.sink.in.i.i to i32
  %35 = ptrtoint ptr %crtc_hdisplay.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %crtc_hdisplay.sink.i.i, align 4
  %conv3.i.i = zext i16 %36 to i32
  %sub4.i.i = sub nsw i32 %conv2.sink.i.i, %conv3.i.i
  %mul.i7.i = mul nsw i32 %sub4.i.i, %retval.0.i.i
  %sub.i8.i = add nsw i32 %mul.i7.i, 7
  %div5.i9.i = lshr i32 %sub.i8.i, 3
  %37 = tail call i32 @llvm.usub.sat.i32(i32 %div5.i9.i, i32 6) #8
  %38 = ptrtoint ptr %dsi_cfg to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %dsi_cfg, align 4
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %39 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %crtc_clock, align 4
  %mul = mul i32 %40, 1000
  %41 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %output1, align 4
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %45 = icmp ult i32 %44, 4
  br i1 %45, label %switch.lookup91, label %cdns_dsi_mode2cfg.exit.mipi_dsi_pixel_format_to_bpp.exit_crit_edge

cdns_dsi_mode2cfg.exit.mipi_dsi_pixel_format_to_bpp.exit_crit_edge: ; preds = %cdns_dsi_mode2cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mipi_dsi_pixel_format_to_bpp.exit

switch.lookup91:                                  ; preds = %cdns_dsi_mode2cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep92 = getelementptr inbounds [4 x i32], ptr @switch.table.cdns_dsi_check_conf.17, i32 0, i32 %44
  %46 = ptrtoint ptr %switch.gep92 to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load93 = load i32, ptr %switch.gep92, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit

mipi_dsi_pixel_format_to_bpp.exit:                ; preds = %switch.lookup91, %cdns_dsi_mode2cfg.exit.mipi_dsi_pixel_format_to_bpp.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load93, %switch.lookup91 ], [ -22, %cdns_dsi_mode2cfg.exit.mipi_dsi_pixel_format_to_bpp.exit_crit_edge ]
  %call5 = tail call i32 @phy_mipi_dphy_get_default_config(i32 noundef %mul, i32 noundef %retval.0.i, i32 noundef %3, ptr noundef %phy_opts) #8
  %47 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %output1, align 4
  %lanes2.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %lanes2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lanes2.i, align 8
  %hbp.i70 = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 2
  %51 = ptrtoint ptr %hbp.i70 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hbp.i70, align 4
  %add.i = add i32 %52, 12
  %mode_flags.i71 = getelementptr inbounds %struct.mipi_dsi_device, ptr %48, i32 0, i32 6
  %53 = ptrtoint ptr %mode_flags.i71 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mode_flags.i71, align 8
  %and.i72 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72)
  %tobool.not.i73 = icmp eq i32 %and.i72, 0
  br i1 %tobool.not.i73, label %mipi_dsi_pixel_format_to_bpp.exit.if.end.i_crit_edge, label %if.then.i

mipi_dsi_pixel_format_to_bpp.exit.if.end.i_crit_edge: ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %mipi_dsi_pixel_format_to_bpp.exit
  call void @__sanitizer_cov_trace_pc() #10
  %hsa.i74 = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 1
  %55 = ptrtoint ptr %hsa.i74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hsa.i74, align 4
  %add4.i = add i32 %52, 26
  %add5.i = add i32 %add4.i, %56
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %mipi_dsi_pixel_format_to_bpp.exit.if.end.i_crit_edge
  %dsi_htotal.0.i = phi i32 [ %add5.i, %if.then.i ], [ %add.i, %mipi_dsi_pixel_format_to_bpp.exit.if.end.i_crit_edge ]
  %hact.i75 = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 3
  %57 = ptrtoint ptr %hact.i75 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hact.i75, align 4
  %59 = ptrtoint ptr %dsi_cfg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dsi_cfg, align 4
  %add7.i = add i32 %dsi_htotal.0.i, 6
  %add6.i = add i32 %add7.i, %58
  %add8.i = add i32 %add6.i, %60
  %rem.i = urem i32 %add8.i, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool9.not.i = icmp eq i32 %rem.i, 0
  %sub.i76 = sub i32 %50, %rem.i
  %add12.i = select i1 %tobool9.not.i, i32 0, i32 %sub.i76
  %adj_dsi_htotal.0.i = add i32 %add12.i, %add8.i
  %cond.in.i77 = select i1 %mode_valid_check, ptr %mode, ptr %crtc_clock
  %61 = ptrtoint ptr %cond.in.i77 to i32
  call void @__asan_load4_noabort(i32 %61)
  %cond.i78 = load i32, ptr %cond.in.i77, align 4
  %mul.i = mul i32 %cond.i78, 1000
  %conv.i79 = zext i32 %mul.i to i64
  %conv15.i = zext i32 %adj_dsi_htotal.0.i to i64
  %mul16.i = mul nuw i64 %conv15.i, %conv.i79
  %htotal.i80 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %crtc_htotal.i81 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %cond24.in.in.i = select i1 %mode_valid_check, ptr %htotal.i80, ptr %crtc_htotal.i81
  %62 = ptrtoint ptr %cond24.in.in.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %cond24.in.i = load i16, ptr %cond24.in.in.i, align 2
  %cond24.i = zext i16 %cond24.in.i to i32
  %mul25.i = mul i32 %50, %cond24.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul16.i)
  %cmp203.i = icmp ult i64 %mul16.i, 4294967296
  br i1 %cmp203.i, label %if.then207.i, label %if.else213.i, !prof !94

if.then207.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv208.i = trunc i64 %mul16.i to i32
  %conv208.i.frozen = freeze i32 %conv208.i
  %mul25.i.frozen = freeze i32 %mul25.i
  %div211.i = udiv i32 %conv208.i.frozen, %mul25.i.frozen
  %63 = mul i32 %div211.i, %mul25.i.frozen
  %rem209.i.decomposed = sub i32 %conv208.i.frozen, %63
  br label %if.end217.i

if.else213.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul25.i, i64 %mul16.i) #12, !srcloc !109
  %asmresult.i340.i = extractvalue { i64, i64 } %64, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %64, 1
  %shr.i.i = lshr i64 %asmresult.i340.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t365.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.else213.i, %if.then207.i
  %dlane_bps.0.off0.i = phi i32 [ %div211.i, %if.then207.i ], [ %extract.t365.i, %if.else213.i ]
  %__rem.0.i = phi i32 [ %rem209.i.decomposed, %if.then207.i ], [ %conv.i.i, %if.else213.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i)
  %tobool219.not.i = icmp eq i32 %__rem.0.i, 0
  br i1 %tobool219.not.i, label %if.end10, label %if.end217.i.cleanup_crit_edge

if.end217.i.cleanup_crit_edge:                    ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end217.i
  %conv223.i = shl i32 %dlane_bps.0.off0.i, 3
  %hs_clk_rate.i = getelementptr inbounds %struct.cdns_dsi, ptr %dsi, i32 0, i32 3, i32 3, i32 0, i32 22
  %65 = ptrtoint ptr %hs_clk_rate.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %conv223.i, ptr %hs_clk_rate.i, align 4
  %66 = ptrtoint ptr %dsi_cfg to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dsi_cfg, align 4
  %add226.i = add i32 %67, %add12.i
  store i32 %add226.i, ptr %dsi_cfg, align 4
  %htotal228.i = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 4
  %68 = ptrtoint ptr %htotal228.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %adj_dsi_htotal.0.i, ptr %htotal228.i, align 4
  %dphy = getelementptr inbounds %struct.cdns_dsi, ptr %dsi, i32 0, i32 11
  %69 = ptrtoint ptr %dphy to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dphy, align 4
  %call12 = tail call i32 @phy_validate(ptr noundef %70, i32 noundef 16, i32 noundef 0, ptr noundef %phy_opts) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %71 = ptrtoint ptr %hbp.i70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hbp.i70, align 4
  %add = add i32 %72, 12
  %73 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %output1, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %74, i32 0, i32 6
  %75 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mode_flags, align 8
  %and = and i32 %76, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %hsa = getelementptr inbounds %struct.cdns_dsi_cfg, ptr %dsi_cfg, i32 0, i32 1
  %77 = ptrtoint ptr %hsa to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %hsa, align 4
  %add19 = add i32 %72, 26
  %add20 = add i32 %add19, %78
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  %dsi_hss_hsa_hse_hbp.0 = phi i32 [ %add20, %if.then18 ], [ %add, %if.end15.if.end21_crit_edge ]
  %79 = ptrtoint ptr %hs_clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %hs_clk_rate.i, align 4
  %conv = zext i32 %80 to i64
  %crtc_hsync_start.i86 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %crtc_hdisplay.i87 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %hsync_start.i83 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %hdisplay.i84 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %crtc_hdisplay.sink.i = select i1 %mode_valid_check, ptr %hdisplay.i84, ptr %crtc_hdisplay.i87
  %conv2.sink.in.in.i = select i1 %mode_valid_check, ptr %hsync_start.i83, ptr %crtc_hsync_start.i86
  %81 = ptrtoint ptr %conv2.sink.in.in.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %conv2.sink.in.i = load i16, ptr %conv2.sink.in.in.i, align 2
  %conv2.sink.i = zext i16 %conv2.sink.in.i to i32
  %82 = ptrtoint ptr %crtc_hdisplay.sink.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %crtc_hdisplay.sink.i, align 4
  %conv3.i = zext i16 %83 to i32
  %sub4.i = sub nsw i32 %conv2.sink.i, %conv3.i
  %conv24 = zext i32 %sub4.i to i64
  %conv26 = zext i32 %3 to i64
  %mul25 = mul nuw i64 %conv, %conv26
  %mul27 = mul i64 %mul25, %conv24
  %conv28 = zext i32 %dsi_hss_hsa_hse_hbp.0 to i64
  %84 = ptrtoint ptr %cond.in.i77 to i32
  call void @__asan_load4_noabort(i32 %84)
  %cond = load i32, ptr %cond.in.i77, align 4
  %conv32 = sext i32 %cond to i64
  %mul33 = mul nuw nsw i64 %conv28, 1000
  %mul34 = mul i64 %mul33, %conv32
  call void @__sanitizer_cov_trace_cmp8(i64 %mul27, i64 %mul34)
  %cmp = icmp ult i64 %mul27, %mul34
  %spec.select = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end10.cleanup_crit_edge, %if.end217.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end10.cleanup_crit_edge ], [ %spec.select, %if.end21 ], [ -22, %if.end217.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mipi_dphy_get_default_config(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cdns_dsi_init_link(ptr nocapture noundef %dsi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output1 = getelementptr inbounds %struct.cdns_dsi, ptr %dsi, i32 0, i32 3
  %link_initialized = getelementptr inbounds %struct.cdns_dsi, ptr %dsi, i32 0, i32 10
  %0 = ptrtoint ptr %link_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %link_initialized, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %output1, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lanes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp62 = icmp ugt i32 %5, 1
  br i1 %cmp62, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %val.063 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %sub = add i32 %i.064, -1
  %shl = shl nuw i32 1, %sub
  %or = or i32 %shl, %val.063
  %inc = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %val.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_flags, align 8
  %and = lshr i32 %7, 6
  %8 = and i32 %and, 16
  %9 = xor i32 %8, 16
  %10 = or i32 %9, %val.0.lcssa
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %regs = getelementptr inbounds %struct.cdns_dsi, ptr %dsi, i32 0, i32 1
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #8, !srcloc !75
  %dsi_sys_clk = getelementptr inbounds %struct.cdns_dsi, ptr %dsi, i32 0, i32 9
  %14 = ptrtoint ptr %dsi_sys_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dsi_sys_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %15) #8
  %div = udiv i32 1000000000, %call
  %sub7 = add nuw nsw i32 %div, 999999
  %div8 = udiv i32 %sub7, %div
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %shl12 = shl i32 %div8, 9
  %or13 = or i32 %shl12, %div8
  %16 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %16) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 16777216) #8, !srcloc !75
  %21 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %output1, align 4
  %lanes23 = getelementptr inbounds %struct.mipi_dsi_device, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %lanes23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %lanes23, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp2466.not = icmp eq i32 %24, 0
  br i1 %cmp2466.not, label %for.end.do.body32_crit_edge, label %for.end.for.body25_crit_edge

for.end.for.body25_crit_edge:                     ; preds = %for.end
  br label %for.body25

for.end.do.body32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

for.body25:                                       ; preds = %for.body25.for.body25_crit_edge, %for.end.for.body25_crit_edge
  %i.168 = phi i32 [ %inc30, %for.body25.for.body25_crit_edge ], [ 0, %for.end.for.body25_crit_edge ]
  %val.267 = phi i32 [ %or28, %for.body25.for.body25_crit_edge ], [ 9, %for.end.for.body25_crit_edge ]
  %add26 = add i32 %i.168, 4
  %shl27 = shl nuw i32 1, %add26
  %or28 = or i32 %shl27, %val.267
  %inc30 = add nuw i32 %i.168, 1
  %exitcond70.not = icmp eq i32 %inc30, %24
  br i1 %exitcond70.not, label %for.body25.do.body32_crit_edge, label %for.body25.for.body25_crit_edge

for.body25.for.body25_crit_edge:                  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25

for.body25.do.body32_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

do.body32:                                        ; preds = %for.body25.do.body32_crit_edge, %for.end.do.body32_crit_edge
  %val.2.lcssa = phi i32 [ 9, %for.end.do.body32_crit_edge ], [ %or28, %for.body25.do.body32_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %val.2.lcssa)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr36 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %25) #8, !srcloc !75
  %28 = ptrtoint ptr %link_initialized to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %link_initialized, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_attach(ptr noundef %host, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output1 = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 3
  %0 = ptrtoint ptr %output1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %output1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %4 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %channel = getelementptr inbounds %struct.mipi_dsi_device, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  %call8 = tail call ptr @of_graph_get_remote_node(ptr noundef %7, i32 noundef 0, i32 noundef %9) #8
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then10, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %of_node12 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dev, i32 0, i32 1, i32 27
  %10 = ptrtoint ptr %of_node12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node12, align 8
  %call13 = tail call ptr @of_node_get(ptr noundef %11) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %np.0 = phi ptr [ %call8, %if.end6.if.end14_crit_edge ], [ %call13, %if.then10 ]
  %call15 = tail call ptr @of_drm_find_panel(ptr noundef %np.0) #8
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call ptr @drm_panel_bridge_add_typed(ptr noundef %call15, i32 noundef 16) #8
  br label %if.end26

if.else:                                          ; preds = %if.end14
  %of_node20 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dev, i32 0, i32 1, i32 27
  %12 = ptrtoint ptr %of_node20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node20, align 8
  %call21 = tail call ptr @of_drm_find_bridge(ptr noundef %13) #8
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end26.thread, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @of_node_put(ptr noundef %np.0) #8
  br label %if.then28

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.then17
  %bridge.0 = phi ptr [ %call21, %if.else.if.end26_crit_edge ], [ %call18, %if.then17 ]
  tail call void @of_node_put(ptr noundef %np.0) #8
  %cmp.i61 = icmp ugt ptr %bridge.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %if.end26.if.then28_crit_edge, label %if.end31

if.end26.if.then28_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %if.end26.if.then28_crit_edge, %if.end26.thread
  %bridge.064 = phi ptr [ inttoptr (i32 -22 to ptr), %if.end26.thread ], [ %bridge.0, %if.end26.if.then28_crit_edge ]
  %14 = ptrtoint ptr %bridge.064 to i32
  %15 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %host, align 4
  %name = getelementptr inbounds %struct.mipi_dsi_device, ptr %dev, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.15, ptr noundef %name, i32 noundef %14) #11
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %output1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %output1, align 4
  %bridge33 = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %bridge33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %bridge.0, ptr %bridge33, align 4
  %panel34 = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %panel34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call15, ptr %panel34, align 4
  %bridge35 = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 2, i32 1
  tail call void @drm_bridge_add(ptr noundef %bridge35) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then28 ], [ 0, %if.end31 ], [ -16, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_detach(ptr noundef %host, ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 2, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #8
  %panel = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bridge3 = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %bridge3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge3, align 4
  tail call void @drm_panel_bridge_remove(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_transfer(ptr noundef %host, ptr noundef %msg) #2 align 64 {
entry:
  %packet = alloca %struct.mipi_dsi_packet, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %packet) #8
  %0 = call ptr @memset(ptr %packet, i32 255, i32 16)
  %1 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %host, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !124
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !125
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @cdns_dsi_init_link(ptr noundef %host)
  %call2 = call i32 @mipi_dsi_create_packet(ptr noundef nonnull %packet, ptr noundef %msg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end4:                                          ; preds = %if.end
  %tx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buf, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.cond.end_crit_edge, label %cond.true

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %tx_len6 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %tx_len6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_len6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end4.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ 0, %if.end4.cond.end_crit_edge ]
  %rx_buf = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 6
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_buf, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %cond.end.if.end16_crit_edge, label %cond.end11

cond.end.if.end16_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

cond.end11:                                       ; preds = %cond.end
  %rx_len9 = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 5
  %10 = ptrtoint ptr %rx_len9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_len9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  %tobool13.not.not = xor i1 %tobool13.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond)
  %cmp14 = icmp sgt i32 %cond, 2
  %or.cond = select i1 %tobool13.not.not, i1 %cmp14, i1 false
  br i1 %or.cond, label %cond.end11.out_crit_edge, label %cond.end11.if.end16_crit_edge

cond.end11.if.end16_crit_edge:                    ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

cond.end11.out_crit_edge:                         ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end16:                                         ; preds = %cond.end11.if.end16_crit_edge, %cond.end.if.end16_crit_edge
  %tobool13.not256 = phi i1 [ %tobool13.not, %cond.end11.if.end16_crit_edge ], [ true, %cond.end.if.end16_crit_edge ]
  %cond12255 = phi i32 [ %11, %cond.end11.if.end16_crit_edge ], [ 0, %cond.end.if.end16_crit_edge ]
  %direct_cmd_fifo_depth = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 4
  %12 = ptrtoint ptr %direct_cmd_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %direct_cmd_fifo_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %13)
  %cmp17 = icmp ugt i32 %cond, %13
  br i1 %cmp17, label %if.end16.out_crit_edge, label %if.end19

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end19:                                         ; preds = %if.end16
  %rx_fifo_depth = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 5
  %14 = ptrtoint ptr %rx_fifo_depth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_fifo_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond12255, i32 %15)
  %cmp20 = icmp ugt i32 %cond12255, %15
  br i1 %cmp20, label %if.end19.out_crit_edge, label %if.end22

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end22:                                         ; preds = %if.end19
  %shl = shl i32 %cond, 16
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %msg, align 4
  %conv = zext i8 %17 to i32
  %shl23 = shl nuw nsw i32 %conv, 14
  %or = or i32 %shl23, %shl
  %type = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 1
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %type, align 1
  %conv24 = zext i8 %19 to i32
  %shl25 = shl nuw nsw i32 %conv24, 8
  %or26 = or i32 %or, %shl25
  %flags = getelementptr inbounds %struct.mipi_dsi_msg, ptr %msg, i32 0, i32 2
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags, align 2
  %22 = and i16 %21, 2
  %23 = zext i16 %22 to i32
  %24 = shl nuw nsw i32 %23, 23
  %25 = or i32 %or26, %24
  %call33 = call zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext %19) #8
  %or35 = or i32 %25, 8
  %cmd.1 = select i1 %call33, i32 %or35, i32 %25
  br i1 %tobool13.not256, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %or39 = or i32 %cmd.1, 1
  br label %do.body

if.else:                                          ; preds = %if.end22
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags, align 2
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool43.not = icmp eq i16 %28, 0
  br i1 %tobool43.not, label %if.else.do.body_crit_edge, label %if.then44

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or45 = or i32 %cmd.1, 6
  br label %do.body

do.body:                                          ; preds = %if.then44, %if.else.do.body_crit_edge, %if.then38
  %ctl.0 = phi i32 [ 24576, %if.then38 ], [ 16384, %if.then44 ], [ 0, %if.else.do.body_crit_edge ]
  %wait.0 = phi i32 [ 1032, %if.then38 ], [ 48, %if.then44 ], [ 2, %if.else.do.body_crit_edge ]
  %cmd.2 = phi i32 [ %or39, %if.then38 ], [ %or45, %if.then44 ], [ %cmd.1, %if.else.do.body_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 1
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 4
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !71
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %or50 = or i32 %32, %ctl.0
  %33 = call i32 @llvm.bswap.i32(i32 %or50)
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr52 = getelementptr i8, ptr %35, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %33) #8, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  call void @arm_heavy_mb() #8
  %36 = call i32 @llvm.bswap.i32(i32 %cmd.2)
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr57 = getelementptr i8, ptr %38, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %36) #8, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp58259 = icmp sgt i32 %cond, 0
  br i1 %cmp58259, label %do.body.for.body66_crit_edge, label %do.body.do.body79_crit_edge

do.body.do.body79_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body79

do.body.for.body66_crit_edge:                     ; preds = %do.body
  br label %for.body66

for.body66:                                       ; preds = %do.body71.for.body66_crit_edge, %do.body.for.body66_crit_edge
  %i.0260 = phi i32 [ %add77, %do.body71.for.body66_crit_edge ], [ 0, %do.body.for.body66_crit_edge ]
  %39 = ptrtoint ptr %tx_buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_buf, align 4
  %arrayidx = getelementptr i8, ptr %40, i32 %i.0260
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  %conv68 = zext i8 %42 to i32
  %add.1 = or i32 %i.0260, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.1, i32 %cond)
  %cmp64.1 = icmp slt i32 %add.1, %cond
  br i1 %cmp64.1, label %for.body66.1, label %for.body66.do.body71_crit_edge

for.body66.do.body71_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

for.body66.1:                                     ; preds = %for.body66
  %arrayidx.1 = getelementptr i8, ptr %40, i32 %add.1
  %43 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.1, align 1
  %conv68.1 = zext i8 %44 to i32
  %shl69.1 = shl nuw nsw i32 %conv68.1, 8
  %or70.1 = or i32 %shl69.1, %conv68
  %add.2 = or i32 %i.0260, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.2, i32 %cond)
  %cmp64.2 = icmp slt i32 %add.2, %cond
  br i1 %cmp64.2, label %for.body66.2, label %for.body66.1.do.body71_crit_edge

for.body66.1.do.body71_crit_edge:                 ; preds = %for.body66.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

for.body66.2:                                     ; preds = %for.body66.1
  %arrayidx.2 = getelementptr i8, ptr %40, i32 %add.2
  %45 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.2, align 1
  %conv68.2 = zext i8 %46 to i32
  %shl69.2 = shl nuw nsw i32 %conv68.2, 16
  %or70.2 = or i32 %shl69.2, %or70.1
  %add.3 = or i32 %i.0260, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.3, i32 %cond)
  %cmp64.3 = icmp slt i32 %add.3, %cond
  br i1 %cmp64.3, label %for.body66.3, label %for.body66.2.do.body71_crit_edge

for.body66.2.do.body71_crit_edge:                 ; preds = %for.body66.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body71

for.body66.3:                                     ; preds = %for.body66.2
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.3 = getelementptr i8, ptr %40, i32 %add.3
  %47 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.3, align 1
  %conv68.3 = zext i8 %48 to i32
  %shl69.3 = shl nuw i32 %conv68.3, 24
  %or70.3 = or i32 %shl69.3, %or70.2
  br label %do.body71

do.body71:                                        ; preds = %for.body66.3, %for.body66.2.do.body71_crit_edge, %for.body66.1.do.body71_crit_edge, %for.body66.do.body71_crit_edge
  %val.0.lcssa = phi i32 [ %conv68, %for.body66.do.body71_crit_edge ], [ %or70.1, %for.body66.1.do.body71_crit_edge ], [ %or70.2, %for.body66.2.do.body71_crit_edge ], [ %or70.3, %for.body66.3 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  call void @arm_heavy_mb() #8
  %49 = call i32 @llvm.bswap.i32(i32 %val.0.lcssa)
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr75 = getelementptr i8, ptr %51, i32 144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %49) #8, !srcloc !75
  %add77 = add i32 %i.0260, 4
  %cmp58 = icmp slt i32 %add77, %cond
  br i1 %cmp58, label %do.body71.for.body66_crit_edge, label %do.body71.do.body79_crit_edge

do.body71.do.body79_crit_edge:                    ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body79

do.body71.for.body66_crit_edge:                   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body66

do.body79:                                        ; preds = %do.body71.do.body79_crit_edge, %do.body.do.body79_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  call void @arm_heavy_mb() #8
  %52 = call i32 @llvm.bswap.i32(i32 %wait.0)
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr83 = getelementptr i8, ptr %54, i32 344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %52) #8, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  call void @arm_heavy_mb() #8
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr88 = getelementptr i8, ptr %56, i32 312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %52) #8, !srcloc !75
  %direct_cmd_comp = getelementptr inbounds %struct.cdns_dsi, ptr %host, i32 0, i32 6
  %57 = ptrtoint ptr %direct_cmd_comp to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %direct_cmd_comp, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %add.ptr93 = getelementptr i8, ptr %59, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 0) #8, !srcloc !75
  %call96 = call i32 @wait_for_completion_timeout(ptr noundef %direct_cmd_comp, i32 noundef 100) #8
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr100 = getelementptr i8, ptr %61, i32 136
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #8, !srcloc !71
  %63 = call i32 @llvm.bswap.i32(i32 %62)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %add.ptr108 = getelementptr i8, ptr %65, i32 344
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %52) #8, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.ptr113 = getelementptr i8, ptr %67, i32 312
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 0) #8, !srcloc !75
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @arm_heavy_mb() #8
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 4
  %add.ptr120 = getelementptr i8, ptr %69, i32 4
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr120) #8, !srcloc !71
  %71 = call i32 @llvm.bswap.i32(i32 %70)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %neg = xor i32 %ctl.0, -1
  %and124 = and i32 %71, %neg
  %72 = call i32 @llvm.bswap.i32(i32 %and124)
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 4
  %add.ptr126 = getelementptr i8, ptr %74, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr126, i32 %72) #8, !srcloc !75
  %and127 = and i32 %63, %wait.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %do.body79.out_crit_edge, label %if.end130

do.body79.out_crit_edge:                          ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end130:                                        ; preds = %do.body79
  %and131 = and i32 %63, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %for.cond135.preheader, label %if.end130.out_crit_edge

if.end130.out_crit_edge:                          ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond135.preheader:                            ; preds = %if.end130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond12255)
  %cmp136263 = icmp sgt i32 %cond12255, 0
  br i1 %cmp136263, label %for.cond135.preheader.for.body157_crit_edge, label %for.cond135.preheader.out_crit_edge

for.cond135.preheader.out_crit_edge:              ; preds = %for.cond135.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond135.preheader.for.body157_crit_edge:      ; preds = %for.cond135.preheader
  br label %for.body157

for.body157:                                      ; preds = %for.end164.for.body157_crit_edge, %for.cond135.preheader.for.body157_crit_edge
  %i.1264 = phi i32 [ %add166, %for.end164.for.body157_crit_edge ], [ 0, %for.cond135.preheader.for.body157_crit_edge ]
  %75 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %rx_buf, align 4
  %77 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs, align 4
  %add.ptr145 = getelementptr i8, ptr %78, i32 160
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #8, !srcloc !71
  %80 = call i32 @llvm.bswap.i32(i32 %79)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %conv159 = trunc i32 %80 to i8
  %arrayidx161 = getelementptr i8, ptr %76, i32 %i.1264
  %81 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv159, ptr %arrayidx161, align 1
  %add153.1 = or i32 %i.1264, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add153.1, i32 %cond12255)
  %cmp154.1 = icmp slt i32 %add153.1, %cond12255
  br i1 %cmp154.1, label %for.body157.1, label %for.body157.for.end164_crit_edge

for.body157.for.end164_crit_edge:                 ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.body157.1:                                    ; preds = %for.body157
  %shr.1 = lshr i32 %80, 8
  %conv159.1 = trunc i32 %shr.1 to i8
  %arrayidx161.1 = getelementptr i8, ptr %76, i32 %add153.1
  %82 = ptrtoint ptr %arrayidx161.1 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv159.1, ptr %arrayidx161.1, align 1
  %add153.2 = or i32 %i.1264, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add153.2, i32 %cond12255)
  %cmp154.2 = icmp slt i32 %add153.2, %cond12255
  br i1 %cmp154.2, label %for.body157.2, label %for.body157.1.for.end164_crit_edge

for.body157.1.for.end164_crit_edge:               ; preds = %for.body157.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.body157.2:                                    ; preds = %for.body157.1
  %shr.2 = lshr i32 %80, 16
  %conv159.2 = trunc i32 %shr.2 to i8
  %arrayidx161.2 = getelementptr i8, ptr %76, i32 %add153.2
  %83 = ptrtoint ptr %arrayidx161.2 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv159.2, ptr %arrayidx161.2, align 1
  %add153.3 = or i32 %i.1264, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add153.3, i32 %cond12255)
  %cmp154.3 = icmp slt i32 %add153.3, %cond12255
  br i1 %cmp154.3, label %for.body157.3, label %for.body157.2.for.end164_crit_edge

for.body157.2.for.end164_crit_edge:               ; preds = %for.body157.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.body157.3:                                    ; preds = %for.body157.2
  call void @__sanitizer_cov_trace_pc() #10
  %shr.3 = lshr i32 %80, 24
  %conv159.3 = trunc i32 %shr.3 to i8
  %arrayidx161.3 = getelementptr i8, ptr %76, i32 %add153.3
  %84 = ptrtoint ptr %arrayidx161.3 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv159.3, ptr %arrayidx161.3, align 1
  br label %for.end164

for.end164:                                       ; preds = %for.body157.3, %for.body157.2.for.end164_crit_edge, %for.body157.1.for.end164_crit_edge, %for.body157.for.end164_crit_edge
  %add166 = add i32 %i.1264, 4
  %cmp136 = icmp slt i32 %add166, %cond12255
  br i1 %cmp136, label %for.end164.for.body157_crit_edge, label %for.end164.out_crit_edge

for.end164.out_crit_edge:                         ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.end164.for.body157_crit_edge:                 ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body157

out:                                              ; preds = %for.end164.out_crit_edge, %for.cond135.preheader.out_crit_edge, %if.end130.out_crit_edge, %do.body79.out_crit_edge, %if.end19.out_crit_edge, %if.end16.out_crit_edge, %cond.end11.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ -524, %cond.end11.out_crit_edge ], [ -524, %if.end16.out_crit_edge ], [ -524, %if.end19.out_crit_edge ], [ -110, %do.body79.out_crit_edge ], [ -5, %if.end130.out_crit_edge ], [ 0, %for.cond135.preheader.out_crit_edge ], [ 0, %for.end164.out_crit_edge ]
  %85 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %host, align 4
  %call.i247 = call i32 @__pm_runtime_idle(ptr noundef %86, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %packet) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_panel_bridge_add_typed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_create_packet(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mipi_dsi_packet_format_is_long(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_host_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dsi_sys_clk = getelementptr inbounds %struct.cdns_dsi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dsi_sys_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi_sys_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %dsi_p_clk = getelementptr inbounds %struct.cdns_dsi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dsi_p_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi_p_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %dsi_p_rst = getelementptr inbounds %struct.cdns_dsi, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dsi_p_rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi_p_rst, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  %link_initialized = getelementptr inbounds %struct.cdns_dsi, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %link_initialized to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %link_initialized, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_dsi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dsi_p_rst = getelementptr inbounds %struct.cdns_dsi, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dsi_p_rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi_p_rst, align 4
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %3) #8
  %dsi_p_clk = getelementptr inbounds %struct.cdns_dsi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %dsi_p_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dsi_p_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %dsi_sys_clk = getelementptr inbounds %struct.cdns_dsi, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dsi_sys_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi_sys_clk, align 4
  %call.i6 = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not.i7 = icmp eq i32 %call.i6, 0
  br i1 %tobool.not.i7, label %if.end.i10, label %clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit13

if.end.i10:                                       ; preds = %clk_prepare_enable.exit
  %call1.i8 = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool2.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool2.not.i9, label %if.end.i10.clk_prepare_enable.exit13_crit_edge, label %if.then3.i11

if.end.i10.clk_prepare_enable.exit13_crit_edge:   ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit13

if.then3.i11:                                     ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %clk_prepare_enable.exit13

clk_prepare_enable.exit13:                        ; preds = %if.then3.i11, %if.end.i10.clk_prepare_enable.exit13_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit13_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !53, !55, !56, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_cdns_dsi__308_1297_cdns_dsi_platform_driver_init6, !1, !"__initcall__kmod_cdns_dsi__308_1297_cdns_dsi_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1297, i32 1}
!2 = !{ptr @__exitcall_cdns_dsi_platform_driver_exit, !1, !"__exitcall_cdns_dsi_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1299, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1300, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1301, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias313, !11, !"__UNIQUE_ID_alias313", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1302, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1292, i32 13}
!14 = !{ptr @cdns_dsi_platform_driver, !15, !"cdns_dsi_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1288, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1189, i32 44}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1194, i32 9}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1198, i32 46}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1206, i32 39}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1216, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cdns_dsi_drm_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @cdns_dsi_drm_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @init_completion.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/completion.h", i32 87, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cdns_dsi_bridge_funcs, !36, !"cdns_dsi_bridge_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 917, i32 38}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 655, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cdns_dsi_bridge_attach._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @cdns_dsi_bridge_attach._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 798, i32 2}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 887, i32 4}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @cdns_dsi_bridge_enable._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @cdns_dsi_bridge_enable._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 736, i32 2}
!51 = !{ptr @cdns_dsi_ops, !52, !"cdns_dsi_ops", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1139, i32 39}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 972, i32 3}
!55 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cdns_dsi_attach._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @cdns_dsi_attach._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @cdns_dsi_of_match, !59, !"cdns_dsi_of_match", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1283, i32 34}
!60 = !{ptr @cdns_dsi_pm_ops, !61, !"cdns_dsi_pm_ops", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/cdns-dsi.c", i32 1167, i32 8}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 6912990}
!72 = !{i64 2156846820}
!73 = !{i64 2156849574}
!74 = !{i64 2156851186}
!75 = !{i64 6912572}
!76 = !{i64 2156851567}
!77 = !{i64 2156851948}
!78 = !{i64 2156852333}
!79 = !{i64 2156852720}
!80 = !{i64 2156853107}
!81 = !{i64 2156853494}
!82 = !{i64 2156853881}
!83 = !{i64 2156854268}
!84 = !{i64 2156854655}
!85 = !{i64 2156855042}
!86 = !{i64 2156831619}
!87 = !{i64 2156832111}
!88 = !{i64 2156832331}
!89 = !{i64 2156780751}
!90 = !{i64 2156781973}
!91 = !{i64 2156782628}
!92 = !{i64 2156782960}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2156784869}
!96 = !{i64 2156786725}
!97 = !{i64 2156788481}
!98 = !{i64 2156798223}
!99 = !{i64 2156798627}
!100 = !{i64 2156802368}
!101 = !{i64 2156809263}
!102 = !{i64 2156809849}
!103 = !{i64 2156810692}
!104 = !{i64 2156811601}
!105 = !{i64 2156812058}
!106 = !{i64 2156812582}
!107 = !{i64 2156813038}
!108 = !{i64 2156813562}
!109 = !{i64 2149101795, i64 2149102075, i64 2149102409, i64 2149102743}
!110 = !{i64 2156819559}
!111 = !{i64 2156822817}
!112 = !{i64 2156823284}
!113 = !{i64 2156825970}
!114 = !{i64 2156826626}
!115 = !{i64 2156828115}
!116 = !{i64 2156828770}
!117 = !{i64 2156829102}
!118 = !{i8 0, i8 2}
!119 = !{i64 2156805332}
!120 = !{i64 2156805883}
!121 = !{i64 2156806460}
!122 = !{i64 2156807183}
!123 = !{i64 2148431735}
!124 = !{i64 916558, i64 916583, i64 916605, i64 916621, i64 916633, i64 916653, i64 916677, i64 916693, i64 916705}
!125 = !{i64 2148431923}
!126 = !{i64 2156834527}
!127 = !{i64 2156835426}
!128 = !{i64 2156835662}
!129 = !{i64 2156836054}
!130 = !{i64 2156836449}
!131 = !{i64 2156836848}
!132 = !{i64 2156837242}
!133 = !{i64 2156837897}
!134 = !{i64 2156838118}
!135 = !{i64 2156838514}
!136 = !{i64 2156839630}
!137 = !{i64 2156840531}
!138 = !{i64 2156841209}
