; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mtk_ddp_comp_match = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_ddp_comp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cmdq_client_reg = type { i8, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.86 = type { i32, ptr }
%struct.mtk_drm_private = type { ptr, ptr, i32, ptr, ptr, ptr, [32 x ptr], [32 x %struct.mtk_ddp_comp], ptr, ptr }
%struct.mtk_ddp_comp = type { ptr, i32, ptr, i32, ptr }
%struct.mtk_mmsys_driver_data = type { ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_ddp_comp_dev = type { ptr, ptr, %struct.cmdq_client_reg }

@mtk_ddp_comp_stem = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], [60 x i8] zeroinitializer }, align 32
@mtk_ddp_matches = internal constant { [32 x %struct.mtk_ddp_comp_match], [96 x i8] } { [32 x %struct.mtk_ddp_comp_match] [%struct.mtk_ddp_comp_match { i32 0, i32 0, ptr @ddp_aal }, %struct.mtk_ddp_comp_match { i32 0, i32 1, ptr @ddp_aal }, %struct.mtk_ddp_comp_match { i32 1, i32 0, ptr null }, %struct.mtk_ddp_comp_match { i32 2, i32 0, ptr @ddp_ccorr }, %struct.mtk_ddp_comp_match { i32 3, i32 0, ptr @ddp_color }, %struct.mtk_ddp_comp_match { i32 3, i32 1, ptr @ddp_color }, %struct.mtk_ddp_comp_match { i32 4, i32 0, ptr @ddp_dither }, %struct.mtk_ddp_comp_match { i32 15, i32 0, ptr @ddp_dpi }, %struct.mtk_ddp_comp_match { i32 15, i32 1, ptr @ddp_dpi }, %struct.mtk_ddp_comp_match { i32 16, i32 0, ptr @ddp_dsi }, %struct.mtk_ddp_comp_match { i32 16, i32 1, ptr @ddp_dsi }, %struct.mtk_ddp_comp_match { i32 16, i32 2, ptr @ddp_dsi }, %struct.mtk_ddp_comp_match { i32 16, i32 3, ptr @ddp_dsi }, %struct.mtk_ddp_comp_match { i32 5, i32 0, ptr @ddp_gamma }, %struct.mtk_ddp_comp_match { i32 7, i32 0, ptr @ddp_od }, %struct.mtk_ddp_comp_match { i32 7, i32 1, ptr @ddp_od }, %struct.mtk_ddp_comp_match { i32 8, i32 0, ptr @ddp_ovl }, %struct.mtk_ddp_comp_match { i32 9, i32 0, ptr @ddp_ovl }, %struct.mtk_ddp_comp_match { i32 9, i32 1, ptr @ddp_ovl }, %struct.mtk_ddp_comp_match { i32 9, i32 2, ptr @ddp_ovl }, %struct.mtk_ddp_comp_match { i32 8, i32 1, ptr @ddp_ovl }, %struct.mtk_ddp_comp_match { i32 10, i32 0, ptr @ddp_postmask }, %struct.mtk_ddp_comp_match { i32 11, i32 0, ptr null }, %struct.mtk_ddp_comp_match { i32 11, i32 1, ptr null }, %struct.mtk_ddp_comp_match { i32 11, i32 2, ptr null }, %struct.mtk_ddp_comp_match { i32 12, i32 0, ptr @ddp_rdma }, %struct.mtk_ddp_comp_match { i32 12, i32 1, ptr @ddp_rdma }, %struct.mtk_ddp_comp_match { i32 12, i32 2, ptr @ddp_rdma }, %struct.mtk_ddp_comp_match { i32 12, i32 4, ptr @ddp_rdma }, %struct.mtk_ddp_comp_match { i32 13, i32 0, ptr @ddp_ufoe }, %struct.mtk_ddp_comp_match { i32 14, i32 0, ptr null }, %struct.mtk_ddp_comp_match { i32 14, i32 1, ptr null }], [96 x i8] zeroinitializer }, align 32
@mtk_drm_find_possible_crtc_by_comp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016[drm] Failed to find comp in ddp table\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mtk_drm_find_possible_crtc_by_comp\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c\00", [52 x i8] zeroinitializer }, align 32
@mtk_drm_find_possible_crtc_by_comp._entry_ptr = internal global ptr @mtk_drm_find_possible_crtc_by_comp._entry, section ".printk_index", align 4
@mtk_ddp_comp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 491, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016[drm] Waiting for device %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_ddp_comp_init\00", [46 x i8] zeroinitializer }, align 32
@mtk_ddp_comp_init._entry_ptr = internal global ptr @mtk_ddp_comp_init._entry, section ".printk_index", align 4
@mtk_ddp_comp_init.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 -124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek_drm\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"get mediatek,gce-client-reg fail!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aal\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bls\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccorr\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"color\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dither\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gamma\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mutex\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"od\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ovl\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ovl-2l\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"postmask\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ufoe\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wdma\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dpi\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsi\00", [28 x i8] zeroinitializer }, align 32
@ddp_aal = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_aal_clk_enable, ptr @mtk_aal_clk_disable, ptr @mtk_aal_config, ptr @mtk_aal_start, ptr @mtk_aal_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_aal_gamma_set, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_ccorr = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_ccorr_clk_enable, ptr @mtk_ccorr_clk_disable, ptr @mtk_ccorr_config, ptr @mtk_ccorr_start, ptr @mtk_ccorr_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_ccorr_ctm_set }, [36 x i8] zeroinitializer }, align 32
@ddp_color = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_color_clk_enable, ptr @mtk_color_clk_disable, ptr @mtk_color_config, ptr @mtk_color_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_dither = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_ddp_clk_enable, ptr @mtk_ddp_clk_disable, ptr @mtk_dither_config, ptr @mtk_dither_start, ptr @mtk_dither_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_dpi = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr null, ptr null, ptr null, ptr @mtk_dpi_start, ptr @mtk_dpi_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_dsi = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr null, ptr null, ptr null, ptr @mtk_dsi_ddp_start, ptr @mtk_dsi_ddp_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_gamma = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_gamma_clk_enable, ptr @mtk_gamma_clk_disable, ptr @mtk_gamma_config, ptr @mtk_gamma_start, ptr @mtk_gamma_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_gamma_set, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_od = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_ddp_clk_enable, ptr @mtk_ddp_clk_disable, ptr @mtk_od_config, ptr @mtk_od_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_ovl = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_ovl_clk_enable, ptr @mtk_ovl_clk_disable, ptr @mtk_ovl_config, ptr @mtk_ovl_start, ptr @mtk_ovl_stop, ptr @mtk_ovl_enable_vblank, ptr @mtk_ovl_disable_vblank, ptr @mtk_ovl_supported_rotations, ptr @mtk_ovl_layer_nr, ptr @mtk_ovl_layer_check, ptr @mtk_ovl_layer_config, ptr null, ptr @mtk_ovl_bgclr_in_on, ptr @mtk_ovl_bgclr_in_off, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_postmask = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_ddp_clk_enable, ptr @mtk_ddp_clk_disable, ptr @mtk_postmask_config, ptr @mtk_postmask_start, ptr @mtk_postmask_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_rdma = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_rdma_clk_enable, ptr @mtk_rdma_clk_disable, ptr @mtk_rdma_config, ptr @mtk_rdma_start, ptr @mtk_rdma_stop, ptr @mtk_rdma_enable_vblank, ptr @mtk_rdma_disable_vblank, ptr null, ptr @mtk_rdma_layer_nr, ptr null, ptr @mtk_rdma_layer_config, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ddp_ufoe = internal constant { %struct.mtk_ddp_comp_funcs, [36 x i8] } { %struct.mtk_ddp_comp_funcs { ptr @mtk_ddp_clk_enable, ptr @mtk_ddp_clk_disable, ptr null, ptr @mtk_ufoe_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mediatek,larb\00", [18 x i8] zeroinitializer }, align 32
@mtk_ddp_get_larb_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 458, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Missing mediadek,larb phandle in %pOF node\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mtk_ddp_get_larb_dev\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_ddp_get_larb_dev._entry_ptr = internal global ptr @mtk_ddp_get_larb_dev._entry, section ".printk_index", align 4
@mtk_ddp_get_larb_dev._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.2, i32 464, ptr @.str.31, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Waiting for larb device %pOF\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_ddp_get_larb_dev._entry_ptr.32 = internal global ptr @mtk_ddp_get_larb_dev._entry.29, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 8, i64 9, i64 11, i64 12, i64 14, i64 15, i64 16]
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"mtk_ddp_comp_stem\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 336, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant [16 x i8] c"mtk_ddp_matches\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 362, i32 40 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 445, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 491, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 531, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 337, i32 19 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 338, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 339, i32 21 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 340, i32 21 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 341, i32 22 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 342, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 343, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 344, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 345, i32 19 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 346, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 347, i32 24 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 348, i32 19 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 349, i32 20 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 350, i32 20 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 351, i32 20 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 352, i32 14 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 353, i32 14 }
@___asan_gen_.117 = private unnamed_addr constant [8 x i8] c"ddp_aal\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 235, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant [10 x i8] c"ddp_ccorr\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 244, i32 40 }
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"ddp_color\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 253, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant [11 x i8] c"ddp_dither\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 260, i32 40 }
@___asan_gen_.129 = private unnamed_addr constant [8 x i8] c"ddp_dpi\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 268, i32 40 }
@___asan_gen_.132 = private unnamed_addr constant [8 x i8] c"ddp_dsi\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 273, i32 40 }
@___asan_gen_.135 = private unnamed_addr constant [10 x i8] c"ddp_gamma\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 278, i32 40 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"ddp_od\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 287, i32 40 }
@___asan_gen_.141 = private unnamed_addr constant [8 x i8] c"ddp_ovl\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 294, i32 40 }
@___asan_gen_.144 = private unnamed_addr constant [13 x i8] c"ddp_postmask\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 310, i32 40 }
@___asan_gen_.147 = private unnamed_addr constant [9 x i8] c"ddp_rdma\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 318, i32 40 }
@___asan_gen_.150 = private unnamed_addr constant [9 x i8] c"ddp_ufoe\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 330, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 456, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 458, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [47 x i8] c"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 464, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @mtk_ddp_comp_init._entry, ptr @mtk_ddp_comp_init._entry_ptr, ptr @mtk_ddp_get_larb_dev._entry, ptr @mtk_ddp_get_larb_dev._entry.29, ptr @mtk_ddp_get_larb_dev._entry_ptr, ptr @mtk_ddp_get_larb_dev._entry_ptr.32, ptr @mtk_drm_find_possible_crtc_by_comp._entry, ptr @mtk_drm_find_possible_crtc_by_comp._entry_ptr, ptr @mtk_ddp_comp_stem, ptr @mtk_ddp_matches, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @ddp_aal, ptr @ddp_ccorr, ptr @ddp_color, ptr @ddp_dither, ptr @ddp_dpi, ptr @ddp_dsi, ptr @ddp_gamma, ptr @ddp_od, ptr @ddp_ovl, ptr @ddp_postmask, ptr @ddp_rdma, ptr @ddp_ufoe, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ddp_comp_stem to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ddp_matches to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_find_possible_crtc_by_comp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ddp_comp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_aal to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_ccorr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_color to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_dither to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_dpi to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_dsi to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_gamma to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_od to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_ovl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_postmask to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_rdma to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_ufoe to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ddp_get_larb_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ddp_get_larb_dev._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ddp_write(ptr noundef %cmdq_pkt, i32 noundef %value, ptr nocapture noundef readonly %cmdq_reg, ptr noundef %regs, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmdq_pkt, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmdq_reg, align 2
  %offset1 = getelementptr inbounds %struct.cmdq_client_reg, ptr %cmdq_reg, i32 0, i32 1
  %2 = ptrtoint ptr %offset1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset1, align 2
  %4 = trunc i32 %offset to i16
  %conv2 = add i16 %3, %4
  %call = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %1, i16 noundef zeroext %conv2, i32 noundef %value) #5
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %value)
  %add.ptr = getelementptr i8, ptr %regs, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #5, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdq_pkt_write(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ddp_write_relaxed(ptr noundef %cmdq_pkt, i32 noundef %value, ptr nocapture noundef readonly %cmdq_reg, ptr noundef %regs, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmdq_pkt, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmdq_reg, align 2
  %offset1 = getelementptr inbounds %struct.cmdq_client_reg, ptr %cmdq_reg, i32 0, i32 1
  %2 = ptrtoint ptr %offset1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset1, align 2
  %4 = trunc i32 %offset to i16
  %conv2 = add i16 %3, %4
  %call = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %1, i16 noundef zeroext %conv2, i32 noundef %value) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %value)
  %add.ptr = getelementptr i8, ptr %regs, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #5, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_ddp_write_mask(ptr noundef %cmdq_pkt, i32 noundef %value, ptr nocapture noundef readonly %cmdq_reg, ptr noundef %regs, i32 noundef %offset, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %cmdq_pkt, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmdq_reg, align 2
  %offset1 = getelementptr inbounds %struct.cmdq_client_reg, ptr %cmdq_reg, i32 0, i32 1
  %2 = ptrtoint ptr %offset1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset1, align 2
  %4 = trunc i32 %offset to i16
  %conv2 = add i16 %3, %4
  %call = tail call i32 @cmdq_pkt_write_mask(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %1, i16 noundef zeroext %conv2, i32 noundef %value, i32 noundef %mask) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %regs, i32 %offset
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !102
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  %neg = xor i32 %mask, -1
  %and = and i32 %6, %neg
  %and6 = and i32 %mask, %value
  %or = or i32 %and, %and6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #5, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdq_pkt_write_mask(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_dither_set_common(ptr noundef %regs, ptr nocapture noundef readonly %cmdq_reg, i32 noundef %bpc, i32 noundef %cfg, i32 noundef %dither_en, ptr noundef %cmdq_pkt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bpc)
  %switch = icmp ult i32 %bpc, 3
  br i1 %switch, label %entry.if.end22_crit_edge, label %if.then2

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then2:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %cmdq_pkt, null
  br i1 %tobool.not.i, label %do.body.i72, label %if.then.i70

if.then.i70:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmdq_reg, align 2
  %offset1.i = getelementptr inbounds %struct.cmdq_client_reg, ptr %cmdq_reg, i32 0, i32 1
  %2 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %offset1.i, align 2
  %conv2.i = add i16 %3, 276
  %call.i = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %1, i16 noundef zeroext %conv2.i, i32 noundef 0) #5
  %4 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmdq_reg, align 2
  %6 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %offset1.i, align 2
  %conv2.i44 = add i16 %7, 284
  %call.i45 = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %5, i16 noundef zeroext %conv2.i44, i32 noundef 0) #5
  %sub = sub i32 2, %bpc
  %and = and i32 %sub, 7
  %or = mul nuw nsw i32 %and, 269484032
  %or6 = or i32 %or, 1
  %8 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cmdq_reg, align 2
  %10 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %offset1.i, align 2
  %conv2.i52 = add i16 %11, 316
  %call.i53 = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %9, i16 noundef zeroext %conv2.i52, i32 noundef %or6) #5
  %or21 = mul nuw nsw i32 %and, 269488144
  %12 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cmdq_reg, align 2
  %14 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %offset1.i, align 2
  %conv2.i60 = add i16 %15, 320
  %call.i61 = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %13, i16 noundef zeroext %conv2.i60, i32 noundef %or21) #5
  %16 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmdq_reg, align 2
  %18 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %offset1.i, align 2
  %20 = trunc i32 %cfg to i16
  %conv2.i68 = add i16 %19, %20
  %call.i69 = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %17, i16 noundef zeroext %conv2.i68, i32 noundef %dither_en) #5
  br label %if.end22

do.body.i72:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %add.ptr.i = getelementptr i8, ptr %regs, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %add.ptr.i47 = getelementptr i8, ptr %regs, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 0) #5, !srcloc !101
  %sub74 = sub i32 2, %bpc
  %and75 = and i32 %sub74, 7
  %or78 = mul nuw nsw i32 %and75, 269484032
  %or679 = or i32 %or78, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or679) #5
  %add.ptr.i55 = getelementptr i8, ptr %regs, i32 316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %21) #5, !srcloc !101
  %or2190 = mul nuw nsw i32 %and75, 269488144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %22 = tail call i32 @llvm.bswap.i32(i32 %or2190) #5
  %add.ptr.i63 = getelementptr i8, ptr %regs, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %22) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %dither_en) #5
  %add.ptr.i71 = getelementptr i8, ptr %regs, i32 %cfg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %23) #5, !srcloc !101
  br label %if.end22

if.end22:                                         ; preds = %do.body.i72, %if.then.i70, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_ddp_comp_get_id(ptr noundef %node, i32 noundef %comp_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [17 x ptr], ptr @mtk_ddp_comp_stem, i32 0, i32 %comp_type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @of_alias_get_id(ptr noundef %node, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr [32 x %struct.mtk_ddp_comp_match], ptr @mtk_ddp_matches, i32 0, i32 %i.013
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %comp_type)
  %cmp2 = icmp eq i32 %3, %comp_type
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %alias_id = getelementptr [32 x %struct.mtk_ddp_comp_match], ptr @mtk_ddp_matches, i32 0, i32 %i.013, i32 1
  %4 = ptrtoint ptr %alias_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alias_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp5 = icmp eq i32 %call, %5
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.013, %lor.lhs.false.cleanup_crit_edge ], [ %i.013, %land.lhs.true.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_drm_find_possible_crtc_by_comp(ptr nocapture noundef readonly %drm, ptr noundef readnone %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %data = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %main_len = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %main_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %main_len, align 4
  %ddp_comp = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 7
  %cmp.i = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp110.i = icmp ne i32 %7, 0
  %or.cond.i = and i1 %cmp.i, %cmp110.i
  br i1 %or.cond.i, label %entry.for.body.i_crit_edge, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.if.else_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.if.else_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %5, i32 %i.011.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.mtk_ddp_comp, ptr %ddp_comp, i32 %9
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.i, align 4
  %cmp4.i = icmp eq ptr %11, %dev
  br i1 %cmp4.i, label %for.body.i.if.end18_crit_edge, label %for.cond.i

for.body.i.if.end18_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.else:                                          ; preds = %for.cond.i.if.else_crit_edge, %entry.if.else_crit_edge
  %ext_path = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %ext_path to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ext_path, align 4
  %ext_len = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %ext_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ext_len, align 4
  %cmp.i29 = icmp ne ptr %13, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp110.i30 = icmp ne i32 %15, 0
  %or.cond.i31 = and i1 %cmp.i29, %cmp110.i30
  br i1 %or.cond.i31, label %if.else.for.body.i39_crit_edge, label %if.else.if.else8_crit_edge

if.else.if.else8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else8

if.else.for.body.i39_crit_edge:                   ; preds = %if.else
  br label %for.body.i39

for.cond.i34:                                     ; preds = %for.body.i39
  %inc.i32 = add nuw i32 %i.011.i35, 1
  %exitcond.not.i33 = icmp eq i32 %inc.i32, %15
  br i1 %exitcond.not.i33, label %for.cond.i34.if.else8_crit_edge, label %for.cond.i34.for.body.i39_crit_edge

for.cond.i34.for.body.i39_crit_edge:              ; preds = %for.cond.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i39

for.cond.i34.if.else8_crit_edge:                  ; preds = %for.cond.i34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else8

for.body.i39:                                     ; preds = %for.cond.i34.for.body.i39_crit_edge, %if.else.for.body.i39_crit_edge
  %i.011.i35 = phi i32 [ %inc.i32, %for.cond.i34.for.body.i39_crit_edge ], [ 0, %if.else.for.body.i39_crit_edge ]
  %arrayidx.i36 = getelementptr i32, ptr %13, i32 %i.011.i35
  %16 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i36, align 4
  %arrayidx2.i37 = getelementptr %struct.mtk_ddp_comp, ptr %ddp_comp, i32 %17
  %18 = ptrtoint ptr %arrayidx2.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx2.i37, align 4
  %cmp4.i38 = icmp eq ptr %19, %dev
  br i1 %cmp4.i38, label %for.body.i39.if.end18_crit_edge, label %for.cond.i34

for.body.i39.if.end18_crit_edge:                  ; preds = %for.body.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.else8:                                         ; preds = %for.cond.i34.if.else8_crit_edge, %if.else.if.else8_crit_edge
  %third_path = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %third_path to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %third_path, align 4
  %third_len = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %third_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %third_len, align 4
  %cmp.i42 = icmp ne ptr %21, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp110.i43 = icmp ne i32 %23, 0
  %or.cond.i44 = and i1 %cmp.i42, %cmp110.i43
  br i1 %or.cond.i44, label %if.else8.for.body.i52_crit_edge, label %if.else8.do.end_crit_edge

if.else8.do.end_crit_edge:                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.else8.for.body.i52_crit_edge:                  ; preds = %if.else8
  br label %for.body.i52

for.cond.i47:                                     ; preds = %for.body.i52
  %inc.i45 = add nuw i32 %i.011.i48, 1
  %exitcond.not.i46 = icmp eq i32 %inc.i45, %23
  br i1 %exitcond.not.i46, label %for.cond.i47.do.end_crit_edge, label %for.cond.i47.for.body.i52_crit_edge

for.cond.i47.for.body.i52_crit_edge:              ; preds = %for.cond.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i52

for.cond.i47.do.end_crit_edge:                    ; preds = %for.cond.i47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body.i52:                                     ; preds = %for.cond.i47.for.body.i52_crit_edge, %if.else8.for.body.i52_crit_edge
  %i.011.i48 = phi i32 [ %inc.i45, %for.cond.i47.for.body.i52_crit_edge ], [ 0, %if.else8.for.body.i52_crit_edge ]
  %arrayidx.i49 = getelementptr i32, ptr %21, i32 %i.011.i48
  %24 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i49, align 4
  %arrayidx2.i50 = getelementptr %struct.mtk_ddp_comp, ptr %ddp_comp, i32 %25
  %26 = ptrtoint ptr %arrayidx2.i50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx2.i50, align 4
  %cmp4.i51 = icmp eq ptr %27, %dev
  br i1 %cmp4.i51, label %for.body.i52.if.end18_crit_edge, label %for.cond.i47

for.body.i52.if.end18_crit_edge:                  ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

do.end:                                           ; preds = %for.cond.i47.do.end_crit_edge, %if.else8.do.end_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  br label %if.end18

if.end18:                                         ; preds = %do.end, %for.body.i52.if.end18_crit_edge, %for.body.i39.if.end18_crit_edge, %for.body.i.if.end18_crit_edge
  %ret.0 = phi i32 [ 0, %do.end ], [ 4, %for.body.i52.if.end18_crit_edge ], [ 2, %for.body.i39.if.end18_crit_edge ], [ 1, %for.body.i.if.end18_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_ddp_comp_init(ptr noundef %node, ptr nocapture noundef %comp, i32 noundef %comp_id) local_unnamed_addr #0 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %comp_id)
  %cmp1 = icmp ugt i32 %comp_id, 31
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [32 x %struct.mtk_ddp_comp_match], ptr @mtk_ddp_matches, i32 0, i32 %comp_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %id = getelementptr inbounds %struct.mtk_ddp_comp, ptr %comp, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %comp_id, ptr %id, align 4
  %funcs = getelementptr [32 x %struct.mtk_ddp_comp_match], ptr @mtk_ddp_matches, i32 0, i32 %comp_id, i32 2
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %funcs4 = getelementptr inbounds %struct.mtk_ddp_comp, ptr %comp, i32 0, i32 4
  %5 = ptrtoint ptr %funcs4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %funcs4, align 4
  %call = tail call ptr @of_find_device_by_node(ptr noundef %node) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %full_name = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %6 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %full_name, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %7) #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %comp, align 4
  %9 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end7.if.end45_crit_edge [
    i32 14, label %if.end7.if.then16_crit_edge
    i32 12, label %if.end7.if.then16_crit_edge128
    i32 9, label %if.end7.if.then16_crit_edge129
    i32 8, label %if.end7.if.then16_crit_edge130
    i32 0, label %if.end7.cleanup_crit_edge
    i32 1, label %if.end7.cleanup_crit_edge131
    i32 2, label %if.end7.cleanup_crit_edge132
    i32 3, label %if.end7.cleanup_crit_edge133
    i32 5, label %if.end7.cleanup_crit_edge134
    i32 16, label %if.end7.cleanup_crit_edge135
    i32 15, label %if.end7.cleanup_crit_edge136
    i32 11, label %if.end7.cleanup_crit_edge137
  ]

if.end7.cleanup_crit_edge137:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.cleanup_crit_edge136:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.cleanup_crit_edge135:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.cleanup_crit_edge134:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.cleanup_crit_edge133:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.cleanup_crit_edge132:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.cleanup_crit_edge131:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.if.then16_crit_edge130:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end7.if.then16_crit_edge129:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end7.if.then16_crit_edge128:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end7.if.then16_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end7.if.end45_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then16:                                        ; preds = %if.end7.if.then16_crit_edge, %if.end7.if.then16_crit_edge128, %if.end7.if.then16_crit_edge129, %if.end7.if.then16_crit_edge130
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #5
  %10 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str.24, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.then16
  %11 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #5
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %node) #8
  br label %cleanup

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call1.i = call ptr @of_find_device_by_node(ptr noundef nonnull %12) #5
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %do.end6.i, label %if.end22

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull %12) #8
  call void @of_node_put(ptr noundef nonnull %12) #5
  br label %cleanup

if.end22:                                         ; preds = %if.end.i
  call void @of_node_put(ptr noundef nonnull %12) #5
  %dev8.i = getelementptr inbounds %struct.platform_device, ptr %call1.i, i32 0, i32 3
  %larb_dev.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %comp, i32 0, i32 2
  %13 = ptrtoint ptr %larb_dev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev8.i, ptr %larb_dev.i, align 4
  %switch.tableidx = add i32 %1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 5
  br i1 %14, label %switch.hole_check, label %if.end22.if.end45_crit_edge

if.end22.if.end45_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end45:                                         ; preds = %switch.hole_check.if.end45_crit_edge, %if.end22.if.end45_crit_edge, %if.end7.if.end45_crit_edge
  %15 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %comp, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 16, i32 noundef 3520) #5
  %tobool48.not = icmp eq ptr %call.i, null
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %if.end50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %call51 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call51, ptr %regs, align 4
  %call52 = call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #5
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call52, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %call52 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end50
  %20 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %comp, align 4
  %cmdq_reg = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %call.i, i32 0, i32 2
  %call60 = call i32 @cmdq_dev_get_client_reg(ptr noundef %21, ptr noundef %cmdq_reg, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end58.if.end74_crit_edge, label %do.body63

if.end58.if.end74_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

do.body63:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_ddp_comp_init.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_ddp_comp_init, %if.then69)) #5
          to label %if.end74 [label %if.then69], !srcloc !105

if.then69:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %comp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_ddp_comp_init.__UNIQUE_ID_ddebug306, ptr noundef %23, ptr noundef nonnull @.str.6) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %do.body63, %if.end58.if.end74_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

switch.hole_check:                                ; preds = %if.end22
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %25 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %switch.lobit.not = icmp eq i8 %25, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end45_crit_edge, label %switch.hole_check.cleanup_crit_edge

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.hole_check.if.end45_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.end74, %if.then55, %if.end45.cleanup_crit_edge, %do.end6.i, %do.end.i, %if.end7.cleanup_crit_edge, %if.end7.cleanup_crit_edge131, %if.end7.cleanup_crit_edge132, %if.end7.cleanup_crit_edge133, %if.end7.cleanup_crit_edge134, %if.end7.cleanup_crit_edge135, %if.end7.cleanup_crit_edge136, %if.end7.cleanup_crit_edge137, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then55 ], [ 0, %if.end74 ], [ -517, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end45.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge131 ], [ 0, %if.end7.cleanup_crit_edge132 ], [ 0, %if.end7.cleanup_crit_edge133 ], [ 0, %if.end7.cleanup_crit_edge134 ], [ 0, %if.end7.cleanup_crit_edge135 ], [ 0, %if.end7.cleanup_crit_edge136 ], [ 0, %if.end7.cleanup_crit_edge137 ], [ -22, %do.end.i ], [ -517, %do.end6.i ], [ 0, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdq_dev_get_client_reg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_aal_clk_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_aal_clk_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_aal_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_aal_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_aal_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_aal_gamma_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ccorr_clk_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ccorr_clk_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ccorr_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ccorr_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ccorr_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ccorr_ctm_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_color_clk_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_color_clk_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_color_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_color_start(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ddp_clk_enable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_ddp_clk_disable(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %3) #5
  tail call void @clk_unprepare(ptr noundef %3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dither_config(ptr nocapture noundef readonly %dev, i32 noundef %w, i32 noundef %h, i32 noundef %vrefresh, i32 noundef %bpc, ptr noundef %cmdq_pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %shl = shl i32 %h, 16
  %or = or i32 %shl, %w
  %cmdq_reg = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 2
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %cmdq_pkt, null
  br i1 %tobool.not.i, label %do.body.i18, label %if.then.i16

if.then.i16:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmdq_reg, align 2
  %offset1.i = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %offset1.i, align 2
  %conv2.i = add i16 %5, 48
  %call.i = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %3, i16 noundef zeroext %conv2.i, i32 noundef %or) #5
  %6 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmdq_reg, align 2
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %offset1.i, align 2
  %conv2.i14 = add i16 %9, 32
  %call.i15 = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %7, i16 noundef zeroext %conv2.i14, i32 noundef 1) #5
  br label %mtk_ddp_write.exit19

do.body.i18:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #5, !srcloc !101
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %add.ptr.i17 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 16777216) #5, !srcloc !101
  br label %mtk_ddp_write.exit19

mtk_ddp_write.exit19:                             ; preds = %do.body.i18, %if.then.i16
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  tail call void @mtk_dither_set_common(ptr noundef %16, ptr noundef %cmdq_reg, i32 noundef %bpc, i32 noundef 32, i32 noundef 2, ptr noundef %cmdq_pkt)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dither_start(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #5, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_dither_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #5, !srcloc !101
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_dpi_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_dpi_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_dsi_ddp_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_dsi_ddp_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_gamma_clk_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_gamma_clk_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_gamma_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_gamma_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_gamma_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_gamma_set(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_od_config(ptr nocapture noundef readonly %dev, i32 noundef %w, i32 noundef %h, i32 noundef %vrefresh, i32 noundef %bpc, ptr noundef %cmdq_pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %shl = shl i32 %w, 16
  %or = or i32 %shl, %h
  %tobool.not.i = icmp eq ptr %cmdq_pkt, null
  br i1 %tobool.not.i, label %do.body.i15, label %if.then.i13

if.then.i13:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cmdq_reg = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmdq_reg, align 2
  %offset1.i = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %offset1.i, align 2
  %conv2.i = add i16 %5, 48
  %call.i = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %3, i16 noundef zeroext %conv2.i, i32 noundef %or) #5
  %6 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmdq_reg, align 2
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %offset1.i, align 2
  %conv2.i11 = add i16 %9, 32
  %call.i12 = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %7, i16 noundef zeroext %conv2.i11, i32 noundef 1) #5
  br label %mtk_ddp_write.exit16

do.body.i15:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #5, !srcloc !101
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %add.ptr.i14 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 16777216) #5, !srcloc !101
  br label %mtk_ddp_write.exit16

mtk_ddp_write.exit16:                             ; preds = %do.body.i15, %if.then.i13
  %15 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i, align 4
  %regs.i = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %cmdq_reg.i = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %16, i32 0, i32 2
  tail call void @mtk_dither_set_common(ptr noundef %18, ptr noundef %cmdq_reg.i, i32 noundef %bpc, i32 noundef 32, i32 noundef 4, ptr noundef %cmdq_pkt) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_od_start(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #5, !srcloc !101
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ovl_clk_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ovl_clk_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ovl_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ovl_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ovl_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ovl_enable_vblank(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ovl_disable_vblank(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ovl_supported_rotations(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ovl_layer_nr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_ovl_layer_check(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ovl_layer_config(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ovl_bgclr_in_on(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_ovl_bgclr_in_off(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_postmask_config(ptr nocapture noundef readonly %dev, i32 noundef %w, i32 noundef %h, i32 noundef %vrefresh, i32 noundef %bpc, ptr noundef %cmdq_pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %shl = shl i32 %w, 16
  %or = or i32 %shl, %h
  %tobool.not.i = icmp eq ptr %cmdq_pkt, null
  br i1 %tobool.not.i, label %do.body.i13, label %if.then.i11

if.then.i11:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cmdq_reg = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cmdq_reg, align 2
  %offset1.i = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %offset1.i, align 2
  %conv2.i = add i16 %5, 48
  %call.i = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %3, i16 noundef zeroext %conv2.i, i32 noundef %or) #5
  %6 = ptrtoint ptr %cmdq_reg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmdq_reg, align 2
  %8 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %offset1.i, align 2
  %conv2.i9 = add i16 %9, 32
  %call.i10 = tail call i32 @cmdq_pkt_write(ptr noundef nonnull %cmdq_pkt, i8 noundef zeroext %7, i16 noundef zeroext %conv2.i9, i32 noundef 1) #5
  br label %mtk_ddp_write.exit14

do.body.i13:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %add.ptr.i = getelementptr i8, ptr %11, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #5, !srcloc !101
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %add.ptr.i12 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 16777216) #5, !srcloc !101
  br label %mtk_ddp_write.exit14

mtk_ddp_write.exit14:                             ; preds = %do.body.i13, %if.then.i11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_postmask_start(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 16777216) #5, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_postmask_stop(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #5, !srcloc !101
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_rdma_clk_enable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_rdma_clk_disable(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_rdma_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_rdma_start(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_rdma_stop(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_rdma_enable_vblank(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_rdma_disable_vblank(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_rdma_layer_nr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_rdma_layer_config(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_ufoe_start(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.mtk_ddp_comp_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 67108864) #5, !srcloc !101
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !85, !86, !88, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 445, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mtk_drm_find_possible_crtc_by_comp._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mtk_drm_find_possible_crtc_by_comp._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 491, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mtk_ddp_comp_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @mtk_ddp_comp_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 531, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mtk_ddp_comp_init.__UNIQUE_ID_ddebug306, !12, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 337, i32 19}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 338, i32 19}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 339, i32 21}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 340, i32 21}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 341, i32 22}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 342, i32 21}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 343, i32 21}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 344, i32 18}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 345, i32 19}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 346, i32 22}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 347, i32 24}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 348, i32 19}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 349, i32 20}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 350, i32 20}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 351, i32 20}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 352, i32 14}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 353, i32 14}
!49 = !{ptr @mtk_ddp_comp_stem, !50, !"mtk_ddp_comp_stem", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 336, i32 27}
!51 = !{ptr @mtk_ddp_matches, !52, !"mtk_ddp_matches", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 362, i32 40}
!53 = !{ptr @ddp_aal, !54, !"ddp_aal", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 235, i32 40}
!55 = !{ptr @ddp_ccorr, !56, !"ddp_ccorr", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 244, i32 40}
!57 = !{ptr @ddp_color, !58, !"ddp_color", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 253, i32 40}
!59 = !{ptr @ddp_dither, !60, !"ddp_dither", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 260, i32 40}
!61 = !{ptr @ddp_dpi, !62, !"ddp_dpi", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 268, i32 40}
!63 = !{ptr @ddp_dsi, !64, !"ddp_dsi", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 273, i32 40}
!65 = !{ptr @ddp_gamma, !66, !"ddp_gamma", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 278, i32 40}
!67 = !{ptr @ddp_od, !68, !"ddp_od", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 287, i32 40}
!69 = !{ptr @ddp_ovl, !70, !"ddp_ovl", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 294, i32 40}
!71 = !{ptr @ddp_postmask, !72, !"ddp_postmask", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 310, i32 40}
!73 = !{ptr @ddp_rdma, !74, !"ddp_rdma", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 318, i32 40}
!75 = !{ptr @ddp_ufoe, !76, !"ddp_ufoe", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 330, i32 40}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 456, i32 37}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 458, i32 3}
!81 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mtk_ddp_get_larb_dev._entry, !80, !"_entry", i1 false, i1 false}
!85 = !{ptr @mtk_ddp_get_larb_dev._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c", i32 464, i32 3}
!88 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mtk_ddp_get_larb_dev._entry.29, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @mtk_ddp_get_larb_dev._entry_ptr.32, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2156516097}
!101 = !{i64 4035538}
!102 = !{i64 4035956}
!103 = !{i64 2156518679}
!104 = !{i64 2156518889}
!105 = !{i64 2148735673, i64 2148735678, i64 2148735691, i64 2148735735, i64 2148735769, i64 2148735790}
!106 = !{i64 2156520756}
!107 = !{i64 2156521595}
!108 = !{i64 2156522191}
!109 = !{i64 2156522953}
