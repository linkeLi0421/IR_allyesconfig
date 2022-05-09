; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-sitronix-st7701.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-sitronix-st7701.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.st7701_panel_desc = type { ptr, i32, i32, i32, ptr, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.st7701 = type { %struct.drm_panel, ptr, ptr, ptr, ptr, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_sitronix_st7701__302_414_st7701_dsi_driver_init6 = internal global ptr @st7701_dsi_driver_init, section ".initcall6.init", align 4
@st7701_dsi_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st7701_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @st7701_dsi_probe, ptr @st7701_dsi_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_st7701_dsi_driver_exit = internal global ptr @st7701_dsi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [69 x i8] c"panel_sitronix_st7701.author=Jagan Teki <jagan@amarulasolutions.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [67 x i8] c"panel_sitronix_st7701.description=Sitronix ST7701 LCD Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [71 x i8] c"panel_sitronix_st7701.file=drivers/gpu/drm/panel/panel-sitronix-st7701\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [34 x i8] c"panel_sitronix_st7701.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st7701\00", [25 x i8] zeroinitializer }, align 32
@st7701_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"techstar,ts8550b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ts8550b_desc }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ts8550b_desc = internal constant { %struct.st7701_panel_desc, [36 x i8] } { %struct.st7701_panel_desc { ptr @ts8550b_mode, i32 2, i32 1, i32 0, ptr @ts8550b_supply_names, i32 2, i32 80 }, [36 x i8] zeroinitializer }, align 32
@ts8550b_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 27500, i16 480, i16 518, i16 530, i16 542, i16 0, i16 854, i16 872, i16 880, i16 884, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 69, i16 139, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ts8550b_supply_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCC\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IOVCC\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@st7701_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 359, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st7701_dsi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-sitronix-st7701.c\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st7701_dsi_probe._entry_ptr = internal global ptr @st7701_dsi_probe._entry, section ".printk_index", align 4
@st7701_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @st7701_prepare, ptr @st7701_enable, ptr @st7701_disable, ptr @st7701_unprepare, ptr @st7701_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@__const.st7701_init_sequence.d.10 = private unnamed_addr constant [6 x i8] c"\FFw\01\00\00\10", align 1
@__const.st7701_init_sequence.d.11 = private unnamed_addr constant [17 x i8] c"\B0\00\0E\15\0F\11\08\08\08\08#\04\13\12+4\1F", align 1
@__const.st7701_init_sequence.d.12 = private unnamed_addr constant [17 x i8] c"\B1\00\0E\95\0F\13\07\09\08\08\22\04\10\0E,4\1F", align 1
@__const.st7701_init_sequence.d.13 = private unnamed_addr constant [3 x i8] c"\C0\E9\03", align 1
@__const.st7701_init_sequence.d.14 = private unnamed_addr constant [3 x i8] c"\C27\06", align 1
@__const.st7701_init_sequence.d.15 = private unnamed_addr constant [6 x i8] c"\FFw\01\00\00\11", align 1
@__const.st7701_init_sequence.d.27 = private unnamed_addr constant [12 x i8] c"\E1\0B\00\0D\00\0C\00\0E\00\00DD", align 1
@__const.st7701_init_sequence.d.28 = private unnamed_addr constant [14 x i8] c"\E233DDd\00f\00e\00g\00\00", align 1
@__const.st7701_init_sequence.d.29 = private unnamed_addr constant [5 x i8] c"\E3\00\0033", align 1
@__const.st7701_init_sequence.d.30 = private unnamed_addr constant [3 x i8] c"\E4DD", align 1
@__const.st7701_init_sequence.d.31 = private unnamed_addr constant [17 x i8] c"\E5\0Cx<\A0\0Ex<\A0\10x<\A0\12x<\A0", align 1
@__const.st7701_init_sequence.d.32 = private unnamed_addr constant [5 x i8] c"\E6\00\0033", align 1
@__const.st7701_init_sequence.d.33 = private unnamed_addr constant [3 x i8] c"\E7DD", align 1
@__const.st7701_init_sequence.d.34 = private unnamed_addr constant [17 x i8] c"\E8\0Dx<\A0\0Fx<\A0\11x<\A0\13x<\A0", align 1
@__const.st7701_init_sequence.d.36 = private unnamed_addr constant [3 x i8] c"\EC\00\00", align 1
@__const.st7701_init_sequence.d.37 = private unnamed_addr constant [17 x i8] c"\ED\FF\F1\04Vr?\FF\FF\FF\FF\F3'e@\1F\FF", align 1
@__const.st7701_init_sequence.d.38 = private unnamed_addr constant [6 x i8] c"\FFw\01\00\00\00", align 1
@st7701_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 273, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st7701_get_modes\00", [47 x i8] zeroinitializer }, align 32
@st7701_get_modes._entry_ptr = internal global ptr @st7701_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"st7701_dsi_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 406, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 410, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"st7701_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 400, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"ts8550b_desc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 318, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"ts8550b_mode\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 294, i32 38 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"ts8550b_supply_names\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 313, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 314, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 315, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 357, i32 44 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 359, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"st7701_funcs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 286, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-sitronix-st7701.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 271, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_st7701_dsi_driver_exit, ptr @__initcall__kmod_panel_sitronix_st7701__302_414_st7701_dsi_driver_init6, ptr @st7701_dsi_driver_exit, ptr @st7701_dsi_probe._entry, ptr @st7701_dsi_probe._entry_ptr, ptr @st7701_get_modes._entry, ptr @st7701_get_modes._entry_ptr, ptr @st7701_dsi_driver, ptr @.str, ptr @st7701_of_match, ptr @ts8550b_desc, ptr @ts8550b_mode, ptr @ts8550b_supply_names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @st7701_funcs, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7701_dsi_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7701_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts8550b_desc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts8550b_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts8550b_supply_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7701_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7701_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st7701_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st7701_dsi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @st7701_dsi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @st7701_dsi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @st7701_dsi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7701_dsi_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %flags = getelementptr inbounds %struct.st7701_panel_desc, ptr %call2, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mode_flags, align 8
  %format = getelementptr inbounds %struct.st7701_panel_desc, ptr %call2, i32 0, i32 3
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %format3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %5 = ptrtoint ptr %format3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %format3, align 4
  %lanes = getelementptr inbounds %struct.st7701_panel_desc, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lanes, align 4
  %lanes4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %8 = ptrtoint ptr %lanes4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lanes4, align 8
  %num_supplies = getelementptr inbounds %struct.st7701_panel_desc, ptr %call2, i32 0, i32 5
  %9 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_supplies, align 4
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 12) #6
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !52

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %supplies84 = getelementptr inbounds %struct.st7701, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %supplies84 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %supplies84, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %14 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #6
  %supplies = getelementptr inbounds %struct.st7701, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %supplies, align 4
  %tobool8.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %16 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_supplies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp86.not = icmp eq i32 %17, 0
  br i1 %cmp86.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %supply_names = getelementptr inbounds %struct.st7701_panel_desc, ptr %call2, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %18 = ptrtoint ptr %supply_names to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %supply_names, align 4
  %arrayidx = getelementptr ptr, ptr %19, i32 %i.087
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %supplies, align 4
  %arrayidx13 = getelementptr %struct.regulator_bulk_data, ptr %23, i32 %i.087
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %arrayidx13, align 4
  %inc = add nuw i32 %i.087, 1
  %25 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_supplies, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %26, %for.body.for.end_crit_edge ]
  %27 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %supplies, align 4
  %call17 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef %.lcssa, ptr noundef %28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %for.end.cleanup_crit_edge, label %if.end20

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %for.end
  %call22 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 3) #6
  %reset = getelementptr inbounds %struct.st7701, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call22, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end29

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #9
  %30 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reset, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @st7701_funcs, i32 noundef 16) #6
  %panel_sleep_delay = getelementptr inbounds %struct.st7701_panel_desc, ptr %call2, i32 0, i32 6
  %33 = ptrtoint ptr %panel_sleep_delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %panel_sleep_delay, align 4
  %add = add i32 %34, 120
  %sleep_delay = getelementptr inbounds %struct.st7701, ptr %call.i, i32 0, i32 5
  %35 = ptrtoint ptr %sleep_delay to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %sleep_delay, align 4
  %call32 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %36 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dsi37 = getelementptr inbounds %struct.st7701, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %dsi37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dsi, ptr %dsi37, align 4
  %desc38 = getelementptr inbounds %struct.st7701, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %desc38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call2, ptr %desc38, align 4
  %call39 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end29.cleanup_crit_edge, %do.end, %for.end.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %32, %do.end ], [ %call39, %if.end35 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call17, %for.end.cleanup_crit_edge ], [ %call32, %if.end29.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7701_dsi_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  tail call void @drm_panel_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7701_prepare(ptr noundef readonly %panel) #2 align 64 {
entry:
  %d.i = alloca [2 x i8], align 2
  %d2.i = alloca [2 x i8], align 2
  %d5.i = alloca [6 x i8], align 1
  %d8.i = alloca [17 x i8], align 1
  %d11.i = alloca [17 x i8], align 1
  %d14.i = alloca [3 x i8], align 1
  %d17.i = alloca [3 x i8], align 1
  %d27.i = alloca [3 x i8], align 1
  %d30.i = alloca [6 x i8], align 1
  %d33.i = alloca [2 x i8], align 2
  %d36.i = alloca [2 x i8], align 2
  %d39.i = alloca [2 x i8], align 2
  %d42.i = alloca [2 x i8], align 2
  %d45.i = alloca [2 x i8], align 2
  %d48.i = alloca [2 x i8], align 2
  %d51.i = alloca [2 x i8], align 2
  %d54.i = alloca [2 x i8], align 2
  %d57.i = alloca [2 x i8], align 2
  %d60.i = alloca [2 x i8], align 2
  %d63.i = alloca [4 x i8], align 4
  %d66.i = alloca [12 x i8], align 1
  %d69.i = alloca [14 x i8], align 1
  %d72.i = alloca [5 x i8], align 1
  %d75.i = alloca [3 x i8], align 1
  %d78.i = alloca [17 x i8], align 1
  %d81.i = alloca [5 x i8], align 1
  %d84.i = alloca [3 x i8], align 1
  %d87.i = alloca [17 x i8], align 1
  %d90.i = alloca [8 x i8], align 8
  %d93.i = alloca [3 x i8], align 1
  %d96.i = alloca [17 x i8], align 1
  %d99.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reset = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #6
  %desc = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %num_supplies = getelementptr inbounds %struct.st7701_panel_desc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 3
  %6 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %supplies, align 4
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef %5, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 150) #6
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d.i) #6
  %14 = ptrtoint ptr %d.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 256, ptr %d.i, align 2
  %dsi.i.i = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 1
  %15 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dsi.i.i, align 4
  %call.i.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %16, ptr noundef nonnull %d.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d.i) #6
  call void @msleep(i32 noundef 5) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d2.i) #6
  %17 = ptrtoint ptr %d2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 4352, ptr %d2.i, align 2
  %18 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dsi.i.i, align 4
  %call.i139.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %19, ptr noundef nonnull %d2.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d2.i) #6
  %sleep_delay.i = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 5
  %20 = ptrtoint ptr %sleep_delay.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sleep_delay.i, align 4
  call void @msleep(i32 noundef %21) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d5.i) #6
  %22 = call ptr @memcpy(ptr %d5.i, ptr @__const.st7701_init_sequence.d.10, i32 6)
  %23 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dsi.i.i, align 4
  %call.i141.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %24, ptr noundef nonnull %d5.i, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d5.i) #6
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d8.i) #6
  %25 = call ptr @memcpy(ptr %d8.i, ptr @__const.st7701_init_sequence.d.11, i32 17)
  %26 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dsi.i.i, align 4
  %call.i143.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %27, ptr noundef nonnull %d8.i, i32 noundef 17) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d8.i) #6
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d11.i) #6
  %28 = call ptr @memcpy(ptr %d11.i, ptr @__const.st7701_init_sequence.d.12, i32 17)
  %29 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dsi.i.i, align 4
  %call.i145.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %30, ptr noundef nonnull %d11.i, i32 noundef 17) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d11.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d14.i) #6
  %31 = call ptr @memcpy(ptr %d14.i, ptr @__const.st7701_init_sequence.d.13, i32 3)
  %32 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dsi.i.i, align 4
  %call.i147.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %33, ptr noundef nonnull %d14.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d14.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d17.i) #6
  %34 = getelementptr inbounds [3 x i8], ptr %d17.i, i32 0, i32 1
  %35 = getelementptr inbounds [3 x i8], ptr %d17.i, i32 0, i32 2
  %36 = ptrtoint ptr %d17.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -63, ptr %d17.i, align 1
  %vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %13, i32 0, i32 9
  %37 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vtotal.i, align 4
  %conv.i = trunc i16 %38 to i8
  %vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %13, i32 0, i32 8
  %39 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vsync_end.i, align 2
  %conv18.i = trunc i16 %40 to i8
  %sub.i = sub i8 %conv.i, %conv18.i
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %sub.i, ptr %34, align 1
  %vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %13, i32 0, i32 7
  %42 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vsync_start.i, align 4
  %conv21.i = trunc i16 %43 to i8
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %13, i32 0, i32 6
  %44 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %vdisplay.i, align 2
  %conv22.i = trunc i16 %45 to i8
  %sub23.i = sub i8 %conv21.i, %conv22.i
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %sub23.i, ptr %35, align 1
  %47 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dsi.i.i, align 4
  %call.i149.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %48, ptr noundef nonnull %d17.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d17.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d27.i) #6
  %49 = call ptr @memcpy(ptr %d27.i, ptr @__const.st7701_init_sequence.d.14, i32 3)
  %50 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dsi.i.i, align 4
  %call.i151.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %51, ptr noundef nonnull %d27.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d27.i) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d30.i) #6
  %52 = call ptr @memcpy(ptr %d30.i, ptr @__const.st7701_init_sequence.d.15, i32 6)
  %53 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dsi.i.i, align 4
  %call.i153.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %54, ptr noundef nonnull %d30.i, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d30.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d33.i) #6
  %55 = ptrtoint ptr %d33.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -20411, ptr %d33.i, align 2
  %56 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dsi.i.i, align 4
  %call.i155.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %57, ptr noundef nonnull %d33.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d33.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d36.i) #6
  %58 = ptrtoint ptr %d36.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -20205, ptr %d36.i, align 2
  %59 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dsi.i.i, align 4
  %call.i157.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %60, ptr noundef nonnull %d36.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d36.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d39.i) #6
  %61 = ptrtoint ptr %d39.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -19961, ptr %d39.i, align 2
  %62 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dsi.i.i, align 4
  %call.i159.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %63, ptr noundef nonnull %d39.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d39.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d42.i) #6
  %64 = ptrtoint ptr %d42.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -19584, ptr %d42.i, align 2
  %65 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dsi.i.i, align 4
  %call.i161.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %66, ptr noundef nonnull %d42.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d42.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d45.i) #6
  %67 = ptrtoint ptr %d45.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -19129, ptr %d45.i, align 2
  %68 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dsi.i.i, align 4
  %call.i163.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %69, ptr noundef nonnull %d45.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d45.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d48.i) #6
  %70 = ptrtoint ptr %d48.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -18555, ptr %d48.i, align 2
  %71 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dsi.i.i, align 4
  %call.i165.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %72, ptr noundef nonnull %d48.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d48.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d51.i) #6
  %73 = ptrtoint ptr %d51.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -18400, ptr %d51.i, align 2
  %74 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dsi.i.i, align 4
  %call.i167.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %75, ptr noundef nonnull %d51.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d51.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d54.i) #6
  %76 = ptrtoint ptr %d54.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -16008, ptr %d54.i, align 2
  %77 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dsi.i.i, align 4
  %call.i169.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %78, ptr noundef nonnull %d54.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d54.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d57.i) #6
  %79 = ptrtoint ptr %d57.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -15752, ptr %d57.i, align 2
  %80 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dsi.i.i, align 4
  %call.i171.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %81, ptr noundef nonnull %d57.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d57.i) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d60.i) #6
  %82 = ptrtoint ptr %d60.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -12152, ptr %d60.i, align 2
  %83 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dsi.i.i, align 4
  %call.i173.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %84, ptr noundef nonnull %d60.i, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d60.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d63.i) #6
  %85 = ptrtoint ptr %d63.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -536870910, ptr %d63.i, align 4
  %86 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dsi.i.i, align 4
  %call.i175.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %87, ptr noundef nonnull %d63.i, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d63.i) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %d66.i) #6
  %88 = call ptr @memcpy(ptr %d66.i, ptr @__const.st7701_init_sequence.d.27, i32 12)
  %89 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dsi.i.i, align 4
  %call.i177.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %90, ptr noundef nonnull %d66.i, i32 noundef 12) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %d66.i) #6
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %d69.i) #6
  %91 = call ptr @memcpy(ptr %d69.i, ptr @__const.st7701_init_sequence.d.28, i32 14)
  %92 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dsi.i.i, align 4
  %call.i179.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %93, ptr noundef nonnull %d69.i, i32 noundef 14) #6
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %d69.i) #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %d72.i) #6
  %94 = call ptr @memcpy(ptr %d72.i, ptr @__const.st7701_init_sequence.d.29, i32 5)
  %95 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dsi.i.i, align 4
  %call.i181.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %96, ptr noundef nonnull %d72.i, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %d72.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d75.i) #6
  %97 = call ptr @memcpy(ptr %d75.i, ptr @__const.st7701_init_sequence.d.30, i32 3)
  %98 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dsi.i.i, align 4
  %call.i183.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %99, ptr noundef nonnull %d75.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d75.i) #6
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d78.i) #6
  %100 = call ptr @memcpy(ptr %d78.i, ptr @__const.st7701_init_sequence.d.31, i32 17)
  %101 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dsi.i.i, align 4
  %call.i185.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %102, ptr noundef nonnull %d78.i, i32 noundef 17) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d78.i) #6
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %d81.i) #6
  %103 = call ptr @memcpy(ptr %d81.i, ptr @__const.st7701_init_sequence.d.32, i32 5)
  %104 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dsi.i.i, align 4
  %call.i187.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %105, ptr noundef nonnull %d81.i, i32 noundef 5) #6
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %d81.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d84.i) #6
  %106 = call ptr @memcpy(ptr %d84.i, ptr @__const.st7701_init_sequence.d.33, i32 3)
  %107 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dsi.i.i, align 4
  %call.i189.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %108, ptr noundef nonnull %d84.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d84.i) #6
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d87.i) #6
  %109 = call ptr @memcpy(ptr %d87.i, ptr @__const.st7701_init_sequence.d.34, i32 17)
  %110 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dsi.i.i, align 4
  %call.i191.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %111, ptr noundef nonnull %d87.i, i32 noundef 17) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d87.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d90.i) #6
  %112 = ptrtoint ptr %d90.i to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 -1512644080034757632, ptr %d90.i, align 8
  %113 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dsi.i.i, align 4
  %call.i193.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %114, ptr noundef nonnull %d90.i, i32 noundef 8) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d90.i) #6
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %d93.i) #6
  %115 = call ptr @memcpy(ptr %d93.i, ptr @__const.st7701_init_sequence.d.36, i32 3)
  %116 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dsi.i.i, align 4
  %call.i195.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %117, ptr noundef nonnull %d93.i, i32 noundef 3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %d93.i) #6
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %d96.i) #6
  %118 = call ptr @memcpy(ptr %d96.i, ptr @__const.st7701_init_sequence.d.37, i32 17)
  %119 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dsi.i.i, align 4
  %call.i197.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %120, ptr noundef nonnull %d96.i, i32 noundef 17) #6
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %d96.i) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %d99.i) #6
  %121 = call ptr @memcpy(ptr %d99.i, ptr @__const.st7701_init_sequence.d.38, i32 6)
  %122 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dsi.i.i, align 4
  %call.i199.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %123, ptr noundef nonnull %d99.i, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %d99.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7701_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %d = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d) #6
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 10496, ptr %d, align 2
  %dsi.i = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 1
  %1 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dsi.i, align 4
  %call.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %2, ptr noundef nonnull %d, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7701_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %d = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d) #6
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 10240, ptr %d, align 2
  %dsi.i = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 1
  %1 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dsi.i, align 4
  %call.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %2, ptr noundef nonnull %d, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7701_unprepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %d = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d) #6
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 4096, ptr %d, align 2
  %dsi.i = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 1
  %1 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dsi.i, align 4
  %call.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %2, ptr noundef nonnull %d, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d) #6
  %sleep_delay = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 5
  %3 = ptrtoint ptr %sleep_delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sleep_delay, align 4
  call void @msleep(i32 noundef %4) #6
  %reset = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 4
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  call void @gpiod_set_value(ptr noundef %6, i32 noundef 0) #6
  %7 = ptrtoint ptr %sleep_delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sleep_delay, align 4
  call void @msleep(i32 noundef %8) #6
  %desc = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 2
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %num_supplies = getelementptr inbounds %struct.st7701_panel_desc, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 3
  %13 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %supplies, align 4
  %call3 = call i32 @regulator_bulk_disable(i32 noundef %12, ptr noundef %14) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st7701_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %call2 = tail call ptr @drm_mode_duplicate(ptr noundef %5, ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dsi = getelementptr inbounds %struct.st7701, ptr %panel, i32 0, i32 1
  %6 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi, align 4
  %dev3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %7, i32 0, i32 1
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %9 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %conv4 = zext i16 %11 to i32
  %call5 = tail call i32 @drm_mode_vrefresh(ptr noundef %3) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.39, i32 noundef %conv, i32 noundef %conv4, i32 noundef %call5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call2) #6
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call2) #6
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 26
  %12 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %width_mm, align 2
  %conv6 = zext i16 %13 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %14 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv6, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 27
  %15 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %height_mm, align 4
  %conv8 = zext i16 %16 to i32
  %height_mm10 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %17 = ptrtoint ptr %height_mm10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv8, ptr %height_mm10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_panel_sitronix_st7701__302_414_st7701_dsi_driver_init6, !1, !"__initcall__kmod_panel_sitronix_st7701__302_414_st7701_dsi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 414, i32 1}
!2 = !{ptr @__exitcall_st7701_dsi_driver_exit, !1, !"__exitcall_st7701_dsi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 416, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 417, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 418, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 410, i32 12}
!12 = !{ptr @st7701_dsi_driver, !13, !"st7701_dsi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 406, i32 31}
!14 = !{ptr @st7701_of_match, !15, !"st7701_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 400, i32 34}
!16 = !{ptr @ts8550b_desc, !17, !"ts8550b_desc", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 318, i32 39}
!18 = !{ptr @ts8550b_mode, !19, !"ts8550b_mode", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 294, i32 38}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 314, i32 2}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 315, i32 2}
!24 = !{ptr @ts8550b_supply_names, !25, !"ts8550b_supply_names", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 313, i32 27}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 357, i32 44}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 359, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @st7701_dsi_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @st7701_dsi_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @st7701_funcs, !37, !"st7701_funcs", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 286, i32 37}
!38 = !{ptr @.str.39, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-sitronix-st7701.c", i32 271, i32 3}
!40 = !{ptr @.str.40, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @st7701_get_modes._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @st7701_get_modes._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 1, i32 2000}
