; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/imx/dw_hdmi-imx.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/dw_hdmi-imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_hdmi_plat_data = type { ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i8 }
%struct.dw_hdmi_mpll_config = type { i32, [3 x %struct.anon.94] }
%struct.anon.94 = type { i16, i16 }
%struct.dw_hdmi_curr_ctrl = type { i32, [3 x i16] }
%struct.dw_hdmi_phy_config = type { i32, i16, i16, i16 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.imx_hdmi = type { ptr, ptr, ptr, ptr }
%struct.imx_hdmi_encoder = type { %struct.drm_encoder, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@__initcall__kmod_dw_hdmi_imx__313_271_dw_hdmi_imx_platform_driver_init6 = internal global ptr @dw_hdmi_imx_platform_driver_init, section ".initcall6.init", align 4
@dw_hdmi_imx_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dw_hdmi_imx_probe, ptr @dw_hdmi_imx_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dw_hdmi_imx_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dw_hdmi_imx_platform_driver_exit = internal global ptr @dw_hdmi_imx_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author314 = internal constant [54 x i8] c"dw_hdmi_imx.author=Andy Yan <andy.yan@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author315 = internal constant [51 x i8] c"dw_hdmi_imx.author=Yakir Yang <ykk@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description316 = internal constant [63 x i8] c"dw_hdmi_imx.description=IMX6 Specific DW-HDMI Driver Extension\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [49 x i8] c"dw_hdmi_imx.file=drivers/gpu/drm/imx/dw_hdmi-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [24 x i8] c"dw_hdmi_imx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias319 = internal constant [38 x i8] c"dw_hdmi_imx.alias=platform:dwhdmi-imx\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwhdmi-imx\00", [21 x i8] zeroinitializer }, align 32
@dw_hdmi_imx_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_hdmi_drv_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6dl-hdmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6dl_hdmi_drv_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpr\00", [28 x i8] zeroinitializer }, align 32
@dw_hdmi_imx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 235, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Unable to get gpr\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dw_hdmi_imx_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/imx/dw_hdmi-imx.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dw_hdmi_imx_probe._entry_ptr = internal global ptr @dw_hdmi_imx_probe._entry, section ".printk_index", align 4
@dw_hdmi_imx_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 245, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to find bridge\0A\00", [41 x i8] zeroinitializer }, align 32
@dw_hdmi_imx_probe._entry_ptr.9 = internal global ptr @dw_hdmi_imx_probe._entry.7, section ".printk_index", align 4
@dw_hdmi_imx_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @dw_hdmi_imx_bind, ptr null }, [24 x i8] zeroinitializer }, align 32
@dw_hdmi_imx_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dw_hdmi_imx_encoder_enable, ptr @dw_hdmi_imx_atomic_check }, [44 x i8] zeroinitializer }, align 32
@imx6q_hdmi_drv_data = internal global { %struct.dw_hdmi_plat_data, [36 x i8] } { %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 0, i8 0, ptr null, ptr @imx6q_hdmi_mode_valid, ptr null, ptr null, ptr null, i32 0, ptr @imx_mpll_cfg, ptr @imx_cur_ctr, ptr @imx_phy_config, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@imx6dl_hdmi_drv_data = internal global { %struct.dw_hdmi_plat_data, [36 x i8] } { %struct.dw_hdmi_plat_data { ptr null, i32 0, i32 0, i8 0, i8 0, ptr null, ptr @imx6dl_hdmi_mode_valid, ptr null, ptr null, ptr null, i32 0, ptr @imx_mpll_cfg, ptr @imx_cur_ctr, ptr @imx_phy_config, ptr null, i8 0 }, [36 x i8] zeroinitializer }, align 32
@imx_mpll_cfg = internal constant { [5 x %struct.dw_hdmi_mpll_config], [48 x i8] } { [5 x %struct.dw_hdmi_mpll_config] [%struct.dw_hdmi_mpll_config { i32 45250000, [3 x %struct.anon.94] [%struct.anon.94 { i16 480, i16 0 }, %struct.anon.94 { i16 8673, i16 0 }, %struct.anon.94 { i16 16866, i16 0 }] }, %struct.dw_hdmi_mpll_config { i32 92500000, [3 x %struct.anon.94] [%struct.anon.94 { i16 320, i16 5 }, %struct.anon.94 { i16 8513, i16 5 }, %struct.anon.94 { i16 16706, i16 5 }] }, %struct.dw_hdmi_mpll_config { i32 148500000, [3 x %struct.anon.94] [%struct.anon.94 { i16 160, i16 10 }, %struct.anon.94 { i16 8353, i16 10 }, %struct.anon.94 { i16 16546, i16 10 }] }, %struct.dw_hdmi_mpll_config { i32 216000000, [3 x %struct.anon.94] [%struct.anon.94 { i16 160, i16 10 }, %struct.anon.94 { i16 8193, i16 15 }, %struct.anon.94 { i16 16386, i16 15 }] }, %struct.dw_hdmi_mpll_config { i32 -1, [3 x %struct.anon.94] zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@imx_cur_ctr = internal constant { [7 x %struct.dw_hdmi_curr_ctrl], [44 x i8] } { [7 x %struct.dw_hdmi_curr_ctrl] [%struct.dw_hdmi_curr_ctrl { i32 54000000, [3 x i16] [i16 2332, i16 2332, i16 1756] }, %struct.dw_hdmi_curr_ctrl { i32 58400000, [3 x i16] [i16 2332, i16 1756, i16 1756] }, %struct.dw_hdmi_curr_ctrl { i32 72000000, [3 x i16] [i16 1756, i16 1756, i16 2332] }, %struct.dw_hdmi_curr_ctrl { i32 74250000, [3 x i16] [i16 1756, i16 2908, i16 2332] }, %struct.dw_hdmi_curr_ctrl { i32 118800000, [3 x i16] [i16 2332, i16 2332, i16 1756] }, %struct.dw_hdmi_curr_ctrl { i32 216000000, [3 x i16] [i16 1756, i16 2908, i16 2332] }, %struct.dw_hdmi_curr_ctrl { i32 -1, [3 x i16] zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@imx_phy_config = internal constant { [2 x %struct.dw_hdmi_phy_config], [40 x i8] } { [2 x %struct.dw_hdmi_phy_config] [%struct.dw_hdmi_phy_config { i32 216000000, i16 -32755, i16 5, i16 429 }, %struct.dw_hdmi_phy_config { i32 -1, i16 0, i16 0, i16 0 }], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [28 x i8] c"dw_hdmi_imx_platform_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 262, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 266, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"dw_hdmi_imx_dt_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 180, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 233, i32 53 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 235, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 245, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"dw_hdmi_imx_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 216, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [33 x i8] c"dw_hdmi_imx_encoder_helper_funcs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 133, i32 46 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"imx6q_hdmi_drv_data\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 166, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"imx6dl_hdmi_drv_data\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 173, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"imx_mpll_cfg\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 46, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"imx_cur_ctr\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 80, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"imx_phy_config\00", align 1
@___asan_gen_.65 = private constant [37 x i8] c"../drivers/gpu/drm/imx/dw_hdmi-imx.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 104, i32 40 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias319, ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_dw_hdmi_imx_platform_driver_exit, ptr @__initcall__kmod_dw_hdmi_imx__313_271_dw_hdmi_imx_platform_driver_init6, ptr @dw_hdmi_imx_platform_driver_exit, ptr @dw_hdmi_imx_probe._entry, ptr @dw_hdmi_imx_probe._entry.7, ptr @dw_hdmi_imx_probe._entry_ptr, ptr @dw_hdmi_imx_probe._entry_ptr.9, ptr @dw_hdmi_imx_platform_driver, ptr @.str, ptr @dw_hdmi_imx_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @dw_hdmi_imx_ops, ptr @dw_hdmi_imx_encoder_helper_funcs, ptr @imx6q_hdmi_drv_data, ptr @imx6dl_hdmi_drv_data, ptr @imx_mpll_cfg, ptr @imx_cur_ctr, ptr @imx_phy_config], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_imx_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_imx_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_imx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_imx_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_imx_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_hdmi_imx_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6q_hdmi_drv_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx6dl_hdmi_drv_data to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_mpll_cfg to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_cur_ctr to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_phy_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_imx_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dw_hdmi_imx_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_imx_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dw_hdmi_imx_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_imx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @dw_hdmi_imx_dt_ids, ptr noundef %1) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %call.i, align 4
  %call5 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.imx_hdmi, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.2) #10
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call13 = tail call ptr @dw_hdmi_probe(ptr noundef %pdev, ptr noundef %11) #7
  %hdmi14 = getelementptr inbounds %struct.imx_hdmi, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %hdmi14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %hdmi14, align 4
  %cmp.i53 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call21 = tail call ptr @of_drm_find_bridge(ptr noundef %1) #7
  %bridge = getelementptr inbounds %struct.imx_hdmi, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call21, ptr %bridge, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @dw_hdmi_imx_ops) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end27, %if.then17, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ %13, %if.then17 ], [ %call31, %if.end29 ], [ -19, %do.end27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_imx_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @dw_hdmi_imx_ops) #7
  %hdmi1 = getelementptr inbounds %struct.imx_hdmi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hdmi1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdmi1, align 4
  tail call void @dw_hdmi_remove(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dw_hdmi_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_hdmi_imx_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__drmm_simple_encoder_alloc(ptr noundef %data, i32 noundef 76, i32 noundef 0, i32 noundef 2) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %hdmi = getelementptr inbounds %struct.imx_hdmi_encoder, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %hdmi to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %hdmi, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call5 = tail call i32 @imx_drm_encoder_parse_of(ptr noundef %data, ptr noundef %call, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %helper_private.i = getelementptr inbounds %struct.drm_encoder, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @dw_hdmi_imx_encoder_helper_funcs, ptr %helper_private.i, align 4
  %7 = ptrtoint ptr %hdmi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hdmi, align 4
  %bridge = getelementptr inbounds %struct.imx_hdmi, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bridge, align 4
  %call9 = tail call i32 @drm_bridge_attach(ptr noundef %call, ptr noundef %10, ptr noundef null, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call9, %if.end7 ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_drm_encoder_parse_of(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_hdmi_imx_encoder_enable(ptr noundef %encoder) #2 align 64 {
entry:
  %endpoint.i = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hdmi.i = getelementptr inbounds %struct.imx_hdmi_encoder, ptr %encoder, i32 0, i32 1
  %0 = ptrtoint ptr %hdmi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdmi.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %endpoint.i) #7
  %6 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %endpoint.i, align 4, !annotation !57
  %7 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !57
  %9 = getelementptr inbounds %struct.of_endpoint, ptr %endpoint.i, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !57
  %call.i = call i32 @drm_of_encoder_active_endpoint(ptr noundef %5, ptr noundef %encoder, ptr noundef nonnull %endpoint.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.drm_of_encoder_active_port_id.exit_crit_edge

entry.drm_of_encoder_active_port_id.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_of_encoder_active_port_id.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %endpoint.i, align 4
  br label %drm_of_encoder_active_port_id.exit

drm_of_encoder_active_port_id.exit:               ; preds = %cond.false.i, %entry.drm_of_encoder_active_port_id.exit_crit_edge
  %cond.i = phi i32 [ %12, %cond.false.i ], [ %call.i, %entry.drm_of_encoder_active_port_id.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %endpoint.i) #7
  %regmap = getelementptr inbounds %struct.imx_hdmi, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %cond.i, 2
  %call.i5 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 12, i32 noundef 12, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dw_hdmi_imx_atomic_check(ptr nocapture noundef readnone %encoder, ptr nocapture noundef writeonly %crtc_state, ptr nocapture noundef readnone %conn_state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_format = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 1
  %0 = ptrtoint ptr %bus_format to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4106, ptr %bus_format, align 4
  %di_hsync_pin = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 3
  %1 = ptrtoint ptr %di_hsync_pin to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %di_hsync_pin, align 4
  %di_vsync_pin = getelementptr inbounds %struct.imx_crtc_state, ptr %crtc_state, i32 0, i32 4
  %2 = ptrtoint ptr %di_vsync_pin to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %di_vsync_pin, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_hdmi_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx6q_hdmi_mode_valid(ptr nocapture noundef readnone %hdmi, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500, i32 %1)
  %cmp = icmp slt i32 %1, 13500
  call void @__sanitizer_cov_trace_const_cmp4(i32 216000, i32 %1)
  %cmp2 = icmp sgt i32 %1, 216000
  %. = select i1 %cmp2, i32 15, i32 0
  %retval.0 = select i1 %cmp, i32 16, i32 %.
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imx6dl_hdmi_mode_valid(ptr nocapture noundef readnone %hdmi, ptr nocapture noundef readnone %data, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500, i32 %1)
  %cmp = icmp slt i32 %1, 13500
  call void @__sanitizer_cov_trace_const_cmp4(i32 216000, i32 %1)
  %cmp2 = icmp sgt i32 %1, 216000
  %. = select i1 %cmp2, i32 15, i32 0
  %retval.0 = select i1 %cmp, i32 16, i32 %.
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_dw_hdmi_imx__313_271_dw_hdmi_imx_platform_driver_init6, !1, !"__initcall__kmod_dw_hdmi_imx__313_271_dw_hdmi_imx_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 271, i32 1}
!2 = !{ptr @__exitcall_dw_hdmi_imx_platform_driver_exit, !1, !"__exitcall_dw_hdmi_imx_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author314, !4, !"__UNIQUE_ID_author314", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 273, i32 1}
!5 = !{ptr @__UNIQUE_ID_author315, !6, !"__UNIQUE_ID_author315", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 274, i32 1}
!7 = !{ptr @__UNIQUE_ID_description316, !8, !"__UNIQUE_ID_description316", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 275, i32 1}
!9 = !{ptr @__UNIQUE_ID_file317, !10, !"__UNIQUE_ID_file317", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 276, i32 1}
!11 = !{ptr @__UNIQUE_ID_license318, !10, !"__UNIQUE_ID_license318", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias319, !13, !"__UNIQUE_ID_alias319", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 277, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 266, i32 11}
!16 = !{ptr @dw_hdmi_imx_platform_driver, !17, !"dw_hdmi_imx_platform_driver", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 262, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 233, i32 53}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 235, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @dw_hdmi_imx_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @dw_hdmi_imx_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 245, i32 3}
!30 = !{ptr @dw_hdmi_imx_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dw_hdmi_imx_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @dw_hdmi_imx_ops, !33, !"dw_hdmi_imx_ops", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 216, i32 35}
!34 = !{ptr @dw_hdmi_imx_encoder_helper_funcs, !35, !"dw_hdmi_imx_encoder_helper_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 133, i32 46}
!36 = !{ptr @dw_hdmi_imx_dt_ids, !37, !"dw_hdmi_imx_dt_ids", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 180, i32 34}
!38 = !{ptr @imx6q_hdmi_drv_data, !39, !"imx6q_hdmi_drv_data", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 166, i32 33}
!40 = !{ptr @imx_mpll_cfg, !41, !"imx_mpll_cfg", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 46, i32 41}
!42 = !{ptr @imx_cur_ctr, !43, !"imx_cur_ctr", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 80, i32 39}
!44 = !{ptr @imx_phy_config, !45, !"imx_phy_config", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 104, i32 40}
!46 = !{ptr @imx6dl_hdmi_drv_data, !47, !"imx6dl_hdmi_drv_data", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/imx/dw_hdmi-imx.c", i32 173, i32 33}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
