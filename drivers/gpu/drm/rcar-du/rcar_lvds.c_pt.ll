; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_lvds.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_lvds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rcar_lvds_clk_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_rcar_lvds_clk_enable\09\09\09\09"
module asm "\09.long\09__crc_rcar_lvds_clk_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_lvds_clk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_lvds_clk_enable\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_lvds_clk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rcar_lvds_clk_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_rcar_lvds_clk_disable\09\09\09\09"
module asm "\09.long\09__crc_rcar_lvds_clk_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_lvds_clk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_lvds_clk_disable\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_lvds_clk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rcar_lvds_dual_link\22, \22a\22\09"
module asm "\09.weak\09__crc_rcar_lvds_dual_link\09\09\09\09"
module asm "\09.long\09__crc_rcar_lvds_dual_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_lvds_dual_link:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_lvds_dual_link\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_lvds_dual_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rcar_lvds_is_connected\22, \22a\22\09"
module asm "\09.weak\09__crc_rcar_lvds_is_connected\09\09\09\09"
module asm "\09.long\09__crc_rcar_lvds_is_connected\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rcar_lvds_is_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22rcar_lvds_is_connected\22\09\09\09\09\09"
module asm "__kstrtabns_rcar_lvds_is_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pll_info = type { i32, i32, i32, i32, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_lvds_device_info = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rcar_lvds = type { ptr, ptr, %struct.drm_bridge, ptr, ptr, ptr, %struct.anon.94, ptr, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.94 = type { ptr, ptr, [2 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/rcar-du/rcar_lvds.c\00", [60 x i8] zeroinitializer }, align 32
@rcar_lvds_clk_enable.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar_lvds\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_lvds_clk_enable\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"enabling LVDS PLL, freq=%luHz\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_rcar_lvds_clk_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_lvds_clk_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_lvds_clk_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_lvds_clk_enable to i32), ptr @__kstrtab_rcar_lvds_clk_enable, ptr @__kstrtabns_rcar_lvds_clk_enable }, section "___ksymtab_gpl+rcar_lvds_clk_enable", align 4
@rcar_lvds_clk_disable.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcar_lvds_clk_disable\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"disabling LVDS PLL\0A\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_rcar_lvds_clk_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_lvds_clk_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_lvds_clk_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_lvds_clk_disable to i32), ptr @__kstrtab_rcar_lvds_clk_disable, ptr @__kstrtabns_rcar_lvds_clk_disable }, section "___ksymtab_gpl+rcar_lvds_clk_disable", align 4
@__kstrtab_rcar_lvds_dual_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_lvds_dual_link = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_lvds_dual_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_lvds_dual_link to i32), ptr @__kstrtab_rcar_lvds_dual_link, ptr @__kstrtabns_rcar_lvds_dual_link }, section "___ksymtab_gpl+rcar_lvds_dual_link", align 4
@__kstrtab_rcar_lvds_is_connected = external dso_local constant [0 x i8], align 1
@__kstrtabns_rcar_lvds_is_connected = external dso_local constant [0 x i8], align 1
@__ksymtab_rcar_lvds_is_connected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rcar_lvds_is_connected to i32), ptr @__kstrtab_rcar_lvds_is_connected, ptr @__kstrtabns_rcar_lvds_is_connected }, section "___ksymtab_gpl+rcar_lvds_is_connected", align 4
@__initcall__kmod_rcar_lvds__327_923_rcar_lvds_platform_driver_init6 = internal global ptr @rcar_lvds_platform_driver_init, section ".initcall6.init", align 4
@rcar_lvds_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_lvds_probe, ptr @rcar_lvds_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_lvds_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_lvds_platform_driver_exit = internal global ptr @rcar_lvds_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author328 = internal constant [70 x i8] c"rcar_lvds.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description329 = internal constant [56 x i8] c"rcar_lvds.description=Renesas R-Car LVDS Encoder Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file330 = internal constant [49 x i8] c"rcar_lvds.file=drivers/gpu/drm/rcar-du/rcar_lvds\00", section ".modinfo", align 1
@__UNIQUE_ID_license331 = internal constant [22 x i8] c"rcar_lvds.license=GPL\00", section ".modinfo", align 1
@__const.__rcar_lvds_pll_setup_d3_e3.pll = private unnamed_addr constant %struct.pll_info { i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@rcar_lvds_d3_e3_pll_calc.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str, ptr @.str.7, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_lvds_d3_e3_pll_calc\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%pC %lu Hz -> Fout %lu Hz (target %lu Hz, error %d.%02u%%), PLL M/N/E/DIV %u/%u/%u/%u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar-lvds\00", [22 x i8] zeroinitializer }, align 32
@rcar_lvds_of_table = internal constant { [18 x %struct.of_device_id], [888 x i8] } { [18 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774a1-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774b1-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774c0-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_r8a77990_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a774e1-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen2_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7795-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7796-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77965-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77970-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_r8a77970_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77980-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_gen3_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77990-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_r8a77990_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a77995-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_lvds_r8a77995_info }, %struct.of_device_id zeroinitializer], [888 x i8] zeroinitializer }, align 32
@lvds_quirk_matches = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.9, ptr null, ptr @.str.10, ptr @rcar_lvds_r8a7790es1_info, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@rcar_lvds_bridge_ops = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @rcar_lvds_attach, ptr null, ptr null, ptr @rcar_lvds_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_lvds_atomic_enable, ptr @rcar_lvds_atomic_disable, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7790\00", [24 x i8] zeroinitializer }, align 32
@rcar_lvds_r8a7790es1_info = internal constant { %struct.rcar_lvds_device_info, [20 x i8] } { %struct.rcar_lvds_device_info { i32 2, i32 1, ptr @rcar_lvds_pll_setup_gen2 }, [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"renesas,companion\00", [46 x i8] zeroinitializer }, align 32
@rcar_lvds_parse_dt_companion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 637, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Companion LVDS encoder is invalid\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rcar_lvds_parse_dt_companion\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_lvds_parse_dt_companion._entry_ptr = internal global ptr @rcar_lvds_parse_dt_companion._entry, section ".printk_index", align 4
@rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str, ptr @.str.16, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Single-link configuration detected\0A\00", [60 x i8] zeroinitializer }, align 32
@rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str, ptr @.str.17, i8 0, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Dual-link configuration detected (companion encoder %pOF)\0A\00", [37 x i8] zeroinitializer }, align 32
@rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str, ptr @.str.18, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Data swapping required\0A\00", [40 x i8] zeroinitializer }, align 32
@rcar_lvds_get_lvds_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 363, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"no LVDS bus format reported, using JEIDA\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_lvds_get_lvds_mode\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rcar_lvds_get_lvds_mode._entry_ptr = internal global ptr @rcar_lvds_get_lvds_mode._entry, section ".printk_index", align 4
@rcar_lvds_get_lvds_mode._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str, i32 378, ptr @.str.21, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"unsupported LVDS bus format 0x%04x, using JEIDA\0A\00", [47 x i8] zeroinitializer }, align 32
@rcar_lvds_get_lvds_mode._entry_ptr.24 = internal global ptr @rcar_lvds_get_lvds_mode._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"extal\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dclkin.0\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dclkin.1\00", [23 x i8] zeroinitializer }, align 32
@rcar_lvds_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str, i32 791, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"no input clock (extal, dclkin.0 or dclkin.1)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_lvds_get_clocks\00", [43 x i8] zeroinitializer }, align 32
@rcar_lvds_get_clocks._entry_ptr = internal global ptr @rcar_lvds_get_clocks._entry, section ".printk_index", align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get %s clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"module\00", [25 x i8] zeroinitializer }, align 32
@rcar_lvds_gen2_info = internal constant { %struct.rcar_lvds_device_info, [20 x i8] } { %struct.rcar_lvds_device_info { i32 2, i32 0, ptr @rcar_lvds_pll_setup_gen2 }, [20 x i8] zeroinitializer }, align 32
@rcar_lvds_gen3_info = internal constant { %struct.rcar_lvds_device_info, [20 x i8] } { %struct.rcar_lvds_device_info { i32 3, i32 4, ptr @rcar_lvds_pll_setup_gen3 }, [20 x i8] zeroinitializer }, align 32
@rcar_lvds_r8a77990_info = internal constant { %struct.rcar_lvds_device_info, [20 x i8] } { %struct.rcar_lvds_device_info { i32 3, i32 26, ptr @rcar_lvds_pll_setup_d3_e3 }, [20 x i8] zeroinitializer }, align 32
@rcar_lvds_r8a77970_info = internal constant { %struct.rcar_lvds_device_info, [20 x i8] } { %struct.rcar_lvds_device_info { i32 3, i32 6, ptr @rcar_lvds_pll_setup_gen2 }, [20 x i8] zeroinitializer }, align 32
@rcar_lvds_r8a77995_info = internal constant { %struct.rcar_lvds_device_info, [20 x i8] } { %struct.rcar_lvds_device_info { i32 3, i32 30, ptr @rcar_lvds_pll_setup_d3_e3 }, [20 x i8] zeroinitializer }, align 32
@switch.table.__rcar_lvds_atomic_enable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 313, i32 6 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 316, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 335, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [26 x i8] c"rcar_lvds_platform_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 914, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 256, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 918, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"rcar_lvds_of_table\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 891, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"lvds_quirk_matches\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 804, i32 42 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"rcar_lvds_bridge_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 586, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 806, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 806, i32 13 }
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"rcar_lvds_r8a7790es1_info\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 798, i32 43 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 627, i32 45 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 637, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 676, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 686, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 691, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 362, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 376, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 775, i32 49 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 779, i32 55 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 783, i32 55 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 790, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 757, i32 41 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 758, i32 23 }
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c"rcar_lvds_gen2_info\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 860, i32 43 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"rcar_lvds_gen3_info\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 865, i32 43 }
@___asan_gen_.155 = private unnamed_addr constant [24 x i8] c"rcar_lvds_r8a77990_info\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 877, i32 43 }
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"rcar_lvds_r8a77970_info\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 871, i32 43 }
@___asan_gen_.161 = private unnamed_addr constant [24 x i8] c"rcar_lvds_r8a77995_info\00", align 1
@___asan_gen_.162 = private constant [39 x i8] c"../drivers/gpu/drm/rcar-du/rcar_lvds.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 884, i32 43 }
@___asan_gen_.164 = private unnamed_addr constant [39 x i8] c"switch.table.__rcar_lvds_atomic_enable\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file330, ptr @__UNIQUE_ID_license331, ptr @__exitcall_rcar_lvds_platform_driver_exit, ptr @__initcall__kmod_rcar_lvds__327_923_rcar_lvds_platform_driver_init6, ptr @__ksymtab_rcar_lvds_clk_disable, ptr @__ksymtab_rcar_lvds_clk_enable, ptr @__ksymtab_rcar_lvds_dual_link, ptr @__ksymtab_rcar_lvds_is_connected, ptr @rcar_lvds_get_clocks._entry, ptr @rcar_lvds_get_clocks._entry_ptr, ptr @rcar_lvds_get_lvds_mode._entry, ptr @rcar_lvds_get_lvds_mode._entry.22, ptr @rcar_lvds_get_lvds_mode._entry_ptr, ptr @rcar_lvds_get_lvds_mode._entry_ptr.24, ptr @rcar_lvds_parse_dt_companion._entry, ptr @rcar_lvds_parse_dt_companion._entry_ptr, ptr @rcar_lvds_platform_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rcar_lvds_platform_driver, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @rcar_lvds_of_table, ptr @lvds_quirk_matches, ptr @rcar_lvds_bridge_ops, ptr @.str.9, ptr @.str.10, ptr @rcar_lvds_r8a7790es1_info, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @rcar_lvds_gen2_info, ptr @rcar_lvds_gen3_info, ptr @rcar_lvds_r8a77990_info, ptr @rcar_lvds_r8a77970_info, ptr @rcar_lvds_r8a77995_info, ptr @switch.table.__rcar_lvds_atomic_enable], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_of_table to i32), i32 3528, i32 4416, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lvds_quirk_matches to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_bridge_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_r8a7790es1_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_parse_dt_companion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_get_lvds_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_get_lvds_mode._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_gen2_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_gen3_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_r8a77990_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_r8a77970_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_lvds_r8a77995_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.__rcar_lvds_atomic_enable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_lvds_clk_enable(ptr nocapture noundef readonly %bridge, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -8
  %info = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %quirks = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !111

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 313, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body25:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_lvds_clk_enable.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_lvds_clk_enable, %if.then34)) #8
          to label %do.end37 [label %if.then34], !srcloc !112

if.then34:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_lvds_clk_enable.__UNIQUE_ID_ddebug318, ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %freq) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body25
  %clocks = getelementptr i8, ptr %bridge, i32 292
  %6 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clocks, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end37.clk_prepare_enable.exit_crit_edge

do.end37.clk_prepare_enable.exit_crit_edge:       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %do.end37
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end40_crit_edge, label %if.then3.i

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %do.end37.clk_prepare_enable.exit_crit_edge
  %retval.0.i48 = phi i32 [ %call.i, %do.end37.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i48)
  %cmp = icmp slt i32 %retval.0.i48, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end40_crit_edge

clk_prepare_enable.exit.if.end40_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end40:                                         ; preds = %clk_prepare_enable.exit.if.end40_crit_edge, %if.end.i.if.end40_crit_edge
  tail call fastcc void @__rcar_lvds_pll_setup_d3_e3(ptr noundef %add.ptr, i32 noundef %freq, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %clk_prepare_enable.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end40 ], [ %retval.0.i48, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rcar_lvds_pll_setup_d3_e3(ptr nocapture noundef readonly %lvds, i32 noundef %freq, i1 noundef zeroext %dot_clock_only) unnamed_addr #0 align 64 {
entry:
  %pll = alloca %struct.pll_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pll) #8
  %0 = call ptr @memcpy(ptr %pll, ptr @__const.__rcar_lvds_pll_setup_d3_e3.pll, i32 24)
  %dotclkin = getelementptr inbounds %struct.rcar_lvds, ptr %lvds, i32 0, i32 6, i32 2
  %1 = ptrtoint ptr %dotclkin to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dotclkin, align 4
  call fastcc void @rcar_lvds_d3_e3_pll_calc(ptr noundef %lvds, ptr noundef %2, i32 noundef %freq, ptr noundef nonnull %pll, i32 noundef 655360, i1 noundef zeroext %dot_clock_only)
  %arrayidx3 = getelementptr %struct.rcar_lvds, ptr %lvds, i32 0, i32 6, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx3, align 4
  call fastcc void @rcar_lvds_d3_e3_pll_calc(ptr noundef %lvds, ptr noundef %4, i32 noundef %freq, ptr noundef nonnull %pll, i32 noundef 917504, i1 noundef zeroext %dot_clock_only)
  %extal = getelementptr inbounds %struct.rcar_lvds, ptr %lvds, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %extal to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %extal, align 4
  call fastcc void @rcar_lvds_d3_e3_pll_calc(ptr noundef %lvds, ptr noundef %6, i32 noundef %freq, ptr noundef nonnull %pll, i32 noundef 393216, i1 noundef zeroext %dot_clock_only)
  %clksel = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 5
  %7 = ptrtoint ptr %clksel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clksel, align 4
  %pll_n = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 2
  %9 = ptrtoint ptr %pll_n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_n, align 4
  %sub = shl i32 %10, 3
  %shl = add i32 %sub, -8
  %pll_m = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 1
  %11 = ptrtoint ptr %pll_m to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll_m, align 4
  %sub9 = add i32 %12, -1
  %pll_e = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 3
  %13 = ptrtoint ptr %pll_e to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pll_e, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  %sub13 = shl i32 %14, 10
  %shl14 = add i32 %sub13, -1024
  %or15 = or i32 %shl14, 20480
  %or16 = select i1 %cmp.not, i32 0, i32 %or15
  %lvdpllcr.1.v = select i1 %dot_clock_only, i32 4261888, i32 4196352
  %or7 = or i32 %8, %lvdpllcr.1.v
  %or8 = or i32 %or7, %shl
  %or11 = or i32 %or8, %sub9
  %lvdpllcr.1 = or i32 %or11, %or16
  %mmio.i = getelementptr inbounds %struct.rcar_lvds, ptr %lvds, i32 0, i32 5
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %lvdpllcr.1) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #8, !srcloc !114
  %div = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 4
  %18 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp21 = icmp ugt i32 %19, 1
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub24 = add i32 %19, -1
  %or26 = or i32 %sub24, 384
  %20 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or26) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %22) #8, !srcloc !114
  br label %if.end27

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %24, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 0) #8, !srcloc !114
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pll) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rcar_lvds_clk_disable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -8
  %info = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %quirks = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %do.body25, !prof !111

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 332, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body25:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_lvds_clk_disable.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_lvds_clk_disable, %if.then34)) #8
          to label %do.end37 [label %if.then34], !srcloc !112

if.then34:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_lvds_clk_disable.__UNIQUE_ID_ddebug319, ptr noundef %5, ptr noundef nonnull @.str.5) #8
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %do.body25
  %mmio.i = getelementptr i8, ptr %bridge, i32 288
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !114
  %clocks = getelementptr i8, ptr %bridge, i32 292
  %8 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clocks, align 4
  tail call void @clk_disable(ptr noundef %9) #8
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcar_lvds_dual_link(ptr nocapture noundef readonly %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %link_type = getelementptr i8, ptr %bridge, i32 312
  %0 = ptrtoint ptr %link_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %link_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcar_lvds_is_connected(ptr nocapture noundef readonly %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bridge = getelementptr i8, ptr %bridge, i32 280
  %0 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_bridge, align 4
  %cmp = icmp ne ptr %1, null
  ret i1 %cmp
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_lvds_platform_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_lvds_platform_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_lvds_platform_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_lvds_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_lvds_d3_e3_pll_calc(ptr nocapture noundef readonly %lvds, ptr noundef %clk, i32 noundef %target, ptr nocapture noundef %pll, i32 noundef %clksel, i1 noundef zeroext %dot_clock_only) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %dot_clock_only, i32 1, i32 7
  %tobool1.not = icmp eq ptr %clk, null
  br i1 %tobool1.not, label %entry.cleanup126_crit_edge, label %if.end

entry.cleanup126_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup126

if.end:                                           ; preds = %entry
  %call = tail call i32 @clk_get_rate(ptr noundef nonnull %clk) #8
  %0 = add i32 %call, -192000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -180000001, i32 %0)
  %1 = icmp ult i32 %0, -180000001
  br i1 %1, label %if.end.cleanup126_crit_edge, label %if.end4

if.end.cleanup126_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup126

if.end4:                                          ; preds = %if.end
  %sub = add nuw nsw i32 %call, 23999999
  %div = udiv i32 %sub, 24000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 107999999, i32 %call)
  %cmp10 = icmp ugt i32 %call, 107999999
  %div8 = udiv i32 %call, 12000000
  %cond14 = select i1 %cmp10, i32 8, i32 %div8
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %cond14)
  %cmp15.not218 = icmp ugt i32 %div, %cond14
  br i1 %cmp15.not218, label %if.end4.done_crit_edge, label %for.body.lr.ph

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.body.lr.ph:                                   ; preds = %if.end4
  %div45202 = lshr i32 %target, 1
  %pll_m = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 1
  %pll_n = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 2
  %pll_e = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 3
  %div68 = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 4
  %clksel69 = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc90.for.body_crit_edge, %for.body.lr.ph
  %m.0219 = phi i32 [ %div, %for.body.lr.ph ], [ %inc91, %for.inc90.for.body_crit_edge ]
  %div16 = udiv i32 %call, %m.0219
  %sub18 = add i32 %div16, 899999999
  %div19 = udiv i32 %sub18, %div16
  %2 = tail call i32 @llvm.umax.i32(i32 %div19, i32 60)
  call void @__sanitizer_cov_trace_const_cmp4(i32 14876034, i32 %div16)
  %cmp28 = icmp ult i32 %div16, 14876034
  br i1 %cmp28, label %for.body.cond.end31_crit_edge, label %cond.false30

for.body.cond.end31_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end31

cond.false30:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %div26 = udiv i32 1800000000, %div16
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false30, %for.body.cond.end31_crit_edge
  %cond32 = phi i32 [ %div26, %cond.false30 ], [ 120, %for.body.cond.end31_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %cond32)
  %cmp34212 = icmp ult i32 %2, %cond32
  br i1 %cmp34212, label %for.body35.lr.ph, label %cond.end31.for.inc90_crit_edge

cond.end31.for.inc90_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc90

for.body35.lr.ph:                                 ; preds = %cond.end31
  %3 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %3)
  %pll.promoted214 = load i32, ptr %pll, align 4
  br label %for.body35

for.body35:                                       ; preds = %for.inc81.for.body35_crit_edge, %for.body35.lr.ph
  %pll.promoted217 = phi i32 [ %pll.promoted214, %for.body35.lr.ph ], [ %pll.promoted215.lcssa, %for.inc81.for.body35_crit_edge ]
  %n.0213 = phi i32 [ %2, %for.body35.lr.ph ], [ %inc82, %for.inc81.for.body35_crit_edge ]
  %mul = mul i32 %n.0213, %div16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1039500000, i32 %mul)
  %cmp36 = icmp ugt i32 %mul, 1039500000
  %cond37 = zext i1 %cmp36 to i32
  %div42201 = lshr i32 %mul, %cond37
  %div43 = udiv i32 %div42201, %cond
  %add46 = add i32 %div43, %div45202
  call void @__sanitizer_cov_trace_cmp4(i32 %add46, i32 %target)
  %cmp49 = icmp ult i32 %add46, %target
  br i1 %cmp49, label %for.body35.cond.end52_crit_edge, label %cond.false51

for.body35.cond.end52_crit_edge:                  ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end52

cond.false51:                                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #10
  %div47 = udiv i32 %add46, %target
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false51, %for.body35.cond.end52_crit_edge
  %cond53 = phi i32 [ %div47, %cond.false51 ], [ 1, %for.body35.cond.end52_crit_edge ]
  %div55 = udiv i32 %div43, %cond53
  %sub56 = sub i32 %div55, %target
  %4 = tail call i32 @llvm.abs.i32(i32 %sub56, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %pll.promoted217)
  %cmp65 = icmp ult i32 %4, %pll.promoted217
  br i1 %cmp65, label %if.then66, label %cond.end52.for.inc_crit_edge

cond.end52.for.inc_crit_edge:                     ; preds = %cond.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then66:                                        ; preds = %cond.end52
  %5 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pll, align 4
  %6 = ptrtoint ptr %pll_m to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %m.0219, ptr %pll_m, align 4
  %7 = ptrtoint ptr %pll_n to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %n.0213, ptr %pll_n, align 4
  %8 = ptrtoint ptr %pll_e to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond37, ptr %pll_e, align 4
  %9 = ptrtoint ptr %div68 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond53, ptr %div68, align 4
  %10 = ptrtoint ptr %clksel69 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %clksel, ptr %clksel69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div55, i32 %target)
  %cmp70 = icmp eq i32 %div55, %target
  br i1 %cmp70, label %if.then66.done_crit_edge, label %if.then66.for.inc_crit_edge

if.then66.for.inc_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then66.done_crit_edge:                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.inc:                                          ; preds = %if.then66.for.inc_crit_edge, %cond.end52.for.inc_crit_edge
  %11 = phi i32 [ %pll.promoted217, %cond.end52.for.inc_crit_edge ], [ %4, %if.then66.for.inc_crit_edge ]
  %inc = select i1 %cmp36, i32 2, i32 1
  %div42201.1 = lshr i32 %mul, %inc
  %div43.1 = udiv i32 %div42201.1, %cond
  %add46.1 = add nuw i32 %div43.1, %div45202
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.1, i32 %target)
  %cmp49.1 = icmp ult i32 %add46.1, %target
  br i1 %cmp49.1, label %for.inc.cond.end52.1_crit_edge, label %cond.false51.1

for.inc.cond.end52.1_crit_edge:                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end52.1

cond.false51.1:                                   ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %div47.1 = udiv i32 %add46.1, %target
  br label %cond.end52.1

cond.end52.1:                                     ; preds = %cond.false51.1, %for.inc.cond.end52.1_crit_edge
  %cond53.1 = phi i32 [ %div47.1, %cond.false51.1 ], [ 1, %for.inc.cond.end52.1_crit_edge ]
  %div55.1 = udiv i32 %div43.1, %cond53.1
  %sub56.1 = sub i32 %div55.1, %target
  %12 = tail call i32 @llvm.abs.i32(i32 %sub56.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp65.1 = icmp ult i32 %12, %11
  br i1 %cmp65.1, label %if.then66.1, label %cond.end52.1.for.inc.1_crit_edge

cond.end52.1.for.inc.1_crit_edge:                 ; preds = %cond.end52.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then66.1:                                      ; preds = %cond.end52.1
  %13 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pll, align 4
  %14 = ptrtoint ptr %pll_m to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %m.0219, ptr %pll_m, align 4
  %15 = ptrtoint ptr %pll_n to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %n.0213, ptr %pll_n, align 4
  %16 = ptrtoint ptr %pll_e to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc, ptr %pll_e, align 4
  %17 = ptrtoint ptr %div68 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond53.1, ptr %div68, align 4
  %18 = ptrtoint ptr %clksel69 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %clksel, ptr %clksel69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div55.1, i32 %target)
  %cmp70.1 = icmp eq i32 %div55.1, %target
  br i1 %cmp70.1, label %if.then66.1.done_crit_edge, label %if.then66.1.for.inc.1_crit_edge

if.then66.1.for.inc.1_crit_edge:                  ; preds = %if.then66.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then66.1.done_crit_edge:                       ; preds = %if.then66.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.inc.1:                                        ; preds = %if.then66.1.for.inc.1_crit_edge, %cond.end52.1.for.inc.1_crit_edge
  %19 = phi i32 [ %11, %cond.end52.1.for.inc.1_crit_edge ], [ %12, %if.then66.1.for.inc.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %inc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc.1)
  %exitcond.not.1 = icmp eq i32 %inc.1, 3
  br i1 %exitcond.not.1, label %for.inc.1.for.inc81_crit_edge, label %for.body40.2

for.inc.1.for.inc81_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

for.body40.2:                                     ; preds = %for.inc.1
  %div42201.2 = lshr i32 %mul, %inc.1
  %div43.2 = udiv i32 %div42201.2, %cond
  %add46.2 = add nuw i32 %div43.2, %div45202
  call void @__sanitizer_cov_trace_cmp4(i32 %add46.2, i32 %target)
  %cmp49.2 = icmp ult i32 %add46.2, %target
  br i1 %cmp49.2, label %for.body40.2.cond.end52.2_crit_edge, label %cond.false51.2

for.body40.2.cond.end52.2_crit_edge:              ; preds = %for.body40.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end52.2

cond.false51.2:                                   ; preds = %for.body40.2
  call void @__sanitizer_cov_trace_pc() #10
  %div47.2 = udiv i32 %add46.2, %target
  br label %cond.end52.2

cond.end52.2:                                     ; preds = %cond.false51.2, %for.body40.2.cond.end52.2_crit_edge
  %cond53.2 = phi i32 [ %div47.2, %cond.false51.2 ], [ 1, %for.body40.2.cond.end52.2_crit_edge ]
  %div55.2 = udiv i32 %div43.2, %cond53.2
  %sub56.2 = sub i32 %div55.2, %target
  %20 = tail call i32 @llvm.abs.i32(i32 %sub56.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %19)
  %cmp65.2 = icmp ult i32 %20, %19
  br i1 %cmp65.2, label %if.then66.2, label %cond.end52.2.for.inc81_crit_edge

cond.end52.2.for.inc81_crit_edge:                 ; preds = %cond.end52.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

if.then66.2:                                      ; preds = %cond.end52.2
  %21 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pll, align 4
  %22 = ptrtoint ptr %pll_m to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %m.0219, ptr %pll_m, align 4
  %23 = ptrtoint ptr %pll_n to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %n.0213, ptr %pll_n, align 4
  %24 = ptrtoint ptr %pll_e to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc.1, ptr %pll_e, align 4
  %25 = ptrtoint ptr %div68 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %cond53.2, ptr %div68, align 4
  %26 = ptrtoint ptr %clksel69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %clksel, ptr %clksel69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div55.2, i32 %target)
  %cmp70.2 = icmp eq i32 %div55.2, %target
  br i1 %cmp70.2, label %if.then66.2.done_crit_edge, label %if.then66.2.for.inc81_crit_edge

if.then66.2.for.inc81_crit_edge:                  ; preds = %if.then66.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

if.then66.2.done_crit_edge:                       ; preds = %if.then66.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

for.inc81:                                        ; preds = %if.then66.2.for.inc81_crit_edge, %cond.end52.2.for.inc81_crit_edge, %for.inc.1.for.inc81_crit_edge
  %pll.promoted215.lcssa = phi i32 [ %19, %for.inc.1.for.inc81_crit_edge ], [ %19, %cond.end52.2.for.inc81_crit_edge ], [ %20, %if.then66.2.for.inc81_crit_edge ]
  %inc82 = add nuw nsw i32 %n.0213, 1
  %cmp34 = icmp ult i32 %inc82, %cond32
  br i1 %cmp34, label %for.inc81.for.body35_crit_edge, label %for.inc81.for.inc90_crit_edge

for.inc81.for.inc90_crit_edge:                    ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc90

for.inc81.for.body35_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35

for.inc90:                                        ; preds = %for.inc81.for.inc90_crit_edge, %cond.end31.for.inc90_crit_edge
  %inc91 = add nuw nsw i32 %m.0219, 1
  %exitcond222 = icmp eq i32 %m.0219, %cond14
  br i1 %exitcond222, label %for.inc90.done_crit_edge, label %for.inc90.for.body_crit_edge

for.inc90.for.body_crit_edge:                     ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc90.done_crit_edge:                         ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

done:                                             ; preds = %for.inc90.done_crit_edge, %if.then66.2.done_crit_edge, %if.then66.1.done_crit_edge, %if.then66.done_crit_edge, %if.end4.done_crit_edge
  %pll_n93 = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 2
  %27 = ptrtoint ptr %pll_n93 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pll_n93, align 4
  %pll_m95 = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 1
  %29 = ptrtoint ptr %pll_m95 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pll_m95, align 4
  %pll_e97 = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 3
  %31 = ptrtoint ptr %pll_e97 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pll_e97, align 4
  %div101 = getelementptr inbounds %struct.pll_info, ptr %pll, i32 0, i32 4
  %33 = ptrtoint ptr %div101 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %div101, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_lvds_d3_e3_pll_calc.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_lvds_d3_e3_pll_calc, %if.then112)) #8
          to label %cleanup126 [label %if.then112], !srcloc !112

if.then112:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #10
  %mul94 = mul i32 %28, %call
  %div96 = udiv i32 %mul94, %30
  %div99200 = lshr i32 %div96, %32
  %div100 = udiv i32 %div99200, %cond
  %div102 = udiv i32 %div100, %34
  %sub103 = sub i32 %div102, %target
  %mul104 = mul i32 %sub103, 10000
  %div105 = sdiv i32 %mul104, %target
  %35 = ptrtoint ptr %lvds to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lvds, align 4
  %div113 = sdiv i32 %div105, 100
  %37 = tail call i32 @llvm.abs.i32(i32 %div105, i1 false)
  %cond120 = srem i32 %37, 100
  %38 = ptrtoint ptr %pll_m95 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pll_m95, align 4
  %40 = ptrtoint ptr %pll_n93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pll_n93, align 4
  %42 = ptrtoint ptr %pll_e97 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pll_e97, align 4
  %44 = ptrtoint ptr %div101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %div101, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_lvds_d3_e3_pll_calc.__UNIQUE_ID_ddebug317, ptr noundef %36, ptr noundef nonnull @.str.7, ptr noundef nonnull %clk, i32 noundef %call, i32 noundef %div102, i32 noundef %target, i32 noundef %div113, i32 noundef %cond120, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #8
  br label %cleanup126

cleanup126:                                       ; preds = %if.then112, %done, %if.end.cleanup126_crit_edge, %entry.cleanup126_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_lvds_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 324, i32 noundef 3520) #8
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %info = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %info, align 4
  %call5 = tail call ptr @soc_device_match(ptr noundef nonnull @lvds_quirk_matches) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call5, i32 0, i32 5
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %info, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %panel.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 4
  %next_bridge.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 3
  %call.i51 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %9, i32 noundef 1, i32 noundef 0, ptr noundef %panel.i, ptr noundef %next_bridge.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %tobool.not.i = icmp eq i32 %call.i51, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.done.i_crit_edge

if.end8.done.i_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %done.i

if.end.i:                                         ; preds = %if.end8
  %10 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %panel.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then3.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then3.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call6.i = tail call ptr @devm_drm_panel_bridge_add(ptr noundef %13, ptr noundef nonnull %11) #8
  %14 = ptrtoint ptr %next_bridge.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call6.i, ptr %next_bridge.i, align 4
  %tobool.not.i.i = icmp eq ptr %call6.i, null
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then3.i.rcar_lvds_parse_dt.exit_crit_edge, label %if.then3.i.if.end12.i_crit_edge

if.then3.i.if.end12.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then3.i.rcar_lvds_parse_dt.exit_crit_edge:     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_lvds_parse_dt.exit

if.end12.i:                                       ; preds = %if.then3.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %quirks.i = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end12.i.rcar_lvds_parse_dt.exit_crit_edge, label %if.then14.i

if.end12.i.rcar_lvds_parse_dt.exit_crit_edge:     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_lvds_parse_dt.exit

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = tail call fastcc i32 @rcar_lvds_parse_dt_companion(ptr noundef nonnull %call.i) #8
  br label %done.i

done.i:                                           ; preds = %if.then14.i, %if.end8.done.i_crit_edge
  %ret.0.i = phi i32 [ %call.i51, %if.end8.done.i_crit_edge ], [ %call15.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %ret.0.i)
  %cmp.i = icmp eq i32 %ret.0.i, -19
  %spec.select44.i = select i1 %cmp.i, i32 0, i32 %ret.0.i
  br label %rcar_lvds_parse_dt.exit

rcar_lvds_parse_dt.exit:                          ; preds = %done.i, %if.end12.i.rcar_lvds_parse_dt.exit_crit_edge, %if.then3.i.rcar_lvds_parse_dt.exit_crit_edge
  %ret.042.i = phi i32 [ %ret.0.i, %done.i ], [ -22, %if.then3.i.rcar_lvds_parse_dt.exit_crit_edge ], [ 0, %if.end12.i.rcar_lvds_parse_dt.exit_crit_edge ]
  %19 = phi i32 [ %spec.select44.i, %done.i ], [ -22, %if.then3.i.rcar_lvds_parse_dt.exit_crit_edge ], [ 0, %if.end12.i.rcar_lvds_parse_dt.exit_crit_edge ]
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn.i = load ptr, ptr %info, align 4
  %tobool20.not43.in.in.in.i = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %.pn.i, i32 0, i32 1
  %21 = ptrtoint ptr %tobool20.not43.in.in.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %tobool20.not43.in.in.i = load i32, ptr %tobool20.not43.in.in.in.i, align 4
  %tobool20.not43.in.i = and i32 %tobool20.not43.in.in.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool20.not43.in.i)
  %tobool20.not43.i = icmp eq i32 %tobool20.not43.in.i, 0
  %retval.0.i = select i1 %tobool20.not43.i, i32 %ret.042.i, i32 %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp10 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp10, label %rcar_lvds_parse_dt.exit.cleanup_crit_edge, label %if.end12

rcar_lvds_parse_dt.exit.cleanup_crit_edge:        ; preds = %rcar_lvds_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %rcar_lvds_parse_dt.exit
  %bridge = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 2
  %funcs = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 2, i32 7
  %22 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @rcar_lvds_bridge_ops, ptr %funcs, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %of_node15 = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 2, i32 4
  %25 = ptrtoint ptr %of_node15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %of_node15, align 4
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %mmio = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %mmio to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call16, ptr %mmio, align 4
  %cmp.i52 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call ptr @devm_clk_get(ptr noundef %29, ptr noundef null) #8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end.i57

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call.i.i to i32
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %call8.i.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %32, i32 noundef %30, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #8
  %clocks105.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %clocks105.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i, ptr %clocks105.i, align 4
  br label %rcar_lvds_get_clocks.exit

if.end.i57:                                       ; preds = %if.end22
  %clocks.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 6
  %34 = ptrtoint ptr %clocks.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i, ptr %clocks.i, align 4
  %35 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info, align 4
  %quirks.i54 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %quirks.i54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quirks.i54, align 4
  %and.i55 = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55)
  %tobool.not.i56 = icmp eq i32 %and.i55, 0
  br i1 %tobool.not.i56, label %if.end.i57.if.end26_crit_edge, label %if.end8.i

if.end.i57.if.end26_crit_edge:                    ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end8.i:                                        ; preds = %if.end.i57
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %call.i80.i = tail call ptr @devm_clk_get(ptr noundef %40, ptr noundef nonnull @.str.25) #8
  %cmp.i.i81.i = icmp ugt ptr %call.i80.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i81.i, label %if.end.i83.i, label %rcar_lvds_get_clock.exit85.i

if.end.i83.i:                                     ; preds = %if.end8.i
  %cmp.i82.i = icmp eq ptr %call.i80.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i82.i, label %rcar_lvds_get_clock.exit85.thread.i, label %if.then14.i58

rcar_lvds_get_clock.exit85.thread.i:              ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #10
  %extal107.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %extal107.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %extal107.i, align 4
  br label %if.end18.i

rcar_lvds_get_clock.exit85.i:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %extal.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %extal.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i80.i, ptr %extal.i, align 4
  br label %if.end18.i

if.then14.i58:                                    ; preds = %if.end.i83.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %call.i80.i to i32
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %call8.i84.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %45, i32 noundef %43, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25) #8
  %extal119.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %extal119.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i80.i, ptr %extal119.i, align 4
  br label %rcar_lvds_get_clocks.exit

if.end18.i:                                       ; preds = %rcar_lvds_get_clock.exit85.i, %rcar_lvds_get_clock.exit85.thread.i
  %extal109.i = phi ptr [ %extal107.i, %rcar_lvds_get_clock.exit85.thread.i ], [ %extal.i, %rcar_lvds_get_clock.exit85.i ]
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %call.i87.i = tail call ptr @devm_clk_get(ptr noundef %48, ptr noundef nonnull @.str.26) #8
  %cmp.i.i88.i = icmp ugt ptr %call.i87.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i88.i, label %if.end.i90.i, label %rcar_lvds_get_clock.exit94.i

if.end.i90.i:                                     ; preds = %if.end18.i
  %cmp.i89.i = icmp eq ptr %call.i87.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i89.i, label %rcar_lvds_get_clock.exit94.thread.i, label %if.then25.i

rcar_lvds_get_clock.exit94.thread.i:              ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #10
  %dotclkin111.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 6, i32 2
  %49 = ptrtoint ptr %dotclkin111.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %dotclkin111.i, align 4
  br label %if.end30.i

rcar_lvds_get_clock.exit94.i:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %dotclkin.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 6, i32 2
  %50 = ptrtoint ptr %dotclkin.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i87.i, ptr %dotclkin.i, align 4
  br label %if.end30.i

if.then25.i:                                      ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %call.i87.i to i32
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %call8.i91.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %53, i32 noundef %51, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.26) #8
  %dotclkin121.i = getelementptr inbounds %struct.rcar_lvds, ptr %call.i, i32 0, i32 6, i32 2
  %54 = ptrtoint ptr %dotclkin121.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i87.i, ptr %dotclkin121.i, align 4
  br label %rcar_lvds_get_clocks.exit

if.end30.i:                                       ; preds = %rcar_lvds_get_clock.exit94.i, %rcar_lvds_get_clock.exit94.thread.i
  %dotclkin113.i = phi ptr [ %dotclkin111.i, %rcar_lvds_get_clock.exit94.thread.i ], [ %dotclkin.i, %rcar_lvds_get_clock.exit94.i ]
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %call.i96.i = tail call ptr @devm_clk_get(ptr noundef %56, ptr noundef nonnull @.str.27) #8
  %cmp.i.i97.i = icmp ugt ptr %call.i96.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i97.i, label %if.end.i99.i, label %if.end30.i.if.end44.i_crit_edge

if.end30.i.if.end44.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.end.i99.i:                                     ; preds = %if.end30.i
  %cmp.i98.i = icmp eq ptr %call.i96.i, inttoptr (i32 -2 to ptr)
  br i1 %cmp.i98.i, label %if.end.i99.i.if.end44.i_crit_edge, label %if.then39.i

if.end.i99.i.if.end44.i_crit_edge:                ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %call.i96.i to i32
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %call8.i100.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %59, i32 noundef %57, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27) #8
  %arrayidx34123.i = getelementptr %struct.rcar_lvds, ptr %call.i, i32 0, i32 6, i32 2, i32 1
  %60 = ptrtoint ptr %arrayidx34123.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i96.i, ptr %arrayidx34123.i, align 4
  br label %rcar_lvds_get_clocks.exit

if.end44.i:                                       ; preds = %if.end.i99.i.if.end44.i_crit_edge, %if.end30.i.if.end44.i_crit_edge
  %call.i96.sink.i = phi ptr [ null, %if.end.i99.i.if.end44.i_crit_edge ], [ %call.i96.i, %if.end30.i.if.end44.i_crit_edge ]
  %arrayidx34.i = getelementptr %struct.rcar_lvds, ptr %call.i, i32 0, i32 6, i32 2, i32 1
  %61 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i96.sink.i, ptr %arrayidx34.i, align 4
  %62 = ptrtoint ptr %extal109.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %extal109.i, align 4
  %tobool47.not.i = icmp eq ptr %63, null
  br i1 %tobool47.not.i, label %land.lhs.true.i, label %if.end44.i.if.end26_crit_edge

if.end44.i.if.end26_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true.i:                                  ; preds = %if.end44.i
  %64 = ptrtoint ptr %dotclkin113.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dotclkin113.i, align 4
  %tobool51.not.i = icmp eq ptr %65, null
  %tobool56.not.i = icmp eq ptr %call.i96.sink.i, null
  %or.cond.i = select i1 %tobool51.not.i, i1 %tobool56.not.i, i1 false
  br i1 %or.cond.i, label %rcar_lvds_get_clocks.exit.thread62, label %land.lhs.true.i.if.end26_crit_edge

land.lhs.true.i.if.end26_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

rcar_lvds_get_clocks.exit.thread62:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.28) #11
  br label %cleanup

rcar_lvds_get_clocks.exit:                        ; preds = %if.then39.i, %if.then25.i, %if.then14.i58, %if.then.i
  %retval.0.i59 = phi i32 [ %30, %if.then.i ], [ %43, %if.then14.i58 ], [ %51, %if.then25.i ], [ %57, %if.then39.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i59)
  %cmp24 = icmp slt i32 %retval.0.i59, 0
  br i1 %cmp24, label %rcar_lvds_get_clocks.exit.cleanup_crit_edge, label %rcar_lvds_get_clocks.exit.if.end26_crit_edge

rcar_lvds_get_clocks.exit.if.end26_crit_edge:     ; preds = %rcar_lvds_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

rcar_lvds_get_clocks.exit.cleanup_crit_edge:      ; preds = %rcar_lvds_get_clocks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %rcar_lvds_get_clocks.exit.if.end26_crit_edge, %land.lhs.true.i.if.end26_crit_edge, %if.end44.i.if.end26_crit_edge, %if.end.i57.if.end26_crit_edge
  tail call void @drm_bridge_add(ptr noundef %bridge) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %rcar_lvds_get_clocks.exit.cleanup_crit_edge, %rcar_lvds_get_clocks.exit.thread62, %if.then19, %rcar_lvds_parse_dt.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then19 ], [ 0, %if.end26 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %rcar_lvds_parse_dt.exit.cleanup_crit_edge ], [ %retval.0.i59, %rcar_lvds_get_clocks.exit.cleanup_crit_edge ], [ -22, %rcar_lvds_get_clocks.exit.thread62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_lvds_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.rcar_lvds, ptr %1, i32 0, i32 2
  tail call void @drm_bridge_remove(ptr noundef %bridge) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_lvds_pll_setup_gen2(ptr nocapture noundef readonly %lvds, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 39000000, i32 %freq)
  %cmp = icmp ult i32 %freq, 39000000
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 61000000, i32 %freq)
  %cmp1 = icmp ult i32 %freq, 61000000
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 121000000, i32 %freq)
  %cmp4 = icmp ult i32 %freq, 121000000
  %. = select i1 %cmp4, i32 21036, i32 447
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %val.0 = phi i32 [ 22170, %entry.if.end8_crit_edge ], [ 22395, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %mmio.i = getelementptr inbounds %struct.rcar_lvds, ptr %lvds, i32 0, i32 5
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %val.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !114
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_lvds_parse_dt_companion(ptr nocapture noundef %lvds) unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lvds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lvds, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %cleanup

of_parse_phandle.exit:                            ; preds = %entry
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %of_parse_phandle.exit.cleanup_crit_edge, label %if.end

of_parse_phandle.exit.cleanup_crit_edge:          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %of_parse_phandle.exit
  %driver = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_match_table, align 4
  %call2 = call ptr @of_match_device(ptr noundef %10, ptr noundef %1) #8
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 2
  %call3 = call i32 @of_device_is_compatible(ptr noundef nonnull %6, ptr noundef %compatible) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.12) #11
  br label %done

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call8 = call ptr @of_graph_get_port_by_id(ptr noundef %12, i32 noundef 1) #8
  %call9 = call ptr @of_graph_get_port_by_id(ptr noundef nonnull %6, i32 noundef 1) #8
  %call10 = call i32 @drm_of_lvds_get_dual_link_pixel_order(ptr noundef %call8, ptr noundef %call9) #8
  call void @of_node_put(ptr noundef %call8) #8
  call void @of_node_put(ptr noundef %call9) #8
  %13 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call10, label %sw.default [
    i32 1, label %if.end6.sw.epilog_crit_edge
    i32 0, label %sw.bb11
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  %next_bridge = getelementptr inbounds %struct.rcar_lvds, ptr %lvds, i32 0, i32 3
  %14 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next_bridge, align 4
  %timings = getelementptr inbounds %struct.drm_bridge, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %timings, align 4
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %sw.default.if.else_crit_edge, label %land.lhs.true

sw.default.if.else_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %sw.default
  %dual_link16 = getelementptr inbounds %struct.drm_bridge_timings, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dual_link16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dual_link16, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  br i1 %tobool17.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.default.if.else_crit_edge
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %land.lhs.true.sw.epilog_crit_edge, %sw.bb11, %if.end6.sw.epilog_crit_edge
  %cmp = phi i1 [ false, %land.lhs.true.sw.epilog_crit_edge ], [ false, %if.end6.sw.epilog_crit_edge ], [ true, %if.else ], [ false, %sw.bb11 ]
  %.sink = phi i32 [ 1, %land.lhs.true.sw.epilog_crit_edge ], [ 2, %if.end6.sw.epilog_crit_edge ], [ 0, %if.else ], [ 1, %sw.bb11 ]
  %link_type19 = getelementptr inbounds %struct.rcar_lvds, ptr %lvds, i32 0, i32 8
  %20 = ptrtoint ptr %link_type19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %link_type19, align 4
  %link_type22 = getelementptr inbounds %struct.rcar_lvds, ptr %lvds, i32 0, i32 8
  br i1 %cmp, label %do.body24, label %if.end33

do.body24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_lvds_parse_dt_companion, %if.then29)) #8
          to label %done [label %if.then29], !srcloc !112

if.then29:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug324, ptr noundef %1, ptr noundef nonnull @.str.16) #8
  br label %done

if.end33:                                         ; preds = %sw.epilog
  %call34 = call ptr @of_drm_find_bridge(ptr noundef nonnull %6) #8
  %companion35 = getelementptr inbounds %struct.rcar_lvds, ptr %lvds, i32 0, i32 7
  %21 = ptrtoint ptr %companion35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call34, ptr %companion35, align 4
  %tobool37.not = icmp eq ptr %call34, null
  br i1 %tobool37.not, label %if.end33.done_crit_edge, label %do.body40

if.end33.done_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

do.body40:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_lvds_parse_dt_companion, %if.then52)) #8
          to label %do.end55 [label %if.then52], !srcloc !112

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug325, ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %6) #8
  br label %do.end55

do.end55:                                         ; preds = %if.then52, %do.body40
  %22 = ptrtoint ptr %link_type22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %link_type22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp57 = icmp eq i32 %23, 2
  br i1 %cmp57, label %do.body59, label %do.end55.if.end75_crit_edge

do.end55.if.end75_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.body59:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_lvds_parse_dt_companion, %if.then71)) #8
          to label %if.end75 [label %if.then71], !srcloc !112

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug326, ptr noundef %1, ptr noundef nonnull @.str.18) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then71, %do.body59, %do.end55.if.end75_crit_edge
  %24 = ptrtoint ptr %companion35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %companion35, align 4
  %26 = ptrtoint ptr %link_type22 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %link_type22, align 4
  %link_type79 = getelementptr i8, ptr %25, i32 312
  %28 = ptrtoint ptr %link_type79 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %link_type79, align 4
  br label %done

done:                                             ; preds = %if.end75, %if.end33.done_crit_edge, %if.then29, %do.body24, %do.end
  %ret.0 = phi i32 [ 0, %if.then29 ], [ 0, %if.end75 ], [ -6, %do.end ], [ -517, %if.end33.done_crit_edge ], [ 0, %do.body24 ]
  call void @of_node_put(ptr noundef nonnull %6) #8
  br label %cleanup

cleanup:                                          ; preds = %done, %of_parse_phandle.exit.cleanup_crit_edge, %of_parse_phandle.exit.thread
  %retval.0 = phi i32 [ %ret.0, %done ], [ 0, %of_parse_phandle.exit.cleanup_crit_edge ], [ 0, %of_parse_phandle.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_lvds_get_dual_link_pixel_order(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_lvds_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bridge = getelementptr i8, ptr %bridge, i32 280
  %0 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_bridge, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call = tail call i32 @drm_bridge_attach(ptr noundef %3, ptr noundef nonnull %1, ptr noundef %bridge, i32 noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rcar_lvds_mode_fixup(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %mode, ptr nocapture noundef %adjusted_mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr i8, ptr %bridge, i32 -4
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %quirks = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks, align 4
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 31000, i32 5000
  %4 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjusted_mode, align 4
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 %cond)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 148500)
  %8 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %adjusted_mode, align 4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_lvds_atomic_enable(ptr noundef %bridge, ptr nocapture noundef readonly %old_bridge_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %old_bridge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %old_bridge_state, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %3) #8
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp slt i32 %5, %7
  br i1 %cmp.not.i, label %if.end.i, label %entry.drm_atomic_get_new_connector_state.exit_crit_edge

entry.drm_atomic_get_new_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %drm_atomic_get_new_connector_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %9, i32 %5, i32 3
  %10 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state.i, align 4
  br label %drm_atomic_get_new_connector_state.exit

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end.i, %entry.drm_atomic_get_new_connector_state.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ null, %entry.drm_atomic_get_new_connector_state.exit_crit_edge ]
  %crtc3 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc3, align 4
  tail call fastcc void @__rcar_lvds_atomic_enable(ptr noundef %bridge, ptr noundef %1, ptr noundef %13, ptr noundef %call)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_lvds_atomic_disable(ptr nocapture noundef readonly %bridge, ptr noundef %old_bridge_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio.i = getelementptr i8, ptr %bridge, i32 288
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !114
  %2 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !114
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #8, !srcloc !114
  %link_type = getelementptr i8, ptr %bridge, i32 312
  %6 = ptrtoint ptr %link_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %link_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %companion = getelementptr i8, ptr %bridge, i32 308
  %8 = ptrtoint ptr %companion to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %companion, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs, align 4
  %atomic_disable = getelementptr inbounds %struct.drm_bridge_funcs, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %atomic_disable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %atomic_disable, align 4
  tail call void %13(ptr noundef nonnull %9, ptr noundef %old_bridge_state) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %clocks = getelementptr i8, ptr %bridge, i32 292
  %14 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clocks, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__rcar_lvds_atomic_enable(ptr noundef %bridge, ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %connector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -8
  %clocks = getelementptr i8, ptr %bridge, i32 292
  %0 = ptrtoint ptr %clocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clocks, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %1) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end_crit_edge

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %clk_prepare_enable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %link_type = getelementptr i8, ptr %bridge, i32 312
  %2 = ptrtoint ptr %link_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %companion = getelementptr i8, ptr %bridge, i32 308
  %4 = ptrtoint ptr %companion to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %companion, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end4_crit_edge, label %if.then2

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__rcar_lvds_atomic_enable(ptr noundef nonnull %5, ptr noundef %state, ptr noundef %crtc, ptr noundef %connector)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %mmio.i = getelementptr i8, ptr %bridge, i32 288
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !114
  %info = getelementptr i8, ptr %bridge, i32 -4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %quirks = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %. = select i1 %tobool5.not, i32 0, i32 8224
  %12 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %.) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %14) #8, !srcloc !114
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %quirks9 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %quirks9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks9, align 4
  %and10 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end4.if.end22_crit_edge, label %if.then12

if.end4.if.end22_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then12:                                        ; preds = %if.end4
  %19 = ptrtoint ptr %link_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %link_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp14.not = icmp eq i32 %20, 0
  br i1 %cmp14.not, label %if.then12.if.end21_crit_edge, label %if.then15

if.then12.if.end21_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %companion18 = getelementptr i8, ptr %bridge, i32 308
  %21 = ptrtoint ptr %companion18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %companion18, align 4
  %tobool19.not = icmp eq ptr %22, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp17 = icmp eq i32 %20, 2
  %phi.bo = select i1 %cmp17, i32 3, i32 1
  %23 = select i1 %tobool19.not, i32 1, i32 %phi.bo
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.then12.if.end21_crit_edge
  %lvdstripe.0 = phi i32 [ %23, %if.then15 ], [ 0, %if.then12.if.end21_crit_edge ]
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %25, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %26 = tail call i32 @llvm.bswap.i32(i32 %lvdstripe.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %26) #8, !srcloc !114
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end4.if.end22_crit_edge
  %27 = ptrtoint ptr %link_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %link_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp24 = icmp eq i32 %28, 0
  br i1 %cmp24, label %if.end22.if.then27_crit_edge, label %lor.lhs.false

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end22
  %companion25 = getelementptr i8, ptr %bridge, i32 308
  %29 = ptrtoint ptr %companion25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %companion25, align 4
  %tobool26.not = icmp eq ptr %30, null
  br i1 %tobool26.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end22.if.then27_crit_edge
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %31 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %33 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %32, i32 %34, i32 3
  %35 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %new_state.i, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  %pll_setup = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %pll_setup to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pll_setup, align 4
  %41 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %42, 1000
  tail call void %40(ptr noundef %add.ptr, i32 noundef %mul) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %lor.lhs.false.if.end30_crit_edge
  %panel.i = getelementptr i8, ptr %bridge, i32 284
  %43 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %panel.i, align 4
  %tobool.not.i133 = icmp eq ptr %44, null
  br i1 %tobool.not.i133, label %if.end30.rcar_lvds_get_lvds_mode.exit_crit_edge, label %if.end.i134

if.end30.rcar_lvds_get_lvds_mode.exit_crit_edge:  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_lvds_get_lvds_mode.exit

if.end.i134:                                      ; preds = %if.end30
  %num_bus_formats.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 7
  %45 = ptrtoint ptr %num_bus_formats.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_bus_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool1.not.i = icmp eq i32 %46, 0
  br i1 %tobool1.not.i, label %if.end.i134.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.i134.do.end.i_crit_edge:                   ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i134
  %bus_formats.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 6
  %47 = ptrtoint ptr %bus_formats.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bus_formats.i, align 8
  %tobool2.not.i135 = icmp eq ptr %48, null
  br i1 %tobool2.not.i135, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end4.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i134.do.end.i_crit_edge
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.19) #11
  br label %rcar_lvds_get_lvds_mode.exit

if.end4.i:                                        ; preds = %lor.lhs.false.i
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %48, align 4
  %switch.tableidx = add i32 %52, -4112
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %53 = icmp ult i32 %switch.tableidx, 3
  br i1 %53, label %switch.lookup, label %do.end9.i

do.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.23, i32 noundef %52) #11
  br label %rcar_lvds_get_lvds_mode.exit

switch.lookup:                                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.__rcar_lvds_atomic_enable, i32 0, i32 %switch.tableidx
  %56 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %56)
  %switch.load = load i32, ptr %switch.gep, align 4
  %bus_flags.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %57 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bus_flags.i, align 8
  %and.i = lshr i32 %58, 5
  %59 = and i32 %and.i, 1
  %60 = or i32 %59, %switch.load
  %phi.bo147 = shl nuw nsw i32 %60, 8
  br label %rcar_lvds_get_lvds_mode.exit

rcar_lvds_get_lvds_mode.exit:                     ; preds = %switch.lookup, %do.end9.i, %do.end.i, %if.end30.rcar_lvds_get_lvds_mode.exit_crit_edge
  %retval.0.i136 = phi i32 [ 0, %do.end9.i ], [ %phi.bo147, %switch.lookup ], [ 0, %do.end.i ], [ 0, %if.end30.rcar_lvds_get_lvds_mode.exit_crit_edge ]
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %61 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %encoder, align 4
  %tobool33.not = icmp eq ptr %62, null
  br i1 %tobool33.not, label %rcar_lvds_get_lvds_mode.exit.if.end40_crit_edge, label %if.then34

rcar_lvds_get_lvds_mode.exit.if.end40_crit_edge:  ; preds = %rcar_lvds_get_lvds_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then34:                                        ; preds = %rcar_lvds_get_lvds_mode.exit
  call void @__sanitizer_cov_trace_pc() #10
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %63 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp36 = icmp eq i32 %64, 2
  %or38 = or i32 %retval.0.i136, 32768
  %spec.select = select i1 %cmp36, i32 %or38, i32 %retval.0.i136
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %rcar_lvds_get_lvds_mode.exit.if.end40_crit_edge
  %lvdcr0.0 = phi i32 [ %retval.0.i136, %rcar_lvds_get_lvds_mode.exit.if.end40_crit_edge ], [ %spec.select, %if.then34 ]
  %65 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %67 = tail call i32 @llvm.bswap.i32(i32 %lvdcr0.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %67) #8, !srcloc !114
  %68 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %69, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 -16580608) #8, !srcloc !114
  %70 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %info, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp42 = icmp ult i32 %73, 3
  br i1 %cmp42, label %if.then43, label %if.end40.if.end45_crit_edge

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %or44 = or i32 %lvdcr0.0, 6
  %74 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %76 = tail call i32 @llvm.bswap.i32(i32 %or44) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %76) #8, !srcloc !114
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge
  %lvdcr0.1 = phi i32 [ %or44, %if.then43 ], [ %lvdcr0.0, %if.end40.if.end45_crit_edge ]
  %77 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %info, align 4
  %quirks47 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %quirks47 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %quirks47, align 4
  %and48 = and i32 %80, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then50, label %if.end45.if.end52_crit_edge

if.end45.if.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %or51 = or i32 %lvdcr0.1, 16
  %81 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %83 = tail call i32 @llvm.bswap.i32(i32 %or51) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %83) #8, !srcloc !114
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end45.if.end52_crit_edge
  %lvdcr0.2 = phi i32 [ %lvdcr0.1, %if.end45.if.end52_crit_edge ], [ %or51, %if.then50 ]
  %84 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %info, align 4
  %quirks54 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %quirks54 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %quirks54, align 4
  %and55 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end52.if.end59_crit_edge, label %if.then57

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %or58 = or i32 %lvdcr0.2, 4
  %88 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %90 = tail call i32 @llvm.bswap.i32(i32 %or58) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %90) #8, !srcloc !114
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end52.if.end59_crit_edge
  %lvdcr0.3 = phi i32 [ %or58, %if.then57 ], [ %lvdcr0.2, %if.end52.if.end59_crit_edge ]
  %91 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %info, align 4
  %quirks61 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %quirks61 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %quirks61, align 4
  %and62 = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end59.if.end72_crit_edge, label %if.then64

if.end59.if.end72_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then64:                                        ; preds = %if.end59
  %or65 = or i32 %lvdcr0.3, 2
  %and68 = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.then70, label %if.then64.if.end72_crit_edge

if.then64.if.end72_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %97 = tail call i32 @llvm.bswap.i32(i32 %or65) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %97) #8, !srcloc !114
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.then64.if.end72_crit_edge, %if.end59.if.end72_crit_edge
  %lvdcr0.4 = phi i32 [ %or65, %if.then64.if.end72_crit_edge ], [ %or65, %if.then70 ], [ %lvdcr0.3, %if.end59.if.end72_crit_edge ]
  %98 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %info, align 4
  %quirks74 = getelementptr inbounds %struct.rcar_lvds_device_info, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %quirks74 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %quirks74, align 4
  %and75 = and i32 %101, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.then77, label %if.end72.if.end78_crit_edge

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then77:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #8
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end72.if.end78_crit_edge
  %or79 = or i32 %lvdcr0.4, 1
  %102 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mmio.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %104 = tail call i32 @llvm.bswap.i32(i32 %or79) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %104) #8, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %clk_prepare_enable.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_lvds_pll_setup_gen3(ptr nocapture noundef readonly %lvds, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 42000000, i32 %freq)
  %cmp = icmp ult i32 %freq, 42000000
  br i1 %cmp, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 85000000, i32 %freq)
  %cmp1 = icmp ult i32 %freq, 85000000
  br i1 %cmp1, label %if.else.if.end8_crit_edge, label %if.else3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000000, i32 %freq)
  %cmp4 = icmp ult i32 %freq, 128000000
  %. = select i1 %cmp4, i32 1731, i32 18113
  br label %if.end8

if.end8:                                          ; preds = %if.else3, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %val.0 = phi i32 [ 5323, %entry.if.end8_crit_edge ], [ 2629, %if.else.if.end8_crit_edge ], [ %., %if.else3 ]
  %mmio.i = getelementptr inbounds %struct.rcar_lvds, ptr %lvds, i32 0, i32 5
  %0 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %val.0) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_lvds_pll_setup_d3_e3(ptr nocapture noundef readonly %lvds, i32 noundef %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__rcar_lvds_pll_setup_d3_e3(ptr noundef %lvds, i32 noundef %freq, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 313, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 316, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rcar_lvds_clk_enable.__UNIQUE_ID_ddebug318, !3, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!7 = !{ptr @__ksymtab_rcar_lvds_clk_enable, !8, !"__ksymtab_rcar_lvds_clk_enable", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 326, i32 1}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 335, i32 2}
!11 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rcar_lvds_clk_disable.__UNIQUE_ID_ddebug319, !10, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!13 = !{ptr @__ksymtab_rcar_lvds_clk_disable, !14, !"__ksymtab_rcar_lvds_clk_disable", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 341, i32 1}
!15 = !{ptr @__ksymtab_rcar_lvds_dual_link, !16, !"__ksymtab_rcar_lvds_dual_link", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 602, i32 1}
!17 = !{ptr @__ksymtab_rcar_lvds_is_connected, !18, !"__ksymtab_rcar_lvds_is_connected", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 610, i32 1}
!19 = !{ptr @__initcall__kmod_rcar_lvds__327_923_rcar_lvds_platform_driver_init6, !20, !"__initcall__kmod_rcar_lvds__327_923_rcar_lvds_platform_driver_init6", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 923, i32 1}
!21 = !{ptr @__exitcall_rcar_lvds_platform_driver_exit, !20, !"__exitcall_rcar_lvds_platform_driver_exit", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_author328, !23, !"__UNIQUE_ID_author328", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 925, i32 1}
!24 = !{ptr @__UNIQUE_ID_description329, !25, !"__UNIQUE_ID_description329", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 926, i32 1}
!26 = !{ptr @__UNIQUE_ID_file330, !27, !"__UNIQUE_ID_file330", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 927, i32 1}
!28 = !{ptr @__UNIQUE_ID_license331, !27, !"__UNIQUE_ID_license331", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 256, i32 2}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rcar_lvds_d3_e3_pll_calc.__UNIQUE_ID_ddebug317, !30, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 918, i32 11}
!35 = !{ptr @rcar_lvds_platform_driver, !36, !"rcar_lvds_platform_driver", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 914, i32 31}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 806, i32 36}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 806, i32 13}
!41 = !{ptr @lvds_quirk_matches, !42, !"lvds_quirk_matches", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 804, i32 42}
!43 = !{ptr @rcar_lvds_r8a7790es1_info, !44, !"rcar_lvds_r8a7790es1_info", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 798, i32 43}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 627, i32 45}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 637, i32 3}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rcar_lvds_parse_dt_companion._entry, !48, !"_entry", i1 false, i1 false}
!53 = !{ptr @rcar_lvds_parse_dt_companion._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 676, i32 3}
!56 = !{ptr @rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug324, !55, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 686, i32 2}
!59 = !{ptr @rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug325, !58, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 691, i32 3}
!62 = !{ptr @rcar_lvds_parse_dt_companion.__UNIQUE_ID_ddebug326, !61, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!63 = !{ptr @rcar_lvds_bridge_ops, !64, !"rcar_lvds_bridge_ops", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 586, i32 38}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 362, i32 3}
!67 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rcar_lvds_get_lvds_mode._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @rcar_lvds_get_lvds_mode._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 376, i32 3}
!73 = !{ptr @rcar_lvds_get_lvds_mode._entry.22, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rcar_lvds_get_lvds_mode._entry_ptr.24, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 775, i32 49}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 779, i32 55}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 783, i32 55}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 790, i32 3}
!83 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @rcar_lvds_get_clocks._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @rcar_lvds_get_clocks._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 757, i32 41}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 758, i32 23}
!90 = !{ptr @rcar_lvds_of_table, !91, !"rcar_lvds_of_table", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 891, i32 34}
!92 = !{ptr @rcar_lvds_gen2_info, !93, !"rcar_lvds_gen2_info", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 860, i32 43}
!94 = !{ptr @rcar_lvds_gen3_info, !95, !"rcar_lvds_gen3_info", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 865, i32 43}
!96 = !{ptr @rcar_lvds_r8a77990_info, !97, !"rcar_lvds_r8a77990_info", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 877, i32 43}
!98 = !{ptr @rcar_lvds_r8a77970_info, !99, !"rcar_lvds_r8a77970_info", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 871, i32 43}
!100 = !{ptr @rcar_lvds_r8a77995_info, !101, !"rcar_lvds_r8a77995_info", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/rcar-du/rcar_lvds.c", i32 884, i32 43}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !{i64 2148746235, i64 2148746240, i64 2148746253, i64 2148746297, i64 2148746331, i64 2148746352}
!113 = !{i64 2150635947}
!114 = !{i64 3093825}
!115 = !{i8 0, i8 2}
