; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-novatek-nt36672a.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-novatek-nt36672a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.nt36672a_panel_desc = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nt36672a_panel_cmd = type { [2 x i8] }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.nt36672a_panel = type { %struct.drm_panel, ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, i8 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_novatek_nt36672a__302_713_nt36672a_panel_driver_init6 = internal global ptr @nt36672a_panel_driver_init, section ".initcall6.init", align 4
@nt36672a_panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tianma_fhd_video_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nt36672a_panel_probe, ptr @nt36672a_panel_remove, ptr @nt36672a_panel_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_nt36672a_panel_driver_exit = internal global ptr @nt36672a_panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [69 x i8] c"panel_novatek_nt36672a.author=Sumit Semwal <sumit.semwal@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [84 x i8] c"panel_novatek_nt36672a.description=NOVATEK NT36672A based MIPI-DSI LCD panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [73 x i8] c"panel_novatek_nt36672a.file=drivers/gpu/drm/panel/panel-novatek-nt36672a\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [35 x i8] c"panel_novatek_nt36672a.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel-tianma-nt36672a\00", [42 x i8] zeroinitializer }, align 32
@tianma_fhd_video_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tianma,fhd-video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tianma_fhd_video_panel_desc }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tianma_fhd_video_panel_desc = internal constant { %struct.nt36672a_panel_desc, [44 x i8] } { %struct.nt36672a_panel_desc { ptr @tianma_fhd_video_panel_default_mode, ptr null, i32 68, i32 136, i32 3091, i32 0, i32 4, i32 281, ptr @tianma_fhd_video_on_cmds_1, i32 5, ptr @tianma_fhd_video_on_cmds_2, i32 4, ptr @tianma_fhd_video_off_cmds }, [44 x i8] zeroinitializer }, align 32
@tianma_fhd_video_panel_default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 161331, i16 1080, i16 1120, i16 1140, i16 1184, i16 0, i16 2246, i16 2261, i16 2263, i16 2271, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@tianma_fhd_video_on_cmds_1 = internal constant { [281 x %struct.nt36672a_panel_cmd], [142 x i8] } { [281 x %struct.nt36672a_panel_cmd] [%struct.nt36672a_panel_cmd { [2 x i8] c"\FF\22" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\00@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\01\C0" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\02@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\03@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\04@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\05@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\06@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\07@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\08@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\09@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\0A@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\0B@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\0C@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\0D@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\0E@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\0F@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\10@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\11P" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\12`" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\13p" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\14X" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\15h" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\16x" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\17w" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\189" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\19-" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\1A." }, %struct.nt36672a_panel_cmd { [2 x i8] c"\1B2" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\1C7" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\1D:" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\1E@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\1F@" }, %struct.nt36672a_panel_cmd { [2 x i8] c" @" }, %struct.nt36672a_panel_cmd { [2 x i8] c"!@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\22@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"#@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"$@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"%@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"&@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"'@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"(@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"-\00" }, %struct.nt36672a_panel_cmd { [2 x i8] c"/@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"0@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"1@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"2@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"3@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"4@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"5@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"6@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"7@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"8@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"9@" }, %struct.nt36672a_panel_cmd { [2 x i8] c":@" }, %struct.nt36672a_panel_cmd { [2 x i8] c";@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"=@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"?@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"@@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"A@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"B@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"C@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"D@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"E@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"F@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"G@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"H@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"I@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"J@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"K@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"L@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"M@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"N@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"O@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"P@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Q@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"R@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"S\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"T\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"U\FE" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Vw" }, %struct.nt36672a_panel_cmd { [2 x i8] c"X\CD" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Y\D0" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Z\D0" }, %struct.nt36672a_panel_cmd { [2 x i8] c"[P" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\\P" }, %struct.nt36672a_panel_cmd { [2 x i8] c"]P" }, %struct.nt36672a_panel_cmd { [2 x i8] c"^P" }, %struct.nt36672a_panel_cmd { [2 x i8] c"_P" }, %struct.nt36672a_panel_cmd { [2 x i8] c"`P" }, %struct.nt36672a_panel_cmd { [2 x i8] c"aP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"bP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"cP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"dP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"eP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"fP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"gP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"hP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"iP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"jP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"kP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"lP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"mP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"nP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"oP" }, %struct.nt36672a_panel_cmd { [2 x i8] c"p\07" }, %struct.nt36672a_panel_cmd { [2 x i8] c"q\00" }, %struct.nt36672a_panel_cmd { [2 x i8] c"r\00" }, %struct.nt36672a_panel_cmd { [2 x i8] c"s\00" }, %struct.nt36672a_panel_cmd { [2 x i8] c"t\06" }, %struct.nt36672a_panel_cmd { [2 x i8] c"u\0C" }, %struct.nt36672a_panel_cmd { [2 x i8] c"v\03" }, %struct.nt36672a_panel_cmd { [2 x i8] c"w\09" }, %struct.nt36672a_panel_cmd { [2 x i8] c"x\0F" }, %struct.nt36672a_panel_cmd { [2 x i8] c"yh" }, %struct.nt36672a_panel_cmd { [2 x i8] c"z\88" }, %struct.nt36672a_panel_cmd { [2 x i8] c"|\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"}\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"~\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\7F\00" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\80\00" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\81\00" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\83\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\84\00" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\85\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\86\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\87\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\88@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\89\91" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\8A\98" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\8B\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\8C\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\8D\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\8E\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\8F\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\90\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\91\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\92\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\93\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\94\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\95\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\96\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\97\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\98\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\99\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\9A\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\9B\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\9C\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\9D\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\9E\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\9F\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\A0\8A" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\A2\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\A6\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\A7\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\A9\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\AA\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\AB\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\AC\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\AD\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\AE\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\AF\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\B7v" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\B8v" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\B9\05" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\BA\0D" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\BB\14" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\BC\0F" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\BD\18" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\BE\1F" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\BF\05" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C0\0D" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C1\14" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C2\03" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C3\07" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C4\0A" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C5\A0" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C6U" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C7\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C89" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C9D" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\CA\12" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\CD\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\DB\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\DC\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\DD\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E0\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E1\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E2\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E3\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E4\80" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E5@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E6@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E7@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E8@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\E9@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\EA@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\EB@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\EC@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\ED@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\EE@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\EF@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\F0@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\F1@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\F2@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\F3@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\F4@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\F5@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\F6@" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FB\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FF#" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FB\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\01\84" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\05-" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\06\00" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\11\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\12{" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\15o" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\16\0B" }, %struct.nt36672a_panel_cmd { [2 x i8] c")\0A" }, %struct.nt36672a_panel_cmd { [2 x i8] c"0\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"1\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"2\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"3\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"4\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"5\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"6\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"7\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"8\FC" }, %struct.nt36672a_panel_cmd { [2 x i8] c"9\F8" }, %struct.nt36672a_panel_cmd { [2 x i8] c":\F4" }, %struct.nt36672a_panel_cmd { [2 x i8] c";\F1" }, %struct.nt36672a_panel_cmd { [2 x i8] c"=\EE" }, %struct.nt36672a_panel_cmd { [2 x i8] c"?\EB" }, %struct.nt36672a_panel_cmd { [2 x i8] c"@\E8" }, %struct.nt36672a_panel_cmd { [2 x i8] c"A\E5" }, %struct.nt36672a_panel_cmd { [2 x i8] c"*\13" }, %struct.nt36672a_panel_cmd { [2 x i8] c"E\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"F\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"G\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"H\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"I\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"J\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"K\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"L\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"M\ED" }, %struct.nt36672a_panel_cmd { [2 x i8] c"N\D5" }, %struct.nt36672a_panel_cmd { [2 x i8] c"O\BF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"P\A6" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Q\96" }, %struct.nt36672a_panel_cmd { [2 x i8] c"R\86" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Sv" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Tf" }, %struct.nt36672a_panel_cmd { [2 x i8] c"+\0E" }, %struct.nt36672a_panel_cmd { [2 x i8] c"X\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Y\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Z\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"[\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\\\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"]\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"^\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"_\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"`\F6" }, %struct.nt36672a_panel_cmd { [2 x i8] c"a\EA" }, %struct.nt36672a_panel_cmd { [2 x i8] c"b\E1" }, %struct.nt36672a_panel_cmd { [2 x i8] c"c\D8" }, %struct.nt36672a_panel_cmd { [2 x i8] c"d\CE" }, %struct.nt36672a_panel_cmd { [2 x i8] c"e\C3" }, %struct.nt36672a_panel_cmd { [2 x i8] c"f\BA" }, %struct.nt36672a_panel_cmd { [2 x i8] c"g\B3" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FF%" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FB\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\05\04" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FF&" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FB\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\1C\AF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FF\10" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FB\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"Q\FF" }, %struct.nt36672a_panel_cmd { [2 x i8] c"S$" }, %struct.nt36672a_panel_cmd { [2 x i8] c"U\00" }], [142 x i8] zeroinitializer }, align 32
@tianma_fhd_video_on_cmds_2 = internal constant { [5 x %struct.nt36672a_panel_cmd], [22 x i8] } { [5 x %struct.nt36672a_panel_cmd] [%struct.nt36672a_panel_cmd { [2 x i8] c"\FF$" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FB\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C3\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C4T" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FF\10" }], [22 x i8] zeroinitializer }, align 32
@tianma_fhd_video_off_cmds = internal constant { [4 x %struct.nt36672a_panel_cmd], [24 x i8] } { [4 x %struct.nt36672a_panel_cmd] [%struct.nt36672a_panel_cmd { [2 x i8] c"\FF$" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FB\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\C3\01" }, %struct.nt36672a_panel_cmd { [2 x i8] c"\FF\10" }], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to set regulator enable loads\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get reset gpio from DT\0A\00", [62 x i8] zeroinitializer }, align 32
@panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @nt36672a_panel_prepare, ptr null, ptr null, ptr @nt36672a_panel_unprepare, ptr @nt36672a_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddpos\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vddneg\00", [25 x i8] zeroinitializer }, align 32
@nt36672a_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 195, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to send DCS Init 1st Code: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nt36672a_panel_prepare\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/panel/panel-novatek-nt36672a.c\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nt36672a_panel_prepare._entry_ptr = internal global ptr @nt36672a_panel_prepare._entry, section ".printk_index", align 4
@nt36672a_panel_prepare._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 201, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nt36672a_panel_prepare._entry_ptr.15 = internal global ptr @nt36672a_panel_prepare._entry.13, section ".printk_index", align 4
@nt36672a_panel_prepare._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 210, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to Set Display ON: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@nt36672a_panel_prepare._entry_ptr.18 = internal global ptr @nt36672a_panel_prepare._entry.16, section ".printk_index", align 4
@nt36672a_panel_prepare._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.10, i32 219, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to send DCS Init 2nd Code: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@nt36672a_panel_prepare._entry_ptr.21 = internal global ptr @nt36672a_panel_prepare._entry.19, section ".printk_index", align 4
@nt36672a_panel_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.10, i32 131, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to send DCS off cmds: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nt36672a_panel_unprepare\00", [39 x i8] zeroinitializer }, align 32
@nt36672a_panel_unprepare._entry_ptr = internal global ptr @nt36672a_panel_unprepare._entry, section ".printk_index", align 4
@nt36672a_panel_unprepare._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.10, i32 135, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"set_display_off cmd failed ret = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nt36672a_panel_unprepare._entry_ptr.26 = internal global ptr @nt36672a_panel_unprepare._entry.24, section ".printk_index", align 4
@nt36672a_panel_unprepare._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.10, i32 142, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"enter_sleep cmd failed ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nt36672a_panel_unprepare._entry_ptr.29 = internal global ptr @nt36672a_panel_unprepare._entry.27, section ".printk_index", align 4
@nt36672a_panel_unprepare._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.10, i32 149, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"power_off failed ret = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@nt36672a_panel_unprepare._entry_ptr.32 = internal global ptr @nt36672a_panel_unprepare._entry.30, section ".printk_index", align 4
@nt36672a_panel_power_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.10, i32 113, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"regulator_bulk_disable failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nt36672a_panel_power_off\00", [39 x i8] zeroinitializer }, align 32
@nt36672a_panel_power_off._entry_ptr = internal global ptr @nt36672a_panel_power_off._entry, section ".printk_index", align 4
@nt36672a_panel_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.10, i32 244, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nt36672a_panel_get_modes\00", [39 x i8] zeroinitializer }, align 32
@nt36672a_panel_get_modes._entry_ptr = internal global ptr @nt36672a_panel_get_modes._entry, section ".printk_index", align 4
@nt36672a_panel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.10, i32 675, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to unprepare panel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nt36672a_panel_remove\00", [42 x i8] zeroinitializer }, align 32
@nt36672a_panel_remove._entry_ptr = internal global ptr @nt36672a_panel_remove._entry, section ".printk_index", align 4
@nt36672a_panel_remove._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.10, i32 679, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@nt36672a_panel_remove._entry_ptr.41 = internal global ptr @nt36672a_panel_remove._entry.39, section ".printk_index", align 4
@nt36672a_panel_remove._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.10, i32 683, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@nt36672a_panel_remove._entry_ptr.44 = internal global ptr @nt36672a_panel_remove._entry.42, section ".printk_index", align 4
@___asan_gen_.45 = private unnamed_addr constant [22 x i8] c"nt36672a_panel_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 704, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 706, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [26 x i8] c"tianma_fhd_video_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 698, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"tianma_fhd_video_panel_desc\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 584, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant [36 x i8] c"tianma_fhd_video_panel_default_mode\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 568, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant [27 x i8] c"tianma_fhd_video_on_cmds_1\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 263, i32 40 }
@___asan_gen_.63 = private unnamed_addr constant [27 x i8] c"tianma_fhd_video_on_cmds_2\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 553, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"tianma_fhd_video_off_cmds\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 561, i32 40 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 615, i32 34 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 621, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 624, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 627, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"panel_funcs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 257, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 37, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 38, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 39, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 195, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 201, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 210, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 219, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 131, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 135, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 142, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 149, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 113, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 243, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 675, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 679, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [50 x i8] c"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 683, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_nt36672a_panel_driver_exit, ptr @__initcall__kmod_panel_novatek_nt36672a__302_713_nt36672a_panel_driver_init6, ptr @nt36672a_panel_driver_exit, ptr @nt36672a_panel_get_modes._entry, ptr @nt36672a_panel_get_modes._entry_ptr, ptr @nt36672a_panel_power_off._entry, ptr @nt36672a_panel_power_off._entry_ptr, ptr @nt36672a_panel_prepare._entry, ptr @nt36672a_panel_prepare._entry.13, ptr @nt36672a_panel_prepare._entry.16, ptr @nt36672a_panel_prepare._entry.19, ptr @nt36672a_panel_prepare._entry_ptr, ptr @nt36672a_panel_prepare._entry_ptr.15, ptr @nt36672a_panel_prepare._entry_ptr.18, ptr @nt36672a_panel_prepare._entry_ptr.21, ptr @nt36672a_panel_remove._entry, ptr @nt36672a_panel_remove._entry.39, ptr @nt36672a_panel_remove._entry.42, ptr @nt36672a_panel_remove._entry_ptr, ptr @nt36672a_panel_remove._entry_ptr.41, ptr @nt36672a_panel_remove._entry_ptr.44, ptr @nt36672a_panel_unprepare._entry, ptr @nt36672a_panel_unprepare._entry.24, ptr @nt36672a_panel_unprepare._entry.27, ptr @nt36672a_panel_unprepare._entry.30, ptr @nt36672a_panel_unprepare._entry_ptr, ptr @nt36672a_panel_unprepare._entry_ptr.26, ptr @nt36672a_panel_unprepare._entry_ptr.29, ptr @nt36672a_panel_unprepare._entry_ptr.32, ptr @nt36672a_panel_driver, ptr @.str, ptr @tianma_fhd_video_of_match, ptr @tianma_fhd_video_panel_desc, ptr @tianma_fhd_video_panel_default_mode, ptr @tianma_fhd_video_on_cmds_1, ptr @tianma_fhd_video_on_cmds_2, ptr @tianma_fhd_video_off_cmds, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @panel_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_fhd_video_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_fhd_video_panel_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_fhd_video_panel_default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_fhd_video_on_cmds_1 to i32), i32 562, i32 704, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_fhd_video_on_cmds_2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tianma_fhd_video_off_cmds to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_prepare._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_prepare._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_prepare._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_unprepare._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_unprepare._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_unprepare._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_power_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_remove._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nt36672a_panel_remove._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nt36672a_panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @nt36672a_panel_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nt36672a_panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @nt36672a_panel_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt36672a_panel_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %mode_flags = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %call2, i32 0, i32 4
  %0 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode_flags, align 4
  %mode_flags3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mode_flags3, align 8
  %format = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %call2, i32 0, i32 5
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %format4 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %5 = ptrtoint ptr %format4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %format4, align 4
  %lanes = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %call2, i32 0, i32 6
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lanes, align 4
  %lanes5 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %8 = ptrtoint ptr %lanes5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lanes5, align 8
  %desc6 = getelementptr inbounds %struct.nt36672a_panel, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %desc6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %desc6, align 4
  %link = getelementptr inbounds %struct.nt36672a_panel, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dsi, ptr %link, align 4
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %arrayidx2.i = getelementptr %struct.nt36672a_panel, ptr %call.i, i32 0, i32 3, i32 0
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.5, ptr %arrayidx2.i, align 4
  %arrayidx2.1.i = getelementptr %struct.nt36672a_panel, ptr %call.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.6, ptr %arrayidx2.1.i, align 4
  %arrayidx2.2.i = getelementptr %struct.nt36672a_panel, ptr %call.i, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.7, ptr %arrayidx2.2.i, align 4
  %call.i34 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx2.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp4.i = icmp slt i32 %call.i34, 0
  br i1 %cmp4.i, label %if.then.i, label %for.body8.preheader.i

for.body8.preheader.i:                            ; preds = %if.end
  %consumer.i = getelementptr %struct.nt36672a_panel, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %consumer.i, align 4
  %call12.i = tail call i32 @regulator_set_load(ptr noundef %16, i32 noundef 62000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i, label %for.cond6.i, label %for.body8.preheader.i.if.then13.i_crit_edge

for.body8.preheader.i.if.then13.i_crit_edge:      ; preds = %for.body8.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call.i34, ptr noundef nonnull @.str.1) #4
  br label %nt36672a_panel_add.exit

for.cond6.i:                                      ; preds = %for.body8.preheader.i
  %consumer.1.i = getelementptr %struct.nt36672a_panel, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %17 = ptrtoint ptr %consumer.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %consumer.1.i, align 4
  %call12.1.i = tail call i32 @regulator_set_load(ptr noundef %18, i32 noundef 100000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1.i)
  %tobool.not.1.i = icmp eq i32 %call12.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond6.1.i, label %for.cond6.i.if.then13.i_crit_edge

for.cond6.i.if.then13.i_crit_edge:                ; preds = %for.cond6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i

for.cond6.1.i:                                    ; preds = %for.cond6.i
  %consumer.2.i = getelementptr %struct.nt36672a_panel, ptr %call.i, i32 0, i32 3, i32 2, i32 1
  %19 = ptrtoint ptr %consumer.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %consumer.2.i, align 4
  %call12.2.i = tail call i32 @regulator_set_load(ptr noundef %20, i32 noundef 100000) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2.i)
  %tobool.not.2.i = icmp eq i32 %call12.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond6.2.i, label %for.cond6.1.i.if.then13.i_crit_edge

for.cond6.1.i.if.then13.i_crit_edge:              ; preds = %for.cond6.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then13.i

for.cond6.2.i:                                    ; preds = %for.cond6.1.i
  %call19.i = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 3) #4
  %reset_gpio.i = getelementptr inbounds %struct.nt36672a_panel, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call19.i, ptr %reset_gpio.i, align 4
  %cmp.i.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then22.i, label %nt36672a_panel_add.exit.thread

if.then13.i:                                      ; preds = %for.cond6.1.i.if.then13.i_crit_edge, %for.cond6.i.if.then13.i_crit_edge, %for.body8.preheader.i.if.then13.i_crit_edge
  %call12.lcssa.i = phi i32 [ %call12.i, %for.body8.preheader.i.if.then13.i_crit_edge ], [ %call12.1.i, %for.cond6.i.if.then13.i_crit_edge ], [ %call12.2.i, %for.cond6.1.i.if.then13.i_crit_edge ]
  %call14.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call12.lcssa.i, ptr noundef nonnull @.str.2) #4
  br label %nt36672a_panel_add.exit

if.then22.i:                                      ; preds = %for.cond6.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %call19.i to i32
  %call25.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %22, ptr noundef nonnull @.str.4) #4
  br label %nt36672a_panel_add.exit

nt36672a_panel_add.exit.thread:                   ; preds = %for.cond6.2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @panel_funcs, i32 noundef 16) #4
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #4
  br label %if.end9

nt36672a_panel_add.exit:                          ; preds = %if.then22.i, %if.then13.i, %if.then.i
  %retval.0.i = phi i32 [ %call5.i, %if.then.i ], [ %call14.i, %if.then13.i ], [ %call25.i, %if.then22.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %nt36672a_panel_add.exit.cleanup_crit_edge, label %nt36672a_panel_add.exit.if.end9_crit_edge

nt36672a_panel_add.exit.if.end9_crit_edge:        ; preds = %nt36672a_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

nt36672a_panel_add.exit.cleanup_crit_edge:        ; preds = %nt36672a_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %nt36672a_panel_add.exit.if.end9_crit_edge, %nt36672a_panel_add.exit.thread
  %call10 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %nt36672a_panel_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then12 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %nt36672a_panel_add.exit.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt36672a_panel_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = tail call i32 @drm_panel_disable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.40, i32 noundef %call3) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %dev17 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.43, i32 noundef %call11) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end10.if.end18_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nt36672a_panel_shutdown(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_panel_disable(ptr noundef %1) #4
  %call3 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_load(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt36672a_panel_prepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies.i = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 3
  %call.i = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.poweroff_crit_edge, label %if.end3

if.end.poweroff_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %poweroff

if.end3:                                          ; preds = %if.end
  %reset_gpio.i = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #4
  tail call void @msleep(i32 noundef 200) #4
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 200) #4
  %desc = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 2
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %on_cmds_1 = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %on_cmds_1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %on_cmds_1, align 4
  %num_on_cmds_1 = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %7, i32 0, i32 7
  %10 = ptrtoint ptr %num_on_cmds_1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_on_cmds_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12.not.i = icmp eq i32 %11, 0
  br i1 %cmp12.not.i, label %if.end3.if.end8_crit_edge, label %for.body.lr.ph.i

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %if.end3
  %link.i = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 1
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.cond.i.if.end8_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond.i.if.end8_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nt36672a_panel_cmd, ptr %9, i32 %i.013.i
  %12 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %call3.i = tail call i32 @mipi_dsi_dcs_write(ptr noundef %13, i8 noundef zeroext %15, ptr noundef %add.ptr.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end, label %for.cond.i

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %call3.i) #7
  br label %poweroff

if.end8:                                          ; preds = %for.cond.i.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %link = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 1
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link, align 4
  %call9 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.14, i32 noundef %call9) #7
  br label %poweroff

if.end16:                                         ; preds = %if.end8
  tail call void @msleep(i32 noundef 70) #4
  %22 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link, align 4
  %call18 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %call18) #7
  br label %poweroff

if.end25:                                         ; preds = %if.end16
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc, align 4
  %on_cmds_2 = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %on_cmds_2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %on_cmds_2, align 4
  %num_on_cmds_2 = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %27, i32 0, i32 9
  %30 = ptrtoint ptr %num_on_cmds_2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_on_cmds_2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp12.not.i62 = icmp eq i32 %31, 0
  br i1 %cmp12.not.i62, label %if.end25.if.end35_crit_edge, label %if.end25.for.body.i73_crit_edge

if.end25.for.body.i73_crit_edge:                  ; preds = %if.end25
  br label %for.body.i73

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

for.cond.i67:                                     ; preds = %for.body.i73
  %inc.i65 = add nuw i32 %i.013.i68, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, %31
  br i1 %exitcond.not.i66, label %for.cond.i67.if.end35_crit_edge, label %for.cond.i67.for.body.i73_crit_edge

for.cond.i67.for.body.i73_crit_edge:              ; preds = %for.cond.i67
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i73

for.cond.i67.if.end35_crit_edge:                  ; preds = %for.cond.i67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

for.body.i73:                                     ; preds = %for.cond.i67.for.body.i73_crit_edge, %if.end25.for.body.i73_crit_edge
  %i.013.i68 = phi i32 [ %inc.i65, %for.cond.i67.for.body.i73_crit_edge ], [ 0, %if.end25.for.body.i73_crit_edge ]
  %arrayidx.i69 = getelementptr %struct.nt36672a_panel_cmd, ptr %29, i32 %i.013.i68
  %32 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %link, align 4
  %34 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i69, align 1
  %add.ptr.i70 = getelementptr i8, ptr %arrayidx.i69, i32 1
  %call3.i71 = tail call i32 @mipi_dsi_dcs_write(ptr noundef %33, i8 noundef zeroext %35, ptr noundef %add.ptr.i70, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i71)
  %cmp4.i72 = icmp slt i32 %call3.i71, 0
  br i1 %cmp4.i72, label %do.end33, label %for.cond.i67

do.end33:                                         ; preds = %for.body.i73
  call void @__sanitizer_cov_trace_pc() #6
  %36 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.20, i32 noundef %call3.i71) #7
  br label %poweroff

if.end35:                                         ; preds = %for.cond.i67.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  tail call void @msleep(i32 noundef 120) #4
  %38 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

poweroff:                                         ; preds = %do.end33, %do.end23, %do.end14, %do.end, %if.end.poweroff_crit_edge
  %err.0 = phi i32 [ %call3.i, %do.end ], [ %call9, %do.end14 ], [ %call18, %do.end23 ], [ %call3.i71, %do.end33 ], [ %call.i, %if.end.poweroff_crit_edge ]
  %reset_gpio = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 4
  %39 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %40, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %poweroff, %if.end35, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %poweroff ], [ 0, %if.end35 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt36672a_panel_unprepare(ptr noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %off_cmds = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %off_cmds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %off_cmds, align 4
  %num_off_cmds = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num_off_cmds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_off_cmds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12.not.i = icmp eq i32 %7, 0
  br i1 %cmp12.not.i, label %if.end.if.end4_crit_edge, label %for.body.lr.ph.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.end
  %link.i = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 1
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.cond.i.if.end4_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond.i.if.end4_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nt36672a_panel_cmd, ptr %5, i32 %i.013.i
  %8 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link.i, align 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %add.ptr.i = getelementptr i8, ptr %arrayidx.i, i32 1
  %call3.i = tail call i32 @mipi_dsi_dcs_write(ptr noundef %9, i8 noundef zeroext %11, ptr noundef %add.ptr.i, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end, label %for.cond.i

do.end:                                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, i32 noundef %call3.i) #7
  br label %if.end4

if.end4:                                          ; preds = %do.end, %for.cond.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %link = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 1
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %link, align 4
  %call5 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end4.if.end12_crit_edge

if.end4.if.end12_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.25, i32 noundef %call5) #7
  br label %if.end12

if.end12:                                         ; preds = %do.end10, %if.end4.if.end12_crit_edge
  tail call void @msleep(i32 noundef 120) #4
  %18 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %link, align 4
  %call14 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %do.end19, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.28, i32 noundef %call14) #7
  br label %if.end21

if.end21:                                         ; preds = %do.end19, %if.end12.if.end21_crit_edge
  tail call void @msleep(i32 noundef 60) #4
  %reset_gpio.i = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 4
  %22 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %23, i32 noundef 1) #4
  %supplies.i = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 3
  %call1.i = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end21.if.end29_crit_edge, label %nt36672a_panel_power_off.exit

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

nt36672a_panel_power_off.exit:                    ; preds = %if.end21
  %24 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.33, i32 noundef %call1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp23 = icmp slt i32 %call1.i, 0
  br i1 %cmp23, label %do.end27, label %nt36672a_panel_power_off.exit.if.end29_crit_edge

nt36672a_panel_power_off.exit.if.end29_crit_edge: ; preds = %nt36672a_panel_power_off.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

do.end27:                                         ; preds = %nt36672a_panel_power_off.exit
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.31, i32 noundef %call1.i) #7
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %nt36672a_panel_power_off.exit.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  %28 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.end29 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nt36672a_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.nt36672a_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_duplicate(ptr noundef %5, ptr noundef %3) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %9 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %conv3 = zext i16 %11 to i32
  %call4 = tail call i32 @drm_mode_vrefresh(ptr noundef %3) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, i32 noundef %conv, i32 noundef %conv3, i32 noundef %call4) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %width_mm = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %width_mm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width_mm, align 4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %16 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %display_info, align 8
  %17 = load ptr, ptr %desc, align 4
  %height_mm = getelementptr inbounds %struct.nt36672a_panel_desc, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %height_mm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height_mm, align 4
  %height_mm9 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %height_mm9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height_mm9, align 4
  tail call void @drm_mode_set_name(ptr noundef nonnull %call1) #4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_panel_novatek_nt36672a__302_713_nt36672a_panel_driver_init6, !1, !"__initcall__kmod_panel_novatek_nt36672a__302_713_nt36672a_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 713, i32 1}
!2 = !{ptr @__exitcall_nt36672a_panel_driver_exit, !1, !"__exitcall_nt36672a_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 715, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 716, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 717, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 706, i32 11}
!12 = !{ptr @nt36672a_panel_driver, !13, !"nt36672a_panel_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 704, i32 31}
!14 = !{ptr @tianma_fhd_video_of_match, !15, !"tianma_fhd_video_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 698, i32 34}
!16 = !{ptr @tianma_fhd_video_panel_desc, !17, !"tianma_fhd_video_panel_desc", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 584, i32 41}
!18 = !{ptr @tianma_fhd_video_panel_default_mode, !19, !"tianma_fhd_video_panel_default_mode", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 568, i32 38}
!20 = !{ptr @tianma_fhd_video_on_cmds_1, !21, !"tianma_fhd_video_on_cmds_1", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 263, i32 40}
!22 = !{ptr @tianma_fhd_video_on_cmds_2, !23, !"tianma_fhd_video_on_cmds_2", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 553, i32 40}
!24 = !{ptr @tianma_fhd_video_off_cmds, !25, !"tianma_fhd_video_off_cmds", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 561, i32 40}
!26 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 615, i32 34}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 621, i32 35}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 624, i32 42}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 627, i32 10}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 37, i32 2}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 38, i32 2}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 39, i32 2}
!40 = distinct !{null, !41, !"nt36672a_regulator_names", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 36, i32 27}
!42 = distinct !{null, !43, !"nt36672a_regulator_enable_loads", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 42, i32 28}
!44 = !{ptr @panel_funcs, !45, !"panel_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 257, i32 37}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 195, i32 3}
!48 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @nt36672a_panel_prepare._entry, !47, !"_entry", i1 false, i1 false}
!53 = !{ptr @nt36672a_panel_prepare._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 201, i32 3}
!56 = !{ptr @nt36672a_panel_prepare._entry.13, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @nt36672a_panel_prepare._entry_ptr.15, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 210, i32 3}
!60 = !{ptr @nt36672a_panel_prepare._entry.16, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @nt36672a_panel_prepare._entry_ptr.18, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 219, i32 3}
!64 = !{ptr @nt36672a_panel_prepare._entry.19, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @nt36672a_panel_prepare._entry_ptr.21, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 131, i32 3}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @nt36672a_panel_unprepare._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @nt36672a_panel_unprepare._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 135, i32 3}
!73 = !{ptr @nt36672a_panel_unprepare._entry.24, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @nt36672a_panel_unprepare._entry_ptr.26, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 142, i32 3}
!77 = !{ptr @nt36672a_panel_unprepare._entry.27, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @nt36672a_panel_unprepare._entry_ptr.29, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 149, i32 3}
!81 = !{ptr @nt36672a_panel_unprepare._entry.30, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @nt36672a_panel_unprepare._entry_ptr.32, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 113, i32 3}
!85 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @nt36672a_panel_power_off._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @nt36672a_panel_power_off._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 243, i32 3}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @nt36672a_panel_get_modes._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @nt36672a_panel_get_modes._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 675, i32 3}
!95 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @nt36672a_panel_remove._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @nt36672a_panel_remove._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 679, i32 3}
!100 = !{ptr @nt36672a_panel_remove._entry.39, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @nt36672a_panel_remove._entry_ptr.41, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/panel/panel-novatek-nt36672a.c", i32 683, i32 3}
!104 = !{ptr @nt36672a_panel_remove._entry.42, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @nt36672a_panel_remove._entry_ptr.44, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i8 0, i8 2}
