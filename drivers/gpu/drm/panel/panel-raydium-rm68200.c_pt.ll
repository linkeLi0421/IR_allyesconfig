; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-raydium-rm68200.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-raydium-rm68200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.rm68200 = type { ptr, %struct.drm_panel, ptr, ptr, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
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

@__initcall__kmod_panel_raydium_rm68200__302_439_raydium_rm68200_driver_init6 = internal global ptr @raydium_rm68200_driver_init, section ".initcall6.init", align 4
@raydium_rm68200_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @raydium_rm68200_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rm68200_probe, ptr @rm68200_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_raydium_rm68200_driver_exit = internal global ptr @raydium_rm68200_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [68 x i8] c"panel_raydium_rm68200.author=Philippe Cornu <philippe.cornu@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [68 x i8] c"panel_raydium_rm68200.author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [80 x i8] c"panel_raydium_rm68200.description=DRM Driver for Raydium RM68200 MIPI DSI panel\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [71 x i8] c"panel_raydium_rm68200.file=drivers/gpu/drm/panel/panel-raydium-rm68200\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [37 x i8] c"panel_raydium_rm68200.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel-raydium-rm68200\00", [42 x i8] zeroinitializer }, align 32
@raydium_rm68200_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raydium,rm68200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@rm68200_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 375, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot get reset GPIO: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rm68200_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-raydium-rm68200.c\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rm68200_probe._entry_ptr = internal global ptr @rm68200_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@rm68200_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot get regulator: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rm68200_probe._entry_ptr.10 = internal global ptr @rm68200_probe._entry.8, section ".printk_index", align 4
@rm68200_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @rm68200_prepare, ptr @rm68200_enable, ptr @rm68200_disable, ptr @rm68200_unprepare, ptr @rm68200_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@rm68200_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 407, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mipi_dsi_attach() failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rm68200_probe._entry_ptr.13 = internal global ptr @rm68200_probe._entry.11, section ".printk_index", align 4
@rm68200_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 288, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable supply: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rm68200_prepare\00", [16 x i8] zeroinitializer }, align 32
@rm68200_prepare._entry_ptr = internal global ptr @rm68200_prepare._entry, section ".printk_index", align 4
@rm68200_init_sequence.d = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FE\01", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"+\E5", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"'\0A", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c")\0A", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\16R", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"/S", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4Z", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1B\00", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\12\0A", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\1A\06", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"FV", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R\A0\00", [29 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"T\A0\00", [29 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.29 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"_\11", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FE\03", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\00\05", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.32 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\02\0B", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\03\0F", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\04}\00P", [28 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\05\16\0D\11}\00P", [25 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\07\08\01\02\00}\00\85\08", [23 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\03\04\05\06\00}\00\85\08", [23 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.38 = internal constant { <{ i8, [10 x i8] }>, [21 x i8] } { <{ i8, [10 x i8] }> <{ i8 32, [10 x i8] zeroinitializer }>, [21 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.40 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"-\01", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"/\02\00@\05\08T}\00", [23 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.43 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"=@", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"?\05\08T}\00", [26 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.45 = internal constant { <{ i8, [11 x i8] }>, [20 x i8] } { <{ i8, [11 x i8] }> <{ i8 68, [11 x i8] zeroinitializer }>, [20 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.46 = internal constant { <{ i8, [8 x i8] }>, [23 x i8] } { <{ i8, [8 x i8] }> <{ i8 79, [8 x i8] zeroinitializer }>, [23 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"X\00\00\00", [28 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"[\00\00\00\00\00", [26 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.49 = internal constant { <{ i8, [13 x i8] }>, [18 x i8] } { <{ i8, [13 x i8] }> <{ i8 96, [13 x i8] zeroinitializer }>, [18 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"m\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"q\00 \00", [28 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"t\08\08\08\08\08\08\00\00", [23 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"|\00\00", [29 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\BF\02\06\14\10\16\12\08?", [23 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"????\0C\0A\0E??\00", [22 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\04????\05\01??\0F", [22 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"?\05\01\17\13\15\11\0F?", [23 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"????\0B\0D\09??\07", [22 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\03????\02\06??\08", [22 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\0C\0A?????\0E\10\14", [22 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.65 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\DC\02", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\DE\12", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.67 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FE\0E", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.68 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01u", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.69 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FE\04", [30 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\0C\12\0E\06\12\0E\0B\15\0B\10\07\0F\12\0C\00", [16 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\0C\12\0E\06\12\0E\0B\15\0B\10\07\0F\12\0C\00", [16 x i8] zeroinitializer }, align 32
@rm68200_init_sequence.d.72 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FE\00", [30 x i8] zeroinitializer }, align 32
@rm68200_dcs_write_buf._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.73, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rm68200_dcs_write_buf = private unnamed_addr constant [22 x i8] c"rm68200_dcs_write_buf\00", align 1
@rm68200_dcs_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @__func__.rm68200_dcs_write_buf, ptr @.str.4, i32 112, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"MIPI DSI DCS write buffer failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rm68200_dcs_write_buf._entry_ptr = internal global ptr @rm68200_dcs_write_buf._entry, section ".printk_index", align 4
@rm68200_dcs_write_cmd._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.73, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.rm68200_dcs_write_cmd = private unnamed_addr constant [22 x i8] c"rm68200_dcs_write_cmd\00", align 1
@rm68200_dcs_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @__func__.rm68200_dcs_write_cmd, ptr @.str.4, i32 122, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"MIPI DSI DCS write failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@rm68200_dcs_write_cmd._entry_ptr = internal global ptr @rm68200_dcs_write_cmd._entry, section ".printk_index", align 4
@rm68200_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 257, ptr @.str.78, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rm68200_unprepare\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rm68200_unprepare._entry_ptr = internal global ptr @rm68200_unprepare._entry, section ".printk_index", align 4
@rm68200_unprepare._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.77, ptr @.str.4, i32 261, ptr @.str.78, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rm68200_unprepare._entry_ptr.81 = internal global ptr @rm68200_unprepare._entry.79, section ".printk_index", align 4
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 54000, i16 720, i16 768, i16 777, i16 825, i16 0, i16 1280, i16 1292, i16 1297, i16 1309, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 122, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@rm68200_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rm68200_get_modes\00", [46 x i8] zeroinitializer }, align 32
@rm68200_get_modes._entry_ptr = internal global ptr @rm68200_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"raydium_rm68200_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 431, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 435, i32 11 }
@___asan_gen_.90 = private unnamed_addr constant [25 x i8] c"raydium_rm68200_of_match\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 425, i32 34 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 372, i32 49 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 375, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 379, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 383, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"rm68200_drm_funcs\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 354, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 407, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 288, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 148, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 150, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 151, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 152, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 153, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 154, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 155, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 156, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 157, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 158, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 159, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 160, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 161, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 162, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 164, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 165, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 166, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 167, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 168, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 169, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 171, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 173, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 175, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 178, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 179, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 182, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 183, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 184, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 186, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 188, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 189, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 190, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 192, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 193, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 194, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 196, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 197, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 199, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 201, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 207, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 209, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 211, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 213, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 216, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 217, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 219, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 220, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 222, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 223, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 226, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 231, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 112, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 122, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 257, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 261, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 84, i32 38 }
@___asan_gen_.336 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.343 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-raydium-rm68200.c\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.343, i32 337, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_raydium_rm68200_driver_exit, ptr @__initcall__kmod_panel_raydium_rm68200__302_439_raydium_rm68200_driver_init6, ptr @raydium_rm68200_driver_exit, ptr @rm68200_dcs_write_buf._entry, ptr @rm68200_dcs_write_buf._entry_ptr, ptr @rm68200_dcs_write_cmd._entry, ptr @rm68200_dcs_write_cmd._entry_ptr, ptr @rm68200_get_modes._entry, ptr @rm68200_get_modes._entry_ptr, ptr @rm68200_prepare._entry, ptr @rm68200_prepare._entry_ptr, ptr @rm68200_probe._entry, ptr @rm68200_probe._entry.11, ptr @rm68200_probe._entry.8, ptr @rm68200_probe._entry_ptr, ptr @rm68200_probe._entry_ptr.10, ptr @rm68200_probe._entry_ptr.13, ptr @rm68200_unprepare._entry, ptr @rm68200_unprepare._entry.79, ptr @rm68200_unprepare._entry_ptr, ptr @rm68200_unprepare._entry_ptr.81, ptr @raydium_rm68200_driver, ptr @.str, ptr @raydium_rm68200_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @rm68200_drm_funcs, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @rm68200_init_sequence.d, ptr @rm68200_init_sequence.d.17, ptr @rm68200_init_sequence.d.18, ptr @rm68200_init_sequence.d.19, ptr @rm68200_init_sequence.d.20, ptr @rm68200_init_sequence.d.21, ptr @rm68200_init_sequence.d.22, ptr @rm68200_init_sequence.d.23, ptr @rm68200_init_sequence.d.24, ptr @rm68200_init_sequence.d.25, ptr @rm68200_init_sequence.d.26, ptr @rm68200_init_sequence.d.27, ptr @rm68200_init_sequence.d.28, ptr @rm68200_init_sequence.d.29, ptr @rm68200_init_sequence.d.30, ptr @rm68200_init_sequence.d.31, ptr @rm68200_init_sequence.d.32, ptr @rm68200_init_sequence.d.33, ptr @rm68200_init_sequence.d.34, ptr @rm68200_init_sequence.d.35, ptr @rm68200_init_sequence.d.36, ptr @rm68200_init_sequence.d.37, ptr @rm68200_init_sequence.d.38, ptr @rm68200_init_sequence.d.40, ptr @rm68200_init_sequence.d.41, ptr @rm68200_init_sequence.d.43, ptr @rm68200_init_sequence.d.44, ptr @rm68200_init_sequence.d.45, ptr @rm68200_init_sequence.d.46, ptr @rm68200_init_sequence.d.47, ptr @rm68200_init_sequence.d.48, ptr @rm68200_init_sequence.d.49, ptr @rm68200_init_sequence.d.50, ptr @rm68200_init_sequence.d.51, ptr @rm68200_init_sequence.d.52, ptr @rm68200_init_sequence.d.53, ptr @rm68200_init_sequence.d.54, ptr @rm68200_init_sequence.d.55, ptr @rm68200_init_sequence.d.56, ptr @rm68200_init_sequence.d.60, ptr @rm68200_init_sequence.d.61, ptr @rm68200_init_sequence.d.62, ptr @rm68200_init_sequence.d.63, ptr @rm68200_init_sequence.d.65, ptr @rm68200_init_sequence.d.66, ptr @rm68200_init_sequence.d.67, ptr @rm68200_init_sequence.d.68, ptr @rm68200_init_sequence.d.69, ptr @rm68200_init_sequence.d.70, ptr @rm68200_init_sequence.d.71, ptr @rm68200_init_sequence.d.72, ptr @rm68200_dcs_write_buf._rs, ptr @.str.73, ptr @.str.74, ptr @rm68200_dcs_write_cmd._rs, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @default_mode, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_rm68200_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raydium_rm68200_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.29 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.32 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.40 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.43 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.65 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.67 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.68 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.69 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_init_sequence.d.72 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_dcs_write_buf._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_dcs_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_dcs_write_cmd._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_dcs_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_unprepare._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rm68200_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @raydium_rm68200_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @raydium_rm68200_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @raydium_rm68200_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @raydium_rm68200_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm68200_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 40, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #6
  %reset_gpio = getelementptr inbounds %struct.rm68200, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %reset_gpio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %1) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %supply = getelementptr inbounds %struct.rm68200, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %supply, align 4
  %cmp.i71 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i71, label %if.then12, label %if.end20

if.then12:                                        ; preds = %if.end8
  %cmp.not = icmp eq ptr %call9, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then12.cleanup_crit_edge, label %do.end18

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %3) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %8 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3075, ptr %mode_flags, align 8
  %panel = getelementptr inbounds %struct.rm68200, ptr %call.i, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef %panel, ptr noundef %dev1, ptr noundef nonnull @rm68200_drm_funcs, i32 noundef 16) #6
  %call23 = tail call i32 @drm_panel_of_backlight(ptr noundef %panel) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  tail call void @drm_panel_add(ptr noundef %panel) #6
  %call28 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call28) #9
  tail call void @drm_panel_remove(ptr noundef %panel) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end26.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end18, %if.then12.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %call28, %do.end33 ], [ -12, %entry.cleanup_crit_edge ], [ %3, %do.end18 ], [ -517, %if.then12.cleanup_crit_edge ], [ %call23, %if.end20.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm68200_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  %panel = getelementptr inbounds %struct.rm68200, ptr %1, i32 0, i32 1
  tail call void @drm_panel_remove(ptr noundef %panel) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm68200_prepare(ptr noundef %panel) #2 align 64 {
entry:
  %value.addr.i769.i = alloca i8, align 1
  %value.addr.i760.i = alloca i8, align 1
  %value.addr.i711.i = alloca i8, align 1
  %value.addr.i702.i = alloca i8, align 1
  %value.addr.i693.i = alloca i8, align 1
  %value.addr.i684.i = alloca i8, align 1
  %value.addr.i675.i = alloca i8, align 1
  %value.addr.i666.i = alloca i8, align 1
  %value.addr.i657.i = alloca i8, align 1
  %value.addr.i648.i = alloca i8, align 1
  %value.addr.i639.i = alloca i8, align 1
  %value.addr.i630.i = alloca i8, align 1
  %value.addr.i621.i = alloca i8, align 1
  %value.addr.i524.i = alloca i8, align 1
  %value.addr.i499.i = alloca i8, align 1
  %value.addr.i482.i = alloca i8, align 1
  %value.addr.i473.i = alloca i8, align 1
  %value.addr.i464.i = alloca i8, align 1
  %value.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i37 = getelementptr i8, ptr %1, i32 -8
  %prepared = getelementptr i8, ptr %panel, i32 32
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supply = getelementptr i8, ptr %panel, i32 28
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef %call2) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %reset_gpio = getelementptr i8, ptr %panel, i32 24
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %if.then7

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %9, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 100) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end5.if.end10_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 -8
  %call1.i.i = tail call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull @rm68200_init_sequence.d, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end10.rm68200_dcs_write_buf.exit.i_crit_edge

if.end10.rm68200_dcs_write_buf.exit.i_crit_edge:  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit.i

do.body.i.i:                                      ; preds = %if.end10
  %call2.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.rm68200_dcs_write_buf.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.rm68200_dcs_write_buf.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.74, i32 noundef %call1.i.i) #9
  br label %rm68200_dcs_write_buf.exit.i

rm68200_dcs_write_buf.exit.i:                     ; preds = %do.end.i.i, %do.body.i.i.rm68200_dcs_write_buf.exit.i_crit_edge, %if.end10.rm68200_dcs_write_buf.exit.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #6
  %16 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -64, ptr %value.addr.i.i, align 1
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i313.i = getelementptr i8, ptr %18, i32 -8
  %call1.i314.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i313.i, i8 noundef zeroext 36, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i314.i)
  %cmp.i315.i = icmp slt i32 %call1.i314.i, 0
  br i1 %cmp.i315.i, label %do.body.i318.i, label %rm68200_dcs_write_buf.exit.i.rm68200_dcs_write_cmd.exit.i_crit_edge

rm68200_dcs_write_buf.exit.i.rm68200_dcs_write_cmd.exit.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit.i

do.body.i318.i:                                   ; preds = %rm68200_dcs_write_buf.exit.i
  %call2.i316.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i316.i)
  %tobool.not.i317.i = icmp eq i32 %call2.i316.i, 0
  br i1 %tobool.not.i317.i, label %do.body.i318.i.rm68200_dcs_write_cmd.exit.i_crit_edge, label %do.end.i319.i

do.body.i318.i.rm68200_dcs_write_cmd.exit.i_crit_edge: ; preds = %do.body.i318.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit.i

do.end.i319.i:                                    ; preds = %do.body.i318.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.75, i32 noundef %call1.i314.i) #9
  br label %rm68200_dcs_write_cmd.exit.i

rm68200_dcs_write_cmd.exit.i:                     ; preds = %do.end.i319.i, %do.body.i318.i.rm68200_dcs_write_cmd.exit.i_crit_edge, %rm68200_dcs_write_buf.exit.i.rm68200_dcs_write_cmd.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #6
  %21 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 83, ptr %value.addr.i.i, align 1
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i313.1.i = getelementptr i8, ptr %23, i32 -8
  %call1.i314.1.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i313.1.i, i8 noundef zeroext 37, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i314.1.i)
  %cmp.i315.1.i = icmp slt i32 %call1.i314.1.i, 0
  br i1 %cmp.i315.1.i, label %do.body.i318.1.i, label %rm68200_dcs_write_cmd.exit.i.rm68200_dcs_write_cmd.exit.1.i_crit_edge

rm68200_dcs_write_cmd.exit.i.rm68200_dcs_write_cmd.exit.1.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit.1.i

do.body.i318.1.i:                                 ; preds = %rm68200_dcs_write_cmd.exit.i
  %call2.i316.1.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i316.1.i)
  %tobool.not.i317.1.i = icmp eq i32 %call2.i316.1.i, 0
  br i1 %tobool.not.i317.1.i, label %do.body.i318.1.i.rm68200_dcs_write_cmd.exit.1.i_crit_edge, label %do.end.i319.1.i

do.body.i318.1.i.rm68200_dcs_write_cmd.exit.1.i_crit_edge: ; preds = %do.body.i318.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit.1.i

do.end.i319.1.i:                                  ; preds = %do.body.i318.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.75, i32 noundef %call1.i314.1.i) #9
  br label %rm68200_dcs_write_cmd.exit.1.i

rm68200_dcs_write_cmd.exit.1.i:                   ; preds = %do.end.i319.1.i, %do.body.i318.1.i.rm68200_dcs_write_cmd.exit.1.i_crit_edge, %rm68200_dcs_write_cmd.exit.i.rm68200_dcs_write_cmd.exit.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i.i) #6
  %26 = ptrtoint ptr %value.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %value.addr.i.i, align 1
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i313.2.i = getelementptr i8, ptr %28, i32 -8
  %call1.i314.2.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i313.2.i, i8 noundef zeroext 38, ptr noundef nonnull %value.addr.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i314.2.i)
  %cmp.i315.2.i = icmp slt i32 %call1.i314.2.i, 0
  br i1 %cmp.i315.2.i, label %do.body.i318.2.i, label %rm68200_dcs_write_cmd.exit.1.i.rm68200_dcs_write_cmd.exit.2.i_crit_edge

rm68200_dcs_write_cmd.exit.1.i.rm68200_dcs_write_cmd.exit.2.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit.2.i

do.body.i318.2.i:                                 ; preds = %rm68200_dcs_write_cmd.exit.1.i
  %call2.i316.2.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i316.2.i)
  %tobool.not.i317.2.i = icmp eq i32 %call2.i316.2.i, 0
  br i1 %tobool.not.i317.2.i, label %do.body.i318.2.i.rm68200_dcs_write_cmd.exit.2.i_crit_edge, label %do.end.i319.2.i

do.body.i318.2.i.rm68200_dcs_write_cmd.exit.2.i_crit_edge: ; preds = %do.body.i318.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit.2.i

do.end.i319.2.i:                                  ; preds = %do.body.i318.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.75, i32 noundef %call1.i314.2.i) #9
  br label %rm68200_dcs_write_cmd.exit.2.i

rm68200_dcs_write_cmd.exit.2.i:                   ; preds = %do.end.i319.2.i, %do.body.i318.2.i.rm68200_dcs_write_cmd.exit.2.i_crit_edge, %rm68200_dcs_write_cmd.exit.1.i.rm68200_dcs_write_cmd.exit.2.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i.i) #6
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i320.i = getelementptr i8, ptr %32, i32 -8
  %call1.i321.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i320.i, ptr noundef nonnull @rm68200_init_sequence.d.17, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i321.i)
  %cmp.i322.i = icmp slt i32 %call1.i321.i, 0
  br i1 %cmp.i322.i, label %do.body.i325.i, label %rm68200_dcs_write_cmd.exit.2.i.rm68200_dcs_write_buf.exit327.i_crit_edge

rm68200_dcs_write_cmd.exit.2.i.rm68200_dcs_write_buf.exit327.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit327.i

do.body.i325.i:                                   ; preds = %rm68200_dcs_write_cmd.exit.2.i
  %call2.i323.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i323.i)
  %tobool.not.i324.i = icmp eq i32 %call2.i323.i, 0
  br i1 %tobool.not.i324.i, label %do.body.i325.i.rm68200_dcs_write_buf.exit327.i_crit_edge, label %do.end.i326.i

do.body.i325.i.rm68200_dcs_write_buf.exit327.i_crit_edge: ; preds = %do.body.i325.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit327.i

do.end.i326.i:                                    ; preds = %do.body.i325.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.74, i32 noundef %call1.i321.i) #9
  br label %rm68200_dcs_write_buf.exit327.i

rm68200_dcs_write_buf.exit327.i:                  ; preds = %do.end.i326.i, %do.body.i325.i.rm68200_dcs_write_buf.exit327.i_crit_edge, %rm68200_dcs_write_cmd.exit.2.i.rm68200_dcs_write_buf.exit327.i_crit_edge
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i328.i = getelementptr i8, ptr %36, i32 -8
  %call1.i329.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i328.i, ptr noundef nonnull @rm68200_init_sequence.d.18, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i329.i)
  %cmp.i330.i = icmp slt i32 %call1.i329.i, 0
  br i1 %cmp.i330.i, label %do.body.i333.i, label %rm68200_dcs_write_buf.exit327.i.rm68200_dcs_write_buf.exit335.i_crit_edge

rm68200_dcs_write_buf.exit327.i.rm68200_dcs_write_buf.exit335.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit327.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit335.i

do.body.i333.i:                                   ; preds = %rm68200_dcs_write_buf.exit327.i
  %call2.i331.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i331.i)
  %tobool.not.i332.i = icmp eq i32 %call2.i331.i, 0
  br i1 %tobool.not.i332.i, label %do.body.i333.i.rm68200_dcs_write_buf.exit335.i_crit_edge, label %do.end.i334.i

do.body.i333.i.rm68200_dcs_write_buf.exit335.i_crit_edge: ; preds = %do.body.i333.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit335.i

do.end.i334.i:                                    ; preds = %do.body.i333.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.74, i32 noundef %call1.i329.i) #9
  br label %rm68200_dcs_write_buf.exit335.i

rm68200_dcs_write_buf.exit335.i:                  ; preds = %do.end.i334.i, %do.body.i333.i.rm68200_dcs_write_buf.exit335.i_crit_edge, %rm68200_dcs_write_buf.exit327.i.rm68200_dcs_write_buf.exit335.i_crit_edge
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i336.i = getelementptr i8, ptr %40, i32 -8
  %call1.i337.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i336.i, ptr noundef nonnull @rm68200_init_sequence.d.19, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i337.i)
  %cmp.i338.i = icmp slt i32 %call1.i337.i, 0
  br i1 %cmp.i338.i, label %do.body.i341.i, label %rm68200_dcs_write_buf.exit335.i.rm68200_dcs_write_buf.exit343.i_crit_edge

rm68200_dcs_write_buf.exit335.i.rm68200_dcs_write_buf.exit343.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit335.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit343.i

do.body.i341.i:                                   ; preds = %rm68200_dcs_write_buf.exit335.i
  %call2.i339.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i339.i)
  %tobool.not.i340.i = icmp eq i32 %call2.i339.i, 0
  br i1 %tobool.not.i340.i, label %do.body.i341.i.rm68200_dcs_write_buf.exit343.i_crit_edge, label %do.end.i342.i

do.body.i341.i.rm68200_dcs_write_buf.exit343.i_crit_edge: ; preds = %do.body.i341.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit343.i

do.end.i342.i:                                    ; preds = %do.body.i341.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.74, i32 noundef %call1.i337.i) #9
  br label %rm68200_dcs_write_buf.exit343.i

rm68200_dcs_write_buf.exit343.i:                  ; preds = %do.end.i342.i, %do.body.i341.i.rm68200_dcs_write_buf.exit343.i_crit_edge, %rm68200_dcs_write_buf.exit335.i.rm68200_dcs_write_buf.exit343.i_crit_edge
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i344.i = getelementptr i8, ptr %44, i32 -8
  %call1.i345.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i344.i, ptr noundef nonnull @rm68200_init_sequence.d.20, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i345.i)
  %cmp.i346.i = icmp slt i32 %call1.i345.i, 0
  br i1 %cmp.i346.i, label %do.body.i349.i, label %rm68200_dcs_write_buf.exit343.i.rm68200_dcs_write_buf.exit351.i_crit_edge

rm68200_dcs_write_buf.exit343.i.rm68200_dcs_write_buf.exit351.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit343.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit351.i

do.body.i349.i:                                   ; preds = %rm68200_dcs_write_buf.exit343.i
  %call2.i347.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i347.i)
  %tobool.not.i348.i = icmp eq i32 %call2.i347.i, 0
  br i1 %tobool.not.i348.i, label %do.body.i349.i.rm68200_dcs_write_buf.exit351.i_crit_edge, label %do.end.i350.i

do.body.i349.i.rm68200_dcs_write_buf.exit351.i_crit_edge: ; preds = %do.body.i349.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit351.i

do.end.i350.i:                                    ; preds = %do.body.i349.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.74, i32 noundef %call1.i345.i) #9
  br label %rm68200_dcs_write_buf.exit351.i

rm68200_dcs_write_buf.exit351.i:                  ; preds = %do.end.i350.i, %do.body.i349.i.rm68200_dcs_write_buf.exit351.i_crit_edge, %rm68200_dcs_write_buf.exit343.i.rm68200_dcs_write_buf.exit351.i_crit_edge
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i352.i = getelementptr i8, ptr %48, i32 -8
  %call1.i353.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i352.i, ptr noundef nonnull @rm68200_init_sequence.d.21, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i353.i)
  %cmp.i354.i = icmp slt i32 %call1.i353.i, 0
  br i1 %cmp.i354.i, label %do.body.i357.i, label %rm68200_dcs_write_buf.exit351.i.rm68200_dcs_write_buf.exit359.i_crit_edge

rm68200_dcs_write_buf.exit351.i.rm68200_dcs_write_buf.exit359.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit351.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit359.i

do.body.i357.i:                                   ; preds = %rm68200_dcs_write_buf.exit351.i
  %call2.i355.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i355.i)
  %tobool.not.i356.i = icmp eq i32 %call2.i355.i, 0
  br i1 %tobool.not.i356.i, label %do.body.i357.i.rm68200_dcs_write_buf.exit359.i_crit_edge, label %do.end.i358.i

do.body.i357.i.rm68200_dcs_write_buf.exit359.i_crit_edge: ; preds = %do.body.i357.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit359.i

do.end.i358.i:                                    ; preds = %do.body.i357.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.74, i32 noundef %call1.i353.i) #9
  br label %rm68200_dcs_write_buf.exit359.i

rm68200_dcs_write_buf.exit359.i:                  ; preds = %do.end.i358.i, %do.body.i357.i.rm68200_dcs_write_buf.exit359.i_crit_edge, %rm68200_dcs_write_buf.exit351.i.rm68200_dcs_write_buf.exit359.i_crit_edge
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i360.i = getelementptr i8, ptr %52, i32 -8
  %call1.i361.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i360.i, ptr noundef nonnull @rm68200_init_sequence.d.22, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i361.i)
  %cmp.i362.i = icmp slt i32 %call1.i361.i, 0
  br i1 %cmp.i362.i, label %do.body.i365.i, label %rm68200_dcs_write_buf.exit359.i.rm68200_dcs_write_buf.exit367.i_crit_edge

rm68200_dcs_write_buf.exit359.i.rm68200_dcs_write_buf.exit367.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit359.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit367.i

do.body.i365.i:                                   ; preds = %rm68200_dcs_write_buf.exit359.i
  %call2.i363.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i363.i)
  %tobool.not.i364.i = icmp eq i32 %call2.i363.i, 0
  br i1 %tobool.not.i364.i, label %do.body.i365.i.rm68200_dcs_write_buf.exit367.i_crit_edge, label %do.end.i366.i

do.body.i365.i.rm68200_dcs_write_buf.exit367.i_crit_edge: ; preds = %do.body.i365.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit367.i

do.end.i366.i:                                    ; preds = %do.body.i365.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.74, i32 noundef %call1.i361.i) #9
  br label %rm68200_dcs_write_buf.exit367.i

rm68200_dcs_write_buf.exit367.i:                  ; preds = %do.end.i366.i, %do.body.i365.i.rm68200_dcs_write_buf.exit367.i_crit_edge, %rm68200_dcs_write_buf.exit359.i.rm68200_dcs_write_buf.exit367.i_crit_edge
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i368.i = getelementptr i8, ptr %56, i32 -8
  %call1.i369.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i368.i, ptr noundef nonnull @rm68200_init_sequence.d.23, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i369.i)
  %cmp.i370.i = icmp slt i32 %call1.i369.i, 0
  br i1 %cmp.i370.i, label %do.body.i373.i, label %rm68200_dcs_write_buf.exit367.i.rm68200_dcs_write_buf.exit375.i_crit_edge

rm68200_dcs_write_buf.exit367.i.rm68200_dcs_write_buf.exit375.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit367.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit375.i

do.body.i373.i:                                   ; preds = %rm68200_dcs_write_buf.exit367.i
  %call2.i371.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i371.i)
  %tobool.not.i372.i = icmp eq i32 %call2.i371.i, 0
  br i1 %tobool.not.i372.i, label %do.body.i373.i.rm68200_dcs_write_buf.exit375.i_crit_edge, label %do.end.i374.i

do.body.i373.i.rm68200_dcs_write_buf.exit375.i_crit_edge: ; preds = %do.body.i373.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit375.i

do.end.i374.i:                                    ; preds = %do.body.i373.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.74, i32 noundef %call1.i369.i) #9
  br label %rm68200_dcs_write_buf.exit375.i

rm68200_dcs_write_buf.exit375.i:                  ; preds = %do.end.i374.i, %do.body.i373.i.rm68200_dcs_write_buf.exit375.i_crit_edge, %rm68200_dcs_write_buf.exit367.i.rm68200_dcs_write_buf.exit375.i_crit_edge
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i376.i = getelementptr i8, ptr %60, i32 -8
  %call1.i377.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i376.i, ptr noundef nonnull @rm68200_init_sequence.d.24, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i377.i)
  %cmp.i378.i = icmp slt i32 %call1.i377.i, 0
  br i1 %cmp.i378.i, label %do.body.i381.i, label %rm68200_dcs_write_buf.exit375.i.rm68200_dcs_write_buf.exit383.i_crit_edge

rm68200_dcs_write_buf.exit375.i.rm68200_dcs_write_buf.exit383.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit375.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit383.i

do.body.i381.i:                                   ; preds = %rm68200_dcs_write_buf.exit375.i
  %call2.i379.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i379.i)
  %tobool.not.i380.i = icmp eq i32 %call2.i379.i, 0
  br i1 %tobool.not.i380.i, label %do.body.i381.i.rm68200_dcs_write_buf.exit383.i_crit_edge, label %do.end.i382.i

do.body.i381.i.rm68200_dcs_write_buf.exit383.i_crit_edge: ; preds = %do.body.i381.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit383.i

do.end.i382.i:                                    ; preds = %do.body.i381.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.74, i32 noundef %call1.i377.i) #9
  br label %rm68200_dcs_write_buf.exit383.i

rm68200_dcs_write_buf.exit383.i:                  ; preds = %do.end.i382.i, %do.body.i381.i.rm68200_dcs_write_buf.exit383.i_crit_edge, %rm68200_dcs_write_buf.exit375.i.rm68200_dcs_write_buf.exit383.i_crit_edge
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i384.i = getelementptr i8, ptr %64, i32 -8
  %call1.i385.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i384.i, ptr noundef nonnull @rm68200_init_sequence.d.25, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i385.i)
  %cmp.i386.i = icmp slt i32 %call1.i385.i, 0
  br i1 %cmp.i386.i, label %do.body.i389.i, label %rm68200_dcs_write_buf.exit383.i.rm68200_dcs_write_buf.exit391.i_crit_edge

rm68200_dcs_write_buf.exit383.i.rm68200_dcs_write_buf.exit391.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit383.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit391.i

do.body.i389.i:                                   ; preds = %rm68200_dcs_write_buf.exit383.i
  %call2.i387.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i387.i)
  %tobool.not.i388.i = icmp eq i32 %call2.i387.i, 0
  br i1 %tobool.not.i388.i, label %do.body.i389.i.rm68200_dcs_write_buf.exit391.i_crit_edge, label %do.end.i390.i

do.body.i389.i.rm68200_dcs_write_buf.exit391.i_crit_edge: ; preds = %do.body.i389.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit391.i

do.end.i390.i:                                    ; preds = %do.body.i389.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.74, i32 noundef %call1.i385.i) #9
  br label %rm68200_dcs_write_buf.exit391.i

rm68200_dcs_write_buf.exit391.i:                  ; preds = %do.end.i390.i, %do.body.i389.i.rm68200_dcs_write_buf.exit391.i_crit_edge, %rm68200_dcs_write_buf.exit383.i.rm68200_dcs_write_buf.exit391.i_crit_edge
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i392.i = getelementptr i8, ptr %68, i32 -8
  %call1.i393.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i392.i, ptr noundef nonnull @rm68200_init_sequence.d.26, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i393.i)
  %cmp.i394.i = icmp slt i32 %call1.i393.i, 0
  br i1 %cmp.i394.i, label %do.body.i397.i, label %rm68200_dcs_write_buf.exit391.i.rm68200_dcs_write_buf.exit399.i_crit_edge

rm68200_dcs_write_buf.exit391.i.rm68200_dcs_write_buf.exit399.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit391.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit399.i

do.body.i397.i:                                   ; preds = %rm68200_dcs_write_buf.exit391.i
  %call2.i395.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i395.i)
  %tobool.not.i396.i = icmp eq i32 %call2.i395.i, 0
  br i1 %tobool.not.i396.i, label %do.body.i397.i.rm68200_dcs_write_buf.exit399.i_crit_edge, label %do.end.i398.i

do.body.i397.i.rm68200_dcs_write_buf.exit399.i_crit_edge: ; preds = %do.body.i397.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit399.i

do.end.i398.i:                                    ; preds = %do.body.i397.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.74, i32 noundef %call1.i393.i) #9
  br label %rm68200_dcs_write_buf.exit399.i

rm68200_dcs_write_buf.exit399.i:                  ; preds = %do.end.i398.i, %do.body.i397.i.rm68200_dcs_write_buf.exit399.i_crit_edge, %rm68200_dcs_write_buf.exit391.i.rm68200_dcs_write_buf.exit399.i_crit_edge
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i400.i = getelementptr i8, ptr %72, i32 -8
  %call1.i401.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i400.i, ptr noundef nonnull @rm68200_init_sequence.d.27, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i401.i)
  %cmp.i402.i = icmp slt i32 %call1.i401.i, 0
  br i1 %cmp.i402.i, label %do.body.i405.i, label %rm68200_dcs_write_buf.exit399.i.rm68200_dcs_write_buf.exit407.i_crit_edge

rm68200_dcs_write_buf.exit399.i.rm68200_dcs_write_buf.exit407.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit399.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit407.i

do.body.i405.i:                                   ; preds = %rm68200_dcs_write_buf.exit399.i
  %call2.i403.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i403.i)
  %tobool.not.i404.i = icmp eq i32 %call2.i403.i, 0
  br i1 %tobool.not.i404.i, label %do.body.i405.i.rm68200_dcs_write_buf.exit407.i_crit_edge, label %do.end.i406.i

do.body.i405.i.rm68200_dcs_write_buf.exit407.i_crit_edge: ; preds = %do.body.i405.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit407.i

do.end.i406.i:                                    ; preds = %do.body.i405.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.74, i32 noundef %call1.i401.i) #9
  br label %rm68200_dcs_write_buf.exit407.i

rm68200_dcs_write_buf.exit407.i:                  ; preds = %do.end.i406.i, %do.body.i405.i.rm68200_dcs_write_buf.exit407.i_crit_edge, %rm68200_dcs_write_buf.exit399.i.rm68200_dcs_write_buf.exit407.i_crit_edge
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i408.i = getelementptr i8, ptr %76, i32 -8
  %call1.i409.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i408.i, ptr noundef nonnull @rm68200_init_sequence.d.28, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i409.i)
  %cmp.i410.i = icmp slt i32 %call1.i409.i, 0
  br i1 %cmp.i410.i, label %do.body.i413.i, label %rm68200_dcs_write_buf.exit407.i.rm68200_dcs_write_buf.exit415.i_crit_edge

rm68200_dcs_write_buf.exit407.i.rm68200_dcs_write_buf.exit415.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit407.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit415.i

do.body.i413.i:                                   ; preds = %rm68200_dcs_write_buf.exit407.i
  %call2.i411.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i411.i)
  %tobool.not.i412.i = icmp eq i32 %call2.i411.i, 0
  br i1 %tobool.not.i412.i, label %do.body.i413.i.rm68200_dcs_write_buf.exit415.i_crit_edge, label %do.end.i414.i

do.body.i413.i.rm68200_dcs_write_buf.exit415.i_crit_edge: ; preds = %do.body.i413.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit415.i

do.end.i414.i:                                    ; preds = %do.body.i413.i
  call void @__sanitizer_cov_trace_pc() #8
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.74, i32 noundef %call1.i409.i) #9
  br label %rm68200_dcs_write_buf.exit415.i

rm68200_dcs_write_buf.exit415.i:                  ; preds = %do.end.i414.i, %do.body.i413.i.rm68200_dcs_write_buf.exit415.i_crit_edge, %rm68200_dcs_write_buf.exit407.i.rm68200_dcs_write_buf.exit415.i_crit_edge
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i416.i = getelementptr i8, ptr %80, i32 -8
  %call1.i417.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i416.i, ptr noundef nonnull @rm68200_init_sequence.d.29, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i417.i)
  %cmp.i418.i = icmp slt i32 %call1.i417.i, 0
  br i1 %cmp.i418.i, label %do.body.i421.i, label %rm68200_dcs_write_buf.exit415.i.rm68200_dcs_write_buf.exit423.i_crit_edge

rm68200_dcs_write_buf.exit415.i.rm68200_dcs_write_buf.exit423.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit415.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit423.i

do.body.i421.i:                                   ; preds = %rm68200_dcs_write_buf.exit415.i
  %call2.i419.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i419.i)
  %tobool.not.i420.i = icmp eq i32 %call2.i419.i, 0
  br i1 %tobool.not.i420.i, label %do.body.i421.i.rm68200_dcs_write_buf.exit423.i_crit_edge, label %do.end.i422.i

do.body.i421.i.rm68200_dcs_write_buf.exit423.i_crit_edge: ; preds = %do.body.i421.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit423.i

do.end.i422.i:                                    ; preds = %do.body.i421.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.74, i32 noundef %call1.i417.i) #9
  br label %rm68200_dcs_write_buf.exit423.i

rm68200_dcs_write_buf.exit423.i:                  ; preds = %do.end.i422.i, %do.body.i421.i.rm68200_dcs_write_buf.exit423.i_crit_edge, %rm68200_dcs_write_buf.exit415.i.rm68200_dcs_write_buf.exit423.i_crit_edge
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i424.i = getelementptr i8, ptr %84, i32 -8
  %call1.i425.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i424.i, ptr noundef nonnull @rm68200_init_sequence.d.30, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i425.i)
  %cmp.i426.i = icmp slt i32 %call1.i425.i, 0
  br i1 %cmp.i426.i, label %do.body.i429.i, label %rm68200_dcs_write_buf.exit423.i.rm68200_dcs_write_buf.exit431.i_crit_edge

rm68200_dcs_write_buf.exit423.i.rm68200_dcs_write_buf.exit431.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit423.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit431.i

do.body.i429.i:                                   ; preds = %rm68200_dcs_write_buf.exit423.i
  %call2.i427.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i427.i)
  %tobool.not.i428.i = icmp eq i32 %call2.i427.i, 0
  br i1 %tobool.not.i428.i, label %do.body.i429.i.rm68200_dcs_write_buf.exit431.i_crit_edge, label %do.end.i430.i

do.body.i429.i.rm68200_dcs_write_buf.exit431.i_crit_edge: ; preds = %do.body.i429.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit431.i

do.end.i430.i:                                    ; preds = %do.body.i429.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.74, i32 noundef %call1.i425.i) #9
  br label %rm68200_dcs_write_buf.exit431.i

rm68200_dcs_write_buf.exit431.i:                  ; preds = %do.end.i430.i, %do.body.i429.i.rm68200_dcs_write_buf.exit431.i_crit_edge, %rm68200_dcs_write_buf.exit423.i.rm68200_dcs_write_buf.exit431.i_crit_edge
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i432.i = getelementptr i8, ptr %88, i32 -8
  %call1.i433.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i432.i, ptr noundef nonnull @rm68200_init_sequence.d.31, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i433.i)
  %cmp.i434.i = icmp slt i32 %call1.i433.i, 0
  br i1 %cmp.i434.i, label %do.body.i437.i, label %rm68200_dcs_write_buf.exit431.i.rm68200_dcs_write_buf.exit439.i_crit_edge

rm68200_dcs_write_buf.exit431.i.rm68200_dcs_write_buf.exit439.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit431.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit439.i

do.body.i437.i:                                   ; preds = %rm68200_dcs_write_buf.exit431.i
  %call2.i435.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i435.i)
  %tobool.not.i436.i = icmp eq i32 %call2.i435.i, 0
  br i1 %tobool.not.i436.i, label %do.body.i437.i.rm68200_dcs_write_buf.exit439.i_crit_edge, label %do.end.i438.i

do.body.i437.i.rm68200_dcs_write_buf.exit439.i_crit_edge: ; preds = %do.body.i437.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit439.i

do.end.i438.i:                                    ; preds = %do.body.i437.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.74, i32 noundef %call1.i433.i) #9
  br label %rm68200_dcs_write_buf.exit439.i

rm68200_dcs_write_buf.exit439.i:                  ; preds = %do.end.i438.i, %do.body.i437.i.rm68200_dcs_write_buf.exit439.i_crit_edge, %rm68200_dcs_write_buf.exit431.i.rm68200_dcs_write_buf.exit439.i_crit_edge
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i440.i = getelementptr i8, ptr %92, i32 -8
  %call1.i441.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i440.i, ptr noundef nonnull @rm68200_init_sequence.d.32, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i441.i)
  %cmp.i442.i = icmp slt i32 %call1.i441.i, 0
  br i1 %cmp.i442.i, label %do.body.i445.i, label %rm68200_dcs_write_buf.exit439.i.rm68200_dcs_write_buf.exit447.i_crit_edge

rm68200_dcs_write_buf.exit439.i.rm68200_dcs_write_buf.exit447.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit439.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit447.i

do.body.i445.i:                                   ; preds = %rm68200_dcs_write_buf.exit439.i
  %call2.i443.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i443.i)
  %tobool.not.i444.i = icmp eq i32 %call2.i443.i, 0
  br i1 %tobool.not.i444.i, label %do.body.i445.i.rm68200_dcs_write_buf.exit447.i_crit_edge, label %do.end.i446.i

do.body.i445.i.rm68200_dcs_write_buf.exit447.i_crit_edge: ; preds = %do.body.i445.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit447.i

do.end.i446.i:                                    ; preds = %do.body.i445.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.74, i32 noundef %call1.i441.i) #9
  br label %rm68200_dcs_write_buf.exit447.i

rm68200_dcs_write_buf.exit447.i:                  ; preds = %do.end.i446.i, %do.body.i445.i.rm68200_dcs_write_buf.exit447.i_crit_edge, %rm68200_dcs_write_buf.exit439.i.rm68200_dcs_write_buf.exit447.i_crit_edge
  %95 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i448.i = getelementptr i8, ptr %96, i32 -8
  %call1.i449.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i448.i, ptr noundef nonnull @rm68200_init_sequence.d.33, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i449.i)
  %cmp.i450.i = icmp slt i32 %call1.i449.i, 0
  br i1 %cmp.i450.i, label %do.body.i453.i, label %rm68200_dcs_write_buf.exit447.i.rm68200_dcs_write_buf.exit455.i_crit_edge

rm68200_dcs_write_buf.exit447.i.rm68200_dcs_write_buf.exit455.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit447.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit455.i

do.body.i453.i:                                   ; preds = %rm68200_dcs_write_buf.exit447.i
  %call2.i451.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i451.i)
  %tobool.not.i452.i = icmp eq i32 %call2.i451.i, 0
  br i1 %tobool.not.i452.i, label %do.body.i453.i.rm68200_dcs_write_buf.exit455.i_crit_edge, label %do.end.i454.i

do.body.i453.i.rm68200_dcs_write_buf.exit455.i_crit_edge: ; preds = %do.body.i453.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit455.i

do.end.i454.i:                                    ; preds = %do.body.i453.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.74, i32 noundef %call1.i449.i) #9
  br label %rm68200_dcs_write_buf.exit455.i

rm68200_dcs_write_buf.exit455.i:                  ; preds = %do.end.i454.i, %do.body.i453.i.rm68200_dcs_write_buf.exit455.i_crit_edge, %rm68200_dcs_write_buf.exit447.i.rm68200_dcs_write_buf.exit455.i_crit_edge
  %99 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i456.i = getelementptr i8, ptr %100, i32 -8
  %call1.i457.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i456.i, ptr noundef nonnull @rm68200_init_sequence.d.34, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i457.i)
  %cmp.i458.i = icmp slt i32 %call1.i457.i, 0
  br i1 %cmp.i458.i, label %do.body.i461.i, label %rm68200_dcs_write_buf.exit455.i.for.body5.i.preheader_crit_edge

rm68200_dcs_write_buf.exit455.i.for.body5.i.preheader_crit_edge: ; preds = %rm68200_dcs_write_buf.exit455.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i.preheader

do.body.i461.i:                                   ; preds = %rm68200_dcs_write_buf.exit455.i
  %call2.i459.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i459.i)
  %tobool.not.i460.i = icmp eq i32 %call2.i459.i, 0
  br i1 %tobool.not.i460.i, label %do.body.i461.i.for.body5.i.preheader_crit_edge, label %do.end.i462.i

do.body.i461.i.for.body5.i.preheader_crit_edge:   ; preds = %do.body.i461.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i.preheader

do.end.i462.i:                                    ; preds = %do.body.i461.i
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.74, i32 noundef %call1.i457.i) #9
  br label %for.body5.i.preheader

for.body5.i.preheader:                            ; preds = %do.end.i462.i, %do.body.i461.i.for.body5.i.preheader_crit_edge, %rm68200_dcs_write_buf.exit455.i.for.body5.i.preheader_crit_edge
  br label %for.body5.i

for.body5.i:                                      ; preds = %rm68200_dcs_write_cmd.exit472.i.for.body5.i_crit_edge, %for.body5.i.preheader
  %i1.0787.i = phi i32 [ %inc10.i, %rm68200_dcs_write_cmd.exit472.i.for.body5.i_crit_edge ], [ 0, %for.body5.i.preheader ]
  %103 = trunc i32 %i1.0787.i to i8
  %conv7.i = add nuw nsw i8 %103, 7
  %arrayidx8.i = getelementptr [7 x i8], ptr @rm68200_init_sequence.d.35, i32 0, i32 %i1.0787.i
  %104 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx8.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i464.i) #6
  %106 = ptrtoint ptr %value.addr.i464.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %value.addr.i464.i, align 1
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i465.i = getelementptr i8, ptr %108, i32 -8
  %call1.i466.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i465.i, i8 noundef zeroext %conv7.i, ptr noundef nonnull %value.addr.i464.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i466.i)
  %cmp.i467.i = icmp slt i32 %call1.i466.i, 0
  br i1 %cmp.i467.i, label %do.body.i470.i, label %for.body5.i.rm68200_dcs_write_cmd.exit472.i_crit_edge

for.body5.i.rm68200_dcs_write_cmd.exit472.i_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit472.i

do.body.i470.i:                                   ; preds = %for.body5.i
  %call2.i468.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i468.i)
  %tobool.not.i469.i = icmp eq i32 %call2.i468.i, 0
  br i1 %tobool.not.i469.i, label %do.body.i470.i.rm68200_dcs_write_cmd.exit472.i_crit_edge, label %do.end.i471.i

do.body.i470.i.rm68200_dcs_write_cmd.exit472.i_crit_edge: ; preds = %do.body.i470.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit472.i

do.end.i471.i:                                    ; preds = %do.body.i470.i
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.75, i32 noundef %call1.i466.i) #9
  br label %rm68200_dcs_write_cmd.exit472.i

rm68200_dcs_write_cmd.exit472.i:                  ; preds = %do.end.i471.i, %do.body.i470.i.rm68200_dcs_write_cmd.exit472.i_crit_edge, %for.body5.i.rm68200_dcs_write_cmd.exit472.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i464.i) #6
  %inc10.i = add nuw nsw i32 %i1.0787.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, 7
  br i1 %exitcond.not.i, label %rm68200_dcs_write_cmd.exit472.i.for.body16.i_crit_edge, label %rm68200_dcs_write_cmd.exit472.i.for.body5.i_crit_edge

rm68200_dcs_write_cmd.exit472.i.for.body5.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit472.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

rm68200_dcs_write_cmd.exit472.i.for.body16.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit472.i
  br label %for.body16.i

for.body16.i:                                     ; preds = %rm68200_dcs_write_cmd.exit481.i.for.body16.i_crit_edge, %rm68200_dcs_write_cmd.exit472.i.for.body16.i_crit_edge
  %i12.0788.i = phi i32 [ %inc21.i, %rm68200_dcs_write_cmd.exit481.i.for.body16.i_crit_edge ], [ 0, %rm68200_dcs_write_cmd.exit472.i.for.body16.i_crit_edge ]
  %111 = trunc i32 %i12.0788.i to i8
  %conv18.i = add nuw nsw i8 %111, 14
  %arrayidx19.i = getelementptr [9 x i8], ptr @rm68200_init_sequence.d.36, i32 0, i32 %i12.0788.i
  %112 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx19.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i473.i) #6
  %114 = ptrtoint ptr %value.addr.i473.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %value.addr.i473.i, align 1
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i474.i = getelementptr i8, ptr %116, i32 -8
  %call1.i475.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i474.i, i8 noundef zeroext %conv18.i, ptr noundef nonnull %value.addr.i473.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i475.i)
  %cmp.i476.i = icmp slt i32 %call1.i475.i, 0
  br i1 %cmp.i476.i, label %do.body.i479.i, label %for.body16.i.rm68200_dcs_write_cmd.exit481.i_crit_edge

for.body16.i.rm68200_dcs_write_cmd.exit481.i_crit_edge: ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit481.i

do.body.i479.i:                                   ; preds = %for.body16.i
  %call2.i477.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i477.i)
  %tobool.not.i478.i = icmp eq i32 %call2.i477.i, 0
  br i1 %tobool.not.i478.i, label %do.body.i479.i.rm68200_dcs_write_cmd.exit481.i_crit_edge, label %do.end.i480.i

do.body.i479.i.rm68200_dcs_write_cmd.exit481.i_crit_edge: ; preds = %do.body.i479.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit481.i

do.end.i480.i:                                    ; preds = %do.body.i479.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.75, i32 noundef %call1.i475.i) #9
  br label %rm68200_dcs_write_cmd.exit481.i

rm68200_dcs_write_cmd.exit481.i:                  ; preds = %do.end.i480.i, %do.body.i479.i.rm68200_dcs_write_cmd.exit481.i_crit_edge, %for.body16.i.rm68200_dcs_write_cmd.exit481.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i473.i) #6
  %inc21.i = add nuw nsw i32 %i12.0788.i, 1
  %exitcond805.not.i = icmp eq i32 %inc21.i, 9
  br i1 %exitcond805.not.i, label %rm68200_dcs_write_cmd.exit481.i.for.body27.i_crit_edge, label %rm68200_dcs_write_cmd.exit481.i.for.body16.i_crit_edge

rm68200_dcs_write_cmd.exit481.i.for.body16.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit481.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16.i

rm68200_dcs_write_cmd.exit481.i.for.body27.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit481.i
  br label %for.body27.i

for.body27.i:                                     ; preds = %rm68200_dcs_write_cmd.exit490.i.for.body27.i_crit_edge, %rm68200_dcs_write_cmd.exit481.i.for.body27.i_crit_edge
  %i23.0789.i = phi i32 [ %inc32.i, %rm68200_dcs_write_cmd.exit490.i.for.body27.i_crit_edge ], [ 0, %rm68200_dcs_write_cmd.exit481.i.for.body27.i_crit_edge ]
  %119 = trunc i32 %i23.0789.i to i8
  %conv29.i = add nuw nsw i8 %119, 23
  %arrayidx30.i = getelementptr [9 x i8], ptr @rm68200_init_sequence.d.37, i32 0, i32 %i23.0789.i
  %120 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx30.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i482.i) #6
  %122 = ptrtoint ptr %value.addr.i482.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %value.addr.i482.i, align 1
  %123 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i483.i = getelementptr i8, ptr %124, i32 -8
  %call1.i484.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i483.i, i8 noundef zeroext %conv29.i, ptr noundef nonnull %value.addr.i482.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i484.i)
  %cmp.i485.i = icmp slt i32 %call1.i484.i, 0
  br i1 %cmp.i485.i, label %do.body.i488.i, label %for.body27.i.rm68200_dcs_write_cmd.exit490.i_crit_edge

for.body27.i.rm68200_dcs_write_cmd.exit490.i_crit_edge: ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit490.i

do.body.i488.i:                                   ; preds = %for.body27.i
  %call2.i486.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i486.i)
  %tobool.not.i487.i = icmp eq i32 %call2.i486.i, 0
  br i1 %tobool.not.i487.i, label %do.body.i488.i.rm68200_dcs_write_cmd.exit490.i_crit_edge, label %do.end.i489.i

do.body.i488.i.rm68200_dcs_write_cmd.exit490.i_crit_edge: ; preds = %do.body.i488.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit490.i

do.end.i489.i:                                    ; preds = %do.body.i488.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.75, i32 noundef %call1.i484.i) #9
  br label %rm68200_dcs_write_cmd.exit490.i

rm68200_dcs_write_cmd.exit490.i:                  ; preds = %do.end.i489.i, %do.body.i488.i.rm68200_dcs_write_cmd.exit490.i_crit_edge, %for.body27.i.rm68200_dcs_write_cmd.exit490.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i482.i) #6
  %inc32.i = add nuw nsw i32 %i23.0789.i, 1
  %exitcond806.not.i = icmp eq i32 %inc32.i, 9
  br i1 %exitcond806.not.i, label %for.end33.i, label %rm68200_dcs_write_cmd.exit490.i.for.body27.i_crit_edge

rm68200_dcs_write_cmd.exit490.i.for.body27.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit490.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27.i

for.end33.i:                                      ; preds = %rm68200_dcs_write_cmd.exit490.i
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i491.i = getelementptr i8, ptr %128, i32 -8
  %call1.i492.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i491.i, ptr noundef nonnull @rm68200_init_sequence.d.38, i32 noundef 11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i492.i)
  %cmp.i493.i = icmp slt i32 %call1.i492.i, 0
  br i1 %cmp.i493.i, label %do.body.i496.i, label %for.end33.i.rm68200_dcs_write_buf.exit498.i_crit_edge

for.end33.i.rm68200_dcs_write_buf.exit498.i_crit_edge: ; preds = %for.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit498.i

do.body.i496.i:                                   ; preds = %for.end33.i
  %call2.i494.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i494.i)
  %tobool.not.i495.i = icmp eq i32 %call2.i494.i, 0
  br i1 %tobool.not.i495.i, label %do.body.i496.i.rm68200_dcs_write_buf.exit498.i_crit_edge, label %do.end.i497.i

do.body.i496.i.rm68200_dcs_write_buf.exit498.i_crit_edge: ; preds = %do.body.i496.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit498.i

do.end.i497.i:                                    ; preds = %do.body.i496.i
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.74, i32 noundef %call1.i492.i) #9
  br label %rm68200_dcs_write_buf.exit498.i

rm68200_dcs_write_buf.exit498.i:                  ; preds = %do.end.i497.i, %do.body.i496.i.rm68200_dcs_write_buf.exit498.i_crit_edge, %for.end33.i.rm68200_dcs_write_buf.exit498.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i499.i) #6
  %131 = ptrtoint ptr %value.addr.i499.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 7, ptr %value.addr.i499.i, align 1
  %132 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i500.i = getelementptr i8, ptr %133, i32 -8
  %call1.i501.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i500.i, i8 noundef zeroext 42, ptr noundef nonnull %value.addr.i499.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i501.i)
  %cmp.i502.i = icmp slt i32 %call1.i501.i, 0
  br i1 %cmp.i502.i, label %do.body.i505.i, label %rm68200_dcs_write_buf.exit498.i.rm68200_dcs_write_cmd.exit507.i_crit_edge

rm68200_dcs_write_buf.exit498.i.rm68200_dcs_write_cmd.exit507.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit498.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit507.i

do.body.i505.i:                                   ; preds = %rm68200_dcs_write_buf.exit498.i
  %call2.i503.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i503.i)
  %tobool.not.i504.i = icmp eq i32 %call2.i503.i, 0
  br i1 %tobool.not.i504.i, label %do.body.i505.i.rm68200_dcs_write_cmd.exit507.i_crit_edge, label %do.end.i506.i

do.body.i505.i.rm68200_dcs_write_cmd.exit507.i_crit_edge: ; preds = %do.body.i505.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit507.i

do.end.i506.i:                                    ; preds = %do.body.i505.i
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.75, i32 noundef %call1.i501.i) #9
  br label %rm68200_dcs_write_cmd.exit507.i

rm68200_dcs_write_cmd.exit507.i:                  ; preds = %do.end.i506.i, %do.body.i505.i.rm68200_dcs_write_cmd.exit507.i_crit_edge, %rm68200_dcs_write_buf.exit498.i.rm68200_dcs_write_cmd.exit507.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i499.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i499.i) #6
  %136 = ptrtoint ptr %value.addr.i499.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 8, ptr %value.addr.i499.i, align 1
  %137 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i500.1.i = getelementptr i8, ptr %138, i32 -8
  %call1.i501.1.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i500.1.i, i8 noundef zeroext 43, ptr noundef nonnull %value.addr.i499.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i501.1.i)
  %cmp.i502.1.i = icmp slt i32 %call1.i501.1.i, 0
  br i1 %cmp.i502.1.i, label %do.body.i505.1.i, label %rm68200_dcs_write_cmd.exit507.i.rm68200_dcs_write_cmd.exit507.1.i_crit_edge

rm68200_dcs_write_cmd.exit507.i.rm68200_dcs_write_cmd.exit507.1.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit507.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit507.1.i

do.body.i505.1.i:                                 ; preds = %rm68200_dcs_write_cmd.exit507.i
  %call2.i503.1.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i503.1.i)
  %tobool.not.i504.1.i = icmp eq i32 %call2.i503.1.i, 0
  br i1 %tobool.not.i504.1.i, label %do.body.i505.1.i.rm68200_dcs_write_cmd.exit507.1.i_crit_edge, label %do.end.i506.1.i

do.body.i505.1.i.rm68200_dcs_write_cmd.exit507.1.i_crit_edge: ; preds = %do.body.i505.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit507.1.i

do.end.i506.1.i:                                  ; preds = %do.body.i505.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.75, i32 noundef %call1.i501.1.i) #9
  br label %rm68200_dcs_write_cmd.exit507.1.i

rm68200_dcs_write_cmd.exit507.1.i:                ; preds = %do.end.i506.1.i, %do.body.i505.1.i.rm68200_dcs_write_cmd.exit507.1.i_crit_edge, %rm68200_dcs_write_cmd.exit507.i.rm68200_dcs_write_cmd.exit507.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i499.i) #6
  %141 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i508.i = getelementptr i8, ptr %142, i32 -8
  %call1.i509.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i508.i, ptr noundef nonnull @rm68200_init_sequence.d.40, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i509.i)
  %cmp.i510.i = icmp slt i32 %call1.i509.i, 0
  br i1 %cmp.i510.i, label %do.body.i513.i, label %rm68200_dcs_write_cmd.exit507.1.i.rm68200_dcs_write_buf.exit515.i_crit_edge

rm68200_dcs_write_cmd.exit507.1.i.rm68200_dcs_write_buf.exit515.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit507.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit515.i

do.body.i513.i:                                   ; preds = %rm68200_dcs_write_cmd.exit507.1.i
  %call2.i511.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i511.i)
  %tobool.not.i512.i = icmp eq i32 %call2.i511.i, 0
  br i1 %tobool.not.i512.i, label %do.body.i513.i.rm68200_dcs_write_buf.exit515.i_crit_edge, label %do.end.i514.i

do.body.i513.i.rm68200_dcs_write_buf.exit515.i_crit_edge: ; preds = %do.body.i513.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit515.i

do.end.i514.i:                                    ; preds = %do.body.i513.i
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.74, i32 noundef %call1.i509.i) #9
  br label %rm68200_dcs_write_buf.exit515.i

rm68200_dcs_write_buf.exit515.i:                  ; preds = %do.end.i514.i, %do.body.i513.i.rm68200_dcs_write_buf.exit515.i_crit_edge, %rm68200_dcs_write_cmd.exit507.1.i.rm68200_dcs_write_buf.exit515.i_crit_edge
  %145 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i516.i = getelementptr i8, ptr %146, i32 -8
  %call1.i517.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i516.i, ptr noundef nonnull @rm68200_init_sequence.d.41, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i517.i)
  %cmp.i518.i = icmp slt i32 %call1.i517.i, 0
  br i1 %cmp.i518.i, label %do.body.i521.i, label %rm68200_dcs_write_buf.exit515.i.rm68200_dcs_write_buf.exit523.i_crit_edge

rm68200_dcs_write_buf.exit515.i.rm68200_dcs_write_buf.exit523.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit515.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit523.i

do.body.i521.i:                                   ; preds = %rm68200_dcs_write_buf.exit515.i
  %call2.i519.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i519.i)
  %tobool.not.i520.i = icmp eq i32 %call2.i519.i, 0
  br i1 %tobool.not.i520.i, label %do.body.i521.i.rm68200_dcs_write_buf.exit523.i_crit_edge, label %do.end.i522.i

do.body.i521.i.rm68200_dcs_write_buf.exit523.i_crit_edge: ; preds = %do.body.i521.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit523.i

do.end.i522.i:                                    ; preds = %do.body.i521.i
  call void @__sanitizer_cov_trace_pc() #8
  %147 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %148, ptr noundef nonnull @.str.74, i32 noundef %call1.i517.i) #9
  br label %rm68200_dcs_write_buf.exit523.i

rm68200_dcs_write_buf.exit523.i:                  ; preds = %do.end.i522.i, %do.body.i521.i.rm68200_dcs_write_buf.exit523.i_crit_edge, %rm68200_dcs_write_buf.exit515.i.rm68200_dcs_write_buf.exit523.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  %149 = ptrtoint ptr %value.addr.i524.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 3, ptr %value.addr.i524.i, align 1
  %150 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i525.i = getelementptr i8, ptr %151, i32 -8
  %call1.i526.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i525.i, i8 noundef zeroext 55, ptr noundef nonnull %value.addr.i524.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i526.i)
  %cmp.i527.i = icmp slt i32 %call1.i526.i, 0
  br i1 %cmp.i527.i, label %do.body.i530.i, label %rm68200_dcs_write_buf.exit523.i.rm68200_dcs_write_cmd.exit532.i_crit_edge

rm68200_dcs_write_buf.exit523.i.rm68200_dcs_write_cmd.exit532.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit523.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.i

do.body.i530.i:                                   ; preds = %rm68200_dcs_write_buf.exit523.i
  %call2.i528.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i528.i)
  %tobool.not.i529.i = icmp eq i32 %call2.i528.i, 0
  br i1 %tobool.not.i529.i, label %do.body.i530.i.rm68200_dcs_write_cmd.exit532.i_crit_edge, label %do.end.i531.i

do.body.i530.i.rm68200_dcs_write_cmd.exit532.i_crit_edge: ; preds = %do.body.i530.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.i

do.end.i531.i:                                    ; preds = %do.body.i530.i
  call void @__sanitizer_cov_trace_pc() #8
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.75, i32 noundef %call1.i526.i) #9
  br label %rm68200_dcs_write_cmd.exit532.i

rm68200_dcs_write_cmd.exit532.i:                  ; preds = %do.end.i531.i, %do.body.i530.i.rm68200_dcs_write_cmd.exit532.i_crit_edge, %rm68200_dcs_write_buf.exit523.i.rm68200_dcs_write_cmd.exit532.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  %154 = ptrtoint ptr %value.addr.i524.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 4, ptr %value.addr.i524.i, align 1
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i525.1.i = getelementptr i8, ptr %156, i32 -8
  %call1.i526.1.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i525.1.i, i8 noundef zeroext 56, ptr noundef nonnull %value.addr.i524.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i526.1.i)
  %cmp.i527.1.i = icmp slt i32 %call1.i526.1.i, 0
  br i1 %cmp.i527.1.i, label %do.body.i530.1.i, label %rm68200_dcs_write_cmd.exit532.i.rm68200_dcs_write_cmd.exit532.1.i_crit_edge

rm68200_dcs_write_cmd.exit532.i.rm68200_dcs_write_cmd.exit532.1.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit532.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.1.i

do.body.i530.1.i:                                 ; preds = %rm68200_dcs_write_cmd.exit532.i
  %call2.i528.1.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i528.1.i)
  %tobool.not.i529.1.i = icmp eq i32 %call2.i528.1.i, 0
  br i1 %tobool.not.i529.1.i, label %do.body.i530.1.i.rm68200_dcs_write_cmd.exit532.1.i_crit_edge, label %do.end.i531.1.i

do.body.i530.1.i.rm68200_dcs_write_cmd.exit532.1.i_crit_edge: ; preds = %do.body.i530.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.1.i

do.end.i531.1.i:                                  ; preds = %do.body.i530.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.75, i32 noundef %call1.i526.1.i) #9
  br label %rm68200_dcs_write_cmd.exit532.1.i

rm68200_dcs_write_cmd.exit532.1.i:                ; preds = %do.end.i531.1.i, %do.body.i530.1.i.rm68200_dcs_write_cmd.exit532.1.i_crit_edge, %rm68200_dcs_write_cmd.exit532.i.rm68200_dcs_write_cmd.exit532.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  %159 = ptrtoint ptr %value.addr.i524.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 5, ptr %value.addr.i524.i, align 1
  %160 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i525.2.i = getelementptr i8, ptr %161, i32 -8
  %call1.i526.2.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i525.2.i, i8 noundef zeroext 57, ptr noundef nonnull %value.addr.i524.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i526.2.i)
  %cmp.i527.2.i = icmp slt i32 %call1.i526.2.i, 0
  br i1 %cmp.i527.2.i, label %do.body.i530.2.i, label %rm68200_dcs_write_cmd.exit532.1.i.rm68200_dcs_write_cmd.exit532.2.i_crit_edge

rm68200_dcs_write_cmd.exit532.1.i.rm68200_dcs_write_cmd.exit532.2.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit532.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.2.i

do.body.i530.2.i:                                 ; preds = %rm68200_dcs_write_cmd.exit532.1.i
  %call2.i528.2.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i528.2.i)
  %tobool.not.i529.2.i = icmp eq i32 %call2.i528.2.i, 0
  br i1 %tobool.not.i529.2.i, label %do.body.i530.2.i.rm68200_dcs_write_cmd.exit532.2.i_crit_edge, label %do.end.i531.2.i

do.body.i530.2.i.rm68200_dcs_write_cmd.exit532.2.i_crit_edge: ; preds = %do.body.i530.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.2.i

do.end.i531.2.i:                                  ; preds = %do.body.i530.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %163, ptr noundef nonnull @.str.75, i32 noundef %call1.i526.2.i) #9
  br label %rm68200_dcs_write_cmd.exit532.2.i

rm68200_dcs_write_cmd.exit532.2.i:                ; preds = %do.end.i531.2.i, %do.body.i530.2.i.rm68200_dcs_write_cmd.exit532.2.i_crit_edge, %rm68200_dcs_write_cmd.exit532.1.i.rm68200_dcs_write_cmd.exit532.2.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  %164 = ptrtoint ptr %value.addr.i524.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 6, ptr %value.addr.i524.i, align 1
  %165 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i525.3.i = getelementptr i8, ptr %166, i32 -8
  %call1.i526.3.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i525.3.i, i8 noundef zeroext 58, ptr noundef nonnull %value.addr.i524.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i526.3.i)
  %cmp.i527.3.i = icmp slt i32 %call1.i526.3.i, 0
  br i1 %cmp.i527.3.i, label %do.body.i530.3.i, label %rm68200_dcs_write_cmd.exit532.2.i.rm68200_dcs_write_cmd.exit532.3.i_crit_edge

rm68200_dcs_write_cmd.exit532.2.i.rm68200_dcs_write_cmd.exit532.3.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit532.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.3.i

do.body.i530.3.i:                                 ; preds = %rm68200_dcs_write_cmd.exit532.2.i
  %call2.i528.3.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i528.3.i)
  %tobool.not.i529.3.i = icmp eq i32 %call2.i528.3.i, 0
  br i1 %tobool.not.i529.3.i, label %do.body.i530.3.i.rm68200_dcs_write_cmd.exit532.3.i_crit_edge, label %do.end.i531.3.i

do.body.i530.3.i.rm68200_dcs_write_cmd.exit532.3.i_crit_edge: ; preds = %do.body.i530.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.3.i

do.end.i531.3.i:                                  ; preds = %do.body.i530.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.75, i32 noundef %call1.i526.3.i) #9
  br label %rm68200_dcs_write_cmd.exit532.3.i

rm68200_dcs_write_cmd.exit532.3.i:                ; preds = %do.end.i531.3.i, %do.body.i530.3.i.rm68200_dcs_write_cmd.exit532.3.i_crit_edge, %rm68200_dcs_write_cmd.exit532.2.i.rm68200_dcs_write_cmd.exit532.3.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  %169 = ptrtoint ptr %value.addr.i524.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 0, ptr %value.addr.i524.i, align 1
  %170 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i525.4.i = getelementptr i8, ptr %171, i32 -8
  %call1.i526.4.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i525.4.i, i8 noundef zeroext 59, ptr noundef nonnull %value.addr.i524.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i526.4.i)
  %cmp.i527.4.i = icmp slt i32 %call1.i526.4.i, 0
  br i1 %cmp.i527.4.i, label %do.body.i530.4.i, label %rm68200_dcs_write_cmd.exit532.3.i.rm68200_dcs_write_cmd.exit532.4.i_crit_edge

rm68200_dcs_write_cmd.exit532.3.i.rm68200_dcs_write_cmd.exit532.4.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit532.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.4.i

do.body.i530.4.i:                                 ; preds = %rm68200_dcs_write_cmd.exit532.3.i
  %call2.i528.4.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i528.4.i)
  %tobool.not.i529.4.i = icmp eq i32 %call2.i528.4.i, 0
  br i1 %tobool.not.i529.4.i, label %do.body.i530.4.i.rm68200_dcs_write_cmd.exit532.4.i_crit_edge, label %do.end.i531.4.i

do.body.i530.4.i.rm68200_dcs_write_cmd.exit532.4.i_crit_edge: ; preds = %do.body.i530.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit532.4.i

do.end.i531.4.i:                                  ; preds = %do.body.i530.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.75, i32 noundef %call1.i526.4.i) #9
  br label %rm68200_dcs_write_cmd.exit532.4.i

rm68200_dcs_write_cmd.exit532.4.i:                ; preds = %do.end.i531.4.i, %do.body.i530.4.i.rm68200_dcs_write_cmd.exit532.4.i_crit_edge, %rm68200_dcs_write_cmd.exit532.3.i.rm68200_dcs_write_cmd.exit532.4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i524.i) #6
  %174 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i533.i = getelementptr i8, ptr %175, i32 -8
  %call1.i534.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i533.i, ptr noundef nonnull @rm68200_init_sequence.d.43, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i534.i)
  %cmp.i535.i = icmp slt i32 %call1.i534.i, 0
  br i1 %cmp.i535.i, label %do.body.i538.i, label %rm68200_dcs_write_cmd.exit532.4.i.rm68200_dcs_write_buf.exit540.i_crit_edge

rm68200_dcs_write_cmd.exit532.4.i.rm68200_dcs_write_buf.exit540.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit532.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit540.i

do.body.i538.i:                                   ; preds = %rm68200_dcs_write_cmd.exit532.4.i
  %call2.i536.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i536.i)
  %tobool.not.i537.i = icmp eq i32 %call2.i536.i, 0
  br i1 %tobool.not.i537.i, label %do.body.i538.i.rm68200_dcs_write_buf.exit540.i_crit_edge, label %do.end.i539.i

do.body.i538.i.rm68200_dcs_write_buf.exit540.i_crit_edge: ; preds = %do.body.i538.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit540.i

do.end.i539.i:                                    ; preds = %do.body.i538.i
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.74, i32 noundef %call1.i534.i) #9
  br label %rm68200_dcs_write_buf.exit540.i

rm68200_dcs_write_buf.exit540.i:                  ; preds = %do.end.i539.i, %do.body.i538.i.rm68200_dcs_write_buf.exit540.i_crit_edge, %rm68200_dcs_write_cmd.exit532.4.i.rm68200_dcs_write_buf.exit540.i_crit_edge
  %178 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i541.i = getelementptr i8, ptr %179, i32 -8
  %call1.i542.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i541.i, ptr noundef nonnull @rm68200_init_sequence.d.44, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i542.i)
  %cmp.i543.i = icmp slt i32 %call1.i542.i, 0
  br i1 %cmp.i543.i, label %do.body.i546.i, label %rm68200_dcs_write_buf.exit540.i.rm68200_dcs_write_buf.exit548.i_crit_edge

rm68200_dcs_write_buf.exit540.i.rm68200_dcs_write_buf.exit548.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit540.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit548.i

do.body.i546.i:                                   ; preds = %rm68200_dcs_write_buf.exit540.i
  %call2.i544.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i544.i)
  %tobool.not.i545.i = icmp eq i32 %call2.i544.i, 0
  br i1 %tobool.not.i545.i, label %do.body.i546.i.rm68200_dcs_write_buf.exit548.i_crit_edge, label %do.end.i547.i

do.body.i546.i.rm68200_dcs_write_buf.exit548.i_crit_edge: ; preds = %do.body.i546.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit548.i

do.end.i547.i:                                    ; preds = %do.body.i546.i
  call void @__sanitizer_cov_trace_pc() #8
  %180 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.74, i32 noundef %call1.i542.i) #9
  br label %rm68200_dcs_write_buf.exit548.i

rm68200_dcs_write_buf.exit548.i:                  ; preds = %do.end.i547.i, %do.body.i546.i.rm68200_dcs_write_buf.exit548.i_crit_edge, %rm68200_dcs_write_buf.exit540.i.rm68200_dcs_write_buf.exit548.i_crit_edge
  %182 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i549.i = getelementptr i8, ptr %183, i32 -8
  %call1.i550.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i549.i, ptr noundef nonnull @rm68200_init_sequence.d.45, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i550.i)
  %cmp.i551.i = icmp slt i32 %call1.i550.i, 0
  br i1 %cmp.i551.i, label %do.body.i554.i, label %rm68200_dcs_write_buf.exit548.i.rm68200_dcs_write_buf.exit556.i_crit_edge

rm68200_dcs_write_buf.exit548.i.rm68200_dcs_write_buf.exit556.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit548.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit556.i

do.body.i554.i:                                   ; preds = %rm68200_dcs_write_buf.exit548.i
  %call2.i552.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i552.i)
  %tobool.not.i553.i = icmp eq i32 %call2.i552.i, 0
  br i1 %tobool.not.i553.i, label %do.body.i554.i.rm68200_dcs_write_buf.exit556.i_crit_edge, label %do.end.i555.i

do.body.i554.i.rm68200_dcs_write_buf.exit556.i_crit_edge: ; preds = %do.body.i554.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit556.i

do.end.i555.i:                                    ; preds = %do.body.i554.i
  call void @__sanitizer_cov_trace_pc() #8
  %184 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.74, i32 noundef %call1.i550.i) #9
  br label %rm68200_dcs_write_buf.exit556.i

rm68200_dcs_write_buf.exit556.i:                  ; preds = %do.end.i555.i, %do.body.i554.i.rm68200_dcs_write_buf.exit556.i_crit_edge, %rm68200_dcs_write_buf.exit548.i.rm68200_dcs_write_buf.exit556.i_crit_edge
  %186 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i557.i = getelementptr i8, ptr %187, i32 -8
  %call1.i558.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i557.i, ptr noundef nonnull @rm68200_init_sequence.d.46, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i558.i)
  %cmp.i559.i = icmp slt i32 %call1.i558.i, 0
  br i1 %cmp.i559.i, label %do.body.i562.i, label %rm68200_dcs_write_buf.exit556.i.rm68200_dcs_write_buf.exit564.i_crit_edge

rm68200_dcs_write_buf.exit556.i.rm68200_dcs_write_buf.exit564.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit556.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit564.i

do.body.i562.i:                                   ; preds = %rm68200_dcs_write_buf.exit556.i
  %call2.i560.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i560.i)
  %tobool.not.i561.i = icmp eq i32 %call2.i560.i, 0
  br i1 %tobool.not.i561.i, label %do.body.i562.i.rm68200_dcs_write_buf.exit564.i_crit_edge, label %do.end.i563.i

do.body.i562.i.rm68200_dcs_write_buf.exit564.i_crit_edge: ; preds = %do.body.i562.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit564.i

do.end.i563.i:                                    ; preds = %do.body.i562.i
  call void @__sanitizer_cov_trace_pc() #8
  %188 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.74, i32 noundef %call1.i558.i) #9
  br label %rm68200_dcs_write_buf.exit564.i

rm68200_dcs_write_buf.exit564.i:                  ; preds = %do.end.i563.i, %do.body.i562.i.rm68200_dcs_write_buf.exit564.i_crit_edge, %rm68200_dcs_write_buf.exit556.i.rm68200_dcs_write_buf.exit564.i_crit_edge
  %190 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i565.i = getelementptr i8, ptr %191, i32 -8
  %call1.i566.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i565.i, ptr noundef nonnull @rm68200_init_sequence.d.47, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i566.i)
  %cmp.i567.i = icmp slt i32 %call1.i566.i, 0
  br i1 %cmp.i567.i, label %do.body.i570.i, label %rm68200_dcs_write_buf.exit564.i.rm68200_dcs_write_buf.exit572.i_crit_edge

rm68200_dcs_write_buf.exit564.i.rm68200_dcs_write_buf.exit572.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit564.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit572.i

do.body.i570.i:                                   ; preds = %rm68200_dcs_write_buf.exit564.i
  %call2.i568.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i568.i)
  %tobool.not.i569.i = icmp eq i32 %call2.i568.i, 0
  br i1 %tobool.not.i569.i, label %do.body.i570.i.rm68200_dcs_write_buf.exit572.i_crit_edge, label %do.end.i571.i

do.body.i570.i.rm68200_dcs_write_buf.exit572.i_crit_edge: ; preds = %do.body.i570.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit572.i

do.end.i571.i:                                    ; preds = %do.body.i570.i
  call void @__sanitizer_cov_trace_pc() #8
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.74, i32 noundef %call1.i566.i) #9
  br label %rm68200_dcs_write_buf.exit572.i

rm68200_dcs_write_buf.exit572.i:                  ; preds = %do.end.i571.i, %do.body.i570.i.rm68200_dcs_write_buf.exit572.i_crit_edge, %rm68200_dcs_write_buf.exit564.i.rm68200_dcs_write_buf.exit572.i_crit_edge
  %194 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i573.i = getelementptr i8, ptr %195, i32 -8
  %call1.i574.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i573.i, ptr noundef nonnull @rm68200_init_sequence.d.48, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i574.i)
  %cmp.i575.i = icmp slt i32 %call1.i574.i, 0
  br i1 %cmp.i575.i, label %do.body.i578.i, label %rm68200_dcs_write_buf.exit572.i.rm68200_dcs_write_buf.exit580.i_crit_edge

rm68200_dcs_write_buf.exit572.i.rm68200_dcs_write_buf.exit580.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit572.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit580.i

do.body.i578.i:                                   ; preds = %rm68200_dcs_write_buf.exit572.i
  %call2.i576.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i576.i)
  %tobool.not.i577.i = icmp eq i32 %call2.i576.i, 0
  br i1 %tobool.not.i577.i, label %do.body.i578.i.rm68200_dcs_write_buf.exit580.i_crit_edge, label %do.end.i579.i

do.body.i578.i.rm68200_dcs_write_buf.exit580.i_crit_edge: ; preds = %do.body.i578.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit580.i

do.end.i579.i:                                    ; preds = %do.body.i578.i
  call void @__sanitizer_cov_trace_pc() #8
  %196 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.74, i32 noundef %call1.i574.i) #9
  br label %rm68200_dcs_write_buf.exit580.i

rm68200_dcs_write_buf.exit580.i:                  ; preds = %do.end.i579.i, %do.body.i578.i.rm68200_dcs_write_buf.exit580.i_crit_edge, %rm68200_dcs_write_buf.exit572.i.rm68200_dcs_write_buf.exit580.i_crit_edge
  %198 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i581.i = getelementptr i8, ptr %199, i32 -8
  %call1.i582.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i581.i, ptr noundef nonnull @rm68200_init_sequence.d.49, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i582.i)
  %cmp.i583.i = icmp slt i32 %call1.i582.i, 0
  br i1 %cmp.i583.i, label %do.body.i586.i, label %rm68200_dcs_write_buf.exit580.i.rm68200_dcs_write_buf.exit588.i_crit_edge

rm68200_dcs_write_buf.exit580.i.rm68200_dcs_write_buf.exit588.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit580.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit588.i

do.body.i586.i:                                   ; preds = %rm68200_dcs_write_buf.exit580.i
  %call2.i584.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i584.i)
  %tobool.not.i585.i = icmp eq i32 %call2.i584.i, 0
  br i1 %tobool.not.i585.i, label %do.body.i586.i.rm68200_dcs_write_buf.exit588.i_crit_edge, label %do.end.i587.i

do.body.i586.i.rm68200_dcs_write_buf.exit588.i_crit_edge: ; preds = %do.body.i586.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit588.i

do.end.i587.i:                                    ; preds = %do.body.i586.i
  call void @__sanitizer_cov_trace_pc() #8
  %200 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.74, i32 noundef %call1.i582.i) #9
  br label %rm68200_dcs_write_buf.exit588.i

rm68200_dcs_write_buf.exit588.i:                  ; preds = %do.end.i587.i, %do.body.i586.i.rm68200_dcs_write_buf.exit588.i_crit_edge, %rm68200_dcs_write_buf.exit580.i.rm68200_dcs_write_buf.exit588.i_crit_edge
  %202 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i589.i = getelementptr i8, ptr %203, i32 -8
  %call1.i590.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i589.i, ptr noundef nonnull @rm68200_init_sequence.d.50, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i590.i)
  %cmp.i591.i = icmp slt i32 %call1.i590.i, 0
  br i1 %cmp.i591.i, label %do.body.i594.i, label %rm68200_dcs_write_buf.exit588.i.rm68200_dcs_write_buf.exit596.i_crit_edge

rm68200_dcs_write_buf.exit588.i.rm68200_dcs_write_buf.exit596.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit588.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit596.i

do.body.i594.i:                                   ; preds = %rm68200_dcs_write_buf.exit588.i
  %call2.i592.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i592.i)
  %tobool.not.i593.i = icmp eq i32 %call2.i592.i, 0
  br i1 %tobool.not.i593.i, label %do.body.i594.i.rm68200_dcs_write_buf.exit596.i_crit_edge, label %do.end.i595.i

do.body.i594.i.rm68200_dcs_write_buf.exit596.i_crit_edge: ; preds = %do.body.i594.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit596.i

do.end.i595.i:                                    ; preds = %do.body.i594.i
  call void @__sanitizer_cov_trace_pc() #8
  %204 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull @.str.74, i32 noundef %call1.i590.i) #9
  br label %rm68200_dcs_write_buf.exit596.i

rm68200_dcs_write_buf.exit596.i:                  ; preds = %do.end.i595.i, %do.body.i594.i.rm68200_dcs_write_buf.exit596.i_crit_edge, %rm68200_dcs_write_buf.exit588.i.rm68200_dcs_write_buf.exit596.i_crit_edge
  %206 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i597.i = getelementptr i8, ptr %207, i32 -8
  %call1.i598.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i597.i, ptr noundef nonnull @rm68200_init_sequence.d.51, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i598.i)
  %cmp.i599.i = icmp slt i32 %call1.i598.i, 0
  br i1 %cmp.i599.i, label %do.body.i602.i, label %rm68200_dcs_write_buf.exit596.i.rm68200_dcs_write_buf.exit604.i_crit_edge

rm68200_dcs_write_buf.exit596.i.rm68200_dcs_write_buf.exit604.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit596.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit604.i

do.body.i602.i:                                   ; preds = %rm68200_dcs_write_buf.exit596.i
  %call2.i600.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i600.i)
  %tobool.not.i601.i = icmp eq i32 %call2.i600.i, 0
  br i1 %tobool.not.i601.i, label %do.body.i602.i.rm68200_dcs_write_buf.exit604.i_crit_edge, label %do.end.i603.i

do.body.i602.i.rm68200_dcs_write_buf.exit604.i_crit_edge: ; preds = %do.body.i602.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit604.i

do.end.i603.i:                                    ; preds = %do.body.i602.i
  call void @__sanitizer_cov_trace_pc() #8
  %208 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.74, i32 noundef %call1.i598.i) #9
  br label %rm68200_dcs_write_buf.exit604.i

rm68200_dcs_write_buf.exit604.i:                  ; preds = %do.end.i603.i, %do.body.i602.i.rm68200_dcs_write_buf.exit604.i_crit_edge, %rm68200_dcs_write_buf.exit596.i.rm68200_dcs_write_buf.exit604.i_crit_edge
  %210 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i605.i = getelementptr i8, ptr %211, i32 -8
  %call1.i606.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i605.i, ptr noundef nonnull @rm68200_init_sequence.d.52, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i606.i)
  %cmp.i607.i = icmp slt i32 %call1.i606.i, 0
  br i1 %cmp.i607.i, label %do.body.i610.i, label %rm68200_dcs_write_buf.exit604.i.rm68200_dcs_write_buf.exit612.i_crit_edge

rm68200_dcs_write_buf.exit604.i.rm68200_dcs_write_buf.exit612.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit604.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit612.i

do.body.i610.i:                                   ; preds = %rm68200_dcs_write_buf.exit604.i
  %call2.i608.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i608.i)
  %tobool.not.i609.i = icmp eq i32 %call2.i608.i, 0
  br i1 %tobool.not.i609.i, label %do.body.i610.i.rm68200_dcs_write_buf.exit612.i_crit_edge, label %do.end.i611.i

do.body.i610.i.rm68200_dcs_write_buf.exit612.i_crit_edge: ; preds = %do.body.i610.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit612.i

do.end.i611.i:                                    ; preds = %do.body.i610.i
  call void @__sanitizer_cov_trace_pc() #8
  %212 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.74, i32 noundef %call1.i606.i) #9
  br label %rm68200_dcs_write_buf.exit612.i

rm68200_dcs_write_buf.exit612.i:                  ; preds = %do.end.i611.i, %do.body.i610.i.rm68200_dcs_write_buf.exit612.i_crit_edge, %rm68200_dcs_write_buf.exit604.i.rm68200_dcs_write_buf.exit612.i_crit_edge
  %214 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i613.i = getelementptr i8, ptr %215, i32 -8
  %call1.i614.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i613.i, ptr noundef nonnull @rm68200_init_sequence.d.53, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i614.i)
  %cmp.i615.i = icmp slt i32 %call1.i614.i, 0
  br i1 %cmp.i615.i, label %do.body.i618.i, label %rm68200_dcs_write_buf.exit612.i.for.body60.i.preheader_crit_edge

rm68200_dcs_write_buf.exit612.i.for.body60.i.preheader_crit_edge: ; preds = %rm68200_dcs_write_buf.exit612.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60.i.preheader

do.body.i618.i:                                   ; preds = %rm68200_dcs_write_buf.exit612.i
  %call2.i616.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i616.i)
  %tobool.not.i617.i = icmp eq i32 %call2.i616.i, 0
  br i1 %tobool.not.i617.i, label %do.body.i618.i.for.body60.i.preheader_crit_edge, label %do.end.i619.i

do.body.i618.i.for.body60.i.preheader_crit_edge:  ; preds = %do.body.i618.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60.i.preheader

do.end.i619.i:                                    ; preds = %do.body.i618.i
  call void @__sanitizer_cov_trace_pc() #8
  %216 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str.74, i32 noundef %call1.i614.i) #9
  br label %for.body60.i.preheader

for.body60.i.preheader:                           ; preds = %do.end.i619.i, %do.body.i618.i.for.body60.i.preheader_crit_edge, %rm68200_dcs_write_buf.exit612.i.for.body60.i.preheader_crit_edge
  br label %for.body60.i

for.body60.i:                                     ; preds = %rm68200_dcs_write_cmd.exit629.i.for.body60.i_crit_edge, %for.body60.i.preheader
  %i56.0792.i = phi i32 [ %inc65.i, %rm68200_dcs_write_cmd.exit629.i.for.body60.i_crit_edge ], [ 0, %for.body60.i.preheader ]
  %218 = trunc i32 %i56.0792.i to i8
  %conv62.i = add nuw i8 %218, 126
  %arrayidx63.i = getelementptr [9 x i8], ptr @rm68200_init_sequence.d.54, i32 0, i32 %i56.0792.i
  %219 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %arrayidx63.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i621.i) #6
  %221 = ptrtoint ptr %value.addr.i621.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %220, ptr %value.addr.i621.i, align 1
  %222 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i622.i = getelementptr i8, ptr %223, i32 -8
  %call1.i623.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i622.i, i8 noundef zeroext %conv62.i, ptr noundef nonnull %value.addr.i621.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i623.i)
  %cmp.i624.i = icmp slt i32 %call1.i623.i, 0
  br i1 %cmp.i624.i, label %do.body.i627.i, label %for.body60.i.rm68200_dcs_write_cmd.exit629.i_crit_edge

for.body60.i.rm68200_dcs_write_cmd.exit629.i_crit_edge: ; preds = %for.body60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit629.i

do.body.i627.i:                                   ; preds = %for.body60.i
  %call2.i625.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i625.i)
  %tobool.not.i626.i = icmp eq i32 %call2.i625.i, 0
  br i1 %tobool.not.i626.i, label %do.body.i627.i.rm68200_dcs_write_cmd.exit629.i_crit_edge, label %do.end.i628.i

do.body.i627.i.rm68200_dcs_write_cmd.exit629.i_crit_edge: ; preds = %do.body.i627.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit629.i

do.end.i628.i:                                    ; preds = %do.body.i627.i
  call void @__sanitizer_cov_trace_pc() #8
  %224 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %225, ptr noundef nonnull @.str.75, i32 noundef %call1.i623.i) #9
  br label %rm68200_dcs_write_cmd.exit629.i

rm68200_dcs_write_cmd.exit629.i:                  ; preds = %do.end.i628.i, %do.body.i627.i.rm68200_dcs_write_cmd.exit629.i_crit_edge, %for.body60.i.rm68200_dcs_write_cmd.exit629.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i621.i) #6
  %inc65.i = add nuw nsw i32 %i56.0792.i, 1
  %exitcond808.not.i = icmp eq i32 %inc65.i, 9
  br i1 %exitcond808.not.i, label %rm68200_dcs_write_cmd.exit629.i.for.body71.i_crit_edge, label %rm68200_dcs_write_cmd.exit629.i.for.body60.i_crit_edge

rm68200_dcs_write_cmd.exit629.i.for.body60.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit629.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body60.i

rm68200_dcs_write_cmd.exit629.i.for.body71.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit629.i
  br label %for.body71.i

for.body71.i:                                     ; preds = %rm68200_dcs_write_cmd.exit638.i.for.body71.i_crit_edge, %rm68200_dcs_write_cmd.exit629.i.for.body71.i_crit_edge
  %i67.0793.i = phi i32 [ %inc76.i, %rm68200_dcs_write_cmd.exit638.i.for.body71.i_crit_edge ], [ 0, %rm68200_dcs_write_cmd.exit629.i.for.body71.i_crit_edge ]
  %226 = trunc i32 %i67.0793.i to i8
  %conv73.i = add nuw nsw i8 %226, -121
  %arrayidx74.i = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.55, i32 0, i32 %i67.0793.i
  %227 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx74.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i630.i) #6
  %229 = ptrtoint ptr %value.addr.i630.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %228, ptr %value.addr.i630.i, align 1
  %230 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i631.i = getelementptr i8, ptr %231, i32 -8
  %call1.i632.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i631.i, i8 noundef zeroext %conv73.i, ptr noundef nonnull %value.addr.i630.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i632.i)
  %cmp.i633.i = icmp slt i32 %call1.i632.i, 0
  br i1 %cmp.i633.i, label %do.body.i636.i, label %for.body71.i.rm68200_dcs_write_cmd.exit638.i_crit_edge

for.body71.i.rm68200_dcs_write_cmd.exit638.i_crit_edge: ; preds = %for.body71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit638.i

do.body.i636.i:                                   ; preds = %for.body71.i
  %call2.i634.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i634.i)
  %tobool.not.i635.i = icmp eq i32 %call2.i634.i, 0
  br i1 %tobool.not.i635.i, label %do.body.i636.i.rm68200_dcs_write_cmd.exit638.i_crit_edge, label %do.end.i637.i

do.body.i636.i.rm68200_dcs_write_cmd.exit638.i_crit_edge: ; preds = %do.body.i636.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit638.i

do.end.i637.i:                                    ; preds = %do.body.i636.i
  call void @__sanitizer_cov_trace_pc() #8
  %232 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %233, ptr noundef nonnull @.str.75, i32 noundef %call1.i632.i) #9
  br label %rm68200_dcs_write_cmd.exit638.i

rm68200_dcs_write_cmd.exit638.i:                  ; preds = %do.end.i637.i, %do.body.i636.i.rm68200_dcs_write_cmd.exit638.i_crit_edge, %for.body71.i.rm68200_dcs_write_cmd.exit638.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i630.i) #6
  %inc76.i = add nuw nsw i32 %i67.0793.i, 1
  %exitcond809.not.i = icmp eq i32 %inc76.i, 10
  br i1 %exitcond809.not.i, label %rm68200_dcs_write_cmd.exit638.i.for.body82.i_crit_edge, label %rm68200_dcs_write_cmd.exit638.i.for.body71.i_crit_edge

rm68200_dcs_write_cmd.exit638.i.for.body71.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit638.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body71.i

rm68200_dcs_write_cmd.exit638.i.for.body82.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit638.i
  br label %for.body82.i

for.body82.i:                                     ; preds = %rm68200_dcs_write_cmd.exit647.i.for.body82.i_crit_edge, %rm68200_dcs_write_cmd.exit638.i.for.body82.i_crit_edge
  %i78.0794.i = phi i32 [ %inc87.i, %rm68200_dcs_write_cmd.exit647.i.for.body82.i_crit_edge ], [ 0, %rm68200_dcs_write_cmd.exit638.i.for.body82.i_crit_edge ]
  %234 = trunc i32 %i78.0794.i to i8
  %conv84.i = add nuw nsw i8 %234, -111
  %arrayidx85.i = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.56, i32 0, i32 %i78.0794.i
  %235 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %arrayidx85.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i639.i) #6
  %237 = ptrtoint ptr %value.addr.i639.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 %236, ptr %value.addr.i639.i, align 1
  %238 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i640.i = getelementptr i8, ptr %239, i32 -8
  %call1.i641.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i640.i, i8 noundef zeroext %conv84.i, ptr noundef nonnull %value.addr.i639.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i641.i)
  %cmp.i642.i = icmp slt i32 %call1.i641.i, 0
  br i1 %cmp.i642.i, label %do.body.i645.i, label %for.body82.i.rm68200_dcs_write_cmd.exit647.i_crit_edge

for.body82.i.rm68200_dcs_write_cmd.exit647.i_crit_edge: ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit647.i

do.body.i645.i:                                   ; preds = %for.body82.i
  %call2.i643.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i643.i)
  %tobool.not.i644.i = icmp eq i32 %call2.i643.i, 0
  br i1 %tobool.not.i644.i, label %do.body.i645.i.rm68200_dcs_write_cmd.exit647.i_crit_edge, label %do.end.i646.i

do.body.i645.i.rm68200_dcs_write_cmd.exit647.i_crit_edge: ; preds = %do.body.i645.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit647.i

do.end.i646.i:                                    ; preds = %do.body.i645.i
  call void @__sanitizer_cov_trace_pc() #8
  %240 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %241, ptr noundef nonnull @.str.75, i32 noundef %call1.i641.i) #9
  br label %rm68200_dcs_write_cmd.exit647.i

rm68200_dcs_write_cmd.exit647.i:                  ; preds = %do.end.i646.i, %do.body.i645.i.rm68200_dcs_write_cmd.exit647.i_crit_edge, %for.body82.i.rm68200_dcs_write_cmd.exit647.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i639.i) #6
  %inc87.i = add nuw nsw i32 %i78.0794.i, 1
  %exitcond810.not.i = icmp eq i32 %inc87.i, 10
  br i1 %exitcond810.not.i, label %for.body93.preheader.i, label %rm68200_dcs_write_cmd.exit647.i.for.body82.i_crit_edge

rm68200_dcs_write_cmd.exit647.i.for.body82.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit647.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body82.i

for.body93.preheader.i:                           ; preds = %rm68200_dcs_write_cmd.exit647.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  %242 = ptrtoint ptr %value.addr.i648.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 11, ptr %value.addr.i648.i, align 1
  %243 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i649.i = getelementptr i8, ptr %244, i32 -8
  %call1.i650.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i649.i, i8 noundef zeroext -101, ptr noundef nonnull %value.addr.i648.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i650.i)
  %cmp.i651.i = icmp slt i32 %call1.i650.i, 0
  br i1 %cmp.i651.i, label %do.body.i654.i, label %for.body93.preheader.i.rm68200_dcs_write_cmd.exit656.i_crit_edge

for.body93.preheader.i.rm68200_dcs_write_cmd.exit656.i_crit_edge: ; preds = %for.body93.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.i

do.body.i654.i:                                   ; preds = %for.body93.preheader.i
  %call2.i652.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i652.i)
  %tobool.not.i653.i = icmp eq i32 %call2.i652.i, 0
  br i1 %tobool.not.i653.i, label %do.body.i654.i.rm68200_dcs_write_cmd.exit656.i_crit_edge, label %do.end.i655.i

do.body.i654.i.rm68200_dcs_write_cmd.exit656.i_crit_edge: ; preds = %do.body.i654.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.i

do.end.i655.i:                                    ; preds = %do.body.i654.i
  call void @__sanitizer_cov_trace_pc() #8
  %245 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %246, ptr noundef nonnull @.str.75, i32 noundef %call1.i650.i) #9
  br label %rm68200_dcs_write_cmd.exit656.i

rm68200_dcs_write_cmd.exit656.i:                  ; preds = %do.end.i655.i, %do.body.i654.i.rm68200_dcs_write_cmd.exit656.i_crit_edge, %for.body93.preheader.i.rm68200_dcs_write_cmd.exit656.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  %247 = ptrtoint ptr %value.addr.i648.i to i32
  call void @__asan_store1_noabort(i32 %247)
  store i8 13, ptr %value.addr.i648.i, align 1
  %248 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i649.1.i = getelementptr i8, ptr %249, i32 -8
  %call1.i650.1.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i649.1.i, i8 noundef zeroext -100, ptr noundef nonnull %value.addr.i648.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i650.1.i)
  %cmp.i651.1.i = icmp slt i32 %call1.i650.1.i, 0
  br i1 %cmp.i651.1.i, label %do.body.i654.1.i, label %rm68200_dcs_write_cmd.exit656.i.rm68200_dcs_write_cmd.exit656.1.i_crit_edge

rm68200_dcs_write_cmd.exit656.i.rm68200_dcs_write_cmd.exit656.1.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit656.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.1.i

do.body.i654.1.i:                                 ; preds = %rm68200_dcs_write_cmd.exit656.i
  %call2.i652.1.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i652.1.i)
  %tobool.not.i653.1.i = icmp eq i32 %call2.i652.1.i, 0
  br i1 %tobool.not.i653.1.i, label %do.body.i654.1.i.rm68200_dcs_write_cmd.exit656.1.i_crit_edge, label %do.end.i655.1.i

do.body.i654.1.i.rm68200_dcs_write_cmd.exit656.1.i_crit_edge: ; preds = %do.body.i654.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.1.i

do.end.i655.1.i:                                  ; preds = %do.body.i654.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %250 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %251, ptr noundef nonnull @.str.75, i32 noundef %call1.i650.1.i) #9
  br label %rm68200_dcs_write_cmd.exit656.1.i

rm68200_dcs_write_cmd.exit656.1.i:                ; preds = %do.end.i655.1.i, %do.body.i654.1.i.rm68200_dcs_write_cmd.exit656.1.i_crit_edge, %rm68200_dcs_write_cmd.exit656.i.rm68200_dcs_write_cmd.exit656.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  %252 = ptrtoint ptr %value.addr.i648.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 63, ptr %value.addr.i648.i, align 1
  %253 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i649.2.i = getelementptr i8, ptr %254, i32 -8
  %call1.i650.2.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i649.2.i, i8 noundef zeroext -99, ptr noundef nonnull %value.addr.i648.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i650.2.i)
  %cmp.i651.2.i = icmp slt i32 %call1.i650.2.i, 0
  br i1 %cmp.i651.2.i, label %do.body.i654.2.i, label %rm68200_dcs_write_cmd.exit656.1.i.rm68200_dcs_write_cmd.exit656.2.i_crit_edge

rm68200_dcs_write_cmd.exit656.1.i.rm68200_dcs_write_cmd.exit656.2.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit656.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.2.i

do.body.i654.2.i:                                 ; preds = %rm68200_dcs_write_cmd.exit656.1.i
  %call2.i652.2.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i652.2.i)
  %tobool.not.i653.2.i = icmp eq i32 %call2.i652.2.i, 0
  br i1 %tobool.not.i653.2.i, label %do.body.i654.2.i.rm68200_dcs_write_cmd.exit656.2.i_crit_edge, label %do.end.i655.2.i

do.body.i654.2.i.rm68200_dcs_write_cmd.exit656.2.i_crit_edge: ; preds = %do.body.i654.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.2.i

do.end.i655.2.i:                                  ; preds = %do.body.i654.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %255 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.75, i32 noundef %call1.i650.2.i) #9
  br label %rm68200_dcs_write_cmd.exit656.2.i

rm68200_dcs_write_cmd.exit656.2.i:                ; preds = %do.end.i655.2.i, %do.body.i654.2.i.rm68200_dcs_write_cmd.exit656.2.i_crit_edge, %rm68200_dcs_write_cmd.exit656.1.i.rm68200_dcs_write_cmd.exit656.2.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  %257 = ptrtoint ptr %value.addr.i648.i to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 63, ptr %value.addr.i648.i, align 1
  %258 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i649.3.i = getelementptr i8, ptr %259, i32 -8
  %call1.i650.3.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i649.3.i, i8 noundef zeroext -98, ptr noundef nonnull %value.addr.i648.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i650.3.i)
  %cmp.i651.3.i = icmp slt i32 %call1.i650.3.i, 0
  br i1 %cmp.i651.3.i, label %do.body.i654.3.i, label %rm68200_dcs_write_cmd.exit656.2.i.rm68200_dcs_write_cmd.exit656.3.i_crit_edge

rm68200_dcs_write_cmd.exit656.2.i.rm68200_dcs_write_cmd.exit656.3.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit656.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.3.i

do.body.i654.3.i:                                 ; preds = %rm68200_dcs_write_cmd.exit656.2.i
  %call2.i652.3.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i652.3.i)
  %tobool.not.i653.3.i = icmp eq i32 %call2.i652.3.i, 0
  br i1 %tobool.not.i653.3.i, label %do.body.i654.3.i.rm68200_dcs_write_cmd.exit656.3.i_crit_edge, label %do.end.i655.3.i

do.body.i654.3.i.rm68200_dcs_write_cmd.exit656.3.i_crit_edge: ; preds = %do.body.i654.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.3.i

do.end.i655.3.i:                                  ; preds = %do.body.i654.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %260 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %261, ptr noundef nonnull @.str.75, i32 noundef %call1.i650.3.i) #9
  br label %rm68200_dcs_write_cmd.exit656.3.i

rm68200_dcs_write_cmd.exit656.3.i:                ; preds = %do.end.i655.3.i, %do.body.i654.3.i.rm68200_dcs_write_cmd.exit656.3.i_crit_edge, %rm68200_dcs_write_cmd.exit656.2.i.rm68200_dcs_write_cmd.exit656.3.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  %262 = ptrtoint ptr %value.addr.i648.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 63, ptr %value.addr.i648.i, align 1
  %263 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i649.4.i = getelementptr i8, ptr %264, i32 -8
  %call1.i650.4.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i649.4.i, i8 noundef zeroext -97, ptr noundef nonnull %value.addr.i648.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i650.4.i)
  %cmp.i651.4.i = icmp slt i32 %call1.i650.4.i, 0
  br i1 %cmp.i651.4.i, label %do.body.i654.4.i, label %rm68200_dcs_write_cmd.exit656.3.i.rm68200_dcs_write_cmd.exit656.4.i_crit_edge

rm68200_dcs_write_cmd.exit656.3.i.rm68200_dcs_write_cmd.exit656.4.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit656.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.4.i

do.body.i654.4.i:                                 ; preds = %rm68200_dcs_write_cmd.exit656.3.i
  %call2.i652.4.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i652.4.i)
  %tobool.not.i653.4.i = icmp eq i32 %call2.i652.4.i, 0
  br i1 %tobool.not.i653.4.i, label %do.body.i654.4.i.rm68200_dcs_write_cmd.exit656.4.i_crit_edge, label %do.end.i655.4.i

do.body.i654.4.i.rm68200_dcs_write_cmd.exit656.4.i_crit_edge: ; preds = %do.body.i654.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.4.i

do.end.i655.4.i:                                  ; preds = %do.body.i654.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %265 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %266, ptr noundef nonnull @.str.75, i32 noundef %call1.i650.4.i) #9
  br label %rm68200_dcs_write_cmd.exit656.4.i

rm68200_dcs_write_cmd.exit656.4.i:                ; preds = %do.end.i655.4.i, %do.body.i654.4.i.rm68200_dcs_write_cmd.exit656.4.i_crit_edge, %rm68200_dcs_write_cmd.exit656.3.i.rm68200_dcs_write_cmd.exit656.4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  %267 = ptrtoint ptr %value.addr.i648.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 63, ptr %value.addr.i648.i, align 1
  %268 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i649.5.i = getelementptr i8, ptr %269, i32 -8
  %call1.i650.5.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i649.5.i, i8 noundef zeroext -96, ptr noundef nonnull %value.addr.i648.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i650.5.i)
  %cmp.i651.5.i = icmp slt i32 %call1.i650.5.i, 0
  br i1 %cmp.i651.5.i, label %do.body.i654.5.i, label %rm68200_dcs_write_cmd.exit656.4.i.rm68200_dcs_write_cmd.exit656.5.i_crit_edge

rm68200_dcs_write_cmd.exit656.4.i.rm68200_dcs_write_cmd.exit656.5.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit656.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.5.i

do.body.i654.5.i:                                 ; preds = %rm68200_dcs_write_cmd.exit656.4.i
  %call2.i652.5.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i652.5.i)
  %tobool.not.i653.5.i = icmp eq i32 %call2.i652.5.i, 0
  br i1 %tobool.not.i653.5.i, label %do.body.i654.5.i.rm68200_dcs_write_cmd.exit656.5.i_crit_edge, label %do.end.i655.5.i

do.body.i654.5.i.rm68200_dcs_write_cmd.exit656.5.i_crit_edge: ; preds = %do.body.i654.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit656.5.i

do.end.i655.5.i:                                  ; preds = %do.body.i654.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %270 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.75, i32 noundef %call1.i650.5.i) #9
  br label %rm68200_dcs_write_cmd.exit656.5.i

rm68200_dcs_write_cmd.exit656.5.i:                ; preds = %do.end.i655.5.i, %do.body.i654.5.i.rm68200_dcs_write_cmd.exit656.5.i_crit_edge, %rm68200_dcs_write_cmd.exit656.4.i.rm68200_dcs_write_cmd.exit656.5.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i648.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  %272 = ptrtoint ptr %value.addr.i657.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 63, ptr %value.addr.i657.i, align 1
  %273 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i658.i = getelementptr i8, ptr %274, i32 -8
  %call1.i659.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i658.i, i8 noundef zeroext -94, ptr noundef nonnull %value.addr.i657.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i659.i)
  %cmp.i660.i = icmp slt i32 %call1.i659.i, 0
  br i1 %cmp.i660.i, label %do.body.i663.i, label %rm68200_dcs_write_cmd.exit656.5.i.rm68200_dcs_write_cmd.exit665.i_crit_edge

rm68200_dcs_write_cmd.exit656.5.i.rm68200_dcs_write_cmd.exit665.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit656.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.i

do.body.i663.i:                                   ; preds = %rm68200_dcs_write_cmd.exit656.5.i
  %call2.i661.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i661.i)
  %tobool.not.i662.i = icmp eq i32 %call2.i661.i, 0
  br i1 %tobool.not.i662.i, label %do.body.i663.i.rm68200_dcs_write_cmd.exit665.i_crit_edge, label %do.end.i664.i

do.body.i663.i.rm68200_dcs_write_cmd.exit665.i_crit_edge: ; preds = %do.body.i663.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.i

do.end.i664.i:                                    ; preds = %do.body.i663.i
  call void @__sanitizer_cov_trace_pc() #8
  %275 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %276, ptr noundef nonnull @.str.75, i32 noundef %call1.i659.i) #9
  br label %rm68200_dcs_write_cmd.exit665.i

rm68200_dcs_write_cmd.exit665.i:                  ; preds = %do.end.i664.i, %do.body.i663.i.rm68200_dcs_write_cmd.exit665.i_crit_edge, %rm68200_dcs_write_cmd.exit656.5.i.rm68200_dcs_write_cmd.exit665.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  %277 = ptrtoint ptr %value.addr.i657.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 9, ptr %value.addr.i657.i, align 1
  %278 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i658.1.i = getelementptr i8, ptr %279, i32 -8
  %call1.i659.1.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i658.1.i, i8 noundef zeroext -93, ptr noundef nonnull %value.addr.i657.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i659.1.i)
  %cmp.i660.1.i = icmp slt i32 %call1.i659.1.i, 0
  br i1 %cmp.i660.1.i, label %do.body.i663.1.i, label %rm68200_dcs_write_cmd.exit665.i.rm68200_dcs_write_cmd.exit665.1.i_crit_edge

rm68200_dcs_write_cmd.exit665.i.rm68200_dcs_write_cmd.exit665.1.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit665.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.1.i

do.body.i663.1.i:                                 ; preds = %rm68200_dcs_write_cmd.exit665.i
  %call2.i661.1.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i661.1.i)
  %tobool.not.i662.1.i = icmp eq i32 %call2.i661.1.i, 0
  br i1 %tobool.not.i662.1.i, label %do.body.i663.1.i.rm68200_dcs_write_cmd.exit665.1.i_crit_edge, label %do.end.i664.1.i

do.body.i663.1.i.rm68200_dcs_write_cmd.exit665.1.i_crit_edge: ; preds = %do.body.i663.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.1.i

do.end.i664.1.i:                                  ; preds = %do.body.i663.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %280 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %281, ptr noundef nonnull @.str.75, i32 noundef %call1.i659.1.i) #9
  br label %rm68200_dcs_write_cmd.exit665.1.i

rm68200_dcs_write_cmd.exit665.1.i:                ; preds = %do.end.i664.1.i, %do.body.i663.1.i.rm68200_dcs_write_cmd.exit665.1.i_crit_edge, %rm68200_dcs_write_cmd.exit665.i.rm68200_dcs_write_cmd.exit665.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  %282 = ptrtoint ptr %value.addr.i657.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 19, ptr %value.addr.i657.i, align 1
  %283 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i658.2.i = getelementptr i8, ptr %284, i32 -8
  %call1.i659.2.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i658.2.i, i8 noundef zeroext -92, ptr noundef nonnull %value.addr.i657.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i659.2.i)
  %cmp.i660.2.i = icmp slt i32 %call1.i659.2.i, 0
  br i1 %cmp.i660.2.i, label %do.body.i663.2.i, label %rm68200_dcs_write_cmd.exit665.1.i.rm68200_dcs_write_cmd.exit665.2.i_crit_edge

rm68200_dcs_write_cmd.exit665.1.i.rm68200_dcs_write_cmd.exit665.2.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit665.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.2.i

do.body.i663.2.i:                                 ; preds = %rm68200_dcs_write_cmd.exit665.1.i
  %call2.i661.2.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i661.2.i)
  %tobool.not.i662.2.i = icmp eq i32 %call2.i661.2.i, 0
  br i1 %tobool.not.i662.2.i, label %do.body.i663.2.i.rm68200_dcs_write_cmd.exit665.2.i_crit_edge, label %do.end.i664.2.i

do.body.i663.2.i.rm68200_dcs_write_cmd.exit665.2.i_crit_edge: ; preds = %do.body.i663.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.2.i

do.end.i664.2.i:                                  ; preds = %do.body.i663.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %285 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %286, ptr noundef nonnull @.str.75, i32 noundef %call1.i659.2.i) #9
  br label %rm68200_dcs_write_cmd.exit665.2.i

rm68200_dcs_write_cmd.exit665.2.i:                ; preds = %do.end.i664.2.i, %do.body.i663.2.i.rm68200_dcs_write_cmd.exit665.2.i_crit_edge, %rm68200_dcs_write_cmd.exit665.1.i.rm68200_dcs_write_cmd.exit665.2.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  %287 = ptrtoint ptr %value.addr.i657.i to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 23, ptr %value.addr.i657.i, align 1
  %288 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i658.3.i = getelementptr i8, ptr %289, i32 -8
  %call1.i659.3.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i658.3.i, i8 noundef zeroext -91, ptr noundef nonnull %value.addr.i657.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i659.3.i)
  %cmp.i660.3.i = icmp slt i32 %call1.i659.3.i, 0
  br i1 %cmp.i660.3.i, label %do.body.i663.3.i, label %rm68200_dcs_write_cmd.exit665.2.i.rm68200_dcs_write_cmd.exit665.3.i_crit_edge

rm68200_dcs_write_cmd.exit665.2.i.rm68200_dcs_write_cmd.exit665.3.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit665.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.3.i

do.body.i663.3.i:                                 ; preds = %rm68200_dcs_write_cmd.exit665.2.i
  %call2.i661.3.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i661.3.i)
  %tobool.not.i662.3.i = icmp eq i32 %call2.i661.3.i, 0
  br i1 %tobool.not.i662.3.i, label %do.body.i663.3.i.rm68200_dcs_write_cmd.exit665.3.i_crit_edge, label %do.end.i664.3.i

do.body.i663.3.i.rm68200_dcs_write_cmd.exit665.3.i_crit_edge: ; preds = %do.body.i663.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.3.i

do.end.i664.3.i:                                  ; preds = %do.body.i663.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %290 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %291, ptr noundef nonnull @.str.75, i32 noundef %call1.i659.3.i) #9
  br label %rm68200_dcs_write_cmd.exit665.3.i

rm68200_dcs_write_cmd.exit665.3.i:                ; preds = %do.end.i664.3.i, %do.body.i663.3.i.rm68200_dcs_write_cmd.exit665.3.i_crit_edge, %rm68200_dcs_write_cmd.exit665.2.i.rm68200_dcs_write_cmd.exit665.3.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  %292 = ptrtoint ptr %value.addr.i657.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 17, ptr %value.addr.i657.i, align 1
  %293 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i658.4.i = getelementptr i8, ptr %294, i32 -8
  %call1.i659.4.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i658.4.i, i8 noundef zeroext -90, ptr noundef nonnull %value.addr.i657.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i659.4.i)
  %cmp.i660.4.i = icmp slt i32 %call1.i659.4.i, 0
  br i1 %cmp.i660.4.i, label %do.body.i663.4.i, label %rm68200_dcs_write_cmd.exit665.3.i.rm68200_dcs_write_cmd.exit665.4.i_crit_edge

rm68200_dcs_write_cmd.exit665.3.i.rm68200_dcs_write_cmd.exit665.4.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit665.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.4.i

do.body.i663.4.i:                                 ; preds = %rm68200_dcs_write_cmd.exit665.3.i
  %call2.i661.4.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i661.4.i)
  %tobool.not.i662.4.i = icmp eq i32 %call2.i661.4.i, 0
  br i1 %tobool.not.i662.4.i, label %do.body.i663.4.i.rm68200_dcs_write_cmd.exit665.4.i_crit_edge, label %do.end.i664.4.i

do.body.i663.4.i.rm68200_dcs_write_cmd.exit665.4.i_crit_edge: ; preds = %do.body.i663.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.4.i

do.end.i664.4.i:                                  ; preds = %do.body.i663.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %295 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %296, ptr noundef nonnull @.str.75, i32 noundef %call1.i659.4.i) #9
  br label %rm68200_dcs_write_cmd.exit665.4.i

rm68200_dcs_write_cmd.exit665.4.i:                ; preds = %do.end.i664.4.i, %do.body.i663.4.i.rm68200_dcs_write_cmd.exit665.4.i_crit_edge, %rm68200_dcs_write_cmd.exit665.3.i.rm68200_dcs_write_cmd.exit665.4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  %297 = ptrtoint ptr %value.addr.i657.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 21, ptr %value.addr.i657.i, align 1
  %298 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i658.5.i = getelementptr i8, ptr %299, i32 -8
  %call1.i659.5.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i658.5.i, i8 noundef zeroext -89, ptr noundef nonnull %value.addr.i657.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i659.5.i)
  %cmp.i660.5.i = icmp slt i32 %call1.i659.5.i, 0
  br i1 %cmp.i660.5.i, label %do.body.i663.5.i, label %rm68200_dcs_write_cmd.exit665.4.i.rm68200_dcs_write_cmd.exit665.5.i_crit_edge

rm68200_dcs_write_cmd.exit665.4.i.rm68200_dcs_write_cmd.exit665.5.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit665.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.5.i

do.body.i663.5.i:                                 ; preds = %rm68200_dcs_write_cmd.exit665.4.i
  %call2.i661.5.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i661.5.i)
  %tobool.not.i662.5.i = icmp eq i32 %call2.i661.5.i, 0
  br i1 %tobool.not.i662.5.i, label %do.body.i663.5.i.rm68200_dcs_write_cmd.exit665.5.i_crit_edge, label %do.end.i664.5.i

do.body.i663.5.i.rm68200_dcs_write_cmd.exit665.5.i_crit_edge: ; preds = %do.body.i663.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit665.5.i

do.end.i664.5.i:                                  ; preds = %do.body.i663.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %300 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %301, ptr noundef nonnull @.str.75, i32 noundef %call1.i659.5.i) #9
  br label %rm68200_dcs_write_cmd.exit665.5.i

rm68200_dcs_write_cmd.exit665.5.i:                ; preds = %do.end.i664.5.i, %do.body.i663.5.i.rm68200_dcs_write_cmd.exit665.5.i_crit_edge, %rm68200_dcs_write_cmd.exit665.4.i.rm68200_dcs_write_cmd.exit665.5.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i657.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i666.i) #6
  %302 = ptrtoint ptr %value.addr.i666.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 7, ptr %value.addr.i666.i, align 1
  %303 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i667.i = getelementptr i8, ptr %304, i32 -8
  %call1.i668.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i667.i, i8 noundef zeroext -87, ptr noundef nonnull %value.addr.i666.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i668.i)
  %cmp.i669.i = icmp slt i32 %call1.i668.i, 0
  br i1 %cmp.i669.i, label %do.body.i672.i, label %rm68200_dcs_write_cmd.exit665.5.i.rm68200_dcs_write_cmd.exit674.i_crit_edge

rm68200_dcs_write_cmd.exit665.5.i.rm68200_dcs_write_cmd.exit674.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit665.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit674.i

do.body.i672.i:                                   ; preds = %rm68200_dcs_write_cmd.exit665.5.i
  %call2.i670.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i670.i)
  %tobool.not.i671.i = icmp eq i32 %call2.i670.i, 0
  br i1 %tobool.not.i671.i, label %do.body.i672.i.rm68200_dcs_write_cmd.exit674.i_crit_edge, label %do.end.i673.i

do.body.i672.i.rm68200_dcs_write_cmd.exit674.i_crit_edge: ; preds = %do.body.i672.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit674.i

do.end.i673.i:                                    ; preds = %do.body.i672.i
  call void @__sanitizer_cov_trace_pc() #8
  %305 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.75, i32 noundef %call1.i668.i) #9
  br label %rm68200_dcs_write_cmd.exit674.i

rm68200_dcs_write_cmd.exit674.i:                  ; preds = %do.end.i673.i, %do.body.i672.i.rm68200_dcs_write_cmd.exit674.i_crit_edge, %rm68200_dcs_write_cmd.exit665.5.i.rm68200_dcs_write_cmd.exit674.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i666.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i666.i) #6
  %307 = ptrtoint ptr %value.addr.i666.i to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 3, ptr %value.addr.i666.i, align 1
  %308 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i667.1.i = getelementptr i8, ptr %309, i32 -8
  %call1.i668.1.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i667.1.i, i8 noundef zeroext -86, ptr noundef nonnull %value.addr.i666.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i668.1.i)
  %cmp.i669.1.i = icmp slt i32 %call1.i668.1.i, 0
  br i1 %cmp.i669.1.i, label %do.body.i672.1.i, label %rm68200_dcs_write_cmd.exit674.i.rm68200_dcs_write_cmd.exit674.1.i_crit_edge

rm68200_dcs_write_cmd.exit674.i.rm68200_dcs_write_cmd.exit674.1.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit674.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit674.1.i

do.body.i672.1.i:                                 ; preds = %rm68200_dcs_write_cmd.exit674.i
  %call2.i670.1.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i670.1.i)
  %tobool.not.i671.1.i = icmp eq i32 %call2.i670.1.i, 0
  br i1 %tobool.not.i671.1.i, label %do.body.i672.1.i.rm68200_dcs_write_cmd.exit674.1.i_crit_edge, label %do.end.i673.1.i

do.body.i672.1.i.rm68200_dcs_write_cmd.exit674.1.i_crit_edge: ; preds = %do.body.i672.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit674.1.i

do.end.i673.1.i:                                  ; preds = %do.body.i672.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %310 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %311, ptr noundef nonnull @.str.75, i32 noundef %call1.i668.1.i) #9
  br label %rm68200_dcs_write_cmd.exit674.1.i

rm68200_dcs_write_cmd.exit674.1.i:                ; preds = %do.end.i673.1.i, %do.body.i672.1.i.rm68200_dcs_write_cmd.exit674.1.i_crit_edge, %rm68200_dcs_write_cmd.exit674.i.rm68200_dcs_write_cmd.exit674.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i666.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i666.i) #6
  %312 = ptrtoint ptr %value.addr.i666.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 63, ptr %value.addr.i666.i, align 1
  %313 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i667.2.i = getelementptr i8, ptr %314, i32 -8
  %call1.i668.2.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i667.2.i, i8 noundef zeroext -85, ptr noundef nonnull %value.addr.i666.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i668.2.i)
  %cmp.i669.2.i = icmp slt i32 %call1.i668.2.i, 0
  br i1 %cmp.i669.2.i, label %do.body.i672.2.i, label %rm68200_dcs_write_cmd.exit674.1.i.rm68200_dcs_write_cmd.exit674.2.i_crit_edge

rm68200_dcs_write_cmd.exit674.1.i.rm68200_dcs_write_cmd.exit674.2.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit674.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit674.2.i

do.body.i672.2.i:                                 ; preds = %rm68200_dcs_write_cmd.exit674.1.i
  %call2.i670.2.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i670.2.i)
  %tobool.not.i671.2.i = icmp eq i32 %call2.i670.2.i, 0
  br i1 %tobool.not.i671.2.i, label %do.body.i672.2.i.rm68200_dcs_write_cmd.exit674.2.i_crit_edge, label %do.end.i673.2.i

do.body.i672.2.i.rm68200_dcs_write_cmd.exit674.2.i_crit_edge: ; preds = %do.body.i672.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit674.2.i

do.end.i673.2.i:                                  ; preds = %do.body.i672.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %315 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %316, ptr noundef nonnull @.str.75, i32 noundef %call1.i668.2.i) #9
  br label %rm68200_dcs_write_cmd.exit674.2.i

rm68200_dcs_write_cmd.exit674.2.i:                ; preds = %do.end.i673.2.i, %do.body.i672.2.i.rm68200_dcs_write_cmd.exit674.2.i_crit_edge, %rm68200_dcs_write_cmd.exit674.1.i.rm68200_dcs_write_cmd.exit674.2.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i666.i) #6
  br label %for.body126.i

for.body126.i:                                    ; preds = %rm68200_dcs_write_cmd.exit683.i.for.body126.i_crit_edge, %rm68200_dcs_write_cmd.exit674.2.i
  %i122.0798.i = phi i32 [ %inc131.i, %rm68200_dcs_write_cmd.exit683.i.for.body126.i_crit_edge ], [ 0, %rm68200_dcs_write_cmd.exit674.2.i ]
  %317 = trunc i32 %i122.0798.i to i8
  %conv128.i = add nuw nsw i8 %317, -84
  %arrayidx129.i = getelementptr [9 x i8], ptr @rm68200_init_sequence.d.60, i32 0, i32 %i122.0798.i
  %318 = ptrtoint ptr %arrayidx129.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %arrayidx129.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i675.i) #6
  %320 = ptrtoint ptr %value.addr.i675.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 %319, ptr %value.addr.i675.i, align 1
  %321 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i676.i = getelementptr i8, ptr %322, i32 -8
  %call1.i677.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i676.i, i8 noundef zeroext %conv128.i, ptr noundef nonnull %value.addr.i675.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i677.i)
  %cmp.i678.i = icmp slt i32 %call1.i677.i, 0
  br i1 %cmp.i678.i, label %do.body.i681.i, label %for.body126.i.rm68200_dcs_write_cmd.exit683.i_crit_edge

for.body126.i.rm68200_dcs_write_cmd.exit683.i_crit_edge: ; preds = %for.body126.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit683.i

do.body.i681.i:                                   ; preds = %for.body126.i
  %call2.i679.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i679.i)
  %tobool.not.i680.i = icmp eq i32 %call2.i679.i, 0
  br i1 %tobool.not.i680.i, label %do.body.i681.i.rm68200_dcs_write_cmd.exit683.i_crit_edge, label %do.end.i682.i

do.body.i681.i.rm68200_dcs_write_cmd.exit683.i_crit_edge: ; preds = %do.body.i681.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit683.i

do.end.i682.i:                                    ; preds = %do.body.i681.i
  call void @__sanitizer_cov_trace_pc() #8
  %323 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %324, ptr noundef nonnull @.str.75, i32 noundef %call1.i677.i) #9
  br label %rm68200_dcs_write_cmd.exit683.i

rm68200_dcs_write_cmd.exit683.i:                  ; preds = %do.end.i682.i, %do.body.i681.i.rm68200_dcs_write_cmd.exit683.i_crit_edge, %for.body126.i.rm68200_dcs_write_cmd.exit683.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i675.i) #6
  %inc131.i = add nuw nsw i32 %i122.0798.i, 1
  %exitcond814.not.i = icmp eq i32 %inc131.i, 9
  br i1 %exitcond814.not.i, label %rm68200_dcs_write_cmd.exit683.i.for.body137.i_crit_edge, label %rm68200_dcs_write_cmd.exit683.i.for.body126.i_crit_edge

rm68200_dcs_write_cmd.exit683.i.for.body126.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit683.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body126.i

rm68200_dcs_write_cmd.exit683.i.for.body137.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit683.i
  br label %for.body137.i

for.body137.i:                                    ; preds = %rm68200_dcs_write_cmd.exit692.i.for.body137.i_crit_edge, %rm68200_dcs_write_cmd.exit683.i.for.body137.i_crit_edge
  %i133.0799.i = phi i32 [ %inc142.i, %rm68200_dcs_write_cmd.exit692.i.for.body137.i_crit_edge ], [ 0, %rm68200_dcs_write_cmd.exit683.i.for.body137.i_crit_edge ]
  %325 = trunc i32 %i133.0799.i to i8
  %conv139.i = add nuw nsw i8 %325, -75
  %arrayidx140.i = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.61, i32 0, i32 %i133.0799.i
  %326 = ptrtoint ptr %arrayidx140.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %arrayidx140.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i684.i) #6
  %328 = ptrtoint ptr %value.addr.i684.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %327, ptr %value.addr.i684.i, align 1
  %329 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i685.i = getelementptr i8, ptr %330, i32 -8
  %call1.i686.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i685.i, i8 noundef zeroext %conv139.i, ptr noundef nonnull %value.addr.i684.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i686.i)
  %cmp.i687.i = icmp slt i32 %call1.i686.i, 0
  br i1 %cmp.i687.i, label %do.body.i690.i, label %for.body137.i.rm68200_dcs_write_cmd.exit692.i_crit_edge

for.body137.i.rm68200_dcs_write_cmd.exit692.i_crit_edge: ; preds = %for.body137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit692.i

do.body.i690.i:                                   ; preds = %for.body137.i
  %call2.i688.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i688.i)
  %tobool.not.i689.i = icmp eq i32 %call2.i688.i, 0
  br i1 %tobool.not.i689.i, label %do.body.i690.i.rm68200_dcs_write_cmd.exit692.i_crit_edge, label %do.end.i691.i

do.body.i690.i.rm68200_dcs_write_cmd.exit692.i_crit_edge: ; preds = %do.body.i690.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit692.i

do.end.i691.i:                                    ; preds = %do.body.i690.i
  call void @__sanitizer_cov_trace_pc() #8
  %331 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %332, ptr noundef nonnull @.str.75, i32 noundef %call1.i686.i) #9
  br label %rm68200_dcs_write_cmd.exit692.i

rm68200_dcs_write_cmd.exit692.i:                  ; preds = %do.end.i691.i, %do.body.i690.i.rm68200_dcs_write_cmd.exit692.i_crit_edge, %for.body137.i.rm68200_dcs_write_cmd.exit692.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i684.i) #6
  %inc142.i = add nuw nsw i32 %i133.0799.i, 1
  %exitcond815.not.i = icmp eq i32 %inc142.i, 10
  br i1 %exitcond815.not.i, label %rm68200_dcs_write_cmd.exit692.i.for.body148.i_crit_edge, label %rm68200_dcs_write_cmd.exit692.i.for.body137.i_crit_edge

rm68200_dcs_write_cmd.exit692.i.for.body137.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit692.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body137.i

rm68200_dcs_write_cmd.exit692.i.for.body148.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit692.i
  br label %for.body148.i

for.body148.i:                                    ; preds = %rm68200_dcs_write_cmd.exit701.i.for.body148.i_crit_edge, %rm68200_dcs_write_cmd.exit692.i.for.body148.i_crit_edge
  %i144.0800.i = phi i32 [ %inc153.i, %rm68200_dcs_write_cmd.exit701.i.for.body148.i_crit_edge ], [ 0, %rm68200_dcs_write_cmd.exit692.i.for.body148.i_crit_edge ]
  %333 = trunc i32 %i144.0800.i to i8
  %conv150.i = add nuw nsw i8 %333, -65
  %arrayidx151.i = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.62, i32 0, i32 %i144.0800.i
  %334 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load1_noabort(i32 %334)
  %335 = load i8, ptr %arrayidx151.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i693.i) #6
  %336 = ptrtoint ptr %value.addr.i693.i to i32
  call void @__asan_store1_noabort(i32 %336)
  store i8 %335, ptr %value.addr.i693.i, align 1
  %337 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i694.i = getelementptr i8, ptr %338, i32 -8
  %call1.i695.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i694.i, i8 noundef zeroext %conv150.i, ptr noundef nonnull %value.addr.i693.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i695.i)
  %cmp.i696.i = icmp slt i32 %call1.i695.i, 0
  br i1 %cmp.i696.i, label %do.body.i699.i, label %for.body148.i.rm68200_dcs_write_cmd.exit701.i_crit_edge

for.body148.i.rm68200_dcs_write_cmd.exit701.i_crit_edge: ; preds = %for.body148.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit701.i

do.body.i699.i:                                   ; preds = %for.body148.i
  %call2.i697.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i697.i)
  %tobool.not.i698.i = icmp eq i32 %call2.i697.i, 0
  br i1 %tobool.not.i698.i, label %do.body.i699.i.rm68200_dcs_write_cmd.exit701.i_crit_edge, label %do.end.i700.i

do.body.i699.i.rm68200_dcs_write_cmd.exit701.i_crit_edge: ; preds = %do.body.i699.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit701.i

do.end.i700.i:                                    ; preds = %do.body.i699.i
  call void @__sanitizer_cov_trace_pc() #8
  %339 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %340, ptr noundef nonnull @.str.75, i32 noundef %call1.i695.i) #9
  br label %rm68200_dcs_write_cmd.exit701.i

rm68200_dcs_write_cmd.exit701.i:                  ; preds = %do.end.i700.i, %do.body.i699.i.rm68200_dcs_write_cmd.exit701.i_crit_edge, %for.body148.i.rm68200_dcs_write_cmd.exit701.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i693.i) #6
  %inc153.i = add nuw nsw i32 %i144.0800.i, 1
  %exitcond816.not.i = icmp eq i32 %inc153.i, 10
  br i1 %exitcond816.not.i, label %rm68200_dcs_write_cmd.exit701.i.for.body159.i_crit_edge, label %rm68200_dcs_write_cmd.exit701.i.for.body148.i_crit_edge

rm68200_dcs_write_cmd.exit701.i.for.body148.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit701.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body148.i

rm68200_dcs_write_cmd.exit701.i.for.body159.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit701.i
  br label %for.body159.i

for.body159.i:                                    ; preds = %rm68200_dcs_write_cmd.exit710.i.for.body159.i_crit_edge, %rm68200_dcs_write_cmd.exit701.i.for.body159.i_crit_edge
  %i155.0801.i = phi i32 [ %inc164.i, %rm68200_dcs_write_cmd.exit710.i.for.body159.i_crit_edge ], [ 0, %rm68200_dcs_write_cmd.exit701.i.for.body159.i_crit_edge ]
  %341 = trunc i32 %i155.0801.i to i8
  %conv161.i = add nuw nsw i8 %341, -55
  %arrayidx162.i = getelementptr [10 x i8], ptr @rm68200_init_sequence.d.63, i32 0, i32 %i155.0801.i
  %342 = ptrtoint ptr %arrayidx162.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %arrayidx162.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i702.i) #6
  %344 = ptrtoint ptr %value.addr.i702.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 %343, ptr %value.addr.i702.i, align 1
  %345 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i703.i = getelementptr i8, ptr %346, i32 -8
  %call1.i704.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i703.i, i8 noundef zeroext %conv161.i, ptr noundef nonnull %value.addr.i702.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i704.i)
  %cmp.i705.i = icmp slt i32 %call1.i704.i, 0
  br i1 %cmp.i705.i, label %do.body.i708.i, label %for.body159.i.rm68200_dcs_write_cmd.exit710.i_crit_edge

for.body159.i.rm68200_dcs_write_cmd.exit710.i_crit_edge: ; preds = %for.body159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit710.i

do.body.i708.i:                                   ; preds = %for.body159.i
  %call2.i706.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i706.i)
  %tobool.not.i707.i = icmp eq i32 %call2.i706.i, 0
  br i1 %tobool.not.i707.i, label %do.body.i708.i.rm68200_dcs_write_cmd.exit710.i_crit_edge, label %do.end.i709.i

do.body.i708.i.rm68200_dcs_write_cmd.exit710.i_crit_edge: ; preds = %do.body.i708.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit710.i

do.end.i709.i:                                    ; preds = %do.body.i708.i
  call void @__sanitizer_cov_trace_pc() #8
  %347 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %348, ptr noundef nonnull @.str.75, i32 noundef %call1.i704.i) #9
  br label %rm68200_dcs_write_cmd.exit710.i

rm68200_dcs_write_cmd.exit710.i:                  ; preds = %do.end.i709.i, %do.body.i708.i.rm68200_dcs_write_cmd.exit710.i_crit_edge, %for.body159.i.rm68200_dcs_write_cmd.exit710.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i702.i) #6
  %inc164.i = add nuw nsw i32 %i155.0801.i, 1
  %exitcond817.not.i = icmp eq i32 %inc164.i, 10
  br i1 %exitcond817.not.i, label %for.body170.preheader.i, label %rm68200_dcs_write_cmd.exit710.i.for.body159.i_crit_edge

rm68200_dcs_write_cmd.exit710.i.for.body159.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit710.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body159.i

for.body170.preheader.i:                          ; preds = %rm68200_dcs_write_cmd.exit710.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  %349 = ptrtoint ptr %value.addr.i711.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 18, ptr %value.addr.i711.i, align 1
  %350 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i712.i = getelementptr i8, ptr %351, i32 -8
  %call1.i713.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i712.i, i8 noundef zeroext -45, ptr noundef nonnull %value.addr.i711.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i713.i)
  %cmp.i714.i = icmp slt i32 %call1.i713.i, 0
  br i1 %cmp.i714.i, label %do.body.i717.i, label %for.body170.preheader.i.rm68200_dcs_write_cmd.exit719.i_crit_edge

for.body170.preheader.i.rm68200_dcs_write_cmd.exit719.i_crit_edge: ; preds = %for.body170.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.i

do.body.i717.i:                                   ; preds = %for.body170.preheader.i
  %call2.i715.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i715.i)
  %tobool.not.i716.i = icmp eq i32 %call2.i715.i, 0
  br i1 %tobool.not.i716.i, label %do.body.i717.i.rm68200_dcs_write_cmd.exit719.i_crit_edge, label %do.end.i718.i

do.body.i717.i.rm68200_dcs_write_cmd.exit719.i_crit_edge: ; preds = %do.body.i717.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.i

do.end.i718.i:                                    ; preds = %do.body.i717.i
  call void @__sanitizer_cov_trace_pc() #8
  %352 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %353, ptr noundef nonnull @.str.75, i32 noundef %call1.i713.i) #9
  br label %rm68200_dcs_write_cmd.exit719.i

rm68200_dcs_write_cmd.exit719.i:                  ; preds = %do.end.i718.i, %do.body.i717.i.rm68200_dcs_write_cmd.exit719.i_crit_edge, %for.body170.preheader.i.rm68200_dcs_write_cmd.exit719.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  %354 = ptrtoint ptr %value.addr.i711.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 22, ptr %value.addr.i711.i, align 1
  %355 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i712.1.i = getelementptr i8, ptr %356, i32 -8
  %call1.i713.1.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i712.1.i, i8 noundef zeroext -44, ptr noundef nonnull %value.addr.i711.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i713.1.i)
  %cmp.i714.1.i = icmp slt i32 %call1.i713.1.i, 0
  br i1 %cmp.i714.1.i, label %do.body.i717.1.i, label %rm68200_dcs_write_cmd.exit719.i.rm68200_dcs_write_cmd.exit719.1.i_crit_edge

rm68200_dcs_write_cmd.exit719.i.rm68200_dcs_write_cmd.exit719.1.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit719.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.1.i

do.body.i717.1.i:                                 ; preds = %rm68200_dcs_write_cmd.exit719.i
  %call2.i715.1.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i715.1.i)
  %tobool.not.i716.1.i = icmp eq i32 %call2.i715.1.i, 0
  br i1 %tobool.not.i716.1.i, label %do.body.i717.1.i.rm68200_dcs_write_cmd.exit719.1.i_crit_edge, label %do.end.i718.1.i

do.body.i717.1.i.rm68200_dcs_write_cmd.exit719.1.i_crit_edge: ; preds = %do.body.i717.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.1.i

do.end.i718.1.i:                                  ; preds = %do.body.i717.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %357 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %358, ptr noundef nonnull @.str.75, i32 noundef %call1.i713.1.i) #9
  br label %rm68200_dcs_write_cmd.exit719.1.i

rm68200_dcs_write_cmd.exit719.1.i:                ; preds = %do.end.i718.1.i, %do.body.i717.1.i.rm68200_dcs_write_cmd.exit719.1.i_crit_edge, %rm68200_dcs_write_cmd.exit719.i.rm68200_dcs_write_cmd.exit719.1.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  %359 = ptrtoint ptr %value.addr.i711.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 0, ptr %value.addr.i711.i, align 1
  %360 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i712.2.i = getelementptr i8, ptr %361, i32 -8
  %call1.i713.2.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i712.2.i, i8 noundef zeroext -43, ptr noundef nonnull %value.addr.i711.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i713.2.i)
  %cmp.i714.2.i = icmp slt i32 %call1.i713.2.i, 0
  br i1 %cmp.i714.2.i, label %do.body.i717.2.i, label %rm68200_dcs_write_cmd.exit719.1.i.rm68200_dcs_write_cmd.exit719.2.i_crit_edge

rm68200_dcs_write_cmd.exit719.1.i.rm68200_dcs_write_cmd.exit719.2.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit719.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.2.i

do.body.i717.2.i:                                 ; preds = %rm68200_dcs_write_cmd.exit719.1.i
  %call2.i715.2.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i715.2.i)
  %tobool.not.i716.2.i = icmp eq i32 %call2.i715.2.i, 0
  br i1 %tobool.not.i716.2.i, label %do.body.i717.2.i.rm68200_dcs_write_cmd.exit719.2.i_crit_edge, label %do.end.i718.2.i

do.body.i717.2.i.rm68200_dcs_write_cmd.exit719.2.i_crit_edge: ; preds = %do.body.i717.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.2.i

do.end.i718.2.i:                                  ; preds = %do.body.i717.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %362 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %363, ptr noundef nonnull @.str.75, i32 noundef %call1.i713.2.i) #9
  br label %rm68200_dcs_write_cmd.exit719.2.i

rm68200_dcs_write_cmd.exit719.2.i:                ; preds = %do.end.i718.2.i, %do.body.i717.2.i.rm68200_dcs_write_cmd.exit719.2.i_crit_edge, %rm68200_dcs_write_cmd.exit719.1.i.rm68200_dcs_write_cmd.exit719.2.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  %364 = ptrtoint ptr %value.addr.i711.i to i32
  call void @__asan_store1_noabort(i32 %364)
  store i8 4, ptr %value.addr.i711.i, align 1
  %365 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i712.3.i = getelementptr i8, ptr %366, i32 -8
  %call1.i713.3.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i712.3.i, i8 noundef zeroext -42, ptr noundef nonnull %value.addr.i711.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i713.3.i)
  %cmp.i714.3.i = icmp slt i32 %call1.i713.3.i, 0
  br i1 %cmp.i714.3.i, label %do.body.i717.3.i, label %rm68200_dcs_write_cmd.exit719.2.i.rm68200_dcs_write_cmd.exit719.3.i_crit_edge

rm68200_dcs_write_cmd.exit719.2.i.rm68200_dcs_write_cmd.exit719.3.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit719.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.3.i

do.body.i717.3.i:                                 ; preds = %rm68200_dcs_write_cmd.exit719.2.i
  %call2.i715.3.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i715.3.i)
  %tobool.not.i716.3.i = icmp eq i32 %call2.i715.3.i, 0
  br i1 %tobool.not.i716.3.i, label %do.body.i717.3.i.rm68200_dcs_write_cmd.exit719.3.i_crit_edge, label %do.end.i718.3.i

do.body.i717.3.i.rm68200_dcs_write_cmd.exit719.3.i_crit_edge: ; preds = %do.body.i717.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.3.i

do.end.i718.3.i:                                  ; preds = %do.body.i717.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %367 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %368, ptr noundef nonnull @.str.75, i32 noundef %call1.i713.3.i) #9
  br label %rm68200_dcs_write_cmd.exit719.3.i

rm68200_dcs_write_cmd.exit719.3.i:                ; preds = %do.end.i718.3.i, %do.body.i717.3.i.rm68200_dcs_write_cmd.exit719.3.i_crit_edge, %rm68200_dcs_write_cmd.exit719.2.i.rm68200_dcs_write_cmd.exit719.3.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  %369 = ptrtoint ptr %value.addr.i711.i to i32
  call void @__asan_store1_noabort(i32 %369)
  store i8 63, ptr %value.addr.i711.i, align 1
  %370 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i712.4.i = getelementptr i8, ptr %371, i32 -8
  %call1.i713.4.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i712.4.i, i8 noundef zeroext -41, ptr noundef nonnull %value.addr.i711.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i713.4.i)
  %cmp.i714.4.i = icmp slt i32 %call1.i713.4.i, 0
  br i1 %cmp.i714.4.i, label %do.body.i717.4.i, label %rm68200_dcs_write_cmd.exit719.3.i.rm68200_dcs_write_cmd.exit719.4.i_crit_edge

rm68200_dcs_write_cmd.exit719.3.i.rm68200_dcs_write_cmd.exit719.4.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit719.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.4.i

do.body.i717.4.i:                                 ; preds = %rm68200_dcs_write_cmd.exit719.3.i
  %call2.i715.4.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i715.4.i)
  %tobool.not.i716.4.i = icmp eq i32 %call2.i715.4.i, 0
  br i1 %tobool.not.i716.4.i, label %do.body.i717.4.i.rm68200_dcs_write_cmd.exit719.4.i_crit_edge, label %do.end.i718.4.i

do.body.i717.4.i.rm68200_dcs_write_cmd.exit719.4.i_crit_edge: ; preds = %do.body.i717.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit719.4.i

do.end.i718.4.i:                                  ; preds = %do.body.i717.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %372 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %373, ptr noundef nonnull @.str.75, i32 noundef %call1.i713.4.i) #9
  br label %rm68200_dcs_write_cmd.exit719.4.i

rm68200_dcs_write_cmd.exit719.4.i:                ; preds = %do.end.i718.4.i, %do.body.i717.4.i.rm68200_dcs_write_cmd.exit719.4.i_crit_edge, %rm68200_dcs_write_cmd.exit719.3.i.rm68200_dcs_write_cmd.exit719.4.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i711.i) #6
  %374 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i720.i = getelementptr i8, ptr %375, i32 -8
  %call1.i721.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i720.i, ptr noundef nonnull @rm68200_init_sequence.d.65, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i721.i)
  %cmp.i722.i = icmp slt i32 %call1.i721.i, 0
  br i1 %cmp.i722.i, label %do.body.i725.i, label %rm68200_dcs_write_cmd.exit719.4.i.rm68200_dcs_write_buf.exit727.i_crit_edge

rm68200_dcs_write_cmd.exit719.4.i.rm68200_dcs_write_buf.exit727.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit719.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit727.i

do.body.i725.i:                                   ; preds = %rm68200_dcs_write_cmd.exit719.4.i
  %call2.i723.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i723.i)
  %tobool.not.i724.i = icmp eq i32 %call2.i723.i, 0
  br i1 %tobool.not.i724.i, label %do.body.i725.i.rm68200_dcs_write_buf.exit727.i_crit_edge, label %do.end.i726.i

do.body.i725.i.rm68200_dcs_write_buf.exit727.i_crit_edge: ; preds = %do.body.i725.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit727.i

do.end.i726.i:                                    ; preds = %do.body.i725.i
  call void @__sanitizer_cov_trace_pc() #8
  %376 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %377, ptr noundef nonnull @.str.74, i32 noundef %call1.i721.i) #9
  br label %rm68200_dcs_write_buf.exit727.i

rm68200_dcs_write_buf.exit727.i:                  ; preds = %do.end.i726.i, %do.body.i725.i.rm68200_dcs_write_buf.exit727.i_crit_edge, %rm68200_dcs_write_cmd.exit719.4.i.rm68200_dcs_write_buf.exit727.i_crit_edge
  %378 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i728.i = getelementptr i8, ptr %379, i32 -8
  %call1.i729.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i728.i, ptr noundef nonnull @rm68200_init_sequence.d.66, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i729.i)
  %cmp.i730.i = icmp slt i32 %call1.i729.i, 0
  br i1 %cmp.i730.i, label %do.body.i733.i, label %rm68200_dcs_write_buf.exit727.i.rm68200_dcs_write_buf.exit735.i_crit_edge

rm68200_dcs_write_buf.exit727.i.rm68200_dcs_write_buf.exit735.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit727.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit735.i

do.body.i733.i:                                   ; preds = %rm68200_dcs_write_buf.exit727.i
  %call2.i731.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i731.i)
  %tobool.not.i732.i = icmp eq i32 %call2.i731.i, 0
  br i1 %tobool.not.i732.i, label %do.body.i733.i.rm68200_dcs_write_buf.exit735.i_crit_edge, label %do.end.i734.i

do.body.i733.i.rm68200_dcs_write_buf.exit735.i_crit_edge: ; preds = %do.body.i733.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit735.i

do.end.i734.i:                                    ; preds = %do.body.i733.i
  call void @__sanitizer_cov_trace_pc() #8
  %380 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %381, ptr noundef nonnull @.str.74, i32 noundef %call1.i729.i) #9
  br label %rm68200_dcs_write_buf.exit735.i

rm68200_dcs_write_buf.exit735.i:                  ; preds = %do.end.i734.i, %do.body.i733.i.rm68200_dcs_write_buf.exit735.i_crit_edge, %rm68200_dcs_write_buf.exit727.i.rm68200_dcs_write_buf.exit735.i_crit_edge
  %382 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i736.i = getelementptr i8, ptr %383, i32 -8
  %call1.i737.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i736.i, ptr noundef nonnull @rm68200_init_sequence.d.67, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i737.i)
  %cmp.i738.i = icmp slt i32 %call1.i737.i, 0
  br i1 %cmp.i738.i, label %do.body.i741.i, label %rm68200_dcs_write_buf.exit735.i.rm68200_dcs_write_buf.exit743.i_crit_edge

rm68200_dcs_write_buf.exit735.i.rm68200_dcs_write_buf.exit743.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit735.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit743.i

do.body.i741.i:                                   ; preds = %rm68200_dcs_write_buf.exit735.i
  %call2.i739.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i739.i)
  %tobool.not.i740.i = icmp eq i32 %call2.i739.i, 0
  br i1 %tobool.not.i740.i, label %do.body.i741.i.rm68200_dcs_write_buf.exit743.i_crit_edge, label %do.end.i742.i

do.body.i741.i.rm68200_dcs_write_buf.exit743.i_crit_edge: ; preds = %do.body.i741.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit743.i

do.end.i742.i:                                    ; preds = %do.body.i741.i
  call void @__sanitizer_cov_trace_pc() #8
  %384 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %385, ptr noundef nonnull @.str.74, i32 noundef %call1.i737.i) #9
  br label %rm68200_dcs_write_buf.exit743.i

rm68200_dcs_write_buf.exit743.i:                  ; preds = %do.end.i742.i, %do.body.i741.i.rm68200_dcs_write_buf.exit743.i_crit_edge, %rm68200_dcs_write_buf.exit735.i.rm68200_dcs_write_buf.exit743.i_crit_edge
  %386 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i744.i = getelementptr i8, ptr %387, i32 -8
  %call1.i745.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i744.i, ptr noundef nonnull @rm68200_init_sequence.d.68, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i745.i)
  %cmp.i746.i = icmp slt i32 %call1.i745.i, 0
  br i1 %cmp.i746.i, label %do.body.i749.i, label %rm68200_dcs_write_buf.exit743.i.rm68200_dcs_write_buf.exit751.i_crit_edge

rm68200_dcs_write_buf.exit743.i.rm68200_dcs_write_buf.exit751.i_crit_edge: ; preds = %rm68200_dcs_write_buf.exit743.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit751.i

do.body.i749.i:                                   ; preds = %rm68200_dcs_write_buf.exit743.i
  %call2.i747.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i747.i)
  %tobool.not.i748.i = icmp eq i32 %call2.i747.i, 0
  br i1 %tobool.not.i748.i, label %do.body.i749.i.rm68200_dcs_write_buf.exit751.i_crit_edge, label %do.end.i750.i

do.body.i749.i.rm68200_dcs_write_buf.exit751.i_crit_edge: ; preds = %do.body.i749.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_buf.exit751.i

do.end.i750.i:                                    ; preds = %do.body.i749.i
  call void @__sanitizer_cov_trace_pc() #8
  %388 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %389, ptr noundef nonnull @.str.74, i32 noundef %call1.i745.i) #9
  br label %rm68200_dcs_write_buf.exit751.i

rm68200_dcs_write_buf.exit751.i:                  ; preds = %do.end.i750.i, %do.body.i749.i.rm68200_dcs_write_buf.exit751.i_crit_edge, %rm68200_dcs_write_buf.exit743.i.rm68200_dcs_write_buf.exit751.i_crit_edge
  %390 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i752.i = getelementptr i8, ptr %391, i32 -8
  %call1.i753.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i752.i, ptr noundef nonnull @rm68200_init_sequence.d.69, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i753.i)
  %cmp.i754.i = icmp slt i32 %call1.i753.i, 0
  br i1 %cmp.i754.i, label %do.body.i757.i, label %rm68200_dcs_write_buf.exit751.i.for.body181.i.preheader_crit_edge

rm68200_dcs_write_buf.exit751.i.for.body181.i.preheader_crit_edge: ; preds = %rm68200_dcs_write_buf.exit751.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body181.i.preheader

do.body.i757.i:                                   ; preds = %rm68200_dcs_write_buf.exit751.i
  %call2.i755.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i755.i)
  %tobool.not.i756.i = icmp eq i32 %call2.i755.i, 0
  br i1 %tobool.not.i756.i, label %do.body.i757.i.for.body181.i.preheader_crit_edge, label %do.end.i758.i

do.body.i757.i.for.body181.i.preheader_crit_edge: ; preds = %do.body.i757.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body181.i.preheader

do.end.i758.i:                                    ; preds = %do.body.i757.i
  call void @__sanitizer_cov_trace_pc() #8
  %392 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %393, ptr noundef nonnull @.str.74, i32 noundef %call1.i753.i) #9
  br label %for.body181.i.preheader

for.body181.i.preheader:                          ; preds = %do.end.i758.i, %do.body.i757.i.for.body181.i.preheader_crit_edge, %rm68200_dcs_write_buf.exit751.i.for.body181.i.preheader_crit_edge
  br label %for.body181.i

for.body181.i:                                    ; preds = %rm68200_dcs_write_cmd.exit768.i.for.body181.i_crit_edge, %for.body181.i.preheader
  %i177.0803.i = phi i32 [ %inc186.i, %rm68200_dcs_write_cmd.exit768.i.for.body181.i_crit_edge ], [ 0, %for.body181.i.preheader ]
  %394 = trunc i32 %i177.0803.i to i8
  %conv183.i = add nuw nsw i8 %394, 96
  %arrayidx184.i = getelementptr [16 x i8], ptr @rm68200_init_sequence.d.70, i32 0, i32 %i177.0803.i
  %395 = ptrtoint ptr %arrayidx184.i to i32
  call void @__asan_load1_noabort(i32 %395)
  %396 = load i8, ptr %arrayidx184.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i760.i) #6
  %397 = ptrtoint ptr %value.addr.i760.i to i32
  call void @__asan_store1_noabort(i32 %397)
  store i8 %396, ptr %value.addr.i760.i, align 1
  %398 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i761.i = getelementptr i8, ptr %399, i32 -8
  %call1.i762.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i761.i, i8 noundef zeroext %conv183.i, ptr noundef nonnull %value.addr.i760.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i762.i)
  %cmp.i763.i = icmp slt i32 %call1.i762.i, 0
  br i1 %cmp.i763.i, label %do.body.i766.i, label %for.body181.i.rm68200_dcs_write_cmd.exit768.i_crit_edge

for.body181.i.rm68200_dcs_write_cmd.exit768.i_crit_edge: ; preds = %for.body181.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit768.i

do.body.i766.i:                                   ; preds = %for.body181.i
  %call2.i764.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i764.i)
  %tobool.not.i765.i = icmp eq i32 %call2.i764.i, 0
  br i1 %tobool.not.i765.i, label %do.body.i766.i.rm68200_dcs_write_cmd.exit768.i_crit_edge, label %do.end.i767.i

do.body.i766.i.rm68200_dcs_write_cmd.exit768.i_crit_edge: ; preds = %do.body.i766.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit768.i

do.end.i767.i:                                    ; preds = %do.body.i766.i
  call void @__sanitizer_cov_trace_pc() #8
  %400 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %401, ptr noundef nonnull @.str.75, i32 noundef %call1.i762.i) #9
  br label %rm68200_dcs_write_cmd.exit768.i

rm68200_dcs_write_cmd.exit768.i:                  ; preds = %do.end.i767.i, %do.body.i766.i.rm68200_dcs_write_cmd.exit768.i_crit_edge, %for.body181.i.rm68200_dcs_write_cmd.exit768.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i760.i) #6
  %inc186.i = add nuw nsw i32 %i177.0803.i, 1
  %exitcond819.not.i = icmp eq i32 %inc186.i, 16
  br i1 %exitcond819.not.i, label %rm68200_dcs_write_cmd.exit768.i.for.body192.i_crit_edge, label %rm68200_dcs_write_cmd.exit768.i.for.body181.i_crit_edge

rm68200_dcs_write_cmd.exit768.i.for.body181.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit768.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body181.i

rm68200_dcs_write_cmd.exit768.i.for.body192.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit768.i
  br label %for.body192.i

for.body192.i:                                    ; preds = %rm68200_dcs_write_cmd.exit777.i.for.body192.i_crit_edge, %rm68200_dcs_write_cmd.exit768.i.for.body192.i_crit_edge
  %i188.0804.i = phi i32 [ %inc197.i, %rm68200_dcs_write_cmd.exit777.i.for.body192.i_crit_edge ], [ 0, %rm68200_dcs_write_cmd.exit768.i.for.body192.i_crit_edge ]
  %402 = trunc i32 %i188.0804.i to i8
  %conv194.i = add nuw nsw i8 %402, 112
  %arrayidx195.i = getelementptr [16 x i8], ptr @rm68200_init_sequence.d.71, i32 0, i32 %i188.0804.i
  %403 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load1_noabort(i32 %403)
  %404 = load i8, ptr %arrayidx195.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i769.i) #6
  %405 = ptrtoint ptr %value.addr.i769.i to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 %404, ptr %value.addr.i769.i, align 1
  %406 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i770.i = getelementptr i8, ptr %407, i32 -8
  %call1.i771.i = call i32 @mipi_dsi_dcs_write(ptr noundef %add.ptr.i.i770.i, i8 noundef zeroext %conv194.i, ptr noundef nonnull %value.addr.i769.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i771.i)
  %cmp.i772.i = icmp slt i32 %call1.i771.i, 0
  br i1 %cmp.i772.i, label %do.body.i775.i, label %for.body192.i.rm68200_dcs_write_cmd.exit777.i_crit_edge

for.body192.i.rm68200_dcs_write_cmd.exit777.i_crit_edge: ; preds = %for.body192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit777.i

do.body.i775.i:                                   ; preds = %for.body192.i
  %call2.i773.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_cmd._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i773.i)
  %tobool.not.i774.i = icmp eq i32 %call2.i773.i, 0
  br i1 %tobool.not.i774.i, label %do.body.i775.i.rm68200_dcs_write_cmd.exit777.i_crit_edge, label %do.end.i776.i

do.body.i775.i.rm68200_dcs_write_cmd.exit777.i_crit_edge: ; preds = %do.body.i775.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_dcs_write_cmd.exit777.i

do.end.i776.i:                                    ; preds = %do.body.i775.i
  call void @__sanitizer_cov_trace_pc() #8
  %408 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %409, ptr noundef nonnull @.str.75, i32 noundef %call1.i771.i) #9
  br label %rm68200_dcs_write_cmd.exit777.i

rm68200_dcs_write_cmd.exit777.i:                  ; preds = %do.end.i776.i, %do.body.i775.i.rm68200_dcs_write_cmd.exit777.i_crit_edge, %for.body192.i.rm68200_dcs_write_cmd.exit777.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i769.i) #6
  %inc197.i = add nuw nsw i32 %i188.0804.i, 1
  %exitcond820.not.i = icmp eq i32 %inc197.i, 16
  br i1 %exitcond820.not.i, label %for.end198.i, label %rm68200_dcs_write_cmd.exit777.i.for.body192.i_crit_edge

rm68200_dcs_write_cmd.exit777.i.for.body192.i_crit_edge: ; preds = %rm68200_dcs_write_cmd.exit777.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body192.i

for.end198.i:                                     ; preds = %rm68200_dcs_write_cmd.exit777.i
  %410 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i778.i = getelementptr i8, ptr %411, i32 -8
  %call1.i779.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %add.ptr.i.i778.i, ptr noundef nonnull @rm68200_init_sequence.d.72, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i779.i)
  %cmp.i780.i = icmp slt i32 %call1.i779.i, 0
  br i1 %cmp.i780.i, label %do.body.i783.i, label %for.end198.i.rm68200_init_sequence.exit_crit_edge

for.end198.i.rm68200_init_sequence.exit_crit_edge: ; preds = %for.end198.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_init_sequence.exit

do.body.i783.i:                                   ; preds = %for.end198.i
  %call2.i781.i = call i32 @___ratelimit(ptr noundef nonnull @rm68200_dcs_write_buf._rs, ptr noundef nonnull @__func__.rm68200_dcs_write_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i781.i)
  %tobool.not.i782.i = icmp eq i32 %call2.i781.i, 0
  br i1 %tobool.not.i782.i, label %do.body.i783.i.rm68200_init_sequence.exit_crit_edge, label %do.end.i784.i

do.body.i783.i.rm68200_init_sequence.exit_crit_edge: ; preds = %do.body.i783.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rm68200_init_sequence.exit

do.end.i784.i:                                    ; preds = %do.body.i783.i
  call void @__sanitizer_cov_trace_pc() #8
  %412 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %413, ptr noundef nonnull @.str.74, i32 noundef %call1.i779.i) #9
  br label %rm68200_init_sequence.exit

rm68200_init_sequence.exit:                       ; preds = %do.end.i784.i, %do.body.i783.i.rm68200_init_sequence.exit_crit_edge, %for.end198.i.rm68200_init_sequence.exit_crit_edge
  %call11 = call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %add.ptr.i37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %rm68200_init_sequence.exit.cleanup_crit_edge

rm68200_init_sequence.exit.cleanup_crit_edge:     ; preds = %rm68200_init_sequence.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %rm68200_init_sequence.exit
  call void @msleep(i32 noundef 125) #6
  %call15 = call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %add.ptr.i37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef 20) #6
  %414 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %414)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %rm68200_init_sequence.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ %call11, %rm68200_init_sequence.exit.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rm68200_enable(ptr nocapture noundef %panel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %panel, i32 33
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rm68200_disable(ptr nocapture noundef %panel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %panel, i32 33
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm68200_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %panel, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %1, i32 -8
  %prepared = getelementptr i8, ptr %panel, i32 32
  %2 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %prepared, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %add.ptr.i34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.76, i32 noundef %call2) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %add.ptr.i34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.if.end14_crit_edge, label %do.end12

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.80, i32 noundef %call7) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end12, %if.end6.if.end14_crit_edge
  tail call void @msleep(i32 noundef 120) #6
  %reset_gpio = getelementptr i8, ptr %panel, i32 24
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_gpio, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.end14.if.end18_crit_edge, label %if.then16

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %9, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %supply = getelementptr i8, ptr %panel, i32 28
  %10 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %supply, align 4
  %call19 = tail call i32 @regulator_disable(ptr noundef %11) #6
  %12 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rm68200_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @default_mode) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.82, i32 noundef 720, i32 noundef 1280, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #6
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 26
  %5 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %width_mm, align 2
  %conv4 = zext i16 %6 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %7 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv4, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 27
  %8 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %height_mm, align 4
  %conv6 = zext i16 %9 to i32
  %height_mm8 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %height_mm8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv6, ptr %height_mm8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !164, !165, !166, !167, !168, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !189}
!llvm.module.flags = !{!191, !192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !{ptr @__initcall__kmod_panel_raydium_rm68200__302_439_raydium_rm68200_driver_init6, !1, !"__initcall__kmod_panel_raydium_rm68200__302_439_raydium_rm68200_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 439, i32 1}
!2 = !{ptr @__exitcall_raydium_rm68200_driver_exit, !1, !"__exitcall_raydium_rm68200_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 441, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 442, i32 1}
!7 = !{ptr @__UNIQUE_ID_description305, !8, !"__UNIQUE_ID_description305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 443, i32 1}
!9 = !{ptr @__UNIQUE_ID_file306, !10, !"__UNIQUE_ID_file306", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 444, i32 1}
!11 = !{ptr @__UNIQUE_ID_license307, !10, !"__UNIQUE_ID_license307", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 435, i32 11}
!14 = !{ptr @raydium_rm68200_driver, !15, !"raydium_rm68200_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 431, i32 31}
!16 = !{ptr @raydium_rm68200_of_match, !17, !"raydium_rm68200_of_match", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 425, i32 34}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 372, i32 49}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 375, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rm68200_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @rm68200_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 379, i32 40}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 383, i32 4}
!32 = !{ptr @rm68200_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rm68200_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 407, i32 3}
!36 = !{ptr @rm68200_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @rm68200_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @rm68200_drm_funcs, !39, !"rm68200_drm_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 354, i32 37}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 288, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rm68200_prepare._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @rm68200_prepare._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @rm68200_init_sequence.d, !46, !"d", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 148, i32 2}
!47 = distinct !{null, !48, !"d", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 149, i32 2}
!49 = !{ptr @rm68200_init_sequence.d.17, !50, !"d", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 150, i32 2}
!51 = !{ptr @rm68200_init_sequence.d.18, !52, !"d", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 151, i32 2}
!53 = !{ptr @rm68200_init_sequence.d.19, !54, !"d", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 152, i32 2}
!55 = !{ptr @rm68200_init_sequence.d.20, !56, !"d", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 153, i32 2}
!57 = !{ptr @rm68200_init_sequence.d.21, !58, !"d", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 154, i32 2}
!59 = !{ptr @rm68200_init_sequence.d.22, !60, !"d", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 155, i32 2}
!61 = !{ptr @rm68200_init_sequence.d.23, !62, !"d", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 156, i32 2}
!63 = !{ptr @rm68200_init_sequence.d.24, !64, !"d", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 157, i32 2}
!65 = !{ptr @rm68200_init_sequence.d.25, !66, !"d", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 158, i32 2}
!67 = !{ptr @rm68200_init_sequence.d.26, !68, !"d", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 159, i32 2}
!69 = !{ptr @rm68200_init_sequence.d.27, !70, !"d", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 160, i32 2}
!71 = !{ptr @rm68200_init_sequence.d.28, !72, !"d", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 161, i32 2}
!73 = !{ptr @rm68200_init_sequence.d.29, !74, !"d", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 162, i32 2}
!75 = !{ptr @rm68200_init_sequence.d.30, !76, !"d", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 164, i32 2}
!77 = !{ptr @rm68200_init_sequence.d.31, !78, !"d", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 165, i32 2}
!79 = !{ptr @rm68200_init_sequence.d.32, !80, !"d", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 166, i32 2}
!81 = !{ptr @rm68200_init_sequence.d.33, !82, !"d", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 167, i32 2}
!83 = !{ptr @rm68200_init_sequence.d.34, !84, !"d", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 168, i32 2}
!85 = !{ptr @rm68200_init_sequence.d.35, !86, !"d", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 169, i32 2}
!87 = !{ptr @rm68200_init_sequence.d.36, !88, !"d", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 171, i32 2}
!89 = !{ptr @rm68200_init_sequence.d.37, !90, !"d", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 173, i32 2}
!91 = !{ptr @rm68200_init_sequence.d.38, !92, !"d", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 175, i32 2}
!93 = distinct !{null, !94, !"d", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 177, i32 2}
!95 = !{ptr @rm68200_init_sequence.d.40, !96, !"d", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 178, i32 2}
!97 = !{ptr @rm68200_init_sequence.d.41, !98, !"d", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 179, i32 2}
!99 = distinct !{null, !100, !"d", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 181, i32 2}
!101 = !{ptr @rm68200_init_sequence.d.43, !102, !"d", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 182, i32 2}
!103 = !{ptr @rm68200_init_sequence.d.44, !104, !"d", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 183, i32 2}
!105 = !{ptr @rm68200_init_sequence.d.45, !106, !"d", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 184, i32 2}
!107 = !{ptr @rm68200_init_sequence.d.46, !108, !"d", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 186, i32 2}
!109 = !{ptr @rm68200_init_sequence.d.47, !110, !"d", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 188, i32 2}
!111 = !{ptr @rm68200_init_sequence.d.48, !112, !"d", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 189, i32 2}
!113 = !{ptr @rm68200_init_sequence.d.49, !114, !"d", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 190, i32 2}
!115 = !{ptr @rm68200_init_sequence.d.50, !116, !"d", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 192, i32 2}
!117 = !{ptr @rm68200_init_sequence.d.51, !118, !"d", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 193, i32 2}
!119 = !{ptr @rm68200_init_sequence.d.52, !120, !"d", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 194, i32 2}
!121 = !{ptr @rm68200_init_sequence.d.53, !122, !"d", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 196, i32 2}
!123 = !{ptr @rm68200_init_sequence.d.54, !124, !"d", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 197, i32 2}
!125 = !{ptr @rm68200_init_sequence.d.55, !126, !"d", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 199, i32 2}
!127 = !{ptr @rm68200_init_sequence.d.56, !128, !"d", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 201, i32 2}
!129 = distinct !{null, !130, !"d", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 203, i32 2}
!131 = distinct !{null, !132, !"d", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 205, i32 2}
!133 = distinct !{null, !134, !"d", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 206, i32 2}
!135 = !{ptr @rm68200_init_sequence.d.60, !136, !"d", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 207, i32 2}
!137 = !{ptr @rm68200_init_sequence.d.61, !138, !"d", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 209, i32 2}
!139 = !{ptr @rm68200_init_sequence.d.62, !140, !"d", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 211, i32 2}
!141 = !{ptr @rm68200_init_sequence.d.63, !142, !"d", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 213, i32 2}
!143 = distinct !{null, !144, !"d", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 215, i32 2}
!145 = !{ptr @rm68200_init_sequence.d.65, !146, !"d", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 216, i32 2}
!147 = !{ptr @rm68200_init_sequence.d.66, !148, !"d", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 217, i32 2}
!149 = !{ptr @rm68200_init_sequence.d.67, !150, !"d", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 219, i32 2}
!151 = !{ptr @rm68200_init_sequence.d.68, !152, !"d", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 220, i32 2}
!153 = !{ptr @rm68200_init_sequence.d.69, !154, !"d", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 222, i32 2}
!155 = !{ptr @rm68200_init_sequence.d.70, !156, !"d", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 223, i32 2}
!157 = !{ptr @rm68200_init_sequence.d.71, !158, !"d", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 226, i32 2}
!159 = !{ptr @rm68200_init_sequence.d.72, !160, !"d", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 231, i32 2}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 112, i32 3}
!163 = !{ptr @rm68200_dcs_write_buf._rs, !162, !"_rs", i1 false, i1 false}
!164 = !{ptr @__func__.rm68200_dcs_write_buf, !162, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @rm68200_dcs_write_buf._entry, !162, !"_entry", i1 false, i1 false}
!167 = !{ptr @rm68200_dcs_write_buf._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @rm68200_dcs_write_cmd._rs, !169, !"_rs", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 122, i32 3}
!170 = !{ptr @__func__.rm68200_dcs_write_cmd, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @rm68200_dcs_write_cmd._entry, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @rm68200_dcs_write_cmd._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 257, i32 3}
!176 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.78, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @rm68200_unprepare._entry, !175, !"_entry", i1 false, i1 false}
!179 = !{ptr @rm68200_unprepare._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 261, i32 3}
!182 = !{ptr @rm68200_unprepare._entry.79, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @rm68200_unprepare._entry_ptr.81, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 337, i32 3}
!186 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @rm68200_get_modes._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @rm68200_get_modes._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @default_mode, !190, !"default_mode", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/panel/panel-raydium-rm68200.c", i32 84, i32 38}
!191 = !{i32 1, !"wchar_size", i32 2}
!192 = !{i32 1, !"min_enum_size", i32 4}
!193 = !{i32 8, !"branch-target-enforcement", i32 0}
!194 = !{i32 8, !"sign-return-address", i32 0}
!195 = !{i32 8, !"sign-return-address-all", i32 0}
!196 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!197 = !{i32 7, !"uwtable", i32 1}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!200 = !{i8 0, i8 2}
