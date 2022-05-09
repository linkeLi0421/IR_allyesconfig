; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/tda1997x.c_pt.bc'
source_filename = "../drivers/media/i2c/tda1997x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_bt_timings = type <{ i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_fract, i8, i8, [46 x i8] }>
%struct.v4l2_fract = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.121, ptr }
%union.anon.121 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dv_timings_cap = type { i32, i32, [2 x i32], %union.anon.98 }
%union.anon.98 = type { %struct.v4l2_bt_timings_cap, [24 x i8] }
%struct.v4l2_bt_timings_cap = type { i32, i32, i32, i32, i64, i64, i32, i32, [16 x i32] }
%struct.blanking_codes = type { i16, i16, i16 }
%struct.color_matrix_coefs = type { ptr, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.tda1997x_chip_info = type { i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tda1997x_state = type { ptr, %struct.tda1997x_platform_data, ptr, ptr, %struct.v4l2_subdev, [3 x %struct.regulator_bulk_data], [1 x %struct.media_pad], %struct.mutex, %struct.mutex, i8, i32, i8, i8, i8, i8, i8, i8, i8, [2 x i8], %struct.hdmi_avi_infoframe, %struct.v4l2_hdmi_colorimetry, i32, %struct.v4l2_dv_timings, i32, ptr, [5 x i32], i32, i8, %struct.v4l2_ctrl_handler, ptr, ptr, i8, i32, i32, i32, i32, %struct.mutex, ptr, %struct.anon.112, %struct.delayed_work }
%struct.tda1997x_platform_data = type { i32, i32, [9 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.90 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.v4l2_hdmi_colorimetry = type { i32, i32, i32, i32 }
%struct.v4l2_dv_timings = type { i32, %union.anon.96 }
%union.anon.96 = type { [32 x i32] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.112 = type { [256 x i8], i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.122, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.122 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.97, i16, i16, i16, [10 x i16] }
%union.anon.97 = type { i16 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_edid = type { i32, i32, i32, [5 x i32], ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }

@__param_str_debug = internal constant [15 x i8] c"tda1997x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype298 = internal constant [28 x i8] c"tda1997x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug299 = internal constant [38 x i8] c"tda1997x.parm=debug:debug level (0-2)\00", section ".modinfo", align 1
@__initcall__kmod_tda1997x__300_2844_tda1997x_i2c_driver_init6 = internal global ptr @tda1997x_i2c_driver_init, section ".initcall6.init", align 4
@tda1997x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tda1997x_probe, ptr @tda1997x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tda1997x_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tda1997x_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tda1997x_i2c_driver_exit = internal global ptr @tda1997x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [51 x i8] c"tda1997x.author=Tim Harvey <tharvey@gateworks.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [51 x i8] c"tda1997x.description=TDA1997X HDMI Receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [41 x i8] c"tda1997x.file=drivers/media/i2c/tda1997x\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [24 x i8] c"tda1997x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda1997x\00", [23 x i8] zeroinitializer }, align 32
@tda1997x_of_id = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,tda19971\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tda1997x_chip_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,tda19973\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @tda1997x_chip_info, i64 8) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tda1997x_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tda19971\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tda1997x_chip_info to i32) }, %struct.i2c_device_id { [20 x i8] c"tda19973\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr getelementptr (i8, ptr @tda1997x_chip_info, i64 8) to i32) }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tda1997x_probe.cea1920x1080 = internal constant { { i32, { %struct.v4l2_bt_timings, [4 x i8] } }, [60 x i8] } { { i32, { %struct.v4l2_bt_timings, [4 x i8] } } { i32 0, { %struct.v4l2_bt_timings, [4 x i8] } { %struct.v4l2_bt_timings <{ i32 1920, i32 1080, i32 0, i32 3, i64 148500000, i32 88, i32 44, i32 148, i32 4, i32 5, i32 36, i32 0, i32 0, i32 0, i32 3, i32 146, %struct.v4l2_fract zeroinitializer, i8 16, i8 0, [46 x i8] zeroinitializer }>, [4 x i8] undef } }, [60 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s %d-%04x: DT parsing error\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda1997x_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/i2c/tda1997x.c\00", [35 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr = internal global ptr @tda1997x_probe._entry, section ".printk_index", align 4
@tda1997x_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 2564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s %d-%04x: No platform data\0A\00", [32 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.6 = internal global ptr @tda1997x_probe._entry.4, section ".printk_index", align 4
@tda1997x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&state->page_lock\00", [46 x i8] zeroinitializer }, align 32
@tda1997x_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&state->lock\00", [19 x i8] zeroinitializer }, align 32
@tda1997x_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"(work_completion)(&(&state->delayed_work_enable_hpd)->work)\00", [36 x i8] zeroinitializer }, align 32
@tda1997x_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"&(&state->delayed_work_enable_hpd)->timer\00", [54 x i8] zeroinitializer }, align 32
@tda1997x_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tda1997x_core_ops, ptr null, ptr null, ptr @tda1997x_video_ops, ptr null, ptr null, ptr null, ptr @tda1997x_pad_ops }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %d-%04x\00", [21 x i8] zeroinitializer }, align 32
@tda1997x_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 2698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: NXP %s N%d detected\0A\00", [61 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.17 = internal global ptr @tda1997x_probe._entry.15, section ".printk_index", align 4
@tda1997x_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s %d-%04x: video: %dbit %s %d formats available\0A\00", [44 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.20 = internal global ptr @tda1997x_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"parallel\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BT656\00", [26 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 2709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s %d-%04x: audio: %dch %s layout%d sysclk=%d*fs\0A\00", [44 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.25 = internal global ptr @tda1997x_probe._entry.23, section ".printk_index", align 4
@audfmt_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.199, ptr @.str.200, ptr @.str.201], [20 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 2720, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s %d-%04x: CEC slave address 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.28 = internal global ptr @tda1997x_probe._entry.26, section ".printk_index", align 4
@tda1997x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tda1997x:2728:(hdl)->_lock\00", [37 x i8] zeroinitializer }, align 32
@tda1997x_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @tda1997x_g_volatile_ctrl, ptr null, ptr @tda1997x_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 2754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s %d-%04x: failed entity_init: %d\00", [59 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.32 = internal global ptr @tda1997x_probe._entry.30, section ".printk_index", align 4
@tda1997x_audio_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tda1997x_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.210, i64 0, i32 7904, i32 0, i32 0, i32 2, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@tda1997x_codec_driver = internal global { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr @tda1997x_codec_probe, ptr @tda1997x_codec_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 2775, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"register audio codec failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.37 = internal global ptr @tda1997x_probe._entry.33, section ".printk_index", align 4
@tda1997x_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 2778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: registered audio codec\0A\00", [58 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.40 = internal global ptr @tda1997x_probe._entry.38, section ".printk_index", align 4
@tda1997x_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.2, ptr @.str.3, i32 2787, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s %d-%04x: irq%d reg failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.43 = internal global ptr @tda1997x_probe._entry.41, section ".printk_index", align 4
@tda1997x_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.2, ptr @.str.3, i32 2803, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s failed: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@tda1997x_probe._entry_ptr.46 = internal global ptr @tda1997x_probe._entry.44, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nxp,vidout-portcfg\00", [45 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 2346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s %d-%04x: nxp,vidout-portcfg missing\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda1997x_parse_dt\00", [46 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry_ptr = internal global ptr @tda1997x_parse_dt._entry, section ".printk_index", align 4
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nxp,audout-format\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.3, i32 2360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s %d-%04x: nxp,audout-format invalid\0A\00", [55 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry_ptr.55 = internal global ptr @tda1997x_parse_dt._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nxp,audout-layout\00", [46 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.49, ptr @.str.3, i32 2370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s %d-%04x: nxp,audout-layout invalid\0A\00", [55 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry_ptr.59 = internal global ptr @tda1997x_parse_dt._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nxp,audout-width\00", [47 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.49, ptr @.str.3, i32 2382, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s %d-%04x: nxp,audout-width invalid\0A\00", [56 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry_ptr.63 = internal global ptr @tda1997x_parse_dt._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nxp,audout-mclk-fs\00", [45 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.49, ptr @.str.3, i32 2398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s %d-%04x: nxp,audout-mclk-fs invalid\0A\00", [54 x i8] zeroinitializer }, align 32
@tda1997x_parse_dt._entry_ptr.67 = internal global ptr @tda1997x_parse_dt._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DOVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@tda1997x_delayed_work_enable_hpd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"tda1997x_delayed_work_enable_hpd\00", [63 x i8] zeroinitializer }, align 32
@tda1997x_delayed_work_enable_hpd._entry_ptr = internal global ptr @tda1997x_delayed_work_enable_hpd._entry, section ".printk_index", align 4
@tda1997x_identify_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 2441, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported chip ID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tda1997x_identify_module\00", [39 x i8] zeroinitializer }, align 32
@tda1997x_identify_module._entry_ptr = internal global ptr @tda1997x_identify_module._entry, section ".printk_index", align 4
@tda1997x_identify_module._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 2445, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chip id mismatch\0A\00", [46 x i8] zeroinitializer }, align 32
@tda1997x_identify_module._entry_ptr.77 = internal global ptr @tda1997x_identify_module._entry.75, section ".printk_index", align 4
@tda1997x_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @tda1997x_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda1997x_subscribe_event, ptr @v4l2_event_subdev_unsubscribe }, [40 x i8] zeroinitializer }, align 32
@tda1997x_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda1997x_g_input_status, ptr null, ptr null, ptr null, ptr null, ptr @tda1997x_s_dv_timings, ptr @tda1997x_g_dv_timings, ptr @tda1997x_query_dv_timings, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tda1997x_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @tda1997x_init_cfg, ptr @tda1997x_enum_mbus_code, ptr null, ptr null, ptr @tda1997x_get_format, ptr @tda1997x_set_format, ptr null, ptr null, ptr @tda1997x_get_edid, ptr @tda1997x_set_edid, ptr @tda1997x_get_dv_timings_cap, ptr @tda1997x_enum_dv_timings, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 1970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: -----Chip status-----\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda1997x_log_status\00", [44 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr = internal global ptr @tda1997x_log_status._entry, section ".printk_index", align 4
@tda1997x_log_status._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.3, i32 1972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: Chip: %s N%d\0A\00", [44 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.82 = internal global ptr @tda1997x_log_status._entry.80, section ".printk_index", align 4
@tda1997x_log_status._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.3, i32 1973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: EDID Enabled: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.85 = internal global ptr @tda1997x_log_status._entry.83, section ".printk_index", align 4
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.79, ptr @.str.3, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: -----Signal status-----\0A\00", [33 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.90 = internal global ptr @tda1997x_log_status._entry.88, section ".printk_index", align 4
@tda1997x_log_status._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.79, ptr @.str.3, i32 1977, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: Cable detected (+5V power): %s\0A\00", [58 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.93 = internal global ptr @tda1997x_log_status._entry.91, section ".printk_index", align 4
@tda1997x_log_status._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.79, ptr @.str.3, i32 1979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: HPD detected: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.96 = internal global ptr @tda1997x_log_status._entry.94, section ".printk_index", align 4
@tda1997x_log_status._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.79, ptr @.str.3, i32 1981, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: -----Video Timings-----\0A\00", [33 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.99 = internal global ptr @tda1997x_log_status._entry.97, section ".printk_index", align 4
@tda1997x_log_status._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.79, ptr @.str.3, i32 1984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: No video detected\0A\00", [39 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.102 = internal global ptr @tda1997x_log_status._entry.100, section ".printk_index", align 4
@tda1997x_log_status._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.79, ptr @.str.3, i32 1987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Invalid signal detected\0A\00", [33 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.105 = internal global ptr @tda1997x_log_status._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Configured format: \00", [44 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.79, ptr @.str.3, i32 1993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: -----Color space-----\0A\00", [35 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.109 = internal global ptr @tda1997x_log_status._entry.107, section ".printk_index", align 4
@tda1997x_log_status._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.79, ptr @.str.3, i32 1998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Input color space: %s %s %s\00", [62 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.112 = internal global ptr @tda1997x_log_status._entry.110, section ".printk_index", align 4
@hdmi_colorspace_names = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.113, ptr @.str.113, ptr @.str.113, ptr @.str.113], [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@hdmi_colorimetry_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.113, ptr @.str.143, ptr @.str.144, ptr @.str.145], [16 x i8] zeroinitializer }, align 32
@v4l2_quantization_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.146, ptr @.str.147, ptr @.str.148], [20 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.79, ptr @.str.3, i32 2000, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Output color space: %s\00", [35 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.116 = internal global ptr @tda1997x_log_status._entry.114, section ".printk_index", align 4
@vidfmt_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], [16 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.79, ptr @.str.3, i32 2002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: Color space conversion: %s\00", [63 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.119 = internal global ptr @tda1997x_log_status._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.79, ptr @.str.3, i32 2004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: -----Audio-----\0A\00", [41 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.123 = internal global ptr @tda1997x_log_status._entry.121, section ".printk_index", align 4
@tda1997x_log_status._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.79, ptr @.str.3, i32 2007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: audio: %dch %dHz\0A\00", [40 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.126 = internal global ptr @tda1997x_log_status._entry.124, section ".printk_index", align 4
@tda1997x_log_status._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.79, ptr @.str.3, i32 2009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: audio: none\0A\00", [45 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.129 = internal global ptr @tda1997x_log_status._entry.127, section ".printk_index", align 4
@tda1997x_log_status._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.79, ptr @.str.3, i32 2012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: -----Infoframes-----\0A\00", [36 x i8] zeroinitializer }, align 32
@tda1997x_log_status._entry_ptr.132 = internal global ptr @tda1997x_log_status._entry.130, section ".printk_index", align 4
@tda1997x_detect_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 1119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: Signal Timings: %u/%u/%u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda1997x_detect_std\00", [44 x i8] zeroinitializer }, align 32
@tda1997x_detect_std._entry_ptr = internal global ptr @tda1997x_detect_std._entry, section ".printk_index", align 4
@tda1997x_detect_std._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.3, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\017%s: Geometry: H %u %u %u %u %u Sync%c  V %u %u %u %u %u %u %u Sync%c\0A\00", [56 x i8] zeroinitializer }, align 32
@tda1997x_detect_std._entry_ptr.137 = internal global ptr @tda1997x_detect_std._entry.135, section ".printk_index", align 4
@tda1997x_dv_timings_cap = internal constant { %struct.v4l2_dv_timings_cap, [48 x i8] } { %struct.v4l2_dv_timings_cap { i32 0, i32 0, [2 x i32] zeroinitializer, %union.anon.98 { %struct.v4l2_bt_timings_cap { i32 640, i32 1920, i32 350, i32 1200, i64 13000000, i64 165000000, i32 15, i32 15, [16 x i32] zeroinitializer }, [24 x i8] undef } }, [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Detected format: \00", [46 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RGB\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YUV422\00", [25 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YUV444\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"YUV420\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ITU601\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ITU709\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Extended\00", [23 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Default\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Full Range (0-255)\00", [45 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Limited Range (16-235)\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RGB444/YUV444\00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"YUV422 semi-planar\00", [45 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"YUV422 CCIR656\00", [17 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@tda1997x_log_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.3, i32 1951, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: infoframe: addr=%d len=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda1997x_log_infoframe\00", [41 x i8] zeroinitializer }, align 32
@tda1997x_log_infoframe._entry_ptr = internal global ptr @tda1997x_log_infoframe._entry, section ".printk_index", align 4
@tda1997x_log_infoframe._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.154, ptr @.str.3, i32 1956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s %d-%04x: failed parsing %d byte infoframe: 0x%04x/0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@tda1997x_log_infoframe._entry_ptr.157 = internal global ptr @tda1997x_log_infoframe._entry.155, section ".printk_index", align 4
@.str.158 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tda1997x_g_input_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.3, i32 1660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: inputs:%d/%d timings:%d/%d/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tda1997x_g_input_status\00", [40 x i8] zeroinitializer }, align 32
@tda1997x_g_input_status._entry_ptr = internal global ptr @tda1997x_g_input_status._entry, section ".printk_index", align 4
@tda1997x_s_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.3, i32 1677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s %d-%04x: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda1997x_s_dv_timings\00", [42 x i8] zeroinitializer }, align 32
@tda1997x_s_dv_timings._entry_ptr = internal global ptr @tda1997x_s_dv_timings._entry, section ".printk_index", align 4
@tda1997x_configure_csc.rgb_blanking = internal constant { %struct.blanking_codes, [26 x i8] } { %struct.blanking_codes { i16 64, i16 64, i16 64 }, [26 x i8] zeroinitializer }, align 32
@tda1997x_configure_csc.yuv_blanking = internal constant { %struct.blanking_codes, [26 x i8] } { %struct.blanking_codes { i16 64, i16 512, i16 512 }, [26 x i8] zeroinitializer }, align 32
@tda1997x_configure_csc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.3, i32 664, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d-%04x: input:%s quant:%s output:%s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda1997x_configure_csc\00", [41 x i8] zeroinitializer }, align 32
@tda1997x_configure_csc._entry_ptr = internal global ptr @tda1997x_configure_csc._entry, section ".printk_index", align 4
@conv_matrix = internal constant { [7 x %struct.color_matrix_coefs], [36 x i8] } { [7 x %struct.color_matrix_coefs] [%struct.color_matrix_coefs { ptr @.str.167, i16 -256, i16 -2048, i16 -2048, i16 4769, i16 -2183, i16 -873, i16 4769, i16 7343, i16 0, i16 4769, i16 0, i16 8652, i16 0, i16 0, i16 0 }, %struct.color_matrix_coefs { ptr @.str.168, i16 -256, i16 -2048, i16 -2048, i16 4769, i16 -3330, i16 -1602, i16 4769, i16 6538, i16 0, i16 4769, i16 0, i16 8264, i16 256, i16 256, i16 256 }, %struct.color_matrix_coefs { ptr @.str.169, i16 -256, i16 -256, i16 -256, i16 0, i16 4769, i16 0, i16 0, i16 0, i16 4769, i16 4769, i16 0, i16 0, i16 0, i16 0, i16 0 }, %struct.color_matrix_coefs { ptr @.str.170, i16 -256, i16 -256, i16 -256, i16 2404, i16 1225, i16 467, i16 -1754, i16 2095, i16 -341, i16 -1388, i16 -707, i16 2095, i16 256, i16 2048, i16 2048 }, %struct.color_matrix_coefs { ptr @.str.171, i16 -256, i16 -256, i16 -256, i16 2918, i16 867, i16 295, i16 -1894, i16 2087, i16 -190, i16 -1607, i16 -477, i16 2087, i16 256, i16 2048, i16 2048 }, %struct.color_matrix_coefs { ptr @.str.172, i16 0, i16 0, i16 0, i16 2065, i16 1052, i16 401, i16 -1506, i16 1799, i16 -293, i16 -1192, i16 -607, i16 1799, i16 256, i16 2048, i16 2048 }, %struct.color_matrix_coefs { ptr @.str.173, i16 0, i16 0, i16 0, i16 2506, i16 745, i16 253, i16 -1627, i16 1792, i16 -163, i16 -1380, i16 -410, i16 1792, i16 256, i16 2048, i16 2048 }], [36 x i8] zeroinitializer }, align 32
@tda1997x_configure_csc._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.164, ptr @.str.3, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda1997x_configure_csc._entry_ptr.166 = internal global ptr @tda1997x_configure_csc._entry.165, section ".printk_index", align 4
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"YUV709 -> RGB full\00", [45 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"YUV601 -> RGB full\00", [45 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RGB limited -> RGB full\00", [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RGB limited -> ITU601\00", [42 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RGB limited -> ITU709\00", [42 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RGB full -> ITU601\00", [45 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RGB full -> ITU709\00", [45 x i8] zeroinitializer }, align 32
@tda1997x_g_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.174, ptr @.str.3, i32 1702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda1997x_g_dv_timings\00", [42 x i8] zeroinitializer }, align 32
@tda1997x_g_dv_timings._entry_ptr = internal global ptr @tda1997x_g_dv_timings._entry, section ".printk_index", align 4
@tda1997x_query_dv_timings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.175, ptr @.str.3, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tda1997x_query_dv_timings\00", [38 x i8] zeroinitializer }, align 32
@tda1997x_query_dv_timings._entry_ptr = internal global ptr @tda1997x_query_dv_timings._entry, section ".printk_index", align 4
@.str.176 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@tda1997x_enum_mbus_code._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.3, i32 1755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s %d-%04x: %s %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tda1997x_enum_mbus_code\00", [40 x i8] zeroinitializer }, align 32
@tda1997x_enum_mbus_code._entry_ptr = internal global ptr @tda1997x_enum_mbus_code._entry, section ".printk_index", align 4
@tda1997x_get_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.3, i32 1788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s %d-%04x: %s pad=%d which=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda1997x_get_format\00", [44 x i8] zeroinitializer }, align 32
@tda1997x_get_format._entry_ptr = internal global ptr @tda1997x_get_format._entry, section ".printk_index", align 4
@tda1997x_set_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.3, i32 1812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d-%04x: %s pad=%d which=%d fmt=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda1997x_set_format\00", [44 x i8] zeroinitializer }, align 32
@tda1997x_set_format._entry_ptr = internal global ptr @tda1997x_set_format._entry, section ".printk_index", align 4
@tda1997x_get_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.184, ptr @.str.3, i32 1848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s %d-%04x: %s pad=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda1997x_get_edid\00", [46 x i8] zeroinitializer }, align 32
@tda1997x_get_edid._entry_ptr = internal global ptr @tda1997x_get_edid._entry, section ".printk_index", align 4
@tda1997x_set_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.185, ptr @.str.3, i32 1876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda1997x_set_edid\00", [46 x i8] zeroinitializer }, align 32
@tda1997x_set_edid._entry_ptr = internal global ptr @tda1997x_set_edid._entry, section ".printk_index", align 4
@tda1997x_disable_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.186, ptr @.str.3, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda1997x_disable_edid\00", [42 x i8] zeroinitializer }, align 32
@tda1997x_disable_edid._entry_ptr = internal global ptr @tda1997x_disable_edid._entry, section ".printk_index", align 4
@tda1997x_enable_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.187, ptr @.str.3, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda1997x_enable_edid\00", [43 x i8] zeroinitializer }, align 32
@tda1997x_enable_edid._entry_ptr = internal global ptr @tda1997x_enable_edid._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tda1997x_setup_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.3, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s %d-%04x: %s code=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tda1997x_setup_format\00", [42 x i8] zeroinitializer }, align 32
@tda1997x_setup_format._entry_ptr = internal global ptr @tda1997x_setup_format._entry, section ".printk_index", align 4
@tda1997x_setup_format._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.189, ptr @.str.3, i32 625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s %d-%04x: incompatible format (0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@tda1997x_setup_format._entry_ptr.192 = internal global ptr @tda1997x_setup_format._entry.190, section ".printk_index", align 4
@tda1997x_setup_format._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.189, ptr @.str.3, i32 629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s %d-%04x: %s code=0x%x fmt=%s\0A\00", [61 x i8] zeroinitializer }, align 32
@tda1997x_setup_format._entry_ptr.195 = internal global ptr @tda1997x_setup_format._entry.193, section ".printk_index", align 4
@io_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.197, ptr @.str.3, i32 450, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s %d-%04x: write reg error:reg=%2x,val=%2x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"io_write\00", [23 x i8] zeroinitializer }, align 32
@io_write._entry_ptr = internal global ptr @io_write._entry, section ".printk_index", align 4
@tda1997x_setpage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.198, ptr @.str.3, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda1997x_setpage\00", [47 x i8] zeroinitializer }, align 32
@tda1997x_setpage._entry_ptr = internal global ptr @tda1997x_setpage._entry, section ".printk_index", align 4
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPDIF\00", [26 x i8] zeroinitializer }, align 32
@io_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.203, ptr @.str.3, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s %d-%04x: read reg error: reg=%2x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"io_read\00", [24 x i8] zeroinitializer }, align 32
@io_read._entry_ptr = internal global ptr @io_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tda1997x_core_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.3, i32 2211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s %d-%04x: vidout_cfg[%d]=0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda1997x_core_init\00", [45 x i8] zeroinitializer }, align 32
@tda1997x_core_init._entry_ptr = internal global ptr @tda1997x_core_init._entry, section ".printk_index", align 4
@tda1997x_cec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.206, ptr @.str.3, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda1997x_cec_write\00", [45 x i8] zeroinitializer }, align 32
@tda1997x_cec_write._entry_ptr = internal global ptr @tda1997x_cec_write._entry, section ".printk_index", align 4
@tda1997x_cec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.207, ptr @.str.3, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda1997x_cec_read\00", [46 x i8] zeroinitializer }, align 32
@tda1997x_cec_read._entry_ptr = internal global ptr @tda1997x_cec_read._entry, section ".printk_index", align 4
@set_rgb_quantization_range._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.3, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s %d-%04x: colorspace=%d/%d colorimetry=%d range=%s content=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set_rgb_quantization_range\00", [37 x i8] zeroinitializer }, align 32
@set_rgb_quantization_range._entry_ptr = internal global ptr @set_rgb_quantization_range._entry, section ".printk_index", align 4
@tda1997x_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda1997x_pcm_startup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@tda1997x_pcm_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.3, i32 2479, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to constrain samplerate to %dHz\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda1997x_pcm_startup\00", [43 x i8] zeroinitializer }, align 32
@tda1997x_pcm_startup._entry_ptr = internal global ptr @tda1997x_pcm_startup._entry, section ".printk_index", align 4
@tda1997x_pcm_startup._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.3, i32 2482, ptr @.str.158, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"set samplerate constraint to %dHz\0A\00", [61 x i8] zeroinitializer }, align 32
@tda1997x_pcm_startup._entry_ptr.215 = internal global ptr @tda1997x_pcm_startup._entry.213, section ".printk_index", align 4
@tda1997x_irq_sus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.217, ptr @.str.3, i32 1402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s %d-%04x: BAD SUS STATUS\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tda1997x_irq_sus\00", [47 x i8] zeroinitializer }, align 32
@tda1997x_irq_sus._entry_ptr = internal global ptr @tda1997x_irq_sus._entry, section ".printk_index", align 4
@tda1997x_ev_fmt = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@tda1997x_irq_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.220, ptr @.str.3, i32 1468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s %d-%04x: HDMI-%c: Digital Activity Lost\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda1997x_irq_rate\00", [46 x i8] zeroinitializer }, align 32
@tda1997x_irq_rate._entry_ptr = internal global ptr @tda1997x_irq_rate._entry, section ".printk_index", align 4
@tda1997x_irq_rate._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.3, i32 1487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s %d-%04x: HDMI-%c: Digital Activity Detected\0A\00", [46 x i8] zeroinitializer }, align 32
@tda1997x_irq_rate._entry_ptr.223 = internal global ptr @tda1997x_irq_rate._entry.221, section ".printk_index", align 4
@tda1997x_parse_infoframe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.224, ptr @.str.3, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tda1997x_parse_infoframe\00", [39 x i8] zeroinitializer }, align 32
@tda1997x_parse_infoframe._entry_ptr = internal global ptr @tda1997x_parse_infoframe._entry, section ".printk_index", align 4
@tda1997x_irq_audio.freq = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [32 x i8] zeroinitializer }, align 32
@tda1997x_irq_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.3, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016%s %d-%04x: Audio Frequency Change: %dHz\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda1997x_irq_audio\00", [45 x i8] zeroinitializer }, align 32
@tda1997x_irq_audio._entry_ptr = internal global ptr @tda1997x_irq_audio._entry, section ".printk_index", align 4
@tda1997x_irq_audio._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.226, ptr @.str.3, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s %d-%04x: Audio Type: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@tda1997x_irq_audio._entry_ptr.229 = internal global ptr @tda1997x_irq_audio._entry.227, section ".printk_index", align 4
@audtype_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233], [16 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCM\00", [28 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HBR\00", [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OBA\00", [28 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DST\00", [28 x i8] zeroinitializer }, align 32
@tda1997x_chip_info = internal constant { [2 x %struct.tda1997x_chip_info], [16 x i8] } { [2 x %struct.tda1997x_chip_info] [%struct.tda1997x_chip_info { i32 0, ptr @.str.234 }, %struct.tda1997x_chip_info { i32 1, ptr @.str.235 }], [16 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda19971\00", [23 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tda19973\00", [23 x i8] zeroinitializer }, align 32
@switch.table.tda1997x_parse_infoframe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.236 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.237 = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 36]
@__sancov_gen_cov_switch_values.238 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 24, i64 36]
@__sancov_gen_cov_switch_values.239 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.240 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 24]
@__sancov_gen_cov_switch_values.241 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.242 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.243 = internal global [8 x i64] [i64 6, i64 32, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.244 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.245 = internal global [12 x i64] [i64 10, i64 32, i64 4106, i64 4121, i64 8198, i64 8207, i64 8216, i64 8218, i64 8220, i64 8224, i64 8229, i64 8233]
@__sancov_gen_cov_switch_values.246 = internal global [7 x i64] [i64 5, i64 32, i64 32, i64 64, i64 128, i64 256, i64 512]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 4294967229, i64 4294967262]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.249 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.250 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 8]
@__sancov_gen_cov_switch_values.251 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.252 = internal global [4 x i64] [i64 2, i64 32, i64 130, i64 132]
@___asan_gen_.253 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 38, i32 12 }
@___asan_gen_.256 = private unnamed_addr constant [20 x i8] c"tda1997x_i2c_driver\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2834, i32 26 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2836, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant [15 x i8] c"tda1997x_of_id\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2280, i32 34 }
@___asan_gen_.265 = private unnamed_addr constant [16 x i8] c"tda1997x_i2c_id\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2273, i32 35 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"cea1920x1080\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2531, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2554, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2564, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2577, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2578, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2581, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c"tda1997x_subdev_ops\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2044, i32 37 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2592, i32 39 }
@___asan_gen_.319 = private unnamed_addr constant [19 x i8] c"tda1997x_media_ops\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2455, i32 45 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2697, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2699, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2705, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant [13 x i8] c"audfmt_names\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 56, i32 27 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2720, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2728, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [18 x i8] c"tda1997x_ctrl_ops\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2083, i32 35 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2754, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [19 x i8] c"tda1997x_audio_dai\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2491, i32 34 }
@___asan_gen_.373 = private unnamed_addr constant [22 x i8] c"tda1997x_codec_driver\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2514, i32 40 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2775, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2778, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2787, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2803, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2333, i32 40 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2346, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2354, i32 35 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2355, i32 19 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2357, i32 24 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2360, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2363, i32 33 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2369, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2375, i32 33 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2381, i32 5 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2387, i32 33 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2397, i32 5 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 199, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 200, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 201, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 566, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2441, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2445, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant [18 x i8] c"tda1997x_core_ops\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2034, i32 42 }
@___asan_gen_.496 = private unnamed_addr constant [19 x i8] c"tda1997x_video_ops\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1725, i32 43 }
@___asan_gen_.499 = private unnamed_addr constant [17 x i8] c"tda1997x_pad_ops\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1927, i32 41 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1970, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1971, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1973, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1975, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1976, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1978, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1981, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1984, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1987, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1990, i32 34 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1993, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant [22 x i8] c"hdmi_colorspace_names\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 63, i32 27 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1994, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [23 x i8] c"hdmi_colorimetry_names\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 66, i32 27 }
@___asan_gen_.589 = private unnamed_addr constant [24 x i8] c"v4l2_quantization_names\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 69, i32 27 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1999, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [13 x i8] c"vidfmt_names\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 76, i32 27 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2001, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2004, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2006, i32 3 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2009, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2012, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1119, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1135, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [24 x i8] c"tda1997x_dv_timings_cap\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 178, i32 41 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1169, i32 34 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 64, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 64, i32 9 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 64, i32 19 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 64, i32 29 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 67, i32 6 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 67, i32 16 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 67, i32 26 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 70, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 71, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 72, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 77, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 78, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 79, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 80, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1951, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1954, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1959, i32 21 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1658, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1677, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [13 x i8] c"rgb_blanking\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 656, i32 37 }
@___asan_gen_.736 = private unnamed_addr constant [13 x i8] c"yuv_blanking\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 657, i32 37 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 661, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant [12 x i8] c"conv_matrix\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 119, i32 40 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 702, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 121, i32 3 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 129, i32 3 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 137, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 145, i32 3 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 153, i32 3 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 161, i32 3 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 169, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1702, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1716, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.788, i32 998, i32 6 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1755, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1787, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1811, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1848, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1876, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 579, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 590, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 606, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 625, i32 3 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 628, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 449, i32 3 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 348, i32 4 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 57, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 58, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 59, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 371, i32 3 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2210, i32 3 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 327, i32 3 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 313, i32 3 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1252, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant [17 x i8] c"tda1997x_dai_ops\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2487, i32 37 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2494, i32 18 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2478, i32 3 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 2482, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1402, i32 4 }
@___asan_gen_.958 = private unnamed_addr constant [16 x i8] c"tda1997x_ev_fmt\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 280, i32 32 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1466, i32 5 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1485, i32 5 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1274, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1548, i32 20 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1554, i32 3 }
@___asan_gen_.994 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 1567, i32 3 }
@___asan_gen_.1000 = private unnamed_addr constant [14 x i8] c"audtype_names\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 43, i32 27 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 44, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 45, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 46, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 47, i32 2 }
@___asan_gen_.1015 = private unnamed_addr constant [19 x i8] c"tda1997x_chip_info\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 285, i32 40 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 288, i32 11 }
@___asan_gen_.1021 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1022 = private constant [32 x i8] c"../drivers/media/i2c/tda1997x.c\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1022, i32 292, i32 11 }
@___asan_gen_.1024 = private unnamed_addr constant [38 x i8] c"switch.table.tda1997x_parse_infoframe\00", align 1
@llvm.compiler.used = appending global [339 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_debug299, ptr @__UNIQUE_ID_debugtype298, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_tda1997x_i2c_driver_exit, ptr @__initcall__kmod_tda1997x__300_2844_tda1997x_i2c_driver_init6, ptr @__param_debug, ptr @io_read._entry, ptr @io_read._entry_ptr, ptr @io_write._entry, ptr @io_write._entry_ptr, ptr @set_rgb_quantization_range._entry, ptr @set_rgb_quantization_range._entry_ptr, ptr @tda1997x_cec_read._entry, ptr @tda1997x_cec_read._entry_ptr, ptr @tda1997x_cec_write._entry, ptr @tda1997x_cec_write._entry_ptr, ptr @tda1997x_configure_csc._entry, ptr @tda1997x_configure_csc._entry.165, ptr @tda1997x_configure_csc._entry_ptr, ptr @tda1997x_configure_csc._entry_ptr.166, ptr @tda1997x_core_init._entry, ptr @tda1997x_core_init._entry_ptr, ptr @tda1997x_delayed_work_enable_hpd._entry, ptr @tda1997x_delayed_work_enable_hpd._entry_ptr, ptr @tda1997x_detect_std._entry, ptr @tda1997x_detect_std._entry.135, ptr @tda1997x_detect_std._entry_ptr, ptr @tda1997x_detect_std._entry_ptr.137, ptr @tda1997x_disable_edid._entry, ptr @tda1997x_disable_edid._entry_ptr, ptr @tda1997x_enable_edid._entry, ptr @tda1997x_enable_edid._entry_ptr, ptr @tda1997x_enum_mbus_code._entry, ptr @tda1997x_enum_mbus_code._entry_ptr, ptr @tda1997x_g_dv_timings._entry, ptr @tda1997x_g_dv_timings._entry_ptr, ptr @tda1997x_g_input_status._entry, ptr @tda1997x_g_input_status._entry_ptr, ptr @tda1997x_get_edid._entry, ptr @tda1997x_get_edid._entry_ptr, ptr @tda1997x_get_format._entry, ptr @tda1997x_get_format._entry_ptr, ptr @tda1997x_i2c_driver_exit, ptr @tda1997x_identify_module._entry, ptr @tda1997x_identify_module._entry.75, ptr @tda1997x_identify_module._entry_ptr, ptr @tda1997x_identify_module._entry_ptr.77, ptr @tda1997x_irq_audio._entry, ptr @tda1997x_irq_audio._entry.227, ptr @tda1997x_irq_audio._entry_ptr, ptr @tda1997x_irq_audio._entry_ptr.229, ptr @tda1997x_irq_rate._entry, ptr @tda1997x_irq_rate._entry.221, ptr @tda1997x_irq_rate._entry_ptr, ptr @tda1997x_irq_rate._entry_ptr.223, ptr @tda1997x_irq_sus._entry, ptr @tda1997x_irq_sus._entry_ptr, ptr @tda1997x_log_infoframe._entry, ptr @tda1997x_log_infoframe._entry.155, ptr @tda1997x_log_infoframe._entry_ptr, ptr @tda1997x_log_infoframe._entry_ptr.157, ptr @tda1997x_log_status._entry, ptr @tda1997x_log_status._entry.100, ptr @tda1997x_log_status._entry.103, ptr @tda1997x_log_status._entry.107, ptr @tda1997x_log_status._entry.110, ptr @tda1997x_log_status._entry.114, ptr @tda1997x_log_status._entry.117, ptr @tda1997x_log_status._entry.121, ptr @tda1997x_log_status._entry.124, ptr @tda1997x_log_status._entry.127, ptr @tda1997x_log_status._entry.130, ptr @tda1997x_log_status._entry.80, ptr @tda1997x_log_status._entry.83, ptr @tda1997x_log_status._entry.88, ptr @tda1997x_log_status._entry.91, ptr @tda1997x_log_status._entry.94, ptr @tda1997x_log_status._entry.97, ptr @tda1997x_log_status._entry_ptr, ptr @tda1997x_log_status._entry_ptr.102, ptr @tda1997x_log_status._entry_ptr.105, ptr @tda1997x_log_status._entry_ptr.109, ptr @tda1997x_log_status._entry_ptr.112, ptr @tda1997x_log_status._entry_ptr.116, ptr @tda1997x_log_status._entry_ptr.119, ptr @tda1997x_log_status._entry_ptr.123, ptr @tda1997x_log_status._entry_ptr.126, ptr @tda1997x_log_status._entry_ptr.129, ptr @tda1997x_log_status._entry_ptr.132, ptr @tda1997x_log_status._entry_ptr.82, ptr @tda1997x_log_status._entry_ptr.85, ptr @tda1997x_log_status._entry_ptr.90, ptr @tda1997x_log_status._entry_ptr.93, ptr @tda1997x_log_status._entry_ptr.96, ptr @tda1997x_log_status._entry_ptr.99, ptr @tda1997x_parse_dt._entry, ptr @tda1997x_parse_dt._entry.53, ptr @tda1997x_parse_dt._entry.57, ptr @tda1997x_parse_dt._entry.61, ptr @tda1997x_parse_dt._entry.65, ptr @tda1997x_parse_dt._entry_ptr, ptr @tda1997x_parse_dt._entry_ptr.55, ptr @tda1997x_parse_dt._entry_ptr.59, ptr @tda1997x_parse_dt._entry_ptr.63, ptr @tda1997x_parse_dt._entry_ptr.67, ptr @tda1997x_parse_infoframe._entry, ptr @tda1997x_parse_infoframe._entry_ptr, ptr @tda1997x_pcm_startup._entry, ptr @tda1997x_pcm_startup._entry.213, ptr @tda1997x_pcm_startup._entry_ptr, ptr @tda1997x_pcm_startup._entry_ptr.215, ptr @tda1997x_probe._entry, ptr @tda1997x_probe._entry.15, ptr @tda1997x_probe._entry.18, ptr @tda1997x_probe._entry.23, ptr @tda1997x_probe._entry.26, ptr @tda1997x_probe._entry.30, ptr @tda1997x_probe._entry.33, ptr @tda1997x_probe._entry.38, ptr @tda1997x_probe._entry.4, ptr @tda1997x_probe._entry.41, ptr @tda1997x_probe._entry.44, ptr @tda1997x_probe._entry_ptr, ptr @tda1997x_probe._entry_ptr.17, ptr @tda1997x_probe._entry_ptr.20, ptr @tda1997x_probe._entry_ptr.25, ptr @tda1997x_probe._entry_ptr.28, ptr @tda1997x_probe._entry_ptr.32, ptr @tda1997x_probe._entry_ptr.37, ptr @tda1997x_probe._entry_ptr.40, ptr @tda1997x_probe._entry_ptr.43, ptr @tda1997x_probe._entry_ptr.46, ptr @tda1997x_probe._entry_ptr.6, ptr @tda1997x_query_dv_timings._entry, ptr @tda1997x_query_dv_timings._entry_ptr, ptr @tda1997x_s_dv_timings._entry, ptr @tda1997x_s_dv_timings._entry_ptr, ptr @tda1997x_set_edid._entry, ptr @tda1997x_set_edid._entry_ptr, ptr @tda1997x_set_format._entry, ptr @tda1997x_set_format._entry_ptr, ptr @tda1997x_setpage._entry, ptr @tda1997x_setpage._entry_ptr, ptr @tda1997x_setup_format._entry, ptr @tda1997x_setup_format._entry.190, ptr @tda1997x_setup_format._entry.193, ptr @tda1997x_setup_format._entry_ptr, ptr @tda1997x_setup_format._entry_ptr.192, ptr @tda1997x_setup_format._entry_ptr.195, ptr @debug, ptr @tda1997x_i2c_driver, ptr @.str, ptr @tda1997x_of_id, ptr @tda1997x_i2c_id, ptr @tda1997x_probe.cea1920x1080, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @tda1997x_probe.__key, ptr @.str.7, ptr @tda1997x_probe.__key.8, ptr @.str.9, ptr @tda1997x_probe.__key.10, ptr @.str.11, ptr @tda1997x_probe.__key.12, ptr @.str.13, ptr @tda1997x_subdev_ops, ptr @.str.14, ptr @tda1997x_media_ops, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @audfmt_names, ptr @.str.27, ptr @tda1997x_probe._key, ptr @.str.29, ptr @tda1997x_ctrl_ops, ptr @.str.31, ptr @tda1997x_audio_dai, ptr @tda1997x_codec_driver, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @tda1997x_core_ops, ptr @tda1997x_video_ops, ptr @tda1997x_pad_ops, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.111, ptr @hdmi_colorspace_names, ptr @.str.113, ptr @hdmi_colorimetry_names, ptr @v4l2_quantization_names, ptr @.str.115, ptr @vidfmt_names, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @tda1997x_dv_timings_cap, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.156, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @tda1997x_configure_csc.rgb_blanking, ptr @tda1997x_configure_csc.yuv_blanking, ptr @.str.163, ptr @.str.164, ptr @conv_matrix, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.191, ptr @.str.194, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @tda1997x_dai_ops, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.217, ptr @tda1997x_ev_fmt, ptr @.str.219, ptr @.str.220, ptr @.str.222, ptr @.str.224, ptr @tda1997x_irq_audio.freq, ptr @.str.225, ptr @.str.226, ptr @.str.228, ptr @audtype_names, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @tda1997x_chip_info, ptr @.str.234, ptr @.str.235, ptr @switch.table.tda1997x_parse_infoframe], section "llvm.metadata"
@0 = internal global [258 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_of_id to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe.cea1920x1080 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audfmt_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_audio_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_codec_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_parse_dt._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_parse_dt._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_parse_dt._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_parse_dt._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_delayed_work_enable_hpd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_identify_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_identify_module._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_colorspace_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_colorimetry_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_quantization_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidfmt_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_status._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_detect_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_detect_std._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_dv_timings_cap to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_log_infoframe._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_g_input_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_s_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_configure_csc.rgb_blanking to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_configure_csc.yuv_blanking to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_configure_csc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @conv_matrix to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_configure_csc._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_g_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_query_dv_timings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_enum_mbus_code._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_get_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_set_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_get_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_set_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_disable_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_enable_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_setup_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_setup_format._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_setup_format._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_setpage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_core_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_cec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_cec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rgb_quantization_range._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_pcm_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_pcm_startup._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_irq_sus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_ev_fmt to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_irq_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_irq_rate._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_parse_infoframe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_irq_audio.freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_irq_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_irq_audio._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audtype_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1997x_chip_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda1997x_parse_infoframe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tda1997x_i2c_driver) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tda1997x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @i2c_del_driver(ptr noundef nonnull @tda1997x_i2c_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #13
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup371_crit_edge

entry.cleanup371_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup371

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1456) #16
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup371_crit_edge, label %if.end4

if.end.cleanup371_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup371

if.end4:                                          ; preds = %if.end
  %client5 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %client5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client5, align 4
  %pdata6 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end4
  %call11 = tail call ptr @of_match_node(ptr noundef nonnull @tda1997x_of_id, ptr noundef nonnull %9) #13
  %data = getelementptr inbounds %struct.of_device_id, ptr %call11, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i, align 8
  %call12 = tail call fastcc i32 @tda1997x_parse_dt(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %cleanup, label %if.then8.if.end41_crit_edge

if.then8.if.end41_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end41

cleanup:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr, align 2
  %conv = zext i16 %22 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %16, i32 noundef %20, i32 noundef %conv) #17
  br label %err_free_state

if.else:                                          ; preds = %if.end4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %23 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data, align 8
  %tobool20.not = icmp eq ptr %24, null
  br i1 %tobool20.not, label %do.end30, label %if.then21

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %25 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %driver_data, align 4
  %27 = inttoptr i32 %26 to ptr
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %call7.i.i, align 8
  %29 = call ptr @memcpy(ptr %pdata6, ptr %24, i32 48)
  br label %if.end41

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %driver33 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %driver33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver33, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %nr.i548 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %nr.i548 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr.i548, align 4
  %addr37 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %38 = ptrtoint ptr %addr37 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr37, align 2
  %conv38 = zext i16 %39 to i32
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %33, i32 noundef %37, i32 noundef %conv38) #17
  br label %err_free_state

if.end41:                                         ; preds = %if.then21, %if.then8.if.end41_crit_edge
  %arrayidx1.i = getelementptr %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 5, i32 0
  %40 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.68, ptr %arrayidx1.i, align 8
  %arrayidx1.1.i = getelementptr %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @.str.69, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.70, ptr %arrayidx1.2.i, align 8
  %43 = ptrtoint ptr %client5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client5, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %44, i32 0, i32 4
  %call.i = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev.i, i32 noundef 3, ptr noundef %arrayidx1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool43.not = icmp eq i32 %call.i, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.err_free_state_crit_edge

if.end41.err_free_state_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_state

if.end45:                                         ; preds = %if.end41
  %call.i549 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %arrayidx1.i) #13
  tail call void @msleep(i32 noundef 300) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i549)
  %tobool47.not = icmp eq i32 %call.i549, 0
  br i1 %tobool47.not, label %do.body50, label %if.end45.err_free_state_crit_edge

if.end45.err_free_state_crit_edge:                ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_state

do.body50:                                        ; preds = %if.end45
  %page_lock = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %page_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @tda1997x_probe.__key) #13
  %lock = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @tda1997x_probe.__key.8) #13
  %page = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 9
  %45 = ptrtoint ptr %page to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %page, align 4
  %delayed_work_enable_hpd = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 39
  tail call void @__init_work(ptr noundef %delayed_work_enable_hpd, i32 noundef 0) #13
  %46 = ptrtoint ptr %delayed_work_enable_hpd to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -64, ptr %delayed_work_enable_hpd, align 4
  %lockdep_map = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 39, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @tda1997x_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry65 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 39, i32 0, i32 1
  %47 = ptrtoint ptr %entry65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %entry65, ptr %entry65, align 8
  %prev.i = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 39, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %entry65, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 39, i32 0, i32 2
  %49 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @tda1997x_delayed_work_enable_hpd, ptr %func, align 8
  %timer = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 39, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @tda1997x_probe.__key.12) #13
  %call76 = tail call fastcc i32 @tda1997x_identify_module(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %do.body50.err_free_mutex_crit_edge

do.body50.err_free_mutex_crit_edge:               ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_mutex

if.end79:                                         ; preds = %do.body50
  %sd80 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 4
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd80, ptr noundef %client, ptr noundef nonnull @tda1997x_subdev_ops) #13
  %name81 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 4, i32 9
  %50 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter, align 8
  %nr.i550 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %nr.i550 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr.i550, align 4
  %addr86 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %54 = ptrtoint ptr %addr86 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %addr86, align 2
  %conv87 = zext i16 %55 to i32
  %call88 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name81, i32 noundef 32, ptr noundef nonnull @.str.14, ptr noundef %id, i32 noundef %53, i32 noundef %conv87)
  %flags = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 4, i32 4
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %or = or i32 %57, 12
  store i32 %or, ptr %flags, align 4
  %function = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 3
  %58 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 24577, ptr %function, align 4
  %ops = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 11
  %59 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @tda1997x_media_ops, ptr %ops, align 4
  %mbus_codes90 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 25
  %60 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call7.i.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i32 %63, label %if.end79.if.end173_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb111
  ]

if.end79.if.end173_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

sw.bb:                                            ; preds = %if.end79
  %65 = ptrtoint ptr %pdata6 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pdata6, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %66, label %sw.bb.if.end173_crit_edge [
    i32 1, label %sw.bb93
    i32 2, label %sw.bb100
  ]

sw.bb.if.end173_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

sw.bb93:                                          ; preds = %sw.bb
  %vidout_bus_width = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %vidout_bus_width to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %vidout_bus_width, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %69, label %sw.bb93.if.end173_crit_edge [
    i32 36, label %sw.bb94
    i32 24, label %sw.bb93.sw.bb97_crit_edge
  ]

sw.bb93.sw.bb97_crit_edge:                        ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb97

sw.bb93.if.end173_crit_edge:                      ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

sw.bb94:                                          ; preds = %sw.bb93
  call void @__sanitizer_cov_trace_pc() #15
  %71 = ptrtoint ptr %mbus_codes90 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 4121, ptr %mbus_codes90, align 4
  %arrayidx96 = getelementptr %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 25, i32 1
  %72 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 8233, ptr %arrayidx96, align 8
  br label %sw.bb97

sw.bb97:                                          ; preds = %sw.bb94, %sw.bb93.sw.bb97_crit_edge
  %i.0 = phi i32 [ 0, %sw.bb93.sw.bb97_crit_edge ], [ 2, %sw.bb94 ]
  %inc98 = or i32 %i.0, 1
  %arrayidx99 = getelementptr i32, ptr %mbus_codes90, i32 %i.0
  %73 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8224, ptr %arrayidx99, align 4
  br label %if.end173

sw.bb100:                                         ; preds = %sw.bb
  %vidout_bus_width101 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %74 = ptrtoint ptr %vidout_bus_width101 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vidout_bus_width101, align 8
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %75, label %sw.bb100.if.end173_crit_edge [
    i32 36, label %sw.bb100.sw.bb102_crit_edge
    i32 24, label %sw.bb100.sw.bb102_crit_edge562
    i32 12, label %sw.bb100.sw.bb102_crit_edge563
  ]

sw.bb100.sw.bb102_crit_edge563:                   ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb102

sw.bb100.sw.bb102_crit_edge562:                   ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb102

sw.bb100.sw.bb102_crit_edge:                      ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb102

sw.bb100.if.end173_crit_edge:                     ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

sw.bb102:                                         ; preds = %sw.bb100.sw.bb102_crit_edge, %sw.bb100.sw.bb102_crit_edge562, %sw.bb100.sw.bb102_crit_edge563
  %77 = ptrtoint ptr %mbus_codes90 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 8220, ptr %mbus_codes90, align 4
  %arrayidx106 = getelementptr %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 25, i32 1
  %78 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 8216, ptr %arrayidx106, align 8
  %arrayidx108 = getelementptr %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 25, i32 2
  %79 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 8198, ptr %arrayidx108, align 4
  br label %if.end173

sw.bb111:                                         ; preds = %if.end79
  %80 = ptrtoint ptr %pdata6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %pdata6, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %81, label %sw.bb111.if.end173_crit_edge [
    i32 1, label %sw.bb113
    i32 2, label %sw.bb129
  ]

sw.bb111.if.end173_crit_edge:                     ; preds = %sw.bb111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

sw.bb113:                                         ; preds = %sw.bb111
  %vidout_bus_width114 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %vidout_bus_width114 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %vidout_bus_width114, align 8
  %85 = zext i32 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %84, label %sw.bb113.if.end173_crit_edge [
    i32 24, label %sw.bb115
    i32 20, label %sw.bb113.sw.bb122_crit_edge
    i32 16, label %sw.bb113.sw.bb125_crit_edge
  ]

sw.bb113.sw.bb125_crit_edge:                      ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb125

sw.bb113.sw.bb122_crit_edge:                      ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb122

sw.bb113.if.end173_crit_edge:                     ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

sw.bb115:                                         ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %mbus_codes90 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 4106, ptr %mbus_codes90, align 4
  %arrayidx119 = getelementptr %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 25, i32 1
  %87 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 8229, ptr %arrayidx119, align 8
  %arrayidx121 = getelementptr %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 25, i32 2
  %88 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 8224, ptr %arrayidx121, align 4
  br label %sw.bb122

sw.bb122:                                         ; preds = %sw.bb115, %sw.bb113.sw.bb122_crit_edge
  %i.1 = phi i32 [ 0, %sw.bb113.sw.bb122_crit_edge ], [ 3, %sw.bb115 ]
  %inc123 = add nuw nsw i32 %i.1, 1
  %arrayidx124 = getelementptr i32, ptr %mbus_codes90, i32 %i.1
  %89 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 8218, ptr %arrayidx124, align 4
  br label %sw.bb125

sw.bb125:                                         ; preds = %sw.bb122, %sw.bb113.sw.bb125_crit_edge
  %i.2 = phi i32 [ 0, %sw.bb113.sw.bb125_crit_edge ], [ %inc123, %sw.bb122 ]
  %inc126 = add nuw nsw i32 %i.2, 1
  %arrayidx127 = getelementptr i32, ptr %mbus_codes90, i32 %i.2
  %90 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 8207, ptr %arrayidx127, align 4
  br label %if.end173

sw.bb129:                                         ; preds = %sw.bb111
  %vidout_bus_width130 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %91 = ptrtoint ptr %vidout_bus_width130 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %vidout_bus_width130, align 8
  %93 = add i32 %92, -8
  %94 = tail call i32 @llvm.fshl.i32(i32 %93, i32 %93, i32 31)
  %95 = zext i32 %94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %94, label %sw.bb129.if.end173_crit_edge [
    i32 8, label %sw.bb129.sw.bb131_crit_edge
    i32 6, label %sw.bb129.sw.bb131_crit_edge564
    i32 4, label %sw.bb129.sw.bb131_crit_edge565
    i32 2, label %sw.bb129.sw.bb131_crit_edge566
    i32 1, label %sw.bb129.sw.bb134_crit_edge
    i32 0, label %sw.bb129.sw.bb137_crit_edge
  ]

sw.bb129.sw.bb137_crit_edge:                      ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb137

sw.bb129.sw.bb134_crit_edge:                      ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb134

sw.bb129.sw.bb131_crit_edge566:                   ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb131

sw.bb129.sw.bb131_crit_edge565:                   ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb131

sw.bb129.sw.bb131_crit_edge564:                   ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb131

sw.bb129.sw.bb131_crit_edge:                      ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb131

sw.bb129.if.end173_crit_edge:                     ; preds = %sw.bb129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end173

sw.bb131:                                         ; preds = %sw.bb129.sw.bb131_crit_edge, %sw.bb129.sw.bb131_crit_edge564, %sw.bb129.sw.bb131_crit_edge565, %sw.bb129.sw.bb131_crit_edge566
  %96 = ptrtoint ptr %mbus_codes90 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 8220, ptr %mbus_codes90, align 4
  br label %sw.bb134

sw.bb134:                                         ; preds = %sw.bb131, %sw.bb129.sw.bb134_crit_edge
  %i.3 = phi i32 [ 0, %sw.bb129.sw.bb134_crit_edge ], [ 1, %sw.bb131 ]
  %inc135 = add nuw nsw i32 %i.3, 1
  %arrayidx136 = getelementptr i32, ptr %mbus_codes90, i32 %i.3
  %97 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 8216, ptr %arrayidx136, align 4
  br label %sw.bb137

sw.bb137:                                         ; preds = %sw.bb134, %sw.bb129.sw.bb137_crit_edge
  %i.4 = phi i32 [ %94, %sw.bb129.sw.bb137_crit_edge ], [ %inc135, %sw.bb134 ]
  %inc138 = add nuw nsw i32 %i.4, 1
  %arrayidx139 = getelementptr i32, ptr %mbus_codes90, i32 %i.4
  %98 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 8198, ptr %arrayidx139, align 4
  br label %if.end173

if.end173:                                        ; preds = %sw.bb137, %sw.bb129.if.end173_crit_edge, %sw.bb125, %sw.bb113.if.end173_crit_edge, %sw.bb111.if.end173_crit_edge, %sw.bb102, %sw.bb100.if.end173_crit_edge, %sw.bb97, %sw.bb93.if.end173_crit_edge, %sw.bb.if.end173_crit_edge, %if.end79.if.end173_crit_edge
  %i.5 = phi i32 [ 0, %if.end79.if.end173_crit_edge ], [ 0, %sw.bb111.if.end173_crit_edge ], [ 0, %sw.bb129.if.end173_crit_edge ], [ %inc138, %sw.bb137 ], [ 0, %sw.bb113.if.end173_crit_edge ], [ %inc126, %sw.bb125 ], [ 0, %sw.bb.if.end173_crit_edge ], [ 0, %sw.bb100.if.end173_crit_edge ], [ 3, %sw.bb102 ], [ 0, %sw.bb93.if.end173_crit_edge ], [ %inc98, %sw.bb97 ]
  %99 = ptrtoint ptr %mbus_codes90 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mbus_codes90, align 4
  %call176 = tail call fastcc i32 @tda1997x_setup_format(ptr noundef nonnull %call7.i.i, i32 noundef %100)
  %timings = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 22
  %101 = call ptr @memcpy(ptr %timings, ptr @tda1997x_probe.cea1920x1080, i32 132)
  %colorimetry = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 20
  %102 = ptrtoint ptr %colorimetry to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 8, ptr %colorimetry, align 4
  %quantization = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 20, i32 2
  %103 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %quantization, align 4
  %call178 = tail call fastcc i32 @io_write(ptr noundef %sd80, i16 noundef zeroext 5096, i8 noundef zeroext 36)
  %chip_revision = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 10
  %104 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %chip_revision, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp179.not = icmp eq i32 %105, 0
  br i1 %cmp179.not, label %if.end173.do.end187_crit_edge, label %if.then181

if.end173.do.end187_crit_edge:                    ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end187

if.then181:                                       ; preds = %if.end173
  call void @__sanitizer_cov_trace_pc() #15
  %call182 = tail call fastcc i32 @io_write(ptr noundef %sd80, i16 noundef zeroext 5096, i8 noundef zeroext 0)
  %call183 = tail call fastcc i32 @io_write(ptr noundef %sd80, i16 noundef zeroext 128, i8 noundef zeroext 31)
  br label %do.end187

do.end187:                                        ; preds = %if.then181, %if.end173.do.end187_crit_edge
  %driver190 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %106 = ptrtoint ptr %driver190 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %driver190, align 4
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 4
  %110 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adapter, align 8
  %nr.i551 = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %nr.i551 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nr.i551, align 4
  %114 = ptrtoint ptr %addr86 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %addr86, align 2
  %conv195 = zext i16 %115 to i32
  %116 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call7.i.i, align 8
  %name197 = getelementptr inbounds %struct.tda1997x_chip_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %name197 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name197, align 4
  %120 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %chip_revision, align 8
  %add = add i32 %121, 1
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %109, i32 noundef %113, i32 noundef %conv195, ptr noundef %119, i32 noundef %add) #17
  %122 = ptrtoint ptr %driver190 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %driver190, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %123, align 4
  %126 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %adapter, align 8
  %nr.i552 = getelementptr inbounds %struct.i2c_adapter, ptr %127, i32 0, i32 11
  %128 = ptrtoint ptr %nr.i552 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %nr.i552, align 4
  %130 = ptrtoint ptr %addr86 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %addr86, align 2
  %conv210 = zext i16 %131 to i32
  %vidout_bus_width211 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %132 = ptrtoint ptr %vidout_bus_width211 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %vidout_bus_width211, align 8
  %134 = ptrtoint ptr %pdata6 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %pdata6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp213 = icmp eq i32 %135, 1
  %cond = select i1 %cmp213, ptr @.str.21, ptr @.str.22
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %125, i32 noundef %129, i32 noundef %conv210, i32 noundef %133, ptr noundef nonnull %cond, i32 noundef %i.5) #17
  %audout_format = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1, i32 14
  %136 = ptrtoint ptr %audout_format to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %audout_format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool216.not = icmp eq i32 %137, 0
  br i1 %tobool216.not, label %do.end187.if.end235_crit_edge, label %do.end220

do.end187.if.end235_crit_edge:                    ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end235

do.end220:                                        ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %driver190 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %driver190, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %142 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %adapter, align 8
  %nr.i553 = getelementptr inbounds %struct.i2c_adapter, ptr %143, i32 0, i32 11
  %144 = ptrtoint ptr %nr.i553 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %nr.i553, align 4
  %146 = ptrtoint ptr %addr86 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %addr86, align 2
  %conv228 = zext i16 %147 to i32
  %audout_layout = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1, i32 17
  %148 = ptrtoint ptr %audout_layout to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %audout_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool229.not = icmp eq i32 %149, 0
  %cond230 = select i1 %tobool229.not, i32 8, i32 2
  %arrayidx232 = getelementptr [3 x ptr], ptr @audfmt_names, i32 0, i32 %137
  %150 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx232, align 4
  %audout_mclk_fs = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1, i32 15
  %152 = ptrtoint ptr %audout_mclk_fs to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %audout_mclk_fs, align 4
  %call234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %141, i32 noundef %145, i32 noundef %conv228, i32 noundef %cond230, ptr noundef %151, i32 noundef %149, i32 noundef %153) #17
  br label %if.end235

if.end235:                                        ; preds = %do.end220, %do.end187.if.end235_crit_edge
  %call236 = tail call fastcc i32 @io_read(ptr noundef %sd80, i16 noundef zeroext 12293)
  %154 = lshr i32 %call236, 4
  %and = and i32 %154, 3
  %add237 = or i32 %and, 52
  %155 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %adapter, align 8
  %conv240 = trunc i32 %add237 to i16
  %call241 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev, ptr noundef %156, i16 noundef zeroext %conv240) #13
  %client_cec = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 3
  %157 = ptrtoint ptr %client_cec to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %call241, ptr %client_cec, align 8
  %cmp.i554 = icmp ugt ptr %call241, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i554, label %if.then244, label %do.end250

if.then244:                                       ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #15
  %158 = ptrtoint ptr %call241 to i32
  br label %err_free_mutex

do.end250:                                        ; preds = %if.end235
  %159 = ptrtoint ptr %driver190 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %driver190, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %163 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %adapter, align 8
  %nr.i555 = getelementptr inbounds %struct.i2c_adapter, ptr %164, i32 0, i32 11
  %165 = ptrtoint ptr %nr.i555 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %nr.i555, align 4
  %167 = ptrtoint ptr %addr86 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %addr86, align 2
  %conv258 = zext i16 %168 to i32
  %call259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %162, i32 noundef %166, i32 noundef %conv258, i32 noundef %add237) #17
  tail call fastcc void @tda1997x_core_init(ptr noundef %sd80)
  %hdl264 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 28
  %call266 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl264, i32 noundef 3, ptr noundef nonnull @tda1997x_probe._key, ptr noundef nonnull @.str.29) #13
  %call267 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl264, ptr noundef nonnull @tda1997x_ctrl_ops, i32 noundef 10488166, i8 noundef zeroext 4, i64 noundef 0, i8 noundef zeroext 4) #13
  %tobool268.not = icmp eq ptr %call267, null
  br i1 %tobool268.not, label %do.end250.if.end272_crit_edge, label %if.then269

do.end250.if.end272_crit_edge:                    ; preds = %do.end250
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end272

if.then269:                                       ; preds = %do.end250
  call void @__sanitizer_cov_trace_pc() #15
  %flags270 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call267, i32 0, i32 20
  %169 = ptrtoint ptr %flags270 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %flags270, align 4
  %or271 = or i32 %170, 128
  store i32 %or271, ptr %flags270, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %do.end250.if.end272_crit_edge
  %call273 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl264, ptr noundef null, i32 noundef 10488164, i64 noundef 0, i64 noundef 1, i64 noundef 0, i64 noundef 0) #13
  %detect_tx_5v_ctrl = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 29
  %171 = ptrtoint ptr %detect_tx_5v_ctrl to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %call273, ptr %detect_tx_5v_ctrl, align 8
  %call274 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %hdl264, ptr noundef nonnull @tda1997x_ctrl_ops, i32 noundef 10488165, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext 0) #13
  %rgb_quantization_range_ctrl = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 30
  %172 = ptrtoint ptr %rgb_quantization_range_ctrl to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call274, ptr %rgb_quantization_range_ctrl, align 4
  %ctrl_handler = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 4, i32 8
  %173 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %hdl264, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 28, i32 9
  %174 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool276.not = icmp eq i32 %175, 0
  br i1 %tobool276.not, label %if.end279, label %if.end272.err_free_handler_crit_edge

if.end272.err_free_handler_crit_edge:             ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_handler

if.end279:                                        ; preds = %if.end272
  %call280 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl264) #13
  %pads = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 6
  %flags282 = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 4
  %176 = ptrtoint ptr %flags282 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 2, ptr %flags282, align 8
  %call286 = tail call i32 @media_entity_pads_init(ptr noundef %sd80, i16 noundef zeroext 1, ptr noundef %pads) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %if.end301, label %do.end291

do.end291:                                        ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #15
  %177 = ptrtoint ptr %driver190 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %driver190, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %181 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %adapter, align 8
  %nr.i556 = getelementptr inbounds %struct.i2c_adapter, ptr %182, i32 0, i32 11
  %183 = ptrtoint ptr %nr.i556 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %nr.i556, align 4
  %185 = ptrtoint ptr %addr86 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %addr86, align 2
  %conv299 = zext i16 %186 to i32
  %call300 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %180, i32 noundef %184, i32 noundef %conv299, i32 noundef %call286) #17
  br label %err_free_handler

if.end301:                                        ; preds = %if.end279
  %call302 = tail call i32 @v4l2_async_register_subdev(ptr noundef %sd80) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %tobool303.not = icmp eq i32 %call302, 0
  br i1 %tobool303.not, label %if.end305, label %if.end301.err_free_handler_crit_edge

if.end301.err_free_handler_crit_edge:             ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_free_handler

if.end305:                                        ; preds = %if.end301
  %187 = ptrtoint ptr %audout_format to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %audout_format, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool307.not = icmp eq i32 %188, 0
  br i1 %tobool307.not, label %if.end305.if.end342_crit_edge, label %if.then308

if.end305.if.end342_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end342

if.then308:                                       ; preds = %if.end305
  %audout_width = getelementptr inbounds %struct.tda1997x_state, ptr %call7.i.i, i32 0, i32 1, i32 16
  %189 = ptrtoint ptr %audout_width to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %audout_width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %190)
  %cmp309 = icmp eq i32 %190, 32
  %. = select i1 %cmp309, i64 1024, i64 4
  store i64 %., ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @tda1997x_audio_dai, i32 0, i32 10, i32 1), align 8
  %191 = ptrtoint ptr %client5 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %client5, align 4
  %dev315 = getelementptr inbounds %struct.i2c_client, ptr %192, i32 0, i32 4
  %call316 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev315, ptr noundef nonnull @tda1997x_codec_driver, ptr noundef nonnull @tda1997x_audio_dai, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call316)
  %tobool317.not = icmp eq i32 %call316, 0
  br i1 %tobool317.not, label %cleanup339.thread, label %cleanup339

cleanup339.thread:                                ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #15
  %193 = ptrtoint ptr %client5 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %client5, align 4
  %driver330 = getelementptr inbounds %struct.i2c_client, ptr %194, i32 0, i32 4, i32 6
  %195 = ptrtoint ptr %driver330 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %driver330, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %196, align 4
  %adapter333 = getelementptr inbounds %struct.i2c_client, ptr %194, i32 0, i32 3
  %199 = ptrtoint ptr %adapter333 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %adapter333, align 8
  %nr.i557 = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 11
  %201 = ptrtoint ptr %nr.i557 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %nr.i557, align 4
  %addr336 = getelementptr inbounds %struct.i2c_client, ptr %194, i32 0, i32 1
  %203 = ptrtoint ptr %addr336 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %addr336, align 2
  %conv337 = zext i16 %204 to i32
  %call338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %198, i32 noundef %202, i32 noundef %conv337) #17
  br label %if.end342

cleanup339:                                       ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34) #17
  br label %err_free_handler

if.end342:                                        ; preds = %cleanup339.thread, %if.end305.if.end342_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %205 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %irq, align 4
  %call344 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %206, ptr noundef null, ptr noundef nonnull @tda1997x_isr_thread, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call344)
  %tobool345.not = icmp eq i32 %call344, 0
  br i1 %tobool345.not, label %if.end342.cleanup371_crit_edge, label %do.end349

if.end342.cleanup371_crit_edge:                   ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup371

do.end349:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #15
  %207 = ptrtoint ptr %driver190 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %driver190, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %211 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %adapter, align 8
  %nr.i558 = getelementptr inbounds %struct.i2c_adapter, ptr %212, i32 0, i32 11
  %213 = ptrtoint ptr %nr.i558 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %nr.i558, align 4
  %215 = ptrtoint ptr %addr86 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %addr86, align 2
  %conv357 = zext i16 %216 to i32
  %217 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %irq, align 4
  %call359 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %210, i32 noundef %214, i32 noundef %conv357, i32 noundef %218, i32 noundef %call344) #17
  br label %err_free_handler

err_free_handler:                                 ; preds = %do.end349, %cleanup339, %if.end301.err_free_handler_crit_edge, %do.end291, %if.end272.err_free_handler_crit_edge
  %ret.1 = phi i32 [ %call286, %do.end291 ], [ %175, %if.end272.err_free_handler_crit_edge ], [ %call302, %if.end301.err_free_handler_crit_edge ], [ %call316, %cleanup339 ], [ %call344, %do.end349 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl264) #13
  br label %err_free_mutex

err_free_mutex:                                   ; preds = %err_free_handler, %if.then244, %do.body50.err_free_mutex_crit_edge
  %ret.2 = phi i32 [ %call76, %do.body50.err_free_mutex_crit_edge ], [ %158, %if.then244 ], [ %ret.1, %err_free_handler ]
  %call364 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %delayed_work_enable_hpd) #13
  tail call void @mutex_destroy(ptr noundef %page_lock) #13
  tail call void @mutex_destroy(ptr noundef %lock) #13
  br label %err_free_state

err_free_state:                                   ; preds = %err_free_mutex, %if.end45.err_free_state_crit_edge, %if.end41.err_free_state_crit_edge, %do.end30, %cleanup
  %ret.3 = phi i32 [ %call12, %cleanup ], [ %call.i, %if.end41.err_free_state_crit_edge ], [ %call.i549, %if.end45.err_free_state_crit_edge ], [ %ret.2, %err_free_mutex ], [ -19, %do.end30 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.2, i32 noundef %ret.3) #17
  br label %cleanup371

cleanup371:                                       ; preds = %err_free_state, %if.end342.cleanup371_crit_edge, %if.end.cleanup371_crit_edge, %entry.cleanup371_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_free_state ], [ -5, %entry.cleanup371_crit_edge ], [ -12, %if.end.cleanup371_crit_edge ], [ 0, %if.end342.cleanup371_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %audout_format = getelementptr i8, ptr %1, i32 -28
  %2 = ptrtoint ptr %audout_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audout_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %audio_lock = getelementptr i8, ptr %1, i32 936
  tail call void @mutex_destroy(ptr noundef %audio_lock) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 -60
  %client3 = getelementptr i8, ptr %1, i32 -8
  %4 = ptrtoint ptr %client3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client3, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %7) #13
  %call8.i = tail call fastcc i32 @io_read(ptr noundef %1, i16 noundef zeroext 234) #13
  %8 = trunc i32 %call8.i to i8
  %conv11.i = or i8 %8, -128
  %call12.i = tail call fastcc i32 @io_write(ptr noundef %1, i16 noundef zeroext 234, i8 noundef zeroext %conv11.i) #13
  %call13.i = tail call fastcc i32 @io_write(ptr noundef %1, i16 noundef zeroext 4935, i8 noundef zeroext 1) #13
  %call14.i = tail call fastcc i32 @io_write(ptr noundef %1, i16 noundef zeroext 4610, i8 noundef zeroext 0) #13
  %call15.i = tail call fastcc i32 @io_write(ptr noundef %1, i16 noundef zeroext 4768, i8 noundef zeroext 1) #13
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #13
  %hdl = getelementptr i8, ptr %1, i32 724
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #13
  %supplies = getelementptr i8, ptr %1, i32 196
  %call4 = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #13
  %delayed_work_enable_hpd = getelementptr i8, ptr %1, i32 1296
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work_enable_hpd) #13
  %page_lock = getelementptr i8, ptr %1, i32 356
  tail call void @mutex_destroy(ptr noundef %page_lock) #13
  %lock = getelementptr i8, ptr %1, i32 264
  tail call void @mutex_destroy(ptr noundef %lock) #13
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda1997x_parse_dt(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  %bus_cfg = alloca %struct.v4l2_fwnode_endpoint, align 4
  %str = alloca ptr, align 4
  %v = alloca i32, align 4
  %reg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bus_cfg) #13
  %0 = call ptr @memset(ptr %bus_cfg, i32 0, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str) #13
  %1 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %str, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #13
  %2 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %v, align 4, !annotation !504
  %vidout_sel_hs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 11
  %3 = ptrtoint ptr %vidout_sel_hs to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %vidout_sel_hs, align 1
  %vidout_sel_vs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %vidout_sel_vs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %vidout_sel_vs, align 2
  %vidout_sel_de = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 13
  %5 = ptrtoint ptr %vidout_sel_de to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %vidout_sel_de, align 1
  %client = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_next_endpoint(ptr noundef %9, ptr noundef null) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %cond.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cond.end:                                         ; preds = %entry
  %fwnode = getelementptr inbounds %struct.device_node, ptr %call, i32 0, i32 3
  %call3 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %fwnode, ptr noundef nonnull %bus_cfg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  call void @of_node_put(ptr noundef nonnull %call) #13
  br i1 %tobool4.not, label %if.end6, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %cond.end
  %bus_type = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 1
  %10 = ptrtoint ptr %bus_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bus_type, align 4
  %12 = ptrtoint ptr %pdata1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %pdata1, align 4
  %bus = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bus, align 4
  %and = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  %vidout_inv_hs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %vidout_inv_hs to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %vidout_inv_hs, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %and11 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  %vidout_inv_vs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %vidout_inv_vs to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %vidout_inv_vs, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %and15 = and i32 %14, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %vidout_inv_de = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %vidout_inv_de to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %vidout_inv_de, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %bus_width = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %bus_cfg, i32 0, i32 2, i32 0, i32 1
  %18 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bus_width, align 4
  %conv = zext i8 %19 to i32
  %vidout_bus_width = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %vidout_bus_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %vidout_bus_width, align 4
  %call.i = call i32 @of_property_count_elems_of_size(ptr noundef %9, ptr noundef nonnull @.str.47, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 0
  br i1 %cmp, label %if.then23, label %do.end

if.then23:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #13
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %reg, align 4, !annotation !504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val, align 4, !annotation !504
  %div207208 = lshr i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %23 = icmp eq i32 %call.i, 1
  br i1 %23, label %if.then23.for.end_crit_edge, label %if.then23.for.body_crit_edge

if.then23.for.body_crit_edge:                     ; preds = %if.then23
  br label %for.body

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then23.for.body_crit_edge
  %i.0206 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.then23.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.0206, 1
  %call28 = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.47, i32 noundef %mul, ptr noundef nonnull %reg) #13
  %add = or i32 %mul, 1
  %call30 = call i32 @of_property_read_u32_index(ptr noundef %9, ptr noundef nonnull @.str.47, i32 noundef %add, ptr noundef nonnull %val) #13
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %25)
  %cmp31 = icmp ult i32 %25, 9
  br i1 %cmp31, label %if.then33, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %conv34 = trunc i32 %27 to i8
  %arrayidx = getelementptr %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 2, i32 %25
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv34, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0206, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %div207208)
  %cmp24 = icmp ult i32 %inc, %div207208
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0206)
  %cmp26 = icmp ult i32 %i.0206, 8
  %or.cond = and i1 %cmp24, %cmp26
  br i1 %or.cond, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then23.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #13
  %audout_layoutauto = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 18
  %29 = ptrtoint ptr %audout_layoutauto to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %audout_layoutauto, align 4
  %audout_format = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 14
  %30 = ptrtoint ptr %audout_format to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %audout_format, align 4
  %call45 = call i32 @of_property_read_string(ptr noundef %9, ptr noundef nonnull @.str.50, ptr noundef nonnull %str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4, i32 6
  %33 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %driver, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 3
  %37 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %addr, align 2
  %conv42 = zext i16 %42 to i32
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %36, i32 noundef %40, i32 noundef %conv42) #17
  br label %cleanup

if.then47:                                        ; preds = %for.end
  %43 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %str, align 4
  %call48 = call i32 @strcmp(ptr noundef %44, ptr noundef nonnull dereferenceable(4) @.str.51) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp eq i32 %call48, 0
  br i1 %cmp49, label %if.then47.if.end76_crit_edge, label %if.else53

if.then47.if.end76_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

if.else53:                                        ; preds = %if.then47
  %call54 = call i32 @strcmp(ptr noundef %44, ptr noundef nonnull dereferenceable(6) @.str.52) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp eq i32 %call54, 0
  br i1 %cmp55, label %if.else53.if.end76_crit_edge, label %do.end62

if.else53.if.end76_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end76

do.end62:                                         ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client, align 4
  %driver66 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4, i32 6
  %47 = ptrtoint ptr %driver66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver66, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %adapter69 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 3
  %51 = ptrtoint ptr %adapter69 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter69, align 8
  %nr.i199 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %nr.i199 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr.i199, align 4
  %addr72 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 1
  %55 = ptrtoint ptr %addr72 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr72, align 2
  %conv73 = zext i16 %56 to i32
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %50, i32 noundef %54, i32 noundef %conv73) #17
  br label %cleanup

if.end76:                                         ; preds = %if.else53.if.end76_crit_edge, %if.then47.if.end76_crit_edge
  %storemerge = phi i32 [ 1, %if.then47.if.end76_crit_edge ], [ 2, %if.else53.if.end76_crit_edge ]
  %57 = ptrtoint ptr %audout_format to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %storemerge, ptr %audout_format, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.56, ptr noundef nonnull %v, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool78.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool78.not, label %if.then79, label %if.end76.if.end95_crit_edge

if.end76.if.end95_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end95

if.then79:                                        ; preds = %if.end76
  %58 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %switch = icmp ult i32 %59, 2
  br i1 %switch, label %sw.epilog, label %do.end82

do.end82:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client, align 4
  %driver86 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 4, i32 6
  %62 = ptrtoint ptr %driver86 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %driver86, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %adapter89 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 3
  %66 = ptrtoint ptr %adapter89 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter89, align 8
  %nr.i200 = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %nr.i200 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr.i200, align 4
  %addr92 = getelementptr inbounds %struct.i2c_client, ptr %61, i32 0, i32 1
  %70 = ptrtoint ptr %addr92 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %addr92, align 2
  %conv93 = zext i16 %71 to i32
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %65, i32 noundef %69, i32 noundef %conv93) #17
  br label %cleanup

sw.epilog:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #15
  %audout_layout = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 17
  %72 = ptrtoint ptr %audout_layout to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %59, ptr %audout_layout, align 4
  br label %if.end95

if.end95:                                         ; preds = %sw.epilog, %if.end76.if.end95_crit_edge
  %call.i.i201 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.60, ptr noundef nonnull %v, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i201)
  %tobool97.not = icmp sgt i32 %call.i.i201, -1
  br i1 %tobool97.not, label %if.then98, label %if.end95.if.end117_crit_edge

if.end95.if.end117_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end117

if.then98:                                        ; preds = %if.end95
  %73 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %v, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %74, label %do.end103 [
    i32 16, label %if.then98.sw.epilog116_crit_edge
    i32 32, label %if.then98.sw.epilog116_crit_edge209
  ]

if.then98.sw.epilog116_crit_edge209:              ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog116

if.then98.sw.epilog116_crit_edge:                 ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog116

do.end103:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #15
  %76 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %client, align 4
  %driver107 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 4, i32 6
  %78 = ptrtoint ptr %driver107 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %driver107, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 4
  %adapter110 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 3
  %82 = ptrtoint ptr %adapter110 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %adapter110, align 8
  %nr.i202 = getelementptr inbounds %struct.i2c_adapter, ptr %83, i32 0, i32 11
  %84 = ptrtoint ptr %nr.i202 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr.i202, align 4
  %addr113 = getelementptr inbounds %struct.i2c_client, ptr %77, i32 0, i32 1
  %86 = ptrtoint ptr %addr113 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %addr113, align 2
  %conv114 = zext i16 %87 to i32
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %81, i32 noundef %85, i32 noundef %conv114) #17
  br label %cleanup

sw.epilog116:                                     ; preds = %if.then98.sw.epilog116_crit_edge, %if.then98.sw.epilog116_crit_edge209
  %audout_width = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 16
  %88 = ptrtoint ptr %audout_width to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %74, ptr %audout_width, align 4
  br label %if.end117

if.end117:                                        ; preds = %sw.epilog116, %if.end95.if.end117_crit_edge
  %call.i.i203 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.64, ptr noundef nonnull %v, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i203)
  %tobool119.not = icmp sgt i32 %call.i.i203, -1
  br i1 %tobool119.not, label %if.then120, label %if.end117.cleanup_crit_edge

if.end117.cleanup_crit_edge:                      ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then120:                                       ; preds = %if.end117
  %89 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %v, align 4
  %91 = zext i32 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %90, label %do.end125 [
    i32 512, label %if.then120.sw.epilog138_crit_edge
    i32 256, label %if.then120.sw.epilog138_crit_edge210
    i32 128, label %if.then120.sw.epilog138_crit_edge211
    i32 64, label %if.then120.sw.epilog138_crit_edge212
    i32 32, label %if.then120.sw.epilog138_crit_edge213
    i32 16, label %if.then120.sw.epilog138_crit_edge214
  ]

if.then120.sw.epilog138_crit_edge214:             ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog138

if.then120.sw.epilog138_crit_edge213:             ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog138

if.then120.sw.epilog138_crit_edge212:             ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog138

if.then120.sw.epilog138_crit_edge211:             ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog138

if.then120.sw.epilog138_crit_edge210:             ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog138

if.then120.sw.epilog138_crit_edge:                ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog138

do.end125:                                        ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %client, align 4
  %driver129 = getelementptr inbounds %struct.i2c_client, ptr %93, i32 0, i32 4, i32 6
  %94 = ptrtoint ptr %driver129 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %driver129, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %adapter132 = getelementptr inbounds %struct.i2c_client, ptr %93, i32 0, i32 3
  %98 = ptrtoint ptr %adapter132 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %adapter132, align 8
  %nr.i204 = getelementptr inbounds %struct.i2c_adapter, ptr %99, i32 0, i32 11
  %100 = ptrtoint ptr %nr.i204 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %nr.i204, align 4
  %addr135 = getelementptr inbounds %struct.i2c_client, ptr %93, i32 0, i32 1
  %102 = ptrtoint ptr %addr135 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %addr135, align 2
  %conv136 = zext i16 %103 to i32
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %97, i32 noundef %101, i32 noundef %conv136) #17
  br label %cleanup

sw.epilog138:                                     ; preds = %if.then120.sw.epilog138_crit_edge, %if.then120.sw.epilog138_crit_edge210, %if.then120.sw.epilog138_crit_edge211, %if.then120.sw.epilog138_crit_edge212, %if.then120.sw.epilog138_crit_edge213, %if.then120.sw.epilog138_crit_edge214
  %audout_mclk_fs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 15
  %104 = ptrtoint ptr %audout_mclk_fs to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %90, ptr %audout_mclk_fs, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog138, %do.end125, %if.end117.cleanup_crit_edge, %do.end103, %do.end82, %do.end62, %do.end, %for.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end125 ], [ -22, %do.end103 ], [ -22, %do.end82 ], [ -22, %do.end62 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end117.cleanup_crit_edge ], [ 0, %sw.epilog138 ], [ 0, %for.end.cleanup_crit_edge ], [ %call3, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bus_cfg) #13
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda1997x_delayed_work_enable_hpd(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr i8, ptr %work, i32 -1180
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name, ptr noundef nonnull @.str.72) #17
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %sd1 = getelementptr i8, ptr %work, i32 -1296
  %call.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 8325) #13
  %call1.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 8324) #13
  %call3.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 3) #13
  %1 = trunc i32 %call.i to i8
  %conv34.i = or i8 %1, 16
  %call35.i = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 8325, i8 noundef zeroext %conv34.i) #13
  %call.i12 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 8325) #13
  %call1.i13 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 8324) #13
  %call3.i14 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 3) #13
  %2 = trunc i32 %call1.i13 to i8
  %3 = and i8 %2, -13
  %conv20.i = or i8 %3, 4
  %call21.i = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 8324, i8 noundef zeroext %conv20.i) #13
  %present = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %present, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda1997x_identify_module(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 4
  %call = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 12304)
  %0 = trunc i32 %call to i8
  %1 = lshr i8 %0, 6
  %conv3 = and i8 %1, 1
  %tmdsb_clk = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 13
  %2 = ptrtoint ptr %tmdsb_clk to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3, ptr %tmdsb_clk, align 2
  %3 = lshr i8 %0, 5
  %conv7 = and i8 %3, 1
  %tmdsb_soc = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 14
  %4 = ptrtoint ptr %tmdsb_soc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv7, ptr %tmdsb_soc, align 1
  %5 = lshr i8 %0, 2
  %conv11 = and i8 %5, 3
  %port_30bit = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 11
  %6 = ptrtoint ptr %port_30bit to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv11, ptr %port_30bit, align 4
  %7 = lshr i8 %0, 1
  %conv15 = and i8 %7, 1
  %output_2p5 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 12
  %8 = ptrtoint ptr %output_2p5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15, ptr %output_2p5, align 1
  %conv2 = lshr i32 %call, 4
  %and18 = and i32 %conv2, 3
  %9 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %and18, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.bb19_crit_edge
    i32 3, label %entry.sw.bb19_crit_edge43
  ]

entry.sw.bb19_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

entry.sw.bb19_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb19

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry.sw.bb19_crit_edge, %entry.sw.bb19_crit_edge43
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 2
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.73) #17
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb19, %entry.sw.epilog_crit_edge
  %type.0 = phi i32 [ 1, %sw.bb19 ], [ %and18, %entry.sw.epilog_crit_edge ]
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %type.0)
  %cmp.not = icmp eq i32 %15, %type.0
  br i1 %cmp.not, label %if.end, label %do.end24

do.end24:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %client25 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 2
  %16 = ptrtoint ptr %client25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client25, align 4
  %dev26 = getelementptr inbounds %struct.i2c_client, ptr %17, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26, ptr noundef nonnull @.str.76) #17
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call27 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 12305)
  %chip_revision = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 10
  %18 = ptrtoint ptr %chip_revision to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call27, ptr %chip_revision, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end24, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end24 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda1997x_setup_format(ptr nocapture noundef %state, i32 noundef %code) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 2
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef nonnull @.str.189, i32 noundef %code) #17
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %13 = zext i32 %code to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %code, label %do.end11 [
    i32 4121, label %do.end5.do.body24_crit_edge
    i32 4106, label %do.end5.do.body24_crit_edge64
    i32 8233, label %do.end5.do.body24_crit_edge65
    i32 8229, label %do.end5.do.body24_crit_edge66
    i32 8224, label %do.end5.sw.bb6_crit_edge
    i32 8218, label %do.end5.sw.bb6_crit_edge67
    i32 8207, label %do.end5.sw.bb6_crit_edge68
    i32 8220, label %do.end5.sw.bb8_crit_edge
    i32 8216, label %do.end5.sw.bb8_crit_edge69
    i32 8198, label %do.end5.sw.bb8_crit_edge70
  ]

do.end5.sw.bb8_crit_edge70:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb8

do.end5.sw.bb8_crit_edge69:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb8

do.end5.sw.bb8_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb8

do.end5.sw.bb6_crit_edge68:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6

do.end5.sw.bb6_crit_edge67:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6

do.end5.sw.bb6_crit_edge:                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb6

do.end5.do.body24_crit_edge66:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24

do.end5.do.body24_crit_edge65:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24

do.end5.do.body24_crit_edge64:                    ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24

do.end5.do.body24_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body24

sw.bb6:                                           ; preds = %do.end5.sw.bb6_crit_edge, %do.end5.sw.bb6_crit_edge67, %do.end5.sw.bb6_crit_edge68
  br label %do.body24

sw.bb8:                                           ; preds = %do.end5.sw.bb8_crit_edge, %do.end5.sw.bb8_crit_edge69, %do.end5.sw.bb8_crit_edge70
  br label %do.body24

do.end11:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #15
  %client13 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 2
  %14 = ptrtoint ptr %client13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client13, align 4
  %driver15 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %driver15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver15, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %adapter18 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %adapter18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter18, align 8
  %nr.i62 = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %nr.i62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr.i62, align 4
  %addr21 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %addr21 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr21, align 2
  %conv22 = zext i16 %25 to i32
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef %19, i32 noundef %23, i32 noundef %conv22, i32 noundef %code) #17
  br label %return

do.body24:                                        ; preds = %sw.bb8, %sw.bb6, %do.end5.do.body24_crit_edge, %do.end5.do.body24_crit_edge64, %do.end5.do.body24_crit_edge65, %do.end5.do.body24_crit_edge66
  %.sink = phi i8 [ 1, %sw.bb6 ], [ 2, %sw.bb8 ], [ 0, %do.end5.do.body24_crit_edge ], [ 0, %do.end5.do.body24_crit_edge64 ], [ 0, %do.end5.do.body24_crit_edge65 ], [ 0, %do.end5.do.body24_crit_edge66 ]
  %vid_fmt = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 27
  %26 = ptrtoint ptr %vid_fmt to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink, ptr %vid_fmt, align 4
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp25 = icmp sgt i32 %27, 0
  br i1 %cmp25, label %do.end29, label %do.body24.do.end44_crit_edge

do.body24.do.end44_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end44

do.end29:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #15
  %client31 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 2
  %28 = ptrtoint ptr %client31 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client31, align 4
  %driver33 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %driver33 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver33, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %adapter36 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 3
  %34 = ptrtoint ptr %adapter36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter36, align 8
  %nr.i63 = getelementptr inbounds %struct.i2c_adapter, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %nr.i63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr.i63, align 4
  %addr39 = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %38 = ptrtoint ptr %addr39 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr39, align 2
  %conv40 = zext i16 %39 to i32
  %vid_fmt41 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 27
  %40 = ptrtoint ptr %vid_fmt41 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %vid_fmt41, align 4
  %idxprom = zext i8 %41 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @vidfmt_names, i32 0, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.194, ptr noundef %33, i32 noundef %37, i32 noundef %conv40, ptr noundef nonnull @.str.189, i32 noundef %code, ptr noundef %43) #17
  br label %do.end44

do.end44:                                         ; preds = %do.end29, %do.body24.do.end44_crit_edge
  %mbus_code = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 26
  %44 = ptrtoint ptr %mbus_code to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %code, ptr %mbus_code, align 4
  br label %return

return:                                           ; preds = %do.end44, %do.end11
  %retval.0 = phi i32 [ -22, %do.end11 ], [ 0, %do.end44 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %page_lock = getelementptr i8, ptr %sd, i32 356
  tail call void @mutex_lock_nested(ptr noundef %page_lock, i32 noundef 0) #13
  %0 = lshr i16 %reg, 8
  %conv1 = trunc i16 %0 to i8
  %page1.i = getelementptr i8, ptr %sd, i32 448
  %1 = ptrtoint ptr %page1.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %page1.i, align 4
  %conv2.i = zext i16 %0 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %conv1)
  %cmp.not.i = icmp eq i8 %2, %conv1
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %entry
  %client.i = getelementptr i8, ptr %sd, i32 -8
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -1, i8 noundef zeroext %conv1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %tda1997x_setpage.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %page1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %page1.i, align 4
  br label %if.end

tda1997x_setpage.exit:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i, align 2
  %conv12.i = zext i16 %17 to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %11, i32 noundef %15, i32 noundef %conv12.i, i32 noundef 255, i32 noundef %conv2.i) #17
  br label %out

if.end:                                           ; preds = %if.end.i, %entry.if.end_crit_edge
  %client = getelementptr i8, ptr %sd, i32 -8
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %conv4 = trunc i16 %reg to i8
  %call5 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext %conv4, i8 noundef zeroext %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %20 = and i16 %reg, 255
  %and = zext i16 %20 to i32
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr, align 2
  %conv12 = zext i16 %32 to i32
  %conv15 = zext i8 %val to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %26, i32 noundef %30, i32 noundef %conv12, i32 noundef %and, i32 noundef %conv15) #17
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %tda1997x_setpage.exit
  %ret.0 = phi i32 [ -1, %do.end ], [ %call5, %if.end.out_crit_edge ], [ -1, %tda1997x_setpage.exit ]
  tail call void @mutex_unlock(ptr noundef %page_lock) #13
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext %reg) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %page_lock = getelementptr i8, ptr %sd, i32 356
  tail call void @mutex_lock_nested(ptr noundef %page_lock, i32 noundef 0) #13
  %0 = lshr i16 %reg, 8
  %conv1 = trunc i16 %0 to i8
  %page1.i = getelementptr i8, ptr %sd, i32 448
  %1 = ptrtoint ptr %page1.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %page1.i, align 4
  %conv2.i = zext i16 %0 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %conv1)
  %cmp.not.i = icmp eq i8 %2, %conv1
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then.i:                                        ; preds = %entry
  %client.i = getelementptr i8, ptr %sd, i32 -8
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  %call4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -1, i8 noundef zeroext %conv1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %tda1997x_setpage.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %page1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %page1.i, align 4
  br label %if.end

tda1997x_setpage.exit:                            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr.i, align 2
  %conv12.i = zext i16 %17 to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %11, i32 noundef %15, i32 noundef %conv12.i, i32 noundef 255, i32 noundef %conv2.i) #17
  br label %out

if.end:                                           ; preds = %if.end.i, %entry.if.end_crit_edge
  %client = getelementptr i8, ptr %sd, i32 -8
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %conv4 = trunc i16 %reg to i8
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext %conv4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %20 = and i16 %reg, 255
  %and = zext i16 %20 to i32
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr, align 2
  %conv12 = zext i16 %32 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef %26, i32 noundef %30, i32 noundef %conv12, i32 noundef %and) #17
  br label %out

out:                                              ; preds = %do.end, %if.end.out_crit_edge, %tda1997x_setpage.exit
  %val.0 = phi i32 [ -1, %do.end ], [ %call5, %if.end.out_crit_edge ], [ -1, %tda1997x_setpage.exit ]
  tail call void @mutex_unlock(ptr noundef %page_lock) #13
  ret i32 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda1997x_core_init(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -60
  %call2 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 8325, i8 noundef zeroext 8)
  %chip_revision = getelementptr i8, ptr %sd, i32 452
  %0 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 5096, i8 noundef zeroext 36)
  %call4 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 4869, i8 noundef zeroext 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call5 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 5091, i8 noundef zeroext 6)
  %call6 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 5092, i8 noundef zeroext 6)
  %call7 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 4, i8 noundef zeroext 67)
  %client_cec.i = getelementptr i8, ptr %sd, i32 -4
  %2 = ptrtoint ptr %client_cec.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client_cec.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -12, i8 noundef zeroext 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.tda1997x_cec_write.exit_crit_edge

if.end.tda1997x_cec_write.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %tda1997x_cec_write.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %client.i = getelementptr i8, ptr %sd, i32 -8
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %15 to i32
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %9, i32 noundef %13, i32 noundef %conv.i, i32 noundef 244, i32 noundef 4) #17
  br label %tda1997x_cec_write.exit

tda1997x_cec_write.exit:                          ; preds = %do.end.i, %if.end.tda1997x_cec_write.exit_crit_edge
  %16 = ptrtoint ptr %client_cec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client_cec.i, align 4
  %call1.i2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -11, i8 noundef zeroext 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %cmp.i3 = icmp slt i32 %call1.i2, 0
  br i1 %cmp.i3, label %do.end.i11, label %tda1997x_cec_write.exit.tda1997x_cec_write.exit12_crit_edge

tda1997x_cec_write.exit.tda1997x_cec_write.exit12_crit_edge: ; preds = %tda1997x_cec_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %tda1997x_cec_write.exit12

do.end.i11:                                       ; preds = %tda1997x_cec_write.exit
  call void @__sanitizer_cov_trace_pc() #15
  %client.i4 = getelementptr i8, ptr %sd, i32 -8
  %18 = ptrtoint ptr %client.i4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i4, align 4
  %driver.i5 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4, i32 6
  %20 = ptrtoint ptr %driver.i5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver.i5, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %adapter.i6 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %adapter.i6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i6, align 8
  %nr.i.i7 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %nr.i.i7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr.i.i7, align 4
  %addr.i8 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 1
  %28 = ptrtoint ptr %addr.i8 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr.i8, align 2
  %conv.i9 = zext i16 %29 to i32
  %call7.i10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %23, i32 noundef %27, i32 noundef %conv.i9, i32 noundef 245, i32 noundef 3) #17
  br label %tda1997x_cec_write.exit12

tda1997x_cec_write.exit12:                        ; preds = %do.end.i11, %tda1997x_cec_write.exit.tda1997x_cec_write.exit12_crit_edge
  %30 = ptrtoint ptr %client_cec.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client_cec.i, align 4
  %call1.i14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext -8, i8 noundef zeroext -96) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i14)
  %cmp.i15 = icmp slt i32 %call1.i14, 0
  br i1 %cmp.i15, label %do.end.i23, label %tda1997x_cec_write.exit12.tda1997x_cec_write.exit24_crit_edge

tda1997x_cec_write.exit12.tda1997x_cec_write.exit24_crit_edge: ; preds = %tda1997x_cec_write.exit12
  call void @__sanitizer_cov_trace_pc() #15
  br label %tda1997x_cec_write.exit24

do.end.i23:                                       ; preds = %tda1997x_cec_write.exit12
  call void @__sanitizer_cov_trace_pc() #15
  %client.i16 = getelementptr i8, ptr %sd, i32 -8
  %32 = ptrtoint ptr %client.i16 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client.i16, align 4
  %driver.i17 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %driver.i17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver.i17, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %adapter.i18 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %38 = ptrtoint ptr %adapter.i18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter.i18, align 8
  %nr.i.i19 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nr.i.i19 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i.i19, align 4
  %addr.i20 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 1
  %42 = ptrtoint ptr %addr.i20 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr.i20, align 2
  %conv.i21 = zext i16 %43 to i32
  %call7.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %37, i32 noundef %41, i32 noundef %conv.i21, i32 noundef 248, i32 noundef 160) #17
  br label %tda1997x_cec_write.exit24

tda1997x_cec_write.exit24:                        ; preds = %do.end.i23, %tda1997x_cec_write.exit12.tda1997x_cec_write.exit24_crit_edge
  %call11 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 5071, i8 noundef zeroext 84)
  %44 = ptrtoint ptr %client_cec.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client_cec.i, align 4
  %call1.i26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %45, i8 noundef zeroext -1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %cmp.i27 = icmp slt i32 %call1.i26, 0
  br i1 %cmp.i27, label %do.end.i34, label %tda1997x_cec_write.exit24.tda1997x_cec_read.exit_crit_edge

tda1997x_cec_write.exit24.tda1997x_cec_read.exit_crit_edge: ; preds = %tda1997x_cec_write.exit24
  call void @__sanitizer_cov_trace_pc() #15
  br label %tda1997x_cec_read.exit

do.end.i34:                                       ; preds = %tda1997x_cec_write.exit24
  call void @__sanitizer_cov_trace_pc() #15
  %client.i28 = getelementptr i8, ptr %sd, i32 -8
  %46 = ptrtoint ptr %client.i28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client.i28, align 4
  %driver.i29 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 4, i32 6
  %48 = ptrtoint ptr %driver.i29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver.i29, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %adapter.i30 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 3
  %52 = ptrtoint ptr %adapter.i30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i30, align 8
  %nr.i.i31 = getelementptr inbounds %struct.i2c_adapter, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %nr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr.i.i31, align 4
  %addr.i32 = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 1
  %56 = ptrtoint ptr %addr.i32 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %addr.i32, align 2
  %conv.i33 = zext i16 %57 to i32
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, ptr noundef %51, i32 noundef %55, i32 noundef %conv.i33, i32 noundef 255) #17
  br label %tda1997x_cec_read.exit

tda1997x_cec_read.exit:                           ; preds = %do.end.i34, %tda1997x_cec_write.exit24.tda1997x_cec_read.exit_crit_edge
  %val.0.i = phi i32 [ -1, %do.end.i34 ], [ %call1.i26, %tda1997x_cec_write.exit24.tda1997x_cec_read.exit_crit_edge ]
  %58 = trunc i32 %val.0.i to i8
  %conv14 = or i8 %58, 32
  %59 = ptrtoint ptr %client_cec.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client_cec.i, align 4
  %call1.i36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %60, i8 noundef zeroext -1, i8 noundef zeroext %conv14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %cmp.i37 = icmp slt i32 %call1.i36, 0
  br i1 %cmp.i37, label %do.end.i45, label %tda1997x_cec_read.exit.while.body.preheader_crit_edge

tda1997x_cec_read.exit.while.body.preheader_crit_edge: ; preds = %tda1997x_cec_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.preheader

do.end.i45:                                       ; preds = %tda1997x_cec_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %client.i38 = getelementptr i8, ptr %sd, i32 -8
  %61 = ptrtoint ptr %client.i38 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %client.i38, align 4
  %driver.i39 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 4, i32 6
  %63 = ptrtoint ptr %driver.i39 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %driver.i39, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %adapter.i40 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 3
  %67 = ptrtoint ptr %adapter.i40 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter.i40, align 8
  %nr.i.i41 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %nr.i.i41 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr.i.i41, align 4
  %addr.i42 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 1
  %71 = ptrtoint ptr %addr.i42 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %addr.i42, align 2
  %conv.i43 = zext i16 %72 to i32
  %conv6.i = zext i8 %conv14 to i32
  %call7.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196, ptr noundef %66, i32 noundef %70, i32 noundef %conv.i43, i32 noundef 255, i32 noundef %conv6.i) #17
  br label %while.body.preheader

while.body.preheader:                             ; preds = %do.end.i45, %tda1997x_cec_read.exit.while.body.preheader_crit_edge
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.059 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 50, %while.body.preheader ]
  %dec = add nsw i32 %__ms.059, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #13
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.end:                                        ; preds = %while.body
  %call16 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 0)
  %call18 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 12304)
  %call20 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 23, i8 noundef zeroext 117)
  %call21 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 24, i8 noundef zeroext -88)
  %call22 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 26, i8 noundef zeroext 68)
  %call23 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 28, i8 noundef zeroext 56)
  %call24 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 29, i8 noundef zeroext 57)
  %call25 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 30, i8 noundef zeroext 2)
  %call26 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 25, i8 noundef zeroext 1)
  %call27 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 31, i8 noundef zeroext 0)
  %call28 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 27, i8 noundef zeroext 0)
  %call29 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 14, i8 noundef zeroext -1)
  %call30 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 15, i8 noundef zeroext -1)
  %call31 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 16, i8 noundef zeroext -1)
  %call32 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 17, i8 noundef zeroext -1)
  %call33 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 18, i8 noundef zeroext -1)
  %call34 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 19, i8 noundef zeroext -1)
  %call35 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 20, i8 noundef zeroext -1)
  %call36 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 21, i8 noundef zeroext -1)
  %call37 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 22, i8 noundef zeroext -1)
  %74 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp39 = icmp eq i32 %75, 0
  br i1 %cmp39, label %if.then41, label %while.end.if.end43_crit_edge

while.end.if.end43_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end43

if.then41:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  %call42 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 4869, i8 noundef zeroext 8)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %while.end.if.end43_crit_edge
  %call.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 67, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i47 = icmp slt i32 %call.i, 0
  br i1 %cmp.i47, label %if.end43.io_write24.exit_crit_edge, label %if.end.i

if.end43.io_write24.exit_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write24.exit

if.end.i:                                         ; preds = %if.end43
  %call7.i48 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 68, i8 noundef zeroext 87) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i48)
  %cmp8.i = icmp slt i32 %call7.i48, 0
  br i1 %cmp8.i, label %if.end.i.io_write24.exit_crit_edge, label %if.end11.i

if.end.i.io_write24.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write24.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call17.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 69, i8 noundef zeroext -28) #13
  br label %io_write24.exit

io_write24.exit:                                  ; preds = %if.end11.i, %if.end.i.io_write24.exit_crit_edge, %if.end43.io_write24.exit_crit_edge
  %call.i49 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 70, i8 noundef zeroext 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %cmp.i50 = icmp slt i32 %call.i49, 0
  br i1 %cmp.i50, label %io_write24.exit.io_write24.exit56_crit_edge, label %if.end.i53

io_write24.exit.io_write24.exit56_crit_edge:      ; preds = %io_write24.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write24.exit56

if.end.i53:                                       ; preds = %io_write24.exit
  %call7.i51 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 71, i8 noundef zeroext -107) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i51)
  %cmp8.i52 = icmp slt i32 %call7.i51, 0
  br i1 %cmp8.i52, label %if.end.i53.io_write24.exit56_crit_edge, label %if.end11.i55

if.end.i53.io_write24.exit56_crit_edge:           ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write24.exit56

if.end11.i55:                                     ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #15
  %call17.i54 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 72, i8 noundef zeroext -8) #13
  br label %io_write24.exit56

io_write24.exit56:                                ; preds = %if.end11.i55, %if.end.i53.io_write24.exit56_crit_edge, %io_write24.exit.io_write24.exit56_crit_edge
  %76 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp47 = icmp eq i32 %77, 0
  br i1 %cmp47, label %if.then49, label %io_write24.exit56.if.end51_crit_edge

io_write24.exit56.if.end51_crit_edge:             ; preds = %io_write24.exit56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

if.then49:                                        ; preds = %io_write24.exit56
  call void @__sanitizer_cov_trace_pc() #15
  %call50 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 4624, i8 noundef zeroext -126)
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %io_write24.exit56.if.end51_crit_edge
  %call52 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 4864, i8 noundef zeroext 49)
  %call53 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 2, i8 noundef zeroext 0)
  %call54 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 118, i8 noundef zeroext -1)
  %call55 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 119, i8 noundef zeroext 3)
  %78 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp57 = icmp eq i32 %79, 0
  br i1 %cmp57, label %if.then59, label %if.end51.if.end60_crit_edge

if.end51.if.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60

if.then59:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tda1997x_reset_n1(ptr noundef %add.ptr.i)
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.end51.if.end60_crit_edge
  tail call fastcc void @tda1997x_hdmi_info_reset(ptr noundef %sd, i8 noundef zeroext -128, i1 noundef zeroext true)
  %call.i57 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 8325) #13
  %call1.i58 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 8324) #13
  %call3.i = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 3) #13
  %80 = trunc i32 %call1.i58 to i8
  %conv9.i = and i8 %80, -13
  %81 = trunc i32 %call3.i to i8
  %conv12.i = and i8 %81, -124
  %call13.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 8324, i8 noundef zeroext %conv9.i) #13
  %call14.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 3, i8 noundef zeroext %conv12.i) #13
  %call63 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 99, i8 noundef zeroext -127)
  %call67 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 4983, i8 noundef zeroext 0)
  tail call fastcc void @tda1997x_hdmi_info_reset(ptr noundef %sd, i8 noundef zeroext 0, i1 noundef zeroext true)
  %call69 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 128)
  %82 = trunc i32 %call69 to i8
  %conv73 = or i8 %82, 1
  %call74 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 128, i8 noundef zeroext %conv73)
  tail call fastcc void @tda1997x_configure_vidout(ptr noundef %add.ptr.i)
  %client = getelementptr i8, ptr %sd, i32 -8
  br label %do.body

do.body:                                          ; preds = %do.end90.do.body_crit_edge, %if.end60
  %i.060 = phi i32 [ 0, %if.end60 ], [ %inc, %do.end90.do.body_crit_edge ]
  %83 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp78 = icmp sgt i32 %83, 0
  br i1 %cmp78, label %do.end, label %do.body.do.end90_crit_edge

do.body.do.end90_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end90

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 4, i32 6
  %86 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %driver, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 3
  %90 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %91, i32 0, i32 11
  %92 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %85, i32 0, i32 1
  %94 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %addr, align 2
  %conv85 = zext i16 %95 to i32
  %arrayidx = getelementptr %struct.tda1997x_state, ptr %add.ptr.i, i32 0, i32 1, i32 2, i32 %i.060
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx, align 1
  %conv86 = zext i8 %97 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, ptr noundef %89, i32 noundef %93, i32 noundef %conv85, i32 noundef %i.060, i32 noundef %conv86) #17
  br label %do.end90

do.end90:                                         ; preds = %do.end, %do.body.do.end90_crit_edge
  %98 = trunc i32 %i.060 to i16
  %conv91 = add i16 %98, 239
  %arrayidx93 = getelementptr %struct.tda1997x_state, ptr %add.ptr.i, i32 0, i32 1, i32 2, i32 %i.060
  %99 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx93, align 1
  %call94 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext %conv91, i8 noundef zeroext %100)
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %do.end90.do.body_crit_edge

do.end90.do.body_crit_edge:                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %do.end90
  tail call fastcc void @tda1997x_configure_audout(ptr noundef %sd, i8 noundef zeroext 0)
  %audout_mclk_fs = getelementptr i8, ptr %sd, i32 -24
  %101 = ptrtoint ptr %audout_mclk_fs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %audout_mclk_fs, align 4
  %103 = zext i32 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %102, label %sw.default [
    i32 512, label %for.end.sw.epilog_crit_edge
    i32 256, label %sw.bb96
    i32 128, label %sw.bb97
    i32 64, label %sw.bb98
    i32 32, label %sw.bb99
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb96:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb97:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb98:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb99:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb99, %sw.bb98, %sw.bb97, %sw.bb96, %for.end.sw.epilog_crit_edge
  %reg.0 = phi i8 [ 0, %sw.default ], [ 1, %sw.bb99 ], [ 2, %sw.bb98 ], [ 3, %sw.bb97 ], [ 4, %sw.bb96 ], [ 5, %for.end.sw.epilog_crit_edge ]
  %call100 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 5137, i8 noundef zeroext %reg.0)
  tail call fastcc void @tda1997x_hdmi_info_reset(ptr noundef %sd, i8 noundef zeroext 4, i1 noundef zeroext false)
  tail call fastcc void @tda1997x_hdmi_info_reset(ptr noundef %sd, i8 noundef zeroext 2, i1 noundef zeroext false)
  tail call fastcc void @tda1997x_hdmi_info_reset(ptr noundef %sd, i8 noundef zeroext 1, i1 noundef zeroext false)
  tail call fastcc void @tda1997x_hdmi_info_reset(ptr noundef %sd, i8 noundef zeroext 8, i1 noundef zeroext false)
  %call105 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 256)
  %conv106 = trunc i32 %call105 to i8
  %hdmi_status = getelementptr i8, ptr %sd, i32 460
  %104 = ptrtoint ptr %hdmi_status to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv106, ptr %hdmi_status, align 4
  %call107 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 8321, i8 noundef zeroext 3)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_isr_thread(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 4
  %lock = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %mptrw_in_progress.i = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 16
  %hdmi_status.i = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 15
  %client.i = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 2
  %detect_tx_5v_ctrl.i = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 29
  %activity_status.i = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 17
  %chip_revision.i = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 10
  %audio_samplerate.i = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 32
  %audio_type.i = getelementptr inbounds %struct.tda1997x_state, ptr %d, i32 0, i32 35
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %call = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 14)
  %conv = trunc i32 %call to i8
  %conv2 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2)
  %cmp = icmp eq i32 %conv2, 0
  br i1 %cmp, label %do.body.do.end_crit_edge, label %if.end

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.end:                                           ; preds = %do.body
  %and = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 15) #13
  %conv.i = trunc i32 %call.i to i8
  %call2.i = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 15, i8 noundef zeroext %conv.i) #13
  %and.i = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then5.if.end7.i_crit_edge, label %if.then.i

if.then5.if.end7.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then.i:                                        ; preds = %if.then5
  %0 = ptrtoint ptr %mptrw_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mptrw_in_progress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool4.not.i = icmp eq i8 %1, 0
  br i1 %tobool4.not.i, label %if.then.i.if.end7.i_crit_edge, label %if.then5.i

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %mptrw_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mptrw_in_progress.i, align 1
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.then.i.if.end7.i_crit_edge, %if.then5.if.end7.i_crit_edge
  %and9.i = and i32 %call.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end21.i_crit_edge, label %if.then11.i

if.end7.i.if.end21.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 12) #13
  %3 = trunc i32 %call12.i to i8
  %conv15.i = or i8 %3, 48
  %call16.i = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 12, i8 noundef zeroext %conv15.i) #13
  %conv19.i = and i8 %3, -49
  %call20.i = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 12, i8 noundef zeroext %conv19.i) #13
  %4 = ptrtoint ptr %hdmi_status.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hdmi_status.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end21.i_crit_edge
  %call22.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 33) #13
  %and25.i = and i32 %call22.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %and25.i)
  %cmp.not.i = icmp ne i32 %and25.i, 27
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %brmerge.i = select i1 %cmp.not.i, i1 true, i1 %tobool.not.not.i
  %source.0.i = select i1 %brmerge.i, i32 %and9.i, i32 %call.i
  %and36.i = and i32 %source.0.i, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end21.i.if.end29_crit_edge, label %if.then38.i

if.end21.i.if.end29_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then38.i:                                      ; preds = %if.end21.i
  %call39.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 33) #13
  %and42.i = and i32 %call39.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %and42.i)
  %cmp43.not.i = icmp eq i32 %and42.i, 27
  br i1 %cmp43.not.i, label %if.end51.i, label %do.end.i

do.end.i:                                         ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr.i, align 2
  %conv49.i = zext i16 %16 to i32
  %call50.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef %10, i32 noundef %14, i32 noundef %conv49.i) #17
  br label %if.end29

if.end51.i:                                       ; preds = %if.then38.i
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool52.not.i = icmp eq i32 %17, 0
  br i1 %tobool52.not.i, label %if.end51.i.if.end55.i_crit_edge, label %if.then53.i

if.end51.i.if.end55.i_crit_edge:                  ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

if.then53.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #15
  %call54.i = tail call fastcc i32 @tda1997x_detect_std(ptr noundef %d, ptr noundef null) #13
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then53.i, %if.end51.i.if.end55.i_crit_edge
  tail call void @v4l2_subdev_notify_event(ptr noundef %sd1, ptr noundef nonnull @tda1997x_ev_fmt) #13
  br label %if.end29

if.else:                                          ; preds = %if.end
  %and7 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.else10, label %if.then9

if.then9:                                         ; preds = %if.else
  %call.i48 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 16) #13
  %conv.i49 = trunc i32 %call.i48 to i8
  %call2.i50 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 16, i8 noundef zeroext %conv.i49) #13
  %and.i51 = and i32 %call.i48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool.not.i52, label %if.then9.if.end7.i59_crit_edge, label %if.then.i55

if.then9.if.end7.i59_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i59

if.then.i55:                                      ; preds = %if.then9
  %18 = ptrtoint ptr %mptrw_in_progress.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mptrw_in_progress.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool4.not.i54 = icmp eq i8 %19, 0
  br i1 %tobool4.not.i54, label %if.then.i55.if.end7.i59_crit_edge, label %if.then5.i56

if.then.i55.if.end7.i59_crit_edge:                ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7.i59

if.then5.i56:                                     ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %mptrw_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %mptrw_in_progress.i, align 1
  br label %if.end7.i59

if.end7.i59:                                      ; preds = %if.then5.i56, %if.then.i55.if.end7.i59_crit_edge, %if.then9.if.end7.i59_crit_edge
  %and9.i57 = and i32 %call.i48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i57)
  %tobool10.not.i58 = icmp eq i32 %and9.i57, 0
  br i1 %tobool10.not.i58, label %if.end7.i59.if.end29_crit_edge, label %if.then11.i60

if.end7.i59.if.end29_crit_edge:                   ; preds = %if.end7.i59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then11.i60:                                    ; preds = %if.end7.i59
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %detect_tx_5v_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %detect_tx_5v_ctrl.i, align 4
  %call.i.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 32) #13
  %and.i.i = lshr i32 %call.i.i, 2
  %and.i.lobit.i = and i32 %and.i.i, 1
  %handler.i.i.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %lock.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lock.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %26, i32 noundef 0) #13
  %call.i1.i = tail call i32 @__v4l2_ctrl_s_ctrl(ptr noundef %22, i32 noundef %and.i.lobit.i) #13
  %27 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %handler.i.i.i, align 8
  %lock.i2.i.i = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %lock.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lock.i2.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %30) #13
  br label %if.end29

if.else10:                                        ; preds = %if.else
  %and12 = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.else10
  %call.i62 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 17) #13
  %conv.i63 = trunc i32 %call.i62 to i8
  %call2.i64 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 17, i8 noundef zeroext %conv.i63) #13
  %call.i.i65 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 73) #13
  %31 = and i32 %call.i.i65, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %32 = icmp eq i32 %31, 4
  %33 = lshr i32 %call.i.i65, 2
  %.op.i.i = and i32 %33, 1
  %conv11.i.i = select i1 %32, i32 0, i32 %.op.i.i
  %call12.i.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 78) #13
  %34 = and i32 %call12.i.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %35 = icmp eq i32 %34, 4
  %36 = lshr i32 %call12.i.i, 1
  %.op60.i.i = and i32 %36, 2
  %37 = select i1 %35, i32 0, i32 %.op60.i.i
  %or30.i.i = or i32 %37, %conv11.i.i
  %call32.i.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 33) #13
  %and35.i.i = and i32 %call32.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %and35.i.i)
  %cmp.i.i = icmp eq i32 %and35.i.i, 27
  %or39.i.i = or i32 %or30.i.i, 16
  %status.0.in.i.i = select i1 %cmp.i.i, i32 %or39.i.i, i32 %or30.i.i
  %conv414.i = and i32 %call.i62, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv414.i)
  %cmp.not15.i = icmp eq i32 %conv414.i, 0
  br i1 %cmp.not15.i, label %if.then14.while.end.i_crit_edge, label %if.then14.while.body.i_crit_edge

if.then14.while.body.i_crit_edge:                 ; preds = %if.then14
  br label %while.body.i

if.then14.while.end.i_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then14.while.body.i_crit_edge
  %source.016.i = phi i8 [ %conv12.i, %while.body.i.while.body.i_crit_edge ], [ %conv.i63, %if.then14.while.body.i_crit_edge ]
  %call.i1.i66 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 73) #13
  %call12.i4.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 78) #13
  %call32.i7.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 33) #13
  %call7.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 17) #13
  %conv8.i = trunc i32 %call7.i to i8
  %call9.i = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 17, i8 noundef zeroext %conv8.i) #13
  %conv12.i = or i8 %source.016.i, %conv8.i
  %conv4.i = and i32 %call7.i, 255
  %cmp.not.i67 = icmp eq i32 %conv4.i, 0
  br i1 %cmp.not.i67, label %while.cond.while.end_crit_edge.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.cond.while.end_crit_edge.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %38 = and i32 %call.i1.i66, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %39 = icmp eq i32 %38, 4
  %40 = lshr i32 %call.i1.i66, 2
  %.op.i2.le.i = and i32 %40, 1
  %conv11.i3.le.i = select i1 %39, i32 0, i32 %.op.i2.le.i
  %41 = and i32 %call12.i4.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %42 = icmp eq i32 %41, 4
  %43 = lshr i32 %call12.i4.i, 1
  %.op60.i5.le.i = and i32 %43, 2
  %44 = select i1 %42, i32 0, i32 %.op60.i5.le.i
  %or30.i6.le.i = or i32 %44, %conv11.i3.le.i
  %and35.i8.le.i = and i32 %call32.i7.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %and35.i8.le.i)
  %cmp.i9.le.i = icmp eq i32 %and35.i8.le.i, 27
  %or39.i10.le.i = or i32 %or30.i6.le.i, 16
  %status.0.in.i11.le.i = select i1 %cmp.i9.le.i, i32 %or39.i10.le.i, i32 %or30.i6.le.i
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.while.end_crit_edge.i, %if.then14.while.end.i_crit_edge
  %source.0.lcssa.i = phi i8 [ %conv12.i, %while.cond.while.end_crit_edge.i ], [ %conv.i63, %if.then14.while.end.i_crit_edge ]
  %irq_status.0.in.lcssa.i = phi i32 [ %status.0.in.i11.le.i, %while.cond.while.end_crit_edge.i ], [ %status.0.in.i.i, %if.then14.while.end.i_crit_edge ]
  %conv13.i = zext i8 %source.0.lcssa.i to i32
  %and.i68 = and i32 %conv13.i, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool.not.i69, label %while.end.i.if.end29_crit_edge, label %if.then.i70

while.end.i.if.end29_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then.i70:                                      ; preds = %while.end.i
  %and15.i = lshr i32 %conv13.i, 2
  %and15.lobit.i = and i32 %and15.i, 1
  %45 = xor i32 %and15.lobit.i, 1
  %shl.i = shl nuw i32 1, %45
  %and20.i = and i32 %shl.i, %irq_status.0.in.lcssa.i
  %46 = ptrtoint ptr %activity_status.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %activity_status.i, align 2
  %conv21.i = zext i8 %47 to i32
  %and23.i = and i32 %shl.i, %conv21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and20.i, i32 %and23.i)
  %cmp24.not.i = icmp eq i32 %and20.i, %and23.i
  br i1 %cmp24.not.i, label %if.then.i70.if.end29_crit_edge, label %if.then26.i

if.then.i70.if.end29_crit_edge:                   ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then26.i:                                      ; preds = %if.then.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %cmp30.i = icmp eq i32 %and20.i, 0
  %48 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client.i, align 4
  %driver.i72 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %driver.i72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver.i72, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %adapter.i73 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 3
  %54 = ptrtoint ptr %adapter.i73 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter.i73, align 8
  %nr.i.i74 = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %nr.i.i74 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr.i.i74, align 4
  %addr.i75 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 1
  %58 = ptrtoint ptr %addr.i75 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %addr.i75, align 2
  %conv36.i = zext i16 %59 to i32
  %add.i = sub nuw nsw i32 66, %and15.lobit.i
  br i1 %cmp30.i, label %do.end.i76, label %do.end52.i

do.end.i76:                                       ; preds = %if.then26.i
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef %53, i32 noundef %57, i32 noundef %conv36.i, i32 noundef %add.i) #17
  %call38.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 123) #13
  %60 = trunc i32 %call38.i to i8
  %conv45.i = and i8 %60, -64
  %call46.i = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 123, i8 noundef zeroext %conv45.i) #13
  %61 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %chip_revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp47.i = icmp eq i32 %62, 0
  br i1 %cmp47.i, label %if.then49.i, label %do.end.i76.if.end.i_crit_edge

do.end.i76.if.end.i_crit_edge:                    ; preds = %do.end.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then49.i:                                      ; preds = %do.end.i76
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tda1997x_reset_n1(ptr noundef %d) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then49.i, %do.end.i76.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.tda1997x_state, ptr %d, i32 0, i32 18, i32 %45
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %arrayidx.i, align 1
  tail call void @v4l2_subdev_notify_event(ptr noundef %sd1, ptr noundef nonnull @tda1997x_ev_fmt) #13
  br label %if.end68.i

do.end52.i:                                       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #15
  %call65.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef %53, i32 noundef %57, i32 noundef %conv36.i, i32 noundef %add.i) #17
  %arrayidx67.i = getelementptr %struct.tda1997x_state, ptr %d, i32 0, i32 18, i32 %45
  %64 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %arrayidx67.i, align 1
  br label %if.end68.i

if.end68.i:                                       ; preds = %do.end52.i, %if.end.i
  %conv72.i = trunc i32 %and20.i to i8
  %65 = ptrtoint ptr %activity_status.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv72.i, ptr %activity_status.i, align 2
  br label %if.end29

if.else15:                                        ; preds = %if.else10
  %and17 = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.else15
  %call.i78 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 19) #13
  %conv.i79 = trunc i32 %call.i78 to i8
  %call2.i80 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 19, i8 noundef zeroext %conv.i79) #13
  %and.i81 = and i32 %call.i78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %tobool.not.i82 = icmp eq i32 %and.i81, 0
  br i1 %tobool.not.i82, label %if.then19.if.end.i86_crit_edge, label %if.then.i83

if.then19.if.end.i86_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i86

if.then.i83:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tda1997x_parse_infoframe(ptr noundef %d, i16 noundef zeroext 673) #13
  %conv7.i = and i8 %conv.i79, -33
  br label %if.end.i86

if.end.i86:                                       ; preds = %if.then.i83, %if.then19.if.end.i86_crit_edge
  %source.0.i84 = phi i8 [ %conv7.i, %if.then.i83 ], [ %conv.i79, %if.then19.if.end.i86_crit_edge ]
  %66 = and i8 %source.0.i84, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool10.not.i85 = icmp eq i8 %66, 0
  br i1 %tobool10.not.i85, label %if.end.i86.if.end16.i_crit_edge, label %if.then11.i87

if.end.i86.if.end16.i_crit_edge:                  ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16.i

if.then11.i87:                                    ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tda1997x_parse_infoframe(ptr noundef %d, i16 noundef zeroext 641) #13
  %and14.i = and i8 %source.0.i84, -17
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then11.i87, %if.end.i86.if.end16.i_crit_edge
  %source.1.i = phi i8 [ %and14.i, %if.then11.i87 ], [ %source.0.i84, %if.end.i86.if.end16.i_crit_edge ]
  %67 = and i8 %source.1.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool19.not.i = icmp eq i8 %67, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end29_crit_edge, label %if.then20.i

if.end16.i.if.end29_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tda1997x_parse_infoframe(ptr noundef %d, i16 noundef zeroext 609) #13
  br label %if.end29

if.else20:                                        ; preds = %if.else15
  %and22 = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else20.if.end29_crit_edge, label %if.then24

if.else20.if.end29_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then24:                                        ; preds = %if.else20
  %call.i89 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 20) #13
  %conv.i90 = trunc i32 %call.i89 to i8
  %call2.i91 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 20, i8 noundef zeroext %conv.i90) #13
  %68 = and i32 %call.i89, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %if.then24.if.end25.i_crit_edge, label %if.then.i93

if.then24.if.end25.i_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then.i93:                                      ; preds = %if.then24
  %call7.i92 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 33) #13
  %and10.i = and i32 %call7.i92, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %and10.i)
  %cmp.i = icmp eq i32 %and10.i, 27
  br i1 %cmp.i, label %if.then12.i, label %if.then.i93.if.end25.i_crit_edge

if.then.i93.if.end25.i_crit_edge:                 ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25.i

if.then12.i:                                      ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #15
  %call13.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 12) #13
  %70 = trunc i32 %call13.i to i8
  %conv16.i = or i8 %70, 48
  %call17.i = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 12, i8 noundef zeroext %conv16.i) #13
  %conv20.i = and i8 %70, -49
  %call21.i = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 12, i8 noundef zeroext %conv20.i) #13
  %and23.i94 = and i32 %call.i89, 251
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then12.i, %if.then.i93.if.end25.i_crit_edge, %if.then24.if.end25.i_crit_edge
  %source.0.i95 = phi i32 [ %and23.i94, %if.then12.i ], [ %call.i89, %if.then.i93.if.end25.i_crit_edge ], [ %call.i89, %if.then24.if.end25.i_crit_edge ]
  %and27.i = and i32 %source.0.i95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end25.i.if.end40.i_crit_edge, label %if.then29.i

if.end25.i.if.end40.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #15
  %call30.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 265) #13
  %and33.i = and i32 %call30.i, 7
  %arrayidx.i96 = getelementptr [8 x i32], ptr @tda1997x_irq_audio.freq, i32 0, i32 %and33.i
  %71 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i96, align 4
  %73 = ptrtoint ptr %audio_samplerate.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %audio_samplerate.i, align 4
  %74 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client.i, align 4
  %driver.i98 = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 4, i32 6
  %76 = ptrtoint ptr %driver.i98 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %driver.i98, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %adapter.i99 = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 3
  %80 = ptrtoint ptr %adapter.i99 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter.i99, align 8
  %nr.i.i100 = getelementptr inbounds %struct.i2c_adapter, ptr %81, i32 0, i32 11
  %82 = ptrtoint ptr %nr.i.i100 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr.i.i100, align 4
  %addr.i101 = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 1
  %84 = ptrtoint ptr %addr.i101 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %addr.i101, align 2
  %conv37.i = zext i16 %85 to i32
  %call39.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef %79, i32 noundef %83, i32 noundef %conv37.i, i32 noundef %72) #17
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then29.i, %if.end25.i.if.end40.i_crit_edge
  %and42.i103 = and i32 %source.0.i95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i103)
  %tobool43.not.i = icmp eq i32 %and42.i103, 0
  br i1 %tobool43.not.i, label %if.end40.i.if.end29_crit_edge, label %if.then44.i

if.end40.i.if.end29_crit_edge:                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then44.i:                                      ; preds = %if.end40.i
  %call45.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 264) #13
  %86 = and i32 %call45.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %if.then44.i._crit_edge, label %88

if.then44.i._crit_edge:                           ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %90

88:                                               ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #15
  %and65.i = and i32 %call45.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65.i)
  %tobool66.not.i = icmp eq i32 %and65.i, 0
  %and59.i = and i32 %call45.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  %and53.i = and i32 %call45.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  %spec.select = select i1 %tobool54.not.i, i32 3, i32 2
  %spec.select118 = select i1 %tobool60.not.i, i32 %spec.select, i32 1
  %spec.select119 = select i1 %tobool66.not.i, i32 %spec.select118, i32 0
  %89 = ptrtoint ptr %audio_type.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %spec.select119, ptr %audio_type.i, align 4
  br label %90

90:                                               ; preds = %88, %if.then44.i._crit_edge
  %91 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %client.i, align 4
  %driver76.i = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 4, i32 6
  %93 = ptrtoint ptr %driver76.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver76.i, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %94, align 4
  %adapter79.i = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 3
  %97 = ptrtoint ptr %adapter79.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %adapter79.i, align 8
  %nr.i1.i = getelementptr inbounds %struct.i2c_adapter, ptr %98, i32 0, i32 11
  %99 = ptrtoint ptr %nr.i1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nr.i1.i, align 4
  %addr82.i = getelementptr inbounds %struct.i2c_client, ptr %92, i32 0, i32 1
  %101 = ptrtoint ptr %addr82.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %addr82.i, align 2
  %conv83.i = zext i16 %102 to i32
  %103 = ptrtoint ptr %audio_type.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %audio_type.i, align 4
  %arrayidx85.i = getelementptr [4 x ptr], ptr @audtype_names, i32 0, i32 %104
  %105 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx85.i, align 4
  %call86.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef %96, i32 noundef %100, i32 noundef %conv83.i, ptr noundef %106) #17
  br label %if.end29

if.end29:                                         ; preds = %90, %if.end40.i.if.end29_crit_edge, %if.else20.if.end29_crit_edge, %if.then20.i, %if.end16.i.if.end29_crit_edge, %if.end68.i, %if.then.i70.if.end29_crit_edge, %while.end.i.if.end29_crit_edge, %if.then11.i60, %if.end7.i59.if.end29_crit_edge, %if.end55.i, %do.end.i, %if.end21.i.if.end29_crit_edge
  %107 = and i8 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool32.not = icmp eq i8 %107, 0
  br i1 %tobool32.not, label %if.end29.do.cond_crit_edge, label %if.then33

if.end29.do.cond_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

if.then33:                                        ; preds = %if.end29
  %call.i106 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 21) #13
  %conv.i107 = trunc i32 %call.i106 to i8
  %call2.i108 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 21, i8 noundef zeroext %conv.i107) #13
  %and.i109 = and i32 %call.i106, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %tobool.not.i110 = icmp eq i32 %and.i109, 0
  br i1 %tobool.not.i110, label %if.then33.if.end.i113_crit_edge, label %if.then.i112

if.then33.if.end.i113_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i113

if.then.i112:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %108 = ptrtoint ptr %mptrw_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %mptrw_in_progress.i, align 1
  br label %if.end.i113

if.end.i113:                                      ; preds = %if.then.i112, %if.then33.if.end.i113_crit_edge
  %and5.i = and i32 %call.i106, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i113.do.cond_crit_edge, label %if.then7.i

if.end.i113.do.cond_crit_edge:                    ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.cond

if.then7.i:                                       ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 23) #13
  %109 = trunc i32 %call8.i to i8
  %conv12.i114 = and i8 %109, -49
  %call13.i115 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 23, i8 noundef zeroext %conv12.i114) #13
  %110 = and i8 %conv, 48
  br label %do.cond

do.cond:                                          ; preds = %if.then7.i, %if.end.i113.do.cond_crit_edge, %if.end29.do.cond_crit_edge
  %flags.1 = phi i8 [ %conv, %if.end29.do.cond_crit_edge ], [ %conv, %if.end.i113.do.cond_crit_edge ], [ %110, %if.then7.i ]
  %cmp36.not = icmp eq i8 %flags.1, 0
  br i1 %cmp36.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_log_status(ptr noundef %sd) #2 align 64 {
entry:
  %timings = alloca %struct.v4l2_dv_timings, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -60
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %timings) #13
  %0 = call ptr @memset(ptr %timings, i32 255, i32 132)
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name) #17
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %name8 = getelementptr inbounds %struct.tda1997x_chip_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name8, align 4
  %chip_revision = getelementptr i8, ptr %sd, i32 452
  %5 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_revision, align 4
  %add = add i32 %6, 1
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name, ptr noundef %4, i32 noundef %add) #17
  %present = getelementptr i8, ptr %sd, i32 1288
  %7 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %cond = select i1 %tobool.not, ptr @.str.87, ptr @.str.86
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name, ptr noundef nonnull %cond) #17
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %name) #17
  %call.i = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 32) #13
  %and.i = and i32 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %cond31 = select i1 %tobool.i.not, ptr @.str.87, ptr @.str.86
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %name, ptr noundef nonnull %cond31) #17
  %call.i180 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 32) #13
  %and.i181 = and i32 %call.i180, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i181)
  %tobool.i182.not = icmp eq i32 %and.i181, 0
  %cond40 = select i1 %tobool.i182.not, ptr @.str.87, ptr @.str.86
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %name, ptr noundef nonnull %cond40) #17
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %name) #17
  %call49 = call fastcc i32 @tda1997x_detect_std(ptr noundef %add.ptr.i, ptr noundef nonnull %timings)
  %9 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %call49, label %entry.sw.epilog_crit_edge [
    i32 -67, label %entry.sw.epilog.sink.split_crit_edge
    i32 -34, label %do.end60
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

do.end60:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end60, %entry.sw.epilog.sink.split_crit_edge
  %.str.104.sink = phi ptr [ @.str.104, %do.end60 ], [ @.str.101, %entry.sw.epilog.sink.split_crit_edge ]
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.104.sink, ptr noundef %name) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %timings67 = getelementptr i8, ptr %sd, i32 556
  call void @v4l2_print_dv_timings(ptr noundef %name, ptr noundef nonnull @.str.106, ptr noundef %timings67, i1 noundef zeroext true) #13
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name) #17
  %colorspace = getelementptr i8, ptr %sd, i32 476
  %10 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %colorspace, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @hdmi_colorspace_names, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %sw.epilog.cond.end_crit_edge, label %cond.false

sw.epilog.cond.end_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %colorimetry = getelementptr i8, ptr %sd, i32 484
  %14 = ptrtoint ptr %colorimetry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %colorimetry, align 4
  %arrayidx82 = getelementptr [4 x ptr], ptr @hdmi_colorimetry_names, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx82, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %sw.epilog.cond.end_crit_edge
  %cond83 = phi ptr [ %17, %cond.false ], [ @.str.113, %sw.epilog.cond.end_crit_edge ]
  %quantization = getelementptr i8, ptr %sd, i32 544
  %18 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quantization, align 4
  %arrayidx85 = getelementptr [3 x ptr], ptr @v4l2_quantization_names, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx85, align 4
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name, ptr noundef %13, ptr noundef %cond83, ptr noundef %21) #17
  %vid_fmt = getelementptr i8, ptr %sd, i32 720
  %22 = ptrtoint ptr %vid_fmt to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vid_fmt, align 4
  %idxprom = zext i8 %23 to i32
  %arrayidx93 = getelementptr [4 x ptr], ptr @vidfmt_names, i32 0, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx93, align 4
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %name, ptr noundef %25) #17
  %conv = getelementptr i8, ptr %sd, i32 692
  %26 = ptrtoint ptr %conv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conv, align 4
  %tobool101.not = icmp eq ptr %27, null
  br i1 %tobool101.not, label %cond.end.cond.end106_crit_edge, label %cond.true102

cond.end.cond.end106_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end106

cond.true102:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  br label %cond.end106

cond.end106:                                      ; preds = %cond.true102, %cond.end.cond.end106_crit_edge
  %cond107 = phi ptr [ %29, %cond.true102 ], [ @.str.120, %cond.end.cond.end106_crit_edge ]
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %name, ptr noundef %cond107) #17
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef %name) #17
  %audio_channels = getelementptr i8, ptr %sd, i32 924
  %30 = ptrtoint ptr %audio_channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %audio_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool116.not = icmp eq i32 %31, 0
  br i1 %tobool116.not, label %do.end127, label %do.end119

do.end119:                                        ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #15
  %audio_samplerate = getelementptr i8, ptr %sd, i32 920
  %32 = ptrtoint ptr %audio_samplerate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %audio_samplerate, align 4
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef %name, i32 noundef %31, i32 noundef %33) #17
  br label %do.end134

do.end127:                                        ; preds = %cond.end106
  call void @__sanitizer_cov_trace_pc() #15
  %call131 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef %name) #17
  br label %do.end134

do.end134:                                        ; preds = %do.end127, %do.end119
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %name) #17
  call fastcc void @tda1997x_log_infoframe(ptr noundef %sd, i32 noundef 673)
  call fastcc void @tda1997x_log_infoframe(ptr noundef %sd, i32 noundef 641)
  call fastcc void @tda1997x_log_infoframe(ptr noundef %sd, i32 noundef 609)
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %timings) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_subscribe_event(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sub to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sub, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %1, label %entry.return_crit_edge [
    i32 5, label %sw.bb
    i32 3, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #13
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2 = tail call i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef %sd, ptr noundef %fh, ptr noundef %sub) #13
  br label %return

return:                                           ; preds = %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_subdev_unsubscribe(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda1997x_detect_std(ptr noundef %state, ptr noundef %timings) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 4
  %input_detect = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 18
  %0 = ptrtoint ptr %input_detect to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %input_detect, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx3 = getelementptr %struct.tda1997x_state, ptr %state, i32 0, i32 18, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.io_read24.exit_crit_edge, label %if.end.i

if.end.io_read24.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read24.exit

if.end.i:                                         ; preds = %if.end
  %call2.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.io_read24.exit_crit_edge, label %if.end6.i

if.end.i.io_read24.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read24.exit

if.end6.i:                                        ; preds = %if.end.i
  %call12.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end6.i.io_read24.exit_crit_edge, label %if.end16.i

if.end6.i.io_read24.exit_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read24.exit

if.end16.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl i32 %call.i, 16
  %shl7.i = shl i32 %call2.i, 8
  %or8.i = or i32 %shl7.i, %shl.i
  %or17.i = or i32 %or8.i, %call12.i
  br label %io_read24.exit

io_read24.exit:                                   ; preds = %if.end16.i, %if.end6.i.io_read24.exit_crit_edge, %if.end.i.io_read24.exit_crit_edge, %if.end.io_read24.exit_crit_edge
  %retval.0.i = phi i32 [ %or17.i, %if.end16.i ], [ -1, %if.end.io_read24.exit_crit_edge ], [ -1, %if.end.i.io_read24.exit_crit_edge ], [ -1, %if.end6.i.io_read24.exit_crit_edge ]
  %call.i827 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i827)
  %cmp.i828 = icmp slt i32 %call.i827, 0
  br i1 %cmp.i828, label %io_read24.exit.io_read16.exit_crit_edge, label %if.end.i831

io_read24.exit.io_read16.exit_crit_edge:          ; preds = %io_read24.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit

if.end.i831:                                      ; preds = %io_read24.exit
  %call2.i829 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i829)
  %cmp3.i830 = icmp slt i32 %call2.i829, 0
  br i1 %cmp3.i830, label %if.end.i831.io_read16.exit_crit_edge, label %if.end6.i833

if.end.i831.io_read16.exit_crit_edge:             ; preds = %if.end.i831
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit

if.end6.i833:                                     ; preds = %if.end.i831
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i832 = shl i32 %call.i827, 8
  %or7.i = or i32 %call2.i829, %shl.i832
  br label %io_read16.exit

io_read16.exit:                                   ; preds = %if.end6.i833, %if.end.i831.io_read16.exit_crit_edge, %io_read24.exit.io_read16.exit_crit_edge
  %retval.0.i834 = phi i32 [ %or7.i, %if.end6.i833 ], [ -1, %io_read24.exit.io_read16.exit_crit_edge ], [ -1, %if.end.i831.io_read16.exit_crit_edge ]
  %call.i835 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i835)
  %cmp.i836 = icmp slt i32 %call.i835, 0
  br i1 %cmp.i836, label %io_read16.exit.io_read16.exit844_crit_edge, label %if.end.i839

io_read16.exit.io_read16.exit844_crit_edge:       ; preds = %io_read16.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit844

if.end.i839:                                      ; preds = %io_read16.exit
  %call2.i837 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i837)
  %cmp3.i838 = icmp slt i32 %call2.i837, 0
  br i1 %cmp3.i838, label %if.end.i839.io_read16.exit844_crit_edge, label %if.end6.i842

if.end.i839.io_read16.exit844_crit_edge:          ; preds = %if.end.i839
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit844

if.end6.i842:                                     ; preds = %if.end.i839
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i840 = shl i32 %call.i835, 8
  %or7.i841 = or i32 %call2.i837, %shl.i840
  br label %io_read16.exit844

io_read16.exit844:                                ; preds = %if.end6.i842, %if.end.i839.io_read16.exit844_crit_edge, %io_read16.exit.io_read16.exit844_crit_edge
  %retval.0.i843 = phi i32 [ %or7.i841, %if.end6.i842 ], [ -1, %io_read16.exit.io_read16.exit844_crit_edge ], [ -1, %if.end.i839.io_read16.exit844_crit_edge ]
  %and = and i32 %retval.0.i, 8388608
  %4 = trunc i32 %retval.0.i834 to i16
  %conv10 = and i16 %4, -32768
  %and14 = and i32 %retval.0.i, 4194303
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %do.end, label %io_read16.exit844.do.end29_crit_edge

io_read16.exit844.do.end29_crit_edge:             ; preds = %io_read16.exit844
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end29

do.end:                                           ; preds = %io_read16.exit844
  call void @__sanitizer_cov_trace_pc() #15
  %conv20 = and i32 %retval.0.i843, 1023
  %conv17 = and i32 %retval.0.i834, 4095
  %name = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 4, i32 9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %name, i32 noundef %and14, i32 noundef %conv17, i32 noundef %conv20) #17
  br label %do.end29

do.end29:                                         ; preds = %do.end, %io_read16.exit844.do.end29_crit_edge
  %call.i845 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 41) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i845)
  %cmp.i846 = icmp slt i32 %call.i845, 0
  br i1 %cmp.i846, label %do.end29.io_read16.exit854_crit_edge, label %if.end.i849

do.end29.io_read16.exit854_crit_edge:             ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit854

if.end.i849:                                      ; preds = %do.end29
  %call2.i847 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i847)
  %cmp3.i848 = icmp slt i32 %call2.i847, 0
  br i1 %cmp3.i848, label %if.end.i849.io_read16.exit854_crit_edge, label %if.end6.i852

if.end.i849.io_read16.exit854_crit_edge:          ; preds = %if.end.i849
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit854

if.end6.i852:                                     ; preds = %if.end.i849
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i850 = shl i32 %call.i845, 8
  %or7.i851 = or i32 %call2.i847, %shl.i850
  %phi.bo982 = and i32 %or7.i851, 65535
  br label %io_read16.exit854

io_read16.exit854:                                ; preds = %if.end6.i852, %if.end.i849.io_read16.exit854_crit_edge, %do.end29.io_read16.exit854_crit_edge
  %retval.0.i853 = phi i32 [ %phi.bo982, %if.end6.i852 ], [ 65535, %do.end29.io_read16.exit854_crit_edge ], [ 65535, %if.end.i849.io_read16.exit854_crit_edge ]
  %call.i855 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 43) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i855)
  %cmp.i856 = icmp slt i32 %call.i855, 0
  br i1 %cmp.i856, label %io_read16.exit854.io_read16.exit864_crit_edge, label %if.end.i859

io_read16.exit854.io_read16.exit864_crit_edge:    ; preds = %io_read16.exit854
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit864

if.end.i859:                                      ; preds = %io_read16.exit854
  %call2.i857 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 44) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i857)
  %cmp3.i858 = icmp slt i32 %call2.i857, 0
  br i1 %cmp3.i858, label %if.end.i859.io_read16.exit864_crit_edge, label %if.end6.i862

if.end.i859.io_read16.exit864_crit_edge:          ; preds = %if.end.i859
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit864

if.end6.i862:                                     ; preds = %if.end.i859
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i860 = shl i32 %call.i855, 8
  %or7.i861 = or i32 %call2.i857, %shl.i860
  %phi.bo = and i32 %or7.i861, 65535
  br label %io_read16.exit864

io_read16.exit864:                                ; preds = %if.end6.i862, %if.end.i859.io_read16.exit864_crit_edge, %io_read16.exit854.io_read16.exit864_crit_edge
  %retval.0.i863 = phi i32 [ %phi.bo, %if.end6.i862 ], [ 65535, %io_read16.exit854.io_read16.exit864_crit_edge ], [ 65535, %if.end.i859.io_read16.exit864_crit_edge ]
  %call.i865 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 45) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i865)
  %cmp.i866 = icmp slt i32 %call.i865, 0
  br i1 %cmp.i866, label %io_read16.exit864.io_read16.exit874_crit_edge, label %if.end.i869

io_read16.exit864.io_read16.exit874_crit_edge:    ; preds = %io_read16.exit864
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit874

if.end.i869:                                      ; preds = %io_read16.exit864
  %call2.i867 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i867)
  %cmp3.i868 = icmp slt i32 %call2.i867, 0
  br i1 %cmp3.i868, label %if.end.i869.io_read16.exit874_crit_edge, label %if.end6.i872

if.end.i869.io_read16.exit874_crit_edge:          ; preds = %if.end.i869
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit874

if.end6.i872:                                     ; preds = %if.end.i869
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i870 = shl i32 %call.i865, 8
  %or7.i871 = or i32 %call2.i867, %shl.i870
  %phi.bo978 = and i32 %or7.i871, 65535
  br label %io_read16.exit874

io_read16.exit874:                                ; preds = %if.end6.i872, %if.end.i869.io_read16.exit874_crit_edge, %io_read16.exit864.io_read16.exit874_crit_edge
  %retval.0.i873 = phi i32 [ %phi.bo978, %if.end6.i872 ], [ 65535, %io_read16.exit864.io_read16.exit874_crit_edge ], [ 65535, %if.end.i869.io_read16.exit874_crit_edge ]
  %call.i875 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 47) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i875)
  %cmp.i876 = icmp slt i32 %call.i875, 0
  br i1 %cmp.i876, label %io_read16.exit874.io_read16.exit884_crit_edge, label %if.end.i879

io_read16.exit874.io_read16.exit884_crit_edge:    ; preds = %io_read16.exit874
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit884

if.end.i879:                                      ; preds = %io_read16.exit874
  %call2.i877 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i877)
  %cmp3.i878 = icmp slt i32 %call2.i877, 0
  br i1 %cmp3.i878, label %if.end.i879.io_read16.exit884_crit_edge, label %if.end6.i882

if.end.i879.io_read16.exit884_crit_edge:          ; preds = %if.end.i879
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit884

if.end6.i882:                                     ; preds = %if.end.i879
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i880 = shl i32 %call.i875, 8
  %or7.i881 = or i32 %call2.i877, %shl.i880
  %phi.bo979 = and i32 %or7.i881, 65535
  br label %io_read16.exit884

io_read16.exit884:                                ; preds = %if.end6.i882, %if.end.i879.io_read16.exit884_crit_edge, %io_read16.exit874.io_read16.exit884_crit_edge
  %retval.0.i883 = phi i32 [ %phi.bo979, %if.end6.i882 ], [ 65535, %io_read16.exit874.io_read16.exit884_crit_edge ], [ 65535, %if.end.i879.io_read16.exit884_crit_edge ]
  %call.i885 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 49) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i885)
  %cmp.i886 = icmp slt i32 %call.i885, 0
  br i1 %cmp.i886, label %io_read16.exit884.io_read16.exit894_crit_edge, label %if.end.i889

io_read16.exit884.io_read16.exit894_crit_edge:    ; preds = %io_read16.exit884
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit894

if.end.i889:                                      ; preds = %io_read16.exit884
  %call2.i887 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 50) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i887)
  %cmp3.i888 = icmp slt i32 %call2.i887, 0
  br i1 %cmp3.i888, label %if.end.i889.io_read16.exit894_crit_edge, label %if.end6.i892

if.end.i889.io_read16.exit894_crit_edge:          ; preds = %if.end.i889
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit894

if.end6.i892:                                     ; preds = %if.end.i889
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i890 = shl i32 %call.i885, 8
  %or7.i891 = or i32 %call2.i887, %shl.i890
  %phi.bo980 = and i32 %or7.i891, 65535
  br label %io_read16.exit894

io_read16.exit894:                                ; preds = %if.end6.i892, %if.end.i889.io_read16.exit894_crit_edge, %io_read16.exit884.io_read16.exit894_crit_edge
  %retval.0.i893 = phi i32 [ %phi.bo980, %if.end6.i892 ], [ 65535, %io_read16.exit884.io_read16.exit894_crit_edge ], [ 65535, %if.end.i889.io_read16.exit894_crit_edge ]
  %call.i895 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 51) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i895)
  %cmp.i896 = icmp slt i32 %call.i895, 0
  br i1 %cmp.i896, label %io_read16.exit894.io_read16.exit904_crit_edge, label %if.end.i899

io_read16.exit894.io_read16.exit904_crit_edge:    ; preds = %io_read16.exit894
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit904

if.end.i899:                                      ; preds = %io_read16.exit894
  %call2.i897 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 52) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i897)
  %cmp3.i898 = icmp slt i32 %call2.i897, 0
  br i1 %cmp3.i898, label %if.end.i899.io_read16.exit904_crit_edge, label %if.end6.i902

if.end.i899.io_read16.exit904_crit_edge:          ; preds = %if.end.i899
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit904

if.end6.i902:                                     ; preds = %if.end.i899
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i900 = shl i32 %call.i895, 8
  %or7.i901 = or i32 %call2.i897, %shl.i900
  %phi.bo983 = and i32 %or7.i901, 65535
  br label %io_read16.exit904

io_read16.exit904:                                ; preds = %if.end6.i902, %if.end.i899.io_read16.exit904_crit_edge, %io_read16.exit894.io_read16.exit904_crit_edge
  %retval.0.i903 = phi i32 [ %phi.bo983, %if.end6.i902 ], [ 65535, %io_read16.exit894.io_read16.exit904_crit_edge ], [ 65535, %if.end.i899.io_read16.exit904_crit_edge ]
  %call.i905 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 53) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i905)
  %cmp.i906 = icmp slt i32 %call.i905, 0
  br i1 %cmp.i906, label %io_read16.exit904.io_read16.exit914_crit_edge, label %if.end.i909

io_read16.exit904.io_read16.exit914_crit_edge:    ; preds = %io_read16.exit904
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit914

if.end.i909:                                      ; preds = %io_read16.exit904
  %call2.i907 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 54) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i907)
  %cmp3.i908 = icmp slt i32 %call2.i907, 0
  br i1 %cmp3.i908, label %if.end.i909.io_read16.exit914_crit_edge, label %if.end6.i912

if.end.i909.io_read16.exit914_crit_edge:          ; preds = %if.end.i909
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit914

if.end6.i912:                                     ; preds = %if.end.i909
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i910 = shl i32 %call.i905, 8
  %or7.i911 = or i32 %call2.i907, %shl.i910
  %phi.bo981 = and i32 %or7.i911, 65535
  br label %io_read16.exit914

io_read16.exit914:                                ; preds = %if.end6.i912, %if.end.i909.io_read16.exit914_crit_edge, %io_read16.exit904.io_read16.exit914_crit_edge
  %retval.0.i913 = phi i32 [ %phi.bo981, %if.end6.i912 ], [ 65535, %io_read16.exit904.io_read16.exit914_crit_edge ], [ 65535, %if.end.i909.io_read16.exit914_crit_edge ]
  %call44 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 55)
  %call46 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 56)
  %call48 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 57)
  %call50 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 58)
  %call52 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 59)
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp55 = icmp sgt i32 %6, 0
  br i1 %cmp55, label %do.end60, label %io_read16.exit914.do.end83_crit_edge

io_read16.exit914.do.end83_crit_edge:             ; preds = %io_read16.exit914
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end83

do.end60:                                         ; preds = %io_read16.exit914
  call void @__sanitizer_cov_trace_pc() #15
  %name62 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 4, i32 9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv10)
  %tobool70.not = icmp eq i16 %conv10, 0
  %cond = select i1 %tobool70.not, i32 45, i32 43
  %conv73 = and i32 %call44, 65535
  %conv74 = and i32 %call46, 65535
  %conv75 = and i32 %call48, 65535
  %conv76 = and i32 %call50, 65535
  %conv77 = and i32 %call52, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool78.not = icmp eq i32 %and, 0
  %cond79 = select i1 %tobool78.not, i32 45, i32 43
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, ptr noundef %name62, i32 noundef %retval.0.i853, i32 noundef %retval.0.i863, i32 noundef %retval.0.i873, i32 noundef %retval.0.i883, i32 noundef %retval.0.i893, i32 noundef %cond, i32 noundef %retval.0.i903, i32 noundef %retval.0.i913, i32 noundef %conv73, i32 noundef %conv74, i32 noundef %conv75, i32 noundef %conv76, i32 noundef %conv77, i32 noundef %cond79) #17
  br label %do.end83

do.end83:                                         ; preds = %do.end60, %io_read16.exit914.do.end83_crit_edge
  %tobool84.not = icmp eq ptr %timings, null
  br i1 %tobool84.not, label %do.end83.cleanup_crit_edge, label %if.end86

do.end83.cleanup_crit_edge:                       ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end86:                                         ; preds = %do.end83
  %7 = ptrtoint ptr %timings to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %timings, align 1
  %8 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %retval.0.i863, ptr %8, align 1
  %hfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 6
  %10 = ptrtoint ptr %hfrontporch to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %retval.0.i873, ptr %hfrontporch, align 1
  %hsync90 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 7
  %11 = ptrtoint ptr %hsync90 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %retval.0.i883, ptr %hsync90, align 1
  %hbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 8
  %12 = ptrtoint ptr %hbackporch to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %retval.0.i893, ptr %hbackporch, align 1
  %height = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %retval.0.i913, ptr %height, align 1
  %conv93 = and i32 %call44, 65535
  %vfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 9
  %14 = ptrtoint ptr %vfrontporch to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %conv93, ptr %vfrontporch, align 1
  %conv94 = and i32 %call48, 65535
  %vsync95 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 10
  %15 = ptrtoint ptr %vsync95 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %conv94, ptr %vsync95, align 1
  %conv96 = and i32 %call50, 65535
  %vbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 11
  %16 = ptrtoint ptr %vbackporch to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %conv96, ptr %vbackporch, align 1
  %conv13.lobit = lshr i32 %retval.0.i843, 15
  %17 = and i32 %conv13.lobit, 1
  %interlaced100 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %interlaced100 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %interlaced100, align 1
  %and.lobit = lshr exact i32 %and, 23
  %polarities = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 3
  %19 = lshr exact i16 %conv10, 14
  %20 = zext i16 %19 to i32
  %or = or i32 %and.lobit, %20
  %21 = ptrtoint ptr %polarities to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %or, ptr %polarities, align 1
  %narrow = mul nuw i32 %retval.0.i903, %retval.0.i853
  %mul = zext i32 %narrow to i64
  %mul109 = mul nuw nsw i64 %mul, 27000000
  %pixelclock = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 4
  %22 = and i32 %retval.0.i843, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool110.not = icmp eq i32 %22, 0
  br i1 %tobool110.not, label %if.else319, label %if.then111

if.then111:                                       ; preds = %if.end86
  %conv112 = and i32 %call46, 65535
  %il_vfrontporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 12
  %23 = ptrtoint ptr %il_vfrontporch to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %conv112, ptr %il_vfrontporch, align 1
  %il_vsync = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %24 = ptrtoint ptr %il_vsync to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %conv94, ptr %il_vsync, align 1
  %conv114 = and i32 %call52, 65535
  %il_vbackporch = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 14
  %25 = ptrtoint ptr %il_vbackporch to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %conv114, ptr %il_vbackporch, align 1
  %mul115 = shl nuw nsw i32 %and14, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul109)
  %cmp299 = icmp ult i64 %mul109, 4294967296
  br i1 %cmp299, label %if.then303, label %if.else312, !prof !505

if.then303:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  %conv305 = trunc i64 %mul109 to i32
  %div309 = udiv i32 %conv305, %mul115
  %conv310 = zext i32 %div309 to i64
  %26 = ptrtoint ptr %pixelclock to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %conv310, ptr %pixelclock, align 1
  br label %if.end555

if.else312:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #15
  %27 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul115, i64 %mul109) #19, !srcloc !506
  %asmresult1.i = extractvalue { i64, i64 } %27, 1
  %28 = ptrtoint ptr %pixelclock to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %asmresult1.i, ptr %pixelclock, align 8
  br label %if.end555

if.else319:                                       ; preds = %if.end86
  %il_vfrontporch320 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 12
  %29 = ptrtoint ptr %il_vfrontporch320 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 0, ptr %il_vfrontporch320, align 1
  %il_vsync321 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 13
  %30 = ptrtoint ptr %il_vsync321 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 0, ptr %il_vsync321, align 1
  %il_vbackporch322 = getelementptr inbounds %struct.v4l2_dv_timings, ptr %timings, i32 0, i32 1, i32 0, i32 14
  %31 = ptrtoint ptr %il_vbackporch322 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 0, ptr %il_vbackporch322, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul109)
  %cmp531 = icmp ult i64 %mul109, 4294967296
  br i1 %cmp531, label %if.then539, label %if.else548, !prof !505

if.then539:                                       ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #15
  %conv541 = trunc i64 %mul109 to i32
  %div545 = udiv i32 %conv541, %and14
  %conv546 = zext i32 %div545 to i64
  %32 = ptrtoint ptr %pixelclock to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %conv546, ptr %pixelclock, align 1
  br label %if.end555

if.else548:                                       ; preds = %if.else319
  call void @__sanitizer_cov_trace_pc() #15
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and14, i64 %mul109) #19, !srcloc !506
  %asmresult1.i940 = extractvalue { i64, i64 } %33, 1
  %34 = ptrtoint ptr %pixelclock to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %asmresult1.i940, ptr %pixelclock, align 8
  br label %if.end555

if.end555:                                        ; preds = %if.else548, %if.then539, %if.else312, %if.then303
  %35 = ptrtoint ptr %pixelclock to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %36 = load i64, ptr %pixelclock, align 1
  %conv557 = trunc i64 %36 to i32
  %div558 = udiv i32 %conv557, 500
  %call559 = tail call zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef nonnull %timings, ptr noundef nonnull @tda1997x_dv_timings_cap, i32 noundef %div558, ptr noundef null, ptr noundef null) #13
  %name560 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 4, i32 9
  tail call void @v4l2_print_dv_timings(ptr noundef %name560, ptr noundef nonnull @.str.138, ptr noundef nonnull %timings, i1 noundef zeroext false) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end555, %do.end83.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end555 ], [ -67, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_print_dv_timings(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda1997x_log_infoframe(ptr noundef %sd, i32 noundef %addr) unnamed_addr #2 align 64 {
entry:
  %frame = alloca %union.hdmi_infoframe, align 4
  %buffer = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame) #13
  %0 = call ptr @memset(ptr %frame, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buffer) #13
  %1 = call ptr @memset(ptr %buffer, i32 0, i32 40)
  %conv = trunc i32 %addr to i16
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %sz.02.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = trunc i32 %sz.02.i to i16
  %conv3.i = add i16 %2, %conv
  %call.i = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext %conv3.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %for.body.i.io_readn.exit_crit_edge, label %if.end.i

for.body.i.io_readn.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_readn.exit

if.end.i:                                         ; preds = %for.body.i
  %conv6.i = trunc i32 %call.i to i8
  %arrayidx.i = getelementptr i8, ptr %buffer, i32 %sz.02.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %sz.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %if.end.i.io_readn.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.io_readn.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_readn.exit

io_readn.exit:                                    ; preds = %if.end.i.io_readn.exit_crit_edge, %for.body.i.io_readn.exit_crit_edge
  %sz.0.lcssa.i = phi i32 [ %sz.02.i, %for.body.i.io_readn.exit_crit_edge ], [ 40, %if.end.i.io_readn.exit_crit_edge ]
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %io_readn.exit.do.end7_crit_edge

io_readn.exit.do.end7_crit_edge:                  ; preds = %io_readn.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %io_readn.exit
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef %name, i32 noundef %addr, i32 noundef %sz.0.lcssa.i) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %io_readn.exit.do.end7_crit_edge
  %call9 = call i32 @hdmi_infoframe_unpack(ptr noundef nonnull %frame, ptr noundef nonnull %buffer, i32 noundef %sz.0.lcssa.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  %client24 = getelementptr i8, ptr %sd, i32 -8
  %5 = ptrtoint ptr %client24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client24, align 4
  br i1 %tobool.not, label %if.end23, label %do.end13

do.end13:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %driver = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4, i32 6
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i, align 4
  %addr19 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %addr19 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr19, align 2
  %conv20 = zext i16 %16 to i32
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buffer, align 1
  %conv21 = zext i8 %18 to i32
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %10, i32 noundef %14, i32 noundef %conv20, i32 noundef %sz.0.lcssa.i, i32 noundef %addr, i32 noundef %conv21) #17
  br label %cleanup

if.end23:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void @hdmi_infoframe_log(ptr noundef nonnull @.str.158, ptr noundef %dev25, ptr noundef nonnull %frame) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buffer) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_find_dv_timings_cap(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_unpack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_infoframe_log(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_src_change_event_subdev_subscribe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_subscribe_event(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_g_input_status(ptr noundef %sd, ptr nocapture noundef writeonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %sd, i32 264
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %call.i = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.io_read24.exit_crit_edge, label %if.end.i

entry.io_read24.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read24.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.io_read24.exit_crit_edge, label %if.end6.i

if.end.i.io_read24.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read24.exit

if.end6.i:                                        ; preds = %if.end.i
  %call12.i = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 36) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end6.i.io_read24.exit_crit_edge, label %if.end16.i

if.end6.i.io_read24.exit_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read24.exit

if.end16.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i = shl i32 %call.i, 16
  %shl7.i = shl i32 %call2.i, 8
  %or8.i = or i32 %shl7.i, %shl.i
  %or17.i = or i32 %or8.i, %call12.i
  %phi.bo = and i32 %or17.i, 4194303
  br label %io_read24.exit

io_read24.exit:                                   ; preds = %if.end16.i, %if.end6.i.io_read24.exit_crit_edge, %if.end.i.io_read24.exit_crit_edge, %entry.io_read24.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.bo, %if.end16.i ], [ 4194303, %entry.io_read24.exit_crit_edge ], [ 4194303, %if.end.i.io_read24.exit_crit_edge ], [ 4194303, %if.end6.i.io_read24.exit_crit_edge ]
  %call.i48 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 37) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %cmp.i49, label %io_read24.exit.io_read16.exit_crit_edge, label %if.end.i52

io_read24.exit.io_read16.exit_crit_edge:          ; preds = %io_read24.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit

if.end.i52:                                       ; preds = %io_read24.exit
  %call2.i50 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 38) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i50)
  %cmp3.i51 = icmp slt i32 %call2.i50, 0
  br i1 %cmp3.i51, label %if.end.i52.io_read16.exit_crit_edge, label %if.end6.i54

if.end.i52.io_read16.exit_crit_edge:              ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit

if.end6.i54:                                      ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i53 = shl i32 %call.i48, 8
  %or7.i = or i32 %call2.i50, %shl.i53
  %phi.cast = trunc i32 %or7.i to i16
  %phi.bo66 = and i16 %phi.cast, 4095
  br label %io_read16.exit

io_read16.exit:                                   ; preds = %if.end6.i54, %if.end.i52.io_read16.exit_crit_edge, %io_read24.exit.io_read16.exit_crit_edge
  %retval.0.i55 = phi i16 [ %phi.bo66, %if.end6.i54 ], [ 4095, %io_read24.exit.io_read16.exit_crit_edge ], [ 4095, %if.end.i52.io_read16.exit_crit_edge ]
  %call.i56 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 39) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp.i57 = icmp slt i32 %call.i56, 0
  br i1 %cmp.i57, label %io_read16.exit.io_read16.exit65_crit_edge, label %if.end.i60

io_read16.exit.io_read16.exit65_crit_edge:        ; preds = %io_read16.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit65

if.end.i60:                                       ; preds = %io_read16.exit
  %call2.i58 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 40) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i58)
  %cmp3.i59 = icmp slt i32 %call2.i58, 0
  br i1 %cmp3.i59, label %if.end.i60.io_read16.exit65_crit_edge, label %if.end6.i63

if.end.i60.io_read16.exit65_crit_edge:            ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_read16.exit65

if.end6.i63:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i61 = shl i32 %call.i56, 8
  %or7.i62 = or i32 %call2.i58, %shl.i61
  %phi.cast67 = trunc i32 %or7.i62 to i16
  %phi.bo68 = and i16 %phi.cast67, 1023
  br label %io_read16.exit65

io_read16.exit65:                                 ; preds = %if.end6.i63, %if.end.i60.io_read16.exit65_crit_edge, %io_read16.exit.io_read16.exit65_crit_edge
  %retval.0.i64 = phi i16 [ %phi.bo68, %if.end6.i63 ], [ 1023, %io_read16.exit.io_read16.exit65_crit_edge ], [ 1023, %if.end.i60.io_read16.exit65_crit_edge ]
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %io_read16.exit65.do.end17_crit_edge

io_read16.exit65.do.end17_crit_edge:              ; preds = %io_read16.exit65
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17

do.end:                                           ; preds = %io_read16.exit65
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %input_detect = getelementptr i8, ptr %sd, i32 463
  %1 = ptrtoint ptr %input_detect to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %input_detect, align 1
  %conv9 = zext i8 %2 to i32
  %arrayidx11 = getelementptr i8, ptr %sd, i32 464
  %3 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %4 to i32
  %conv13 = zext i16 %retval.0.i55 to i32
  %conv14 = zext i16 %retval.0.i64 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef %name, i32 noundef %conv9, i32 noundef %conv12, i32 noundef %retval.0.i, i32 noundef %conv13, i32 noundef %conv14) #17
  br label %do.end17

do.end17:                                         ; preds = %do.end, %io_read16.exit65.do.end17_crit_edge
  %input_detect18 = getelementptr i8, ptr %sd, i32 463
  %5 = ptrtoint ptr %input_detect18 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %input_detect18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end17.if.else_crit_edge

do.end17.if.else_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %do.end17
  %arrayidx21 = getelementptr i8, ptr %sd, i32 464
  %7 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool22.not = icmp eq i8 %8, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end31_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end17.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool24.not = icmp eq i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i55)
  %tobool25.not = icmp eq i16 %retval.0.i55, 0
  %or.cond = select i1 %tobool24.not, i1 true, i1 %tobool25.not
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i64)
  %tobool27.not = icmp eq i16 %retval.0.i64, 0
  %or.cond47 = select i1 %or.cond, i1 true, i1 %tobool27.not
  %. = select i1 %or.cond47, i32 65536, i32 0
  br label %if.end31

if.end31:                                         ; preds = %if.else, %land.lhs.true.if.end31_crit_edge
  %.sink = phi i32 [ 2, %land.lhs.true.if.end31_crit_edge ], [ %., %if.else ]
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %status, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_s_dv_timings(ptr noundef %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr i8, ptr %sd, i32 -8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef nonnull @.str.162) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %timings8 = getelementptr i8, ptr %sd, i32 556
  %call9 = tail call zeroext i1 @v4l2_match_dv_timings(ptr noundef %timings8, ptr noundef %timings, i32 noundef 0, i1 noundef zeroext false) #13
  br i1 %call9, label %do.end7.cleanup_crit_edge, label %if.end11

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %call12 = tail call zeroext i1 @v4l2_valid_dv_timings(ptr noundef %timings, ptr noundef nonnull @tda1997x_dv_timings_cap, ptr noundef null, ptr noundef null) #13
  br i1 %call12, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  %lock = getelementptr i8, ptr %sd, i32 264
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %13 = call ptr @memcpy(ptr %timings8, ptr %timings, i32 132)
  %14 = getelementptr i8, ptr %sd, i32 560
  %hbackporch.i = getelementptr i8, ptr %sd, i32 592
  %15 = ptrtoint ptr %hbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %hbackporch.i, align 1
  %hsync.i = getelementptr i8, ptr %sd, i32 588
  %17 = ptrtoint ptr %hsync.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %hsync.i, align 1
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %14, align 1
  %height.i = getelementptr i8, ptr %sd, i32 564
  %21 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %height.i, align 1
  %vbackporch.i = getelementptr i8, ptr %sd, i32 604
  %23 = ptrtoint ptr %vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %vbackporch.i, align 1
  %vsync.i = getelementptr i8, ptr %sd, i32 600
  %25 = ptrtoint ptr %vsync.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %vsync.i, align 1
  %il_vbackporch.i = getelementptr i8, ptr %sd, i32 616
  %27 = ptrtoint ptr %il_vbackporch.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %il_vbackporch.i, align 1
  %il_vsync.i = getelementptr i8, ptr %sd, i32 612
  %29 = ptrtoint ptr %il_vsync.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %il_vsync.i, align 1
  %il_vfrontporch.i = getelementptr i8, ptr %sd, i32 608
  %31 = ptrtoint ptr %il_vfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %il_vfrontporch.i, align 1
  %vfrontporch.i = getelementptr i8, ptr %sd, i32 596
  %33 = ptrtoint ptr %vfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %vfrontporch.i, align 1
  %interlaced.i = getelementptr i8, ptr %sd, i32 568
  %35 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %interlaced.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %if.end14.if.end.i_crit_edge, label %if.then.i

if.end14.if.end.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %div154.i = lshr i32 %22, 1
  %add20.i = add i32 %30, %28
  %sub.i = add nsw i32 %div154.i, -1
  %add21.i = add i32 %sub.i, %add20.i
  %add27.i = add i32 %add20.i, %32
  %conv28.i = trunc i32 %add27.i to i8
  %add31.i = add i32 %add21.i, %32
  %phi.cast153.i = trunc i32 %add31.i to i8
  %extract.t.i = trunc i32 %add21.i to i8
  %phi.cast227.i = lshr i32 %add21.i, 8
  %37 = trunc i32 %phi.cast227.i to i8
  %extract.t226.i = and i8 %37, 63
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end14.if.end.i_crit_edge
  %vref_f2_start.0.off0.i = phi i8 [ %extract.t.i, %if.then.i ], [ 0, %if.end14.if.end.i_crit_edge ]
  %vref_f2_start.0.off8.i = phi i8 [ %extract.t226.i, %if.then.i ], [ 0, %if.end14.if.end.i_crit_edge ]
  %vref_f2_width.0.i = phi i8 [ %conv28.i, %if.then.i ], [ 0, %if.end14.if.end.i_crit_edge ]
  %fieldref_f2_start.0.i = phi i8 [ %phi.cast153.i, %if.then.i ], [ 0, %if.end14.if.end.i_crit_edge ]
  %hfrontporch.i = getelementptr i8, ptr %sd, i32 584
  %38 = ptrtoint ptr %hfrontporch.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %hfrontporch.i, align 1
  %call.i.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 202, i8 noundef zeroext 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.io_write16.exit.i_crit_edge, label %if.end.i.i

if.end.i.io_write16.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit.i

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 203, i8 noundef zeroext -17) #13
  br label %io_write16.exit.i

io_write16.exit.i:                                ; preds = %if.end.i.i, %if.end.i.io_write16.exit.i_crit_edge
  %call.i155.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 204, i8 noundef zeroext 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.i)
  %cmp.i156.i = icmp slt i32 %call.i155.i, 0
  br i1 %cmp.i156.i, label %io_write16.exit.i.io_write16.exit159.i_crit_edge, label %if.end.i158.i

io_write16.exit.i.io_write16.exit159.i_crit_edge: ; preds = %io_write16.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit159.i

if.end.i158.i:                                    ; preds = %io_write16.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i157.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 205, i8 noundef zeroext 65) #13
  br label %io_write16.exit159.i

io_write16.exit159.i:                             ; preds = %if.end.i158.i, %io_write16.exit.i.io_write16.exit159.i_crit_edge
  %chip_revision.i = getelementptr i8, ptr %sd, i32 452
  %40 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chip_revision.i, align 4
  %call.i160.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 162, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %cmp.i161.i = icmp slt i32 %call.i160.i, 0
  br i1 %cmp.i161.i, label %io_write16.exit159.i.if.end60.i_crit_edge, label %if.end60.sink.split.i

io_write16.exit159.i.if.end60.i_crit_edge:        ; preds = %io_write16.exit159.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end60.i

if.end60.sink.split.i:                            ; preds = %io_write16.exit159.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i = icmp eq i32 %41, 0
  %..i = select i1 %cmp.i, i8 4, i8 1
  %call8.i167.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 163, i8 noundef zeroext %..i) #13
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end60.sink.split.i, %io_write16.exit159.i.if.end60.i_crit_edge
  %add44.i = add i32 %26, %24
  %add46.i = add i32 %30, %28
  %add48.i = add i32 %add46.i, %22
  %add50.i = add i32 %add48.i, %add44.i
  %add52.i = add i32 %add50.i, %32
  %add53.i = add i32 %add52.i, %34
  %add37.i = add i32 %18, %16
  %add39.i = add i32 %add37.i, %20
  %add40.i = add i32 %add39.i, %39
  %add15.i = add i32 %34, %add44.i
  %conv16.i = trunc i32 %add15.i to i8
  %conv.i = add i32 %add37.i, 1
  %add4.i = add i32 %conv.i, %20
  %conv61228.i = lshr i32 %add40.i, 8
  %42 = trunc i32 %conv61228.i to i8
  %conv1.i.i = and i8 %42, 63
  %call.i170.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 164, i8 noundef zeroext %conv1.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i170.i)
  %cmp.i171.i = icmp slt i32 %call.i170.i, 0
  br i1 %cmp.i171.i, label %if.end60.i.io_write16.exit174.i_crit_edge, label %if.end.i173.i

if.end60.i.io_write16.exit174.i_crit_edge:        ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit174.i

if.end.i173.i:                                    ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i.i = trunc i32 %add40.i to i8
  %call8.i172.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 165, i8 noundef zeroext %conv7.i.i) #13
  br label %io_write16.exit174.i

io_write16.exit174.i:                             ; preds = %if.end.i173.i, %if.end60.i.io_write16.exit174.i_crit_edge
  %call.i175.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 166, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175.i)
  %cmp.i176.i = icmp slt i32 %call.i175.i, 0
  br i1 %cmp.i176.i, label %io_write16.exit174.i.io_write16.exit179.i_crit_edge, label %if.end.i178.i

io_write16.exit174.i.io_write16.exit179.i_crit_edge: ; preds = %io_write16.exit174.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit179.i

if.end.i178.i:                                    ; preds = %io_write16.exit174.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i177.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 167, i8 noundef zeroext 1) #13
  br label %io_write16.exit179.i

io_write16.exit179.i:                             ; preds = %if.end.i178.i, %io_write16.exit174.i.io_write16.exit179.i_crit_edge
  %conv65229.i = lshr i32 %add53.i, 8
  %43 = trunc i32 %conv65229.i to i8
  %conv1.i180.i = and i8 %43, 63
  %call.i181.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 168, i8 noundef zeroext %conv1.i180.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181.i)
  %cmp.i182.i = icmp slt i32 %call.i181.i, 0
  br i1 %cmp.i182.i, label %io_write16.exit179.i.io_write16.exit186.i_crit_edge, label %if.end.i185.i

io_write16.exit179.i.io_write16.exit186.i_crit_edge: ; preds = %io_write16.exit179.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit186.i

if.end.i185.i:                                    ; preds = %io_write16.exit179.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i183.i = trunc i32 %add53.i to i8
  %call8.i184.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 169, i8 noundef zeroext %conv7.i183.i) #13
  br label %io_write16.exit186.i

io_write16.exit186.i:                             ; preds = %if.end.i185.i, %io_write16.exit179.i.io_write16.exit186.i_crit_edge
  %call67.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 160, i8 noundef zeroext 24) #13
  %conv70230.i = lshr i32 %conv.i, 8
  %44 = trunc i32 %conv70230.i to i8
  %conv1.i187.i = and i8 %44, 63
  %call.i188.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 170, i8 noundef zeroext %conv1.i187.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188.i)
  %cmp.i189.i = icmp slt i32 %call.i188.i, 0
  br i1 %cmp.i189.i, label %io_write16.exit186.i.io_write16.exit193.i_crit_edge, label %if.end.i192.i

io_write16.exit186.i.io_write16.exit193.i_crit_edge: ; preds = %io_write16.exit186.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit193.i

if.end.i192.i:                                    ; preds = %io_write16.exit186.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i190.i = trunc i32 %conv.i to i8
  %call8.i191.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 171, i8 noundef zeroext %conv7.i190.i) #13
  br label %io_write16.exit193.i

io_write16.exit193.i:                             ; preds = %if.end.i192.i, %io_write16.exit186.i.io_write16.exit193.i_crit_edge
  %conv74231.i = lshr i32 %add4.i, 8
  %45 = trunc i32 %conv74231.i to i8
  %conv1.i194.i = and i8 %45, 63
  %call.i195.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 172, i8 noundef zeroext %conv1.i194.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195.i)
  %cmp.i196.i = icmp slt i32 %call.i195.i, 0
  br i1 %cmp.i196.i, label %io_write16.exit193.i.io_write16.exit200.i_crit_edge, label %if.end.i199.i

io_write16.exit193.i.io_write16.exit200.i_crit_edge: ; preds = %io_write16.exit193.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit200.i

if.end.i199.i:                                    ; preds = %io_write16.exit193.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i197.i = trunc i32 %add4.i to i8
  %call8.i198.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 173, i8 noundef zeroext %conv7.i197.i) #13
  br label %io_write16.exit200.i

io_write16.exit200.i:                             ; preds = %if.end.i199.i, %io_write16.exit193.i.io_write16.exit200.i_crit_edge
  %conv78232.i = lshr i32 %add52.i, 8
  %46 = trunc i32 %conv78232.i to i8
  %conv1.i201.i = and i8 %46, 63
  %call.i202.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 178, i8 noundef zeroext %conv1.i201.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i202.i)
  %cmp.i203.i = icmp slt i32 %call.i202.i, 0
  br i1 %cmp.i203.i, label %io_write16.exit200.i.io_write16.exit207.i_crit_edge, label %if.end.i206.i

io_write16.exit200.i.io_write16.exit207.i_crit_edge: ; preds = %io_write16.exit200.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit207.i

if.end.i206.i:                                    ; preds = %io_write16.exit200.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i204.i = trunc i32 %add52.i to i8
  %call8.i205.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 179, i8 noundef zeroext %conv7.i204.i) #13
  br label %io_write16.exit207.i

io_write16.exit207.i:                             ; preds = %if.end.i206.i, %io_write16.exit200.i.io_write16.exit207.i_crit_edge
  %call80.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 180, i8 noundef zeroext %conv16.i) #13
  %call.i209.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 181, i8 noundef zeroext %vref_f2_start.0.off8.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209.i)
  %cmp.i210.i = icmp slt i32 %call.i209.i, 0
  br i1 %cmp.i210.i, label %io_write16.exit207.i.io_write16.exit214.i_crit_edge, label %if.end.i213.i

io_write16.exit207.i.io_write16.exit214.i_crit_edge: ; preds = %io_write16.exit207.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit214.i

if.end.i213.i:                                    ; preds = %io_write16.exit207.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i212.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 182, i8 noundef zeroext %vref_f2_start.0.off0.i) #13
  br label %io_write16.exit214.i

io_write16.exit214.i:                             ; preds = %if.end.i213.i, %io_write16.exit207.i.io_write16.exit214.i_crit_edge
  %call85.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 183, i8 noundef zeroext %vref_f2_width.0.i) #13
  %call.i215.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 198, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215.i)
  %cmp.i216.i = icmp slt i32 %call.i215.i, 0
  br i1 %cmp.i216.i, label %io_write16.exit214.i.io_write16.exit219.i_crit_edge, label %if.end.i218.i

io_write16.exit214.i.io_write16.exit219.i_crit_edge: ; preds = %io_write16.exit214.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit219.i

if.end.i218.i:                                    ; preds = %io_write16.exit214.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i217.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 199, i8 noundef zeroext 0) #13
  br label %io_write16.exit219.i

io_write16.exit219.i:                             ; preds = %if.end.i218.i, %io_write16.exit214.i.io_write16.exit219.i_crit_edge
  %call.i221.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 200, i8 noundef zeroext 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221.i)
  %cmp.i222.i = icmp slt i32 %call.i221.i, 0
  br i1 %cmp.i222.i, label %io_write16.exit219.i.tda1997x_configure_vhref.exit_crit_edge, label %if.end.i224.i

io_write16.exit219.i.tda1997x_configure_vhref.exit_crit_edge: ; preds = %io_write16.exit219.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tda1997x_configure_vhref.exit

if.end.i224.i:                                    ; preds = %io_write16.exit219.i
  call void @__sanitizer_cov_trace_pc() #15
  %call8.i223.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 201, i8 noundef zeroext %fieldref_f2_start.0.i) #13
  br label %tda1997x_configure_vhref.exit

tda1997x_configure_vhref.exit:                    ; preds = %if.end.i224.i, %io_write16.exit219.i.tda1997x_configure_vhref.exit_crit_edge
  tail call fastcc void @tda1997x_configure_csc(ptr noundef %sd)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %tda1997x_configure_vhref.exit, %if.end11.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tda1997x_configure_vhref.exit ], [ 0, %do.end7.cleanup_crit_edge ], [ -34, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_g_dv_timings(ptr noundef %sd, ptr nocapture noundef writeonly %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr i8, ptr %sd, i32 -8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef nonnull @.str.174) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %lock = getelementptr i8, ptr %sd, i32 264
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %timings8 = getelementptr i8, ptr %sd, i32 556
  %13 = call ptr @memcpy(ptr %timings, ptr %timings8, i32 132)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_query_dv_timings(ptr noundef %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr i8, ptr %sd, i32 -8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef nonnull @.str.175) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -60
  %13 = call ptr @memset(ptr %timings, i32 0, i32 132)
  %lock = getelementptr i8, ptr %sd, i32 264
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %call8 = tail call fastcc i32 @tda1997x_detect_std(ptr noundef %add.ptr.i, ptr noundef %timings)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_match_dv_timings(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @v4l2_valid_dv_timings(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda1997x_configure_csc(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %colorimetry = getelementptr i8, ptr %sd, i32 536
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr i8, ptr %sd, i32 -8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %colorspace = getelementptr i8, ptr %sd, i32 476
  %13 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %colorspace, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @hdmi_colorspace_names, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %quantization = getelementptr i8, ptr %sd, i32 544
  %17 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quantization, align 4
  %arrayidx5 = getelementptr [3 x ptr], ptr @v4l2_quantization_names, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx5, align 4
  %vid_fmt = getelementptr i8, ptr %sd, i32 720
  %21 = ptrtoint ptr %vid_fmt to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vid_fmt, align 4
  %idxprom = zext i8 %22 to i32
  %arrayidx6 = getelementptr [4 x ptr], ptr @vidfmt_names, i32 0, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef %16, ptr noundef %20, ptr noundef %24) #17
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %conv10 = getelementptr i8, ptr %sd, i32 692
  %25 = ptrtoint ptr %conv10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %conv10, align 4
  %vid_fmt11 = getelementptr i8, ptr %sd, i32 720
  %26 = ptrtoint ptr %vid_fmt11 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vid_fmt11, align 4
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.249)
  switch i8 %27, label %do.end9.if.end139_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %do.end9.sw.bb37_crit_edge
    i8 2, label %do.end9.sw.bb37_crit_edge358
  ]

do.end9.sw.bb37_crit_edge358:                     ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb37

do.end9.sw.bb37_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb37

do.end9.if.end139_crit_edge:                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

sw.bb:                                            ; preds = %do.end9
  %29 = ptrtoint ptr %colorimetry to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorimetry, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %30, label %sw.bb.if.end139_crit_edge [
    i32 8, label %if.then16
    i32 3, label %sw.bb.do.body74.sink.split_crit_edge
    i32 1, label %if.then32
  ]

sw.bb.do.body74.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body74.sink.split

sw.bb.if.end139_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

if.then16:                                        ; preds = %sw.bb
  %quantization17 = getelementptr i8, ptr %sd, i32 544
  %32 = ptrtoint ptr %quantization17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quantization17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp18 = icmp eq i32 %33, 2
  br i1 %cmp18, label %if.then16.do.body74.sink.split_crit_edge, label %if.then16.sw.epilog_crit_edge

if.then16.sw.epilog_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then16.do.body74.sink.split_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body74.sink.split

if.then32:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body74.sink.split

sw.bb37:                                          ; preds = %do.end9.sw.bb37_crit_edge, %do.end9.sw.bb37_crit_edge358
  %34 = ptrtoint ptr %colorimetry to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %colorimetry, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %cmp39 = icmp eq i32 %35, 8
  br i1 %cmp39, label %land.lhs.true, label %sw.bb37.sw.epilog_crit_edge

sw.bb37.sw.epilog_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb37
  %quantization41 = getelementptr i8, ptr %sd, i32 544
  %36 = ptrtoint ptr %quantization41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quantization41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp42 = icmp eq i32 %37, 1
  br i1 %cmp42, label %if.then44, label %land.lhs.true56

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %height = getelementptr i8, ptr %sd, i32 564
  %38 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %39)
  %cmp45 = icmp ult i32 %39, 577
  %. = select i1 %cmp45, ptr getelementptr inbounds ([7 x %struct.color_matrix_coefs], ptr @conv_matrix, i32 0, i32 5), ptr getelementptr inbounds ([7 x %struct.color_matrix_coefs], ptr @conv_matrix, i32 0, i32 6)
  br label %do.body74.sink.split

land.lhs.true56:                                  ; preds = %land.lhs.true
  %40 = ptrtoint ptr %quantization41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %quantization41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp58 = icmp eq i32 %41, 2
  br i1 %cmp58, label %if.then60, label %land.lhs.true56.sw.epilog_crit_edge

land.lhs.true56.sw.epilog_crit_edge:              ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then60:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  %height62 = getelementptr i8, ptr %sd, i32 564
  %42 = ptrtoint ptr %height62 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 577, i32 %43)
  %cmp63 = icmp ult i32 %43, 577
  %.357 = select i1 %cmp63, ptr getelementptr inbounds ([7 x %struct.color_matrix_coefs], ptr @conv_matrix, i32 0, i32 3), ptr getelementptr inbounds ([7 x %struct.color_matrix_coefs], ptr @conv_matrix, i32 0, i32 4)
  br label %do.body74.sink.split

sw.epilog:                                        ; preds = %land.lhs.true56.sw.epilog_crit_edge, %sw.bb37.sw.epilog_crit_edge, %if.then16.sw.epilog_crit_edge
  %blanking_codes.0.ph = phi ptr [ @tda1997x_configure_csc.yuv_blanking, %sw.bb37.sw.epilog_crit_edge ], [ @tda1997x_configure_csc.rgb_blanking, %if.then16.sw.epilog_crit_edge ], [ @tda1997x_configure_csc.yuv_blanking, %land.lhs.true56.sw.epilog_crit_edge ]
  %44 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load ptr, ptr %conv10, align 4
  %tobool.not = icmp eq ptr %.pr, null
  br i1 %tobool.not, label %sw.epilog.if.end139_crit_edge, label %sw.epilog.do.body74_crit_edge

sw.epilog.do.body74_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body74

sw.epilog.if.end139_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end139

do.body74.sink.split:                             ; preds = %if.then60, %if.then44, %if.then32, %if.then16.do.body74.sink.split_crit_edge, %sw.bb.do.body74.sink.split_crit_edge
  %conv_matrix.sink = phi ptr [ getelementptr inbounds ([7 x %struct.color_matrix_coefs], ptr @conv_matrix, i32 0, i32 1), %if.then32 ], [ getelementptr inbounds ([7 x %struct.color_matrix_coefs], ptr @conv_matrix, i32 0, i32 2), %if.then16.do.body74.sink.split_crit_edge ], [ @conv_matrix, %sw.bb.do.body74.sink.split_crit_edge ], [ %., %if.then44 ], [ %.357, %if.then60 ]
  %blanking_codes.0345.ph = phi ptr [ @tda1997x_configure_csc.rgb_blanking, %if.then32 ], [ @tda1997x_configure_csc.rgb_blanking, %if.then16.do.body74.sink.split_crit_edge ], [ @tda1997x_configure_csc.rgb_blanking, %sw.bb.do.body74.sink.split_crit_edge ], [ @tda1997x_configure_csc.yuv_blanking, %if.then44 ], [ @tda1997x_configure_csc.yuv_blanking, %if.then60 ]
  %45 = ptrtoint ptr %conv10 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %conv_matrix.sink, ptr %conv10, align 4
  br label %do.body74

do.body74:                                        ; preds = %do.body74.sink.split, %sw.epilog.do.body74_crit_edge
  %blanking_codes.0345 = phi ptr [ %blanking_codes.0.ph, %sw.epilog.do.body74_crit_edge ], [ %blanking_codes.0345.ph, %do.body74.sink.split ]
  %46 = phi ptr [ %.pr, %sw.epilog.do.body74_crit_edge ], [ %conv_matrix.sink, %do.body74.sink.split ]
  %47 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp75 = icmp sgt i32 %47, 0
  br i1 %cmp75, label %do.end80, label %do.body74.do.end97_crit_edge

do.body74.do.end97_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end97

do.end80:                                         ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #15
  %client82 = getelementptr i8, ptr %sd, i32 -8
  %48 = ptrtoint ptr %client82 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %client82, align 4
  %driver84 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 4, i32 6
  %50 = ptrtoint ptr %driver84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver84, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %adapter87 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 3
  %54 = ptrtoint ptr %adapter87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter87, align 8
  %nr.i218 = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %nr.i218 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr.i218, align 4
  %addr90 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 1
  %58 = ptrtoint ptr %addr90 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %addr90, align 2
  %conv91 = zext i16 %59 to i32
  %60 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %46, align 4
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef %53, i32 noundef %57, i32 noundef %conv91, ptr noundef %61) #17
  br label %do.end97

do.end97:                                         ; preds = %do.end80, %do.body74.do.end97_crit_edge
  %call98 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 128)
  %62 = trunc i32 %call98 to i8
  %conv101 = and i8 %62, -2
  %call102 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 128, i8 noundef zeroext %conv101)
  %63 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %conv10, align 4
  %offint1 = getelementptr inbounds %struct.color_matrix_coefs, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %offint1 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %offint1, align 4
  %67 = lshr i16 %66, 8
  %conv1.i = trunc i16 %67 to i8
  %call.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 129, i8 noundef zeroext %conv1.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end97.io_write16.exit_crit_edge, label %if.end.i

do.end97.io_write16.exit_crit_edge:               ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit

if.end.i:                                         ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i = trunc i16 %66 to i8
  %call8.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 130, i8 noundef zeroext %conv7.i) #13
  br label %io_write16.exit

io_write16.exit:                                  ; preds = %if.end.i, %do.end97.io_write16.exit_crit_edge
  %68 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %conv10, align 4
  %offint2 = getelementptr inbounds %struct.color_matrix_coefs, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %offint2 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %offint2, align 2
  %72 = lshr i16 %71, 8
  %conv1.i219 = trunc i16 %72 to i8
  %call.i220 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 131, i8 noundef zeroext %conv1.i219) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %cmp.i221 = icmp slt i32 %call.i220, 0
  br i1 %cmp.i221, label %io_write16.exit.io_write16.exit225_crit_edge, label %if.end.i224

io_write16.exit.io_write16.exit225_crit_edge:     ; preds = %io_write16.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit225

if.end.i224:                                      ; preds = %io_write16.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i222 = trunc i16 %71 to i8
  %call8.i223 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 132, i8 noundef zeroext %conv7.i222) #13
  br label %io_write16.exit225

io_write16.exit225:                               ; preds = %if.end.i224, %io_write16.exit.io_write16.exit225_crit_edge
  %73 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %conv10, align 4
  %offint3 = getelementptr inbounds %struct.color_matrix_coefs, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %offint3 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %offint3, align 4
  %77 = lshr i16 %76, 8
  %conv1.i226 = trunc i16 %77 to i8
  %call.i227 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 133, i8 noundef zeroext %conv1.i226) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %cmp.i228 = icmp slt i32 %call.i227, 0
  br i1 %cmp.i228, label %io_write16.exit225.io_write16.exit232_crit_edge, label %if.end.i231

io_write16.exit225.io_write16.exit232_crit_edge:  ; preds = %io_write16.exit225
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit232

if.end.i231:                                      ; preds = %io_write16.exit225
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i229 = trunc i16 %76 to i8
  %call8.i230 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 134, i8 noundef zeroext %conv7.i229) #13
  br label %io_write16.exit232

io_write16.exit232:                               ; preds = %if.end.i231, %io_write16.exit225.io_write16.exit232_crit_edge
  %78 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %conv10, align 4
  %p11coef = getelementptr inbounds %struct.color_matrix_coefs, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %p11coef to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %p11coef, align 2
  %82 = lshr i16 %81, 8
  %conv1.i233 = trunc i16 %82 to i8
  %call.i234 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 135, i8 noundef zeroext %conv1.i233) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i234)
  %cmp.i235 = icmp slt i32 %call.i234, 0
  br i1 %cmp.i235, label %io_write16.exit232.io_write16.exit239_crit_edge, label %if.end.i238

io_write16.exit232.io_write16.exit239_crit_edge:  ; preds = %io_write16.exit232
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit239

if.end.i238:                                      ; preds = %io_write16.exit232
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i236 = trunc i16 %81 to i8
  %call8.i237 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 136, i8 noundef zeroext %conv7.i236) #13
  br label %io_write16.exit239

io_write16.exit239:                               ; preds = %if.end.i238, %io_write16.exit232.io_write16.exit239_crit_edge
  %83 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %conv10, align 4
  %p12coef = getelementptr inbounds %struct.color_matrix_coefs, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %p12coef to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %p12coef, align 4
  %87 = lshr i16 %86, 8
  %conv1.i240 = trunc i16 %87 to i8
  %call.i241 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 137, i8 noundef zeroext %conv1.i240) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %cmp.i242 = icmp slt i32 %call.i241, 0
  br i1 %cmp.i242, label %io_write16.exit239.io_write16.exit246_crit_edge, label %if.end.i245

io_write16.exit239.io_write16.exit246_crit_edge:  ; preds = %io_write16.exit239
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit246

if.end.i245:                                      ; preds = %io_write16.exit239
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i243 = trunc i16 %86 to i8
  %call8.i244 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 138, i8 noundef zeroext %conv7.i243) #13
  br label %io_write16.exit246

io_write16.exit246:                               ; preds = %if.end.i245, %io_write16.exit239.io_write16.exit246_crit_edge
  %88 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %conv10, align 4
  %p13coef = getelementptr inbounds %struct.color_matrix_coefs, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %p13coef to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %p13coef, align 2
  %92 = lshr i16 %91, 8
  %conv1.i247 = trunc i16 %92 to i8
  %call.i248 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 139, i8 noundef zeroext %conv1.i247) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i248)
  %cmp.i249 = icmp slt i32 %call.i248, 0
  br i1 %cmp.i249, label %io_write16.exit246.io_write16.exit253_crit_edge, label %if.end.i252

io_write16.exit246.io_write16.exit253_crit_edge:  ; preds = %io_write16.exit246
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit253

if.end.i252:                                      ; preds = %io_write16.exit246
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i250 = trunc i16 %91 to i8
  %call8.i251 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 140, i8 noundef zeroext %conv7.i250) #13
  br label %io_write16.exit253

io_write16.exit253:                               ; preds = %if.end.i252, %io_write16.exit246.io_write16.exit253_crit_edge
  %93 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %conv10, align 4
  %p21coef = getelementptr inbounds %struct.color_matrix_coefs, ptr %94, i32 0, i32 7
  %95 = ptrtoint ptr %p21coef to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %p21coef, align 4
  %97 = lshr i16 %96, 8
  %conv1.i254 = trunc i16 %97 to i8
  %call.i255 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 141, i8 noundef zeroext %conv1.i254) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i255)
  %cmp.i256 = icmp slt i32 %call.i255, 0
  br i1 %cmp.i256, label %io_write16.exit253.io_write16.exit260_crit_edge, label %if.end.i259

io_write16.exit253.io_write16.exit260_crit_edge:  ; preds = %io_write16.exit253
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit260

if.end.i259:                                      ; preds = %io_write16.exit253
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i257 = trunc i16 %96 to i8
  %call8.i258 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 142, i8 noundef zeroext %conv7.i257) #13
  br label %io_write16.exit260

io_write16.exit260:                               ; preds = %if.end.i259, %io_write16.exit253.io_write16.exit260_crit_edge
  %98 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %conv10, align 4
  %p22coef = getelementptr inbounds %struct.color_matrix_coefs, ptr %99, i32 0, i32 8
  %100 = ptrtoint ptr %p22coef to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %p22coef, align 2
  %102 = lshr i16 %101, 8
  %conv1.i261 = trunc i16 %102 to i8
  %call.i262 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 143, i8 noundef zeroext %conv1.i261) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %cmp.i263 = icmp slt i32 %call.i262, 0
  br i1 %cmp.i263, label %io_write16.exit260.io_write16.exit267_crit_edge, label %if.end.i266

io_write16.exit260.io_write16.exit267_crit_edge:  ; preds = %io_write16.exit260
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit267

if.end.i266:                                      ; preds = %io_write16.exit260
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i264 = trunc i16 %101 to i8
  %call8.i265 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 144, i8 noundef zeroext %conv7.i264) #13
  br label %io_write16.exit267

io_write16.exit267:                               ; preds = %if.end.i266, %io_write16.exit260.io_write16.exit267_crit_edge
  %103 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %conv10, align 4
  %p23coef = getelementptr inbounds %struct.color_matrix_coefs, ptr %104, i32 0, i32 9
  %105 = ptrtoint ptr %p23coef to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %p23coef, align 4
  %107 = lshr i16 %106, 8
  %conv1.i268 = trunc i16 %107 to i8
  %call.i269 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 145, i8 noundef zeroext %conv1.i268) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %cmp.i270 = icmp slt i32 %call.i269, 0
  br i1 %cmp.i270, label %io_write16.exit267.io_write16.exit274_crit_edge, label %if.end.i273

io_write16.exit267.io_write16.exit274_crit_edge:  ; preds = %io_write16.exit267
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit274

if.end.i273:                                      ; preds = %io_write16.exit267
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i271 = trunc i16 %106 to i8
  %call8.i272 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 146, i8 noundef zeroext %conv7.i271) #13
  br label %io_write16.exit274

io_write16.exit274:                               ; preds = %if.end.i273, %io_write16.exit267.io_write16.exit274_crit_edge
  %108 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %conv10, align 4
  %p31coef = getelementptr inbounds %struct.color_matrix_coefs, ptr %109, i32 0, i32 10
  %110 = ptrtoint ptr %p31coef to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %p31coef, align 2
  %112 = lshr i16 %111, 8
  %conv1.i275 = trunc i16 %112 to i8
  %call.i276 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 147, i8 noundef zeroext %conv1.i275) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i276)
  %cmp.i277 = icmp slt i32 %call.i276, 0
  br i1 %cmp.i277, label %io_write16.exit274.io_write16.exit281_crit_edge, label %if.end.i280

io_write16.exit274.io_write16.exit281_crit_edge:  ; preds = %io_write16.exit274
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit281

if.end.i280:                                      ; preds = %io_write16.exit274
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i278 = trunc i16 %111 to i8
  %call8.i279 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 148, i8 noundef zeroext %conv7.i278) #13
  br label %io_write16.exit281

io_write16.exit281:                               ; preds = %if.end.i280, %io_write16.exit274.io_write16.exit281_crit_edge
  %113 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %conv10, align 4
  %p32coef = getelementptr inbounds %struct.color_matrix_coefs, ptr %114, i32 0, i32 11
  %115 = ptrtoint ptr %p32coef to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %p32coef, align 4
  %117 = lshr i16 %116, 8
  %conv1.i282 = trunc i16 %117 to i8
  %call.i283 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 149, i8 noundef zeroext %conv1.i282) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i283)
  %cmp.i284 = icmp slt i32 %call.i283, 0
  br i1 %cmp.i284, label %io_write16.exit281.io_write16.exit288_crit_edge, label %if.end.i287

io_write16.exit281.io_write16.exit288_crit_edge:  ; preds = %io_write16.exit281
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit288

if.end.i287:                                      ; preds = %io_write16.exit281
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i285 = trunc i16 %116 to i8
  %call8.i286 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 150, i8 noundef zeroext %conv7.i285) #13
  br label %io_write16.exit288

io_write16.exit288:                               ; preds = %if.end.i287, %io_write16.exit281.io_write16.exit288_crit_edge
  %118 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %conv10, align 4
  %p33coef = getelementptr inbounds %struct.color_matrix_coefs, ptr %119, i32 0, i32 12
  %120 = ptrtoint ptr %p33coef to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %p33coef, align 2
  %122 = lshr i16 %121, 8
  %conv1.i289 = trunc i16 %122 to i8
  %call.i290 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 151, i8 noundef zeroext %conv1.i289) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %cmp.i291 = icmp slt i32 %call.i290, 0
  br i1 %cmp.i291, label %io_write16.exit288.io_write16.exit295_crit_edge, label %if.end.i294

io_write16.exit288.io_write16.exit295_crit_edge:  ; preds = %io_write16.exit288
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit295

if.end.i294:                                      ; preds = %io_write16.exit288
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i292 = trunc i16 %121 to i8
  %call8.i293 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 152, i8 noundef zeroext %conv7.i292) #13
  br label %io_write16.exit295

io_write16.exit295:                               ; preds = %if.end.i294, %io_write16.exit288.io_write16.exit295_crit_edge
  %123 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %conv10, align 4
  %offout1 = getelementptr inbounds %struct.color_matrix_coefs, ptr %124, i32 0, i32 13
  %125 = ptrtoint ptr %offout1 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %offout1, align 4
  %127 = lshr i16 %126, 8
  %conv1.i296 = trunc i16 %127 to i8
  %call.i297 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 153, i8 noundef zeroext %conv1.i296) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %cmp.i298 = icmp slt i32 %call.i297, 0
  br i1 %cmp.i298, label %io_write16.exit295.io_write16.exit302_crit_edge, label %if.end.i301

io_write16.exit295.io_write16.exit302_crit_edge:  ; preds = %io_write16.exit295
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit302

if.end.i301:                                      ; preds = %io_write16.exit295
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i299 = trunc i16 %126 to i8
  %call8.i300 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 154, i8 noundef zeroext %conv7.i299) #13
  br label %io_write16.exit302

io_write16.exit302:                               ; preds = %if.end.i301, %io_write16.exit295.io_write16.exit302_crit_edge
  %128 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %conv10, align 4
  %offout2 = getelementptr inbounds %struct.color_matrix_coefs, ptr %129, i32 0, i32 14
  %130 = ptrtoint ptr %offout2 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %offout2, align 2
  %132 = lshr i16 %131, 8
  %conv1.i303 = trunc i16 %132 to i8
  %call.i304 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 155, i8 noundef zeroext %conv1.i303) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %cmp.i305 = icmp slt i32 %call.i304, 0
  br i1 %cmp.i305, label %io_write16.exit302.io_write16.exit309_crit_edge, label %if.end.i308

io_write16.exit302.io_write16.exit309_crit_edge:  ; preds = %io_write16.exit302
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit309

if.end.i308:                                      ; preds = %io_write16.exit302
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i306 = trunc i16 %131 to i8
  %call8.i307 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 156, i8 noundef zeroext %conv7.i306) #13
  br label %io_write16.exit309

io_write16.exit309:                               ; preds = %if.end.i308, %io_write16.exit302.io_write16.exit309_crit_edge
  %133 = ptrtoint ptr %conv10 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %conv10, align 4
  %offout3 = getelementptr inbounds %struct.color_matrix_coefs, ptr %134, i32 0, i32 15
  %135 = ptrtoint ptr %offout3 to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %offout3, align 4
  %137 = lshr i16 %136, 8
  %conv1.i310 = trunc i16 %137 to i8
  %call.i311 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 157, i8 noundef zeroext %conv1.i310) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %cmp.i312 = icmp slt i32 %call.i311, 0
  br i1 %cmp.i312, label %io_write16.exit309.if.then141_crit_edge, label %if.end.i315

io_write16.exit309.if.then141_crit_edge:          ; preds = %io_write16.exit309
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then141

if.end.i315:                                      ; preds = %io_write16.exit309
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i313 = trunc i16 %136 to i8
  %call8.i314 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 158, i8 noundef zeroext %conv7.i313) #13
  br label %if.then141

if.end139:                                        ; preds = %sw.epilog.if.end139_crit_edge, %sw.bb.if.end139_crit_edge, %do.end9.if.end139_crit_edge
  %blanking_codes.0353 = phi ptr [ %blanking_codes.0.ph, %sw.epilog.if.end139_crit_edge ], [ @tda1997x_configure_csc.rgb_blanking, %sw.bb.if.end139_crit_edge ], [ null, %do.end9.if.end139_crit_edge ]
  %tobool140.not352 = phi i1 [ false, %sw.epilog.if.end139_crit_edge ], [ false, %sw.bb.if.end139_crit_edge ], [ true, %do.end9.if.end139_crit_edge ]
  %call134 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 128)
  %138 = trunc i32 %call134 to i8
  %conv137 = or i8 %138, 1
  %call138 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 128, i8 noundef zeroext %conv137)
  br i1 %tobool140.not352, label %if.end139.if.end145_crit_edge, label %if.end139.if.then141_crit_edge

if.end139.if.then141_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then141

if.end139.if.end145_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145

if.then141:                                       ; preds = %if.end139.if.then141_crit_edge, %if.end.i315, %io_write16.exit309.if.then141_crit_edge
  %blanking_codes.0344356 = phi ptr [ %blanking_codes.0353, %if.end139.if.then141_crit_edge ], [ %blanking_codes.0345, %io_write16.exit309.if.then141_crit_edge ], [ %blanking_codes.0345, %if.end.i315 ]
  %139 = ptrtoint ptr %blanking_codes.0344356 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %blanking_codes.0344356, align 2
  %141 = lshr i16 %140, 8
  %conv1.i317 = trunc i16 %141 to i8
  %call.i318 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 218, i8 noundef zeroext %conv1.i317) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318)
  %cmp.i319 = icmp slt i32 %call.i318, 0
  br i1 %cmp.i319, label %if.then141.io_write16.exit323_crit_edge, label %if.end.i322

if.then141.io_write16.exit323_crit_edge:          ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit323

if.end.i322:                                      ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i320 = trunc i16 %140 to i8
  %call8.i321 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 219, i8 noundef zeroext %conv7.i320) #13
  br label %io_write16.exit323

io_write16.exit323:                               ; preds = %if.end.i322, %if.then141.io_write16.exit323_crit_edge
  %code_bu = getelementptr inbounds %struct.blanking_codes, ptr %blanking_codes.0344356, i32 0, i32 1
  %142 = ptrtoint ptr %code_bu to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %code_bu, align 2
  %144 = lshr i16 %143, 8
  %conv1.i324 = trunc i16 %144 to i8
  %call.i325 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 220, i8 noundef zeroext %conv1.i324) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i325)
  %cmp.i326 = icmp slt i32 %call.i325, 0
  br i1 %cmp.i326, label %io_write16.exit323.io_write16.exit330_crit_edge, label %if.end.i329

io_write16.exit323.io_write16.exit330_crit_edge:  ; preds = %io_write16.exit323
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_write16.exit330

if.end.i329:                                      ; preds = %io_write16.exit323
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i327 = trunc i16 %143 to i8
  %call8.i328 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 221, i8 noundef zeroext %conv7.i327) #13
  br label %io_write16.exit330

io_write16.exit330:                               ; preds = %if.end.i329, %io_write16.exit323.io_write16.exit330_crit_edge
  %code_rv = getelementptr inbounds %struct.blanking_codes, ptr %blanking_codes.0344356, i32 0, i32 2
  %145 = ptrtoint ptr %code_rv to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %code_rv, align 2
  %147 = lshr i16 %146, 8
  %conv1.i331 = trunc i16 %147 to i8
  %call.i332 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 222, i8 noundef zeroext %conv1.i331) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i332)
  %cmp.i333 = icmp slt i32 %call.i332, 0
  br i1 %cmp.i333, label %io_write16.exit330.if.end145_crit_edge, label %if.end.i336

io_write16.exit330.if.end145_crit_edge:           ; preds = %io_write16.exit330
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end145

if.end.i336:                                      ; preds = %io_write16.exit330
  call void @__sanitizer_cov_trace_pc() #15
  %conv7.i334 = trunc i16 %146 to i8
  %call8.i335 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 223, i8 noundef zeroext %conv7.i334) #13
  br label %if.end145

if.end145:                                        ; preds = %if.end.i336, %io_write16.exit330.if.end145_crit_edge, %if.end139.if.end145_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_init_cfg(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i.not = icmp eq i16 %1, 0
  br i1 %cmp.not.i.not, label %do.end.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, !prof !507

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.176, i32 noundef 998, i32 noundef 9, ptr noundef null) #13
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %mbus_codes = getelementptr i8, ptr %sd, i32 696
  %4 = ptrtoint ptr %mbus_codes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbus_codes, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %code, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -60
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr i8, ptr %sd, i32 -8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef nonnull @.str.178, i32 noundef %14) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %index8 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %15 = ptrtoint ptr %index8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp9 = icmp ugt i32 %16, 4
  br i1 %cmp9, label %do.end7.cleanup_crit_edge, label %if.end12

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %do.end7
  %arrayidx = getelementptr %struct.tda1997x_state, ptr %add.ptr.i, i32 0, i32 25, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %code19 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %19 = ptrtoint ptr %code19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %code19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -22, %do.end7.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_get_format(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr i8, ptr %sd, i32 -8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pad, align 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef nonnull @.str.180, i32 noundef %14, i32 noundef %16) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %format8 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %17 = call ptr @memset(ptr %format8, i32 0, i32 48)
  %18 = getelementptr i8, ptr %sd, i32 560
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %18, align 1
  %21 = ptrtoint ptr %format8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %format8, align 4
  %height.i = getelementptr i8, ptr %sd, i32 564
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %height.i, align 1
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %height2.i, align 4
  %colorimetry.i = getelementptr i8, ptr %sd, i32 536
  %25 = ptrtoint ptr %colorimetry.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colorimetry.i, align 4
  %colorspace3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %colorspace3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %colorspace3.i, align 4
  %interlaced.i = getelementptr i8, ptr %sd, i32 568
  %28 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %interlaced.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 5
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond.i, ptr %field.i, align 4
  %31 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp10 = icmp eq i32 %32, 0
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %do.end7
  %pad13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %33 = ptrtoint ptr %pad13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pad13, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %35 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %34, %conv.i
  br i1 %cmp.not.i, label %if.then12.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !505

if.then12.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.176, i32 noundef 998, i32 noundef 9, ptr noundef null) #13
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then12.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %34, %if.then12.v4l2_subdev_get_try_format.exit_crit_edge ]
  %37 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sd_state, align 4
  %code = getelementptr %struct.v4l2_subdev_pad_config, ptr %38, i32 %spec.select.i, i32 0, i32 2
  br label %if.end19

if.else:                                          ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  %mbus_code = getelementptr i8, ptr %sd, i32 716
  br label %if.end19

if.end19:                                         ; preds = %if.else, %v4l2_subdev_get_try_format.exit
  %mbus_code.sink = phi ptr [ %mbus_code, %if.else ], [ %code, %v4l2_subdev_get_try_format.exit ]
  %39 = ptrtoint ptr %mbus_code.sink to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mbus_code.sink, align 4
  %code18 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %41 = ptrtoint ptr %code18 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %code18, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_set_format(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -60
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end9_crit_edge

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr i8, ptr %sd, i32 -8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %13 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pad, align 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %format, align 4
  %code6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %code6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %code6, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef nonnull @.str.182, i32 noundef %14, i32 noundef %16, i32 noundef %18) #17
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %code13 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %code13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %code13, align 4
  %arrayidx = getelementptr i8, ptr %sd, i32 696
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp14 = icmp eq i32 %20, %22
  br i1 %cmp14, label %do.end9.for.end_crit_edge, label %for.cond

do.end9.for.end_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond:                                         ; preds = %do.end9
  %arrayidx.1 = getelementptr i8, ptr %sd, i32 700
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %24)
  %cmp14.1 = icmp eq i32 %20, %24
  br i1 %cmp14.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %sd, i32 704
  %25 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %26)
  %cmp14.2 = icmp eq i32 %20, %26
  br i1 %cmp14.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %sd, i32 708
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %28)
  %cmp14.3 = icmp eq i32 %20, %28
  br i1 %cmp14.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %sd, i32 712
  %29 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %30)
  %cmp14.4 = icmp ne i32 %20, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %or.cond = or i1 %cmp14.4, %tobool.not
  br i1 %or.cond, label %for.cond.3.if.then20_crit_edge, label %for.cond.3.if.end23_crit_edge

for.cond.3.if.end23_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.cond.3.if.then20_crit_edge:                   ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

for.end:                                          ; preds = %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %do.end9.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.old = icmp eq i32 %20, 0
  br i1 %tobool.not.old, label %for.end.if.then20_crit_edge, label %for.end.if.end23_crit_edge

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

for.end.if.then20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then20

if.then20:                                        ; preds = %for.end.if.then20_crit_edge, %for.cond.3.if.then20_crit_edge
  %mbus_codes21 = getelementptr i8, ptr %sd, i32 696
  %31 = ptrtoint ptr %mbus_codes21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mbus_codes21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %for.end.if.end23_crit_edge, %for.cond.3.if.end23_crit_edge
  %code.1 = phi i32 [ %20, %for.end.if.end23_crit_edge ], [ %32, %if.then20 ], [ %20, %for.cond.3.if.end23_crit_edge ]
  %format24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %33 = call ptr @memset(ptr %format24, i32 0, i32 48)
  %34 = getelementptr i8, ptr %sd, i32 560
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %34, align 1
  %37 = ptrtoint ptr %format24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %format24, align 4
  %height.i = getelementptr i8, ptr %sd, i32 564
  %38 = ptrtoint ptr %height.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %height.i, align 1
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %height2.i, align 4
  %colorimetry.i = getelementptr i8, ptr %sd, i32 536
  %41 = ptrtoint ptr %colorimetry.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %colorimetry.i, align 4
  %colorspace3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %colorspace3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %colorspace3.i, align 4
  %interlaced.i = getelementptr i8, ptr %sd, i32 568
  %44 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %interlaced.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 5
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %46 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %cond.i, ptr %field.i, align 4
  %47 = ptrtoint ptr %code13 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %code.1, ptr %code13, align 4
  %48 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp28 = icmp eq i32 %49, 0
  br i1 %cmp28, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end23
  %pad31 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %50 = ptrtoint ptr %pad31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pad31, align 4
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %52 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %num_pads.i, align 4
  %conv.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv.i)
  %cmp.not.i = icmp ult i32 %51, %conv.i
  br i1 %cmp.not.i, label %if.then30.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !505

if.then30.v4l2_subdev_get_try_format.exit_crit_edge: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.176, i32 noundef 998, i32 noundef 9, ptr noundef null) #13
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %if.then30.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ %51, %if.then30.v4l2_subdev_get_try_format.exit_crit_edge ]
  %54 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %55, i32 %spec.select.i
  %56 = call ptr @memcpy(ptr %arrayidx.i, ptr %format24, i32 48)
  br label %cleanup42

if.else:                                          ; preds = %if.end23
  %call36 = tail call fastcc i32 @tda1997x_setup_format(ptr noundef %add.ptr.i, i32 noundef %code.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.else.cleanup42_crit_edge

if.else.cleanup42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup42

if.end39:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @tda1997x_configure_csc(ptr noundef %sd)
  tail call fastcc void @tda1997x_configure_vidout(ptr noundef %add.ptr.i)
  br label %cleanup42

cleanup42:                                        ; preds = %if.end39, %if.else.cleanup42_crit_edge, %v4l2_subdev_get_try_format.exit
  %retval.1 = phi i32 [ 0, %if.end39 ], [ 0, %v4l2_subdev_get_try_format.exit ], [ %call36, %if.else.cleanup42_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_get_edid(ptr nocapture noundef readonly %sd, ptr nocapture noundef %edid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr i8, ptr %sd, i32 -8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %edid, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef nonnull @.str.184, i32 noundef %14) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %15 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %16 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8 = icmp eq i32 %17, 0
  br i1 %cmp8, label %land.lhs.true, label %do.end7.if.end16_crit_edge

do.end7.if.end16_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true:                                    ; preds = %do.end7
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %18 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp10 = icmp eq i32 %19, 0
  br i1 %cmp10, label %if.then12, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %blocks14 = getelementptr i8, ptr %sd, i32 1292
  %20 = ptrtoint ptr %blocks14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %blocks14, align 4
  %22 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %blocks, align 4
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %do.end7.if.end16_crit_edge
  %edid17 = getelementptr i8, ptr %sd, i32 1032
  %present = getelementptr i8, ptr %sd, i32 1288
  %23 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end16.cleanup_crit_edge, label %if.end19

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  %blocks22 = getelementptr i8, ptr %sd, i32 1292
  %25 = ptrtoint ptr %blocks22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blocks22, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %17)
  %cmp23.not = icmp ugt i32 %26, %17
  br i1 %cmp23.not, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %blocks28 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %27 = ptrtoint ptr %blocks28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blocks28, align 4
  %add = add i32 %28, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %26)
  %cmp31 = icmp ugt i32 %add, %26
  br i1 %cmp31, label %if.then33, label %if.end26.if.end38_crit_edge

if.end26.if.end38_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %26, %17
  %29 = ptrtoint ptr %blocks28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %blocks28, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end26.if.end38_crit_edge
  %edid39 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  %30 = ptrtoint ptr %edid39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edid39, align 4
  %mul = shl i32 %17, 7
  %add.ptr = getelementptr i8, ptr %edid17, i32 %mul
  %32 = ptrtoint ptr %blocks28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blocks28, align 4
  %mul45 = shl i32 %33, 7
  %34 = call ptr @memcpy(ptr %31, ptr %add.ptr, i32 %mul45)
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end19.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then12
  %retval.0 = phi i32 [ 0, %if.then12 ], [ 0, %if.end38 ], [ -61, %if.end16.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_set_edid(ptr noundef %sd, ptr nocapture noundef %edid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr i8, ptr %sd, i32 -8
  %1 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4, i32 6
  %3 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv = zext i16 %12 to i32
  %13 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %edid, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef %6, i32 noundef %10, i32 noundef %conv, ptr noundef nonnull @.str.185, i32 noundef %14) #17
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %reserved = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 3
  %15 = call ptr @memset(ptr %reserved, i32 0, i32 20)
  %start_block = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 1
  %16 = ptrtoint ptr %start_block to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start_block, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp8.not = icmp eq i32 %17, 0
  br i1 %cmp8.not, label %if.end11, label %do.end7.cleanup_crit_edge

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %do.end7
  %blocks = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 2
  %18 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp12 = icmp eq i32 %19, 0
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %blocks16 = getelementptr i8, ptr %sd, i32 1292
  %20 = ptrtoint ptr %blocks16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %blocks16, align 4
  %present = getelementptr i8, ptr %sd, i32 1288
  %21 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %present, align 4
  tail call fastcc void @tda1997x_disable_edid(ptr noundef %sd)
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp20 = icmp ugt i32 %19, 2
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %blocks, align 4
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  tail call fastcc void @tda1997x_disable_edid(ptr noundef %sd)
  %edid28 = getelementptr inbounds %struct.v4l2_edid, ptr %edid, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end24
  %i.078 = phi i32 [ 0, %if.end24 ], [ %inc, %for.body.for.body_crit_edge ]
  %23 = trunc i32 %i.078 to i16
  %conv27 = add i16 %23, 8192
  %24 = ptrtoint ptr %edid28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edid28, align 4
  %arrayidx = getelementptr i8, ptr %25, i32 %i.078
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %call29 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext %conv27, i8 noundef zeroext %27)
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.body.for.body33_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.body33_crit_edge:                    ; preds = %for.body
  br label %for.body33

for.body33:                                       ; preds = %for.body33.for.body33_crit_edge, %for.body.for.body33_crit_edge
  %i.179 = phi i32 [ %inc41, %for.body33.for.body33_crit_edge ], [ 0, %for.body.for.body33_crit_edge ]
  %28 = trunc i32 %i.179 to i16
  %conv35 = add i16 %28, 8448
  %29 = ptrtoint ptr %edid28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %edid28, align 4
  %add37 = add nuw nsw i32 %i.179, 128
  %arrayidx38 = getelementptr i8, ptr %30, i32 %add37
  %31 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx38, align 1
  %call39 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext %conv35, i8 noundef zeroext %32)
  %inc41 = add nuw nsw i32 %i.179, 1
  %exitcond80.not = icmp eq i32 %inc41, 128
  br i1 %exitcond80.not, label %for.end42, label %for.body33.for.body33_crit_edge

for.body33.for.body33_crit_edge:                  ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body33

for.end42:                                        ; preds = %for.body33
  %edid43 = getelementptr i8, ptr %sd, i32 1032
  %33 = ptrtoint ptr %edid28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %edid28, align 4
  %35 = call ptr @memcpy(ptr %edid43, ptr %34, i32 256)
  %36 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %blocks, align 4
  %blocks49 = getelementptr i8, ptr %sd, i32 1292
  %38 = ptrtoint ptr %blocks49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %blocks49, align 4
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i = icmp sgt i32 %39, 0
  br i1 %cmp.i, label %do.end.i, label %for.end42.tda1997x_enable_edid.exit_crit_edge

for.end42.tda1997x_enable_edid.exit_crit_edge:    ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %tda1997x_enable_edid.exit

do.end.i:                                         ; preds = %for.end42
  call void @__sanitizer_cov_trace_pc() #15
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name.i, ptr noundef nonnull @.str.187) #17
  br label %tda1997x_enable_edid.exit

tda1997x_enable_edid.exit:                        ; preds = %do.end.i, %for.end42.tda1997x_enable_edid.exit_crit_edge
  %delayed_work_enable_hpd.i = getelementptr i8, ptr %sd, i32 1296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %40 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %40, ptr noundef %delayed_work_enable_hpd.i, i32 noundef 10) #13
  br label %cleanup

cleanup:                                          ; preds = %tda1997x_enable_edid.exit, %if.then22, %if.then14, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then14 ], [ -7, %if.then22 ], [ 0, %tda1997x_enable_edid.exit ], [ -22, %do.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda1997x_get_dv_timings_cap(ptr nocapture noundef readnone %sd, ptr nocapture noundef writeonly %cap) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %cap, ptr @tda1997x_dv_timings_cap, i32 144)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_enum_dv_timings(ptr nocapture noundef readnone %sd, ptr noundef %timings) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @v4l2_enum_dv_timings_cap(ptr noundef %timings, ptr noundef nonnull @tda1997x_dv_timings_cap, ptr noundef null, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda1997x_configure_vidout(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 4
  %vid_fmt = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 27
  %0 = ptrtoint ptr %vid_fmt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  %vidout_delay_pclk = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 10
  %2 = ptrtoint ptr %vidout_delay_pclk to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vidout_delay_pclk, align 4
  %shl = shl i8 %3, 4
  %conv6 = zext i1 %cmp to i8
  %or = or i8 %shl, %conv6
  %vidout_inv_pclk = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %vidout_inv_pclk to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vidout_inv_pclk, align 4, !range !508
  %6 = shl nuw nsw i8 %5, 2
  %or111 = or i8 %or, %6
  %call = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 235, i8 noundef zeroext %or111)
  %7 = ptrtoint ptr %vid_fmt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %vid_fmt, align 4
  %.off = add i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  %spec.select3 = select i1 %switch, i8 15, i8 0
  %call21 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 224, i8 noundef zeroext %spec.select3)
  %9 = ptrtoint ptr %vid_fmt to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %vid_fmt, align 4
  %and = and i8 %10, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %cmp27 = icmp eq i8 %10, 2
  %11 = or i8 %and, 24
  %spec.select = select i1 %cmp27, i8 %11, i8 %and
  %12 = or i8 %spec.select, -128
  %call37 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 234, i8 noundef zeroext %12)
  %call38 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 128)
  %13 = trunc i32 %call38 to i8
  %conv47 = and i8 %13, -3
  %masksel = select i1 %switch, i8 0, i8 2
  %reg.1 = or i8 %conv47, %masksel
  %14 = ptrtoint ptr %vid_fmt to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %vid_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp51 = icmp eq i8 %15, 0
  %16 = or i8 %reg.1, 16
  %17 = and i8 %reg.1, -49
  %reg.2 = select i1 %cmp51, i8 %16, i8 %17
  %vidout_delay_vs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 8
  %18 = ptrtoint ptr %vidout_delay_vs to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %vidout_delay_vs, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %cmp63 = icmp ult i8 %19, 4
  br i1 %cmp63, label %entry.if.then69_crit_edge, label %lor.lhs.false65

entry.if.then69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then69

lor.lhs.false65:                                  ; preds = %entry
  %vidout_delay_hs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %vidout_delay_hs to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %vidout_delay_hs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp67 = icmp ult i8 %21, 4
  br i1 %cmp67, label %lor.lhs.false65.if.then69_crit_edge, label %lor.lhs.false65.if.end73_crit_edge

lor.lhs.false65.if.end73_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

lor.lhs.false65.if.then69_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then69

if.then69:                                        ; preds = %lor.lhs.false65.if.then69_crit_edge, %entry.if.then69_crit_edge
  %22 = and i8 %reg.2, -33
  br label %if.end73

if.end73:                                         ; preds = %if.then69, %lor.lhs.false65.if.end73_crit_edge
  %reg.3 = phi i8 [ %22, %if.then69 ], [ %reg.2, %lor.lhs.false65.if.end73_crit_edge ]
  %call74 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 128, i8 noundef zeroext %reg.3)
  %vidout_delay_de = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 9
  %23 = ptrtoint ptr %vidout_delay_de to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %vidout_delay_de, align 1
  %shl76 = shl i8 %24, 4
  %vidout_inv_de = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %vidout_inv_de to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %vidout_inv_de, align 1, !range !508
  %27 = shl nuw nsw i8 %26, 2
  %or80 = or i8 %27, %shl76
  %vidout_sel_de = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 13
  %28 = ptrtoint ptr %vidout_sel_de to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %vidout_sel_de, align 1
  %or83 = or i8 %or80, %29
  %call85 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 238, i8 noundef zeroext %or83)
  %30 = ptrtoint ptr %vid_fmt to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %vid_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp88.not = icmp eq i8 %31, 2
  br i1 %cmp88.not, label %if.end73.if.end103_crit_edge, label %if.then90

if.end73.if.end103_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end103

if.then90:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #15
  %vidout_delay_hs91 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %vidout_delay_hs91 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vidout_delay_hs91, align 1
  %shl93 = shl i8 %33, 4
  %vidout_inv_hs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %vidout_inv_hs to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %vidout_inv_hs, align 2, !range !508
  %36 = shl nuw nsw i8 %35, 2
  %or97 = or i8 %36, %shl93
  %vidout_sel_hs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 11
  %37 = ptrtoint ptr %vidout_sel_hs to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %vidout_sel_hs, align 1
  %or100 = or i8 %or97, %38
  br label %if.end103

if.end103:                                        ; preds = %if.then90, %if.end73.if.end103_crit_edge
  %reg.4 = phi i8 [ %or100, %if.then90 ], [ 3, %if.end73.if.end103_crit_edge ]
  %call104 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 236, i8 noundef zeroext %reg.4)
  %39 = ptrtoint ptr %vid_fmt to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %vid_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %40)
  %cmp107.not = icmp eq i8 %40, 2
  br i1 %cmp107.not, label %if.end103.if.end122_crit_edge, label %if.then109

if.end103.if.end122_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then109:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %vidout_delay_vs to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %vidout_delay_vs, align 2
  %shl112 = shl i8 %42, 4
  %vidout_inv_vs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 5
  %43 = ptrtoint ptr %vidout_inv_vs to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vidout_inv_vs, align 1, !range !508
  %45 = shl nuw nsw i8 %44, 2
  %or116 = or i8 %45, %shl112
  %vidout_sel_vs = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 1, i32 12
  %46 = ptrtoint ptr %vidout_sel_vs to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %vidout_sel_vs, align 2
  %or119 = or i8 %or116, %47
  br label %if.end122

if.end122:                                        ; preds = %if.then109, %if.end103.if.end122_crit_edge
  %reg.5 = phi i8 [ %or119, %if.then109 ], [ 3, %if.end103.if.end122_crit_edge ]
  %call123 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 237, i8 noundef zeroext %reg.5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda1997x_disable_edid(ptr noundef %sd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name, ptr noundef nonnull @.str.186) #17
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %delayed_work_enable_hpd = getelementptr i8, ptr %sd, i32 1296
  %call5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %delayed_work_enable_hpd) #13
  %call.i = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 8325) #13
  %call1.i = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 8324) #13
  %call3.i = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 3) #13
  %1 = trunc i32 %call1.i to i8
  %conv9.i = and i8 %1, -13
  %2 = trunc i32 %call3.i to i8
  %conv12.i = and i8 %2, -124
  %call13.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 8324, i8 noundef zeroext %conv9.i) #13
  %call14.i = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 3, i8 noundef zeroext %conv12.i) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_enum_dv_timings_cap(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda1997x_reset_n1(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 4
  %call = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 4608, i8 noundef zeroext 3)
  %call2 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 4768, i8 noundef zeroext 1)
  %call3 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 4769, i8 noundef zeroext 1)
  %call4 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 4773, i8 noundef zeroext 1)
  %call5 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 4856)
  %0 = trunc i32 %call5 to i8
  %1 = and i8 %0, -7
  %conv9 = or i8 %1, 2
  %call10 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 4856, i8 noundef zeroext %conv9)
  %call11 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 4608, i8 noundef zeroext 0)
  %call12 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 4768, i8 noundef zeroext 0)
  %call13 = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 4856)
  %2 = trunc i32 %call13 to i8
  %conv17 = and i8 %2, -7
  %call18 = tail call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 4856, i8 noundef zeroext %conv17)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda1997x_hdmi_info_reset(ptr noundef %sd, i8 noundef zeroext %info_rst, i1 noundef zeroext %reset_sus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 12)
  %call1 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 12, i8 noundef zeroext %info_rst)
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call3 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 18)
  %conv4 = trunc i32 %call3 to i8
  %call5 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 18, i8 noundef zeroext %conv4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call6 = tail call fastcc i32 @io_read(ptr noundef %sd, i16 noundef zeroext 64)
  %0 = trunc i32 %call6 to i8
  %conv10 = and i8 %0, -2
  %not.reset_sus = xor i1 %reset_sus, true
  %masksel = zext i1 %not.reset_sus to i8
  %reg.0 = or i8 %conv10, %masksel
  %call16 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 64, i8 noundef zeroext %reg.0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda1997x_configure_audout(ptr noundef %sd, i8 noundef zeroext %channel_assignment) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %audout_format = getelementptr i8, ptr %sd, i32 -28
  %0 = ptrtoint ptr %audout_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audout_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 124, i8 noundef zeroext %channel_assignment)
  %2 = ptrtoint ptr %audout_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %audout_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 2
  %switch.select = select i1 %switch.selectcmp, i8 32, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp1 = icmp eq i32 %3, 1
  %switch.select2 = select i1 %switch.selectcmp1, i8 0, i8 %switch.select
  %audio_type = getelementptr i8, ptr %sd, i32 932
  %4 = ptrtoint ptr %audio_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audio_type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %5, label %if.end.sw.epilog39_crit_edge [
    i32 1, label %sw.bb21
    i32 2, label %sw.bb13
    i32 3, label %sw.bb17
  ]

if.end.sw.epilog39_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog39

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %7 = or i8 %switch.select2, 2
  br label %sw.epilog39

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = or i8 %switch.select2, 3
  br label %sw.epilog39

sw.bb21:                                          ; preds = %if.end
  %audout_layout = getelementptr i8, ptr %sd, i32 -16
  %9 = ptrtoint ptr %audout_layout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %audout_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then26, label %if.else

if.then26:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #15
  %11 = or i8 %switch.select2, 5
  %not.switch.selectcmp = xor i1 %switch.selectcmp, true
  br label %sw.epilog39

if.else:                                          ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #15
  %12 = or i8 %switch.select2, 1
  br label %sw.epilog39

sw.epilog39:                                      ; preds = %if.else, %if.then26, %sw.bb17, %sw.bb13, %if.end.sw.epilog39_crit_edge
  %sp_used_by_fifo.0.off0 = phi i1 [ true, %if.else ], [ false, %sw.bb17 ], [ true, %sw.bb13 ], [ true, %if.end.sw.epilog39_crit_edge ], [ %not.switch.selectcmp, %if.then26 ]
  %reg.1 = phi i8 [ %12, %if.else ], [ %8, %sw.bb17 ], [ %7, %sw.bb13 ], [ %switch.select2, %if.end.sw.epilog39_crit_edge ], [ %11, %if.then26 ]
  %audout_width = getelementptr i8, ptr %sd, i32 -20
  %13 = ptrtoint ptr %audout_width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %audout_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp40 = icmp eq i32 %14, 32
  %15 = or i8 %reg.1, 16
  %reg.2 = select i1 %cmp40, i8 %15, i8 %reg.1
  %audio_auto_mute = getelementptr i8, ptr %sd, i32 -10
  %16 = ptrtoint ptr %audio_auto_mute to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %audio_auto_mute, align 2, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool51.not = icmp eq i8 %17, 0
  %18 = or i8 %reg.2, 8
  %reg.3 = select i1 %tobool51.not, i8 %reg.2, i8 %18
  %audout_invert_clk = getelementptr i8, ptr %sd, i32 -11
  %19 = ptrtoint ptr %audout_invert_clk to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %audout_invert_clk, align 1, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool57.not = icmp eq i8 %20, 0
  %21 = or i8 %reg.3, -128
  %reg.4 = select i1 %tobool57.not, i8 %reg.3, i8 %21
  %call63 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 125, i8 noundef zeroext %reg.4)
  %audout_layout64 = getelementptr i8, ptr %sd, i32 -16
  %22 = ptrtoint ptr %audout_layout64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audout_layout64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool65.not = icmp ne i32 %23, 0
  %conv66 = zext i1 %tobool65.not to i8
  %audout_layoutauto = getelementptr i8, ptr %sd, i32 -12
  %24 = ptrtoint ptr %audout_layoutauto to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %audout_layoutauto, align 4, !range !508
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool67.not = icmp eq i8 %25, 0
  %or70 = or i8 %conv66, 2
  %reg.5 = select i1 %tobool67.not, i8 %or70, i8 %conv66
  %26 = or i8 %reg.5, 4
  %spec.select = select i1 %sp_used_by_fifo.0.off0, i8 %26, i8 %reg.5
  %call79 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 4816, i8 noundef zeroext %spec.select)
  %call80 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 5123, i8 noundef zeroext -128)
  br i1 %sp_used_by_fifo.0.off0, label %if.then82, label %sw.epilog39.if.end149_crit_edge

sw.epilog39.if.end149_crit_edge:                  ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end149

if.then82:                                        ; preds = %sw.epilog39
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %channel_assignment)
  %cmp84.not = icmp eq i8 %channel_assignment, 0
  %spec.select3 = select i1 %cmp84.not, i8 1, i8 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %channel_assignment)
  %cmp92 = icmp ugt i8 %channel_assignment, 3
  %27 = or i8 %spec.select3, 4
  %reg.8 = select i1 %cmp92, i8 %27, i8 %spec.select3
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %channel_assignment)
  %cmp100 = icmp ugt i8 %channel_assignment, 11
  %28 = or i8 %reg.8, 8
  %reg.9 = select i1 %cmp100, i8 %28, i8 %reg.8
  %29 = add i8 %channel_assignment, -4
  %30 = tail call i8 @llvm.fshl.i8(i8 %29, i8 %29, i8 6)
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %30)
  %switch = icmp ult i8 %30, 7
  %31 = and i8 %reg.9, 13
  %spec.select6 = select i1 %switch, i8 %31, i8 %reg.9
  %32 = and i8 %channel_assignment, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %32)
  %33 = icmp eq i8 %32, 20
  %34 = and i8 %spec.select6, -5
  %spec.select5 = select i1 %33, i8 %34, i8 %spec.select6
  br label %if.end149

if.end149:                                        ; preds = %if.then82, %sw.epilog39.if.end149_crit_edge
  %reg.11 = phi i8 [ 15, %sw.epilog39.if.end149_crit_edge ], [ %spec.select5, %if.then82 ]
  %35 = ptrtoint ptr %audout_format to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %audout_format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp151 = icmp eq i32 %36, 1
  %37 = or i8 %reg.11, 48
  %spec.select4 = select i1 %cmp151, i8 %37, i8 %reg.11
  %call158 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 126, i8 noundef zeroext %spec.select4)
  %call159 = tail call fastcc i32 @io_write(ptr noundef %sd, i16 noundef zeroext 5175, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end149, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda1997x_g_volatile_ctrl(ptr nocapture noundef %ctrl) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10488166, i32 %1)
  %cmp = icmp eq i32 %1, 10488166
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 8
  %content_type = getelementptr i8, ptr %3, i32 -204
  %4 = ptrtoint ptr %content_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %content_type, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10488165, i32 %1)
  %cond = icmp eq i32 %1, 10488165
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %2 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler.i, align 8
  %sd.i = getelementptr i8, ptr %3, i32 -724
  %add.ptr.i = getelementptr i8, ptr %3, i32 -784
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %rgb_quantization_range = getelementptr i8, ptr %3, i32 -172
  %6 = ptrtoint ptr %rgb_quantization_range to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %rgb_quantization_range, align 4
  tail call fastcc void @set_rgb_quantization_range(ptr noundef %add.ptr.i)
  tail call fastcc void @tda1997x_configure_csc(ptr noundef %sd.i)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_rgb_quantization_range(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %struct.v4l2_hdmi_colorimetry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %colorimetry = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #13
  %avi_infoframe = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 19
  %height = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 22, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %height, align 4
  call void @v4l2_hdmi_rx_colorimetry(ptr nonnull sret(%struct.v4l2_hdmi_colorimetry) align 4 %tmp, ptr noundef %avi_infoframe, ptr noundef null, i32 noundef %1) #13
  %2 = call ptr @memcpy(ptr %colorimetry, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #13
  %ycbcr_enc = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ycbcr_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %entry
  %rgb_quantization_range = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 21
  %5 = ptrtoint ptr %rgb_quantization_range to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rgb_quantization_range, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %do.body.sink.split, label %if.then.do.body_crit_edge

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

do.body.sink.split:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %quantization3 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 20, i32 2
  %7 = ptrtoint ptr %quantization3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %quantization3, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.then.do.body_crit_edge, %entry.do.body_crit_edge
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4 = icmp sgt i32 %8, 0
  br i1 %cmp4, label %do.end, label %do.body.do.end19_crit_edge

do.body.do.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %client = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 2
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %driver = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %19 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr, align 2
  %conv = zext i16 %20 to i32
  %colorspace = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 19, i32 3
  %21 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %colorspace, align 4
  %23 = ptrtoint ptr %colorimetry to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %colorimetry, align 4
  %colorimetry13 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 19, i32 5
  %25 = ptrtoint ptr %colorimetry13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %colorimetry13, align 4
  %quantization14 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 20, i32 2
  %27 = ptrtoint ptr %quantization14 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quantization14, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @v4l2_quantization_names, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %content_type = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 19, i32 14
  %31 = ptrtoint ptr %content_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %content_type, align 4
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208, ptr noundef %14, i32 noundef %18, i32 noundef %conv, i32 noundef %22, i32 noundef %24, i32 noundef %26, ptr noundef %30, i32 noundef %32) #17
  br label %do.end19

do.end19:                                         ; preds = %do.end, %do.body.do.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_hdmi_rx_colorimetry(ptr sret(%struct.v4l2_hdmi_colorimetry) align 4, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1997x_pcm_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %component2 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %4 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component2, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %audio_samplerate = getelementptr i8, ptr %3, i32 920
  %8 = ptrtoint ptr %audio_samplerate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %audio_samplerate, align 4
  %call3 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %7, i32 noundef 11, i32 noundef %9, i32 noundef %9) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br i1 %cmp, label %do.end, label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.211, i32 noundef %9) #17
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.214, i32 noundef %9) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tda1997x_codec_probe(ptr nocapture noundef readnone %component) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tda1997x_codec_remove(ptr nocapture noundef %component) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_notify_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__v4l2_ctrl_s_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda1997x_parse_infoframe(ptr noundef %state, i16 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %frame = alloca %union.hdmi_infoframe, align 4
  %buffer = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %sd1 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %frame) #13
  %0 = call ptr @memset(ptr %frame, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buffer) #13
  %1 = call ptr @memset(ptr %buffer, i32 0, i32 40)
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %sz.02.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %2 = trunc i32 %sz.02.i to i16
  %conv3.i = add i16 %2, %addr
  %call.i = tail call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext %conv3.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp slt i32 %call.i, 0
  br i1 %cmp4.i, label %for.body.i.io_readn.exit_crit_edge, label %if.end.i

for.body.i.io_readn.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_readn.exit

if.end.i:                                         ; preds = %for.body.i
  %conv6.i = trunc i32 %call.i to i8
  %arrayidx.i = getelementptr i8, ptr %buffer, i32 %sz.02.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv6.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %sz.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %if.end.i.io_readn.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end.i.io_readn.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %io_readn.exit

io_readn.exit:                                    ; preds = %if.end.i.io_readn.exit_crit_edge, %for.body.i.io_readn.exit_crit_edge
  %sz.0.lcssa.i = phi i32 [ %sz.02.i, %for.body.i.io_readn.exit_crit_edge ], [ 40, %if.end.i.io_readn.exit_crit_edge ]
  %call3 = call i32 @hdmi_infoframe_unpack(ptr noundef nonnull %frame, ptr noundef nonnull %buffer, i32 noundef %sz.0.lcssa.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %client11 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 2
  %4 = ptrtoint ptr %client11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client11, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %io_readn.exit
  call void @__sanitizer_cov_trace_pc() #15
  %driver = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %addr7 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %addr7 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr7, align 2
  %conv = zext i16 %15 to i32
  %conv8 = zext i16 %addr to i32
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buffer, align 1
  %conv9 = zext i8 %17 to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef %9, i32 noundef %13, i32 noundef %conv, i32 noundef %sz.0.lcssa.i, i32 noundef %conv8, i32 noundef %conv9) #17
  br label %cleanup

if.end:                                           ; preds = %io_readn.exit
  %dev12 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  call void @hdmi_infoframe_log(ptr noundef nonnull @.str.158, ptr noundef %dev12, ptr noundef nonnull %frame) #13
  %18 = ptrtoint ptr %frame to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %19, label %if.end.cleanup_crit_edge [
    i32 132, label %sw.bb
    i32 130, label %sw.bb48
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %sample_frequency = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame, i32 0, i32 6
  %21 = ptrtoint ptr %sample_frequency to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sample_frequency, align 4
  %switch.tableidx = add i32 %22, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %23 = icmp ult i32 %switch.tableidx, 7
  br i1 %23, label %switch.lookup, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.tda1997x_parse_infoframe, i32 0, i32 %switch.tableidx
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  %audio_samplerate25 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 32
  %25 = ptrtoint ptr %audio_samplerate25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %switch.load, ptr %audio_samplerate25, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.bb.sw.epilog_crit_edge
  %sample_size = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame, i32 0, i32 5
  %26 = ptrtoint ptr %sample_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sample_size, align 4
  %switch.tableidx3 = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx3)
  %28 = icmp ult i32 %switch.tableidx3, 3
  br i1 %28, label %switch.lookup2, label %sw.epilog.sw.epilog33_crit_edge

sw.epilog.sw.epilog33_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog33

switch.lookup2:                                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %switch.idx.mult = shl i32 %switch.tableidx3, 2
  %switch.offset = add i32 %switch.idx.mult, 16
  %audio_samplesize30 = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 34
  %29 = ptrtoint ptr %audio_samplesize30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %switch.offset, ptr %audio_samplesize30, align 4
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %switch.lookup2, %sw.epilog.sw.epilog33_crit_edge
  %channels = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame, i32 0, i32 3
  %30 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %channels, align 2
  %conv34 = zext i8 %31 to i32
  %audio_channels = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 33
  %32 = ptrtoint ptr %audio_channels to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv34, ptr %audio_channels, align 4
  %channel_allocation = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %frame, i32 0, i32 8
  %33 = ptrtoint ptr %channel_allocation to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %channel_allocation, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool36.not = icmp eq i8 %34, 0
  br i1 %tobool36.not, label %sw.epilog33.cleanup_crit_edge, label %land.lhs.true

sw.epilog33.cleanup_crit_edge:                    ; preds = %sw.epilog33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog33
  %audio_ch_alloc = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 31
  %35 = ptrtoint ptr %audio_ch_alloc to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %audio_ch_alloc, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp.not = icmp eq i8 %34, %36
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %if.then41

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then41:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %audio_ch_alloc to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %34, ptr %audio_ch_alloc, align 4
  call fastcc void @tda1997x_configure_audout(ptr noundef %sd1, i8 noundef zeroext %34)
  call fastcc void @tda1997x_hdmi_info_reset(ptr noundef %sd1, i8 noundef zeroext 1, i1 noundef zeroext false)
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %avi_infoframe = getelementptr inbounds %struct.tda1997x_state, ptr %state, i32 0, i32 19
  %38 = call ptr @memcpy(ptr %avi_infoframe, ptr %frame, i32 68)
  call fastcc void @set_rgb_quantization_range(ptr noundef %state)
  %call49 = call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 123)
  %39 = trunc i32 %call49 to i8
  %conv52 = and i8 %39, -49
  %colorspace = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %frame, i32 0, i32 3
  %40 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp53 = icmp eq i32 %41, 1
  %42 = or i8 %conv52, 16
  %spec.select = select i1 %cmp53, i8 %42, i8 %conv52
  %call59 = call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 123, i8 noundef zeroext %spec.select)
  %call60 = call fastcc i32 @io_read(ptr noundef %sd1, i16 noundef zeroext 123)
  %pixel_repeat = getelementptr inbounds %struct.hdmi_avi_infoframe, ptr %frame, i32 0, i32 15
  %43 = ptrtoint ptr %pixel_repeat to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pixel_repeat, align 4
  %45 = trunc i32 %call60 to i8
  %46 = and i8 %45, -16
  %conv68 = or i8 %46, %44
  %call69 = call fastcc i32 @io_write(ptr noundef %sd1, i16 noundef zeroext 123, i8 noundef zeroext %conv68)
  call fastcc void @tda1997x_configure_csc(ptr noundef %sd1)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb48, %if.then41, %land.lhs.true.cleanup_crit_edge, %sw.epilog33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buffer) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %frame) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 258)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 258)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !101, !103, !105, !106, !107, !109, !111, !112, !113, !115, !117, !118, !119, !121, !123, !124, !125, !127, !129, !131, !133, !135, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !231, !233, !234, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !278, !279, !280, !282, !283, !284, !286, !288, !290, !291, !292, !293, !295, !296, !297, !298, !300, !302, !304, !305, !306, !307, !309, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !329, !330, !332, !333, !334, !336, !338, !340, !341, !342, !343, !345, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !358, !360, !361, !362, !364, !365, !366, !368, !369, !370, !372, !374, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !390, !392, !393, !394, !396, !398, !400, !402, !404, !405, !406, !407, !409, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !424, !425, !426, !427, !429, !431, !433, !435, !436, !437, !438, !440, !441, !442, !444, !446, !447, !448, !449, !451, !453, !454, !455, !456, !458, !459, !460, !462, !463, !464, !466, !468, !469, !470, !471, !473, !474, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493}
!llvm.module.flags = !{!495, !496, !497, !498, !499, !500, !501, !502}
!llvm.ident = !{!503}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/tda1997x.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype298, !1, !"__UNIQUE_ID_debugtype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug299, !4, !"__UNIQUE_ID_debug299", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/tda1997x.c", i32 40, i32 1}
!5 = !{ptr @__initcall__kmod_tda1997x__300_2844_tda1997x_i2c_driver_init6, !6, !"__initcall__kmod_tda1997x__300_2844_tda1997x_i2c_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/tda1997x.c", i32 2844, i32 1}
!7 = !{ptr @__exitcall_tda1997x_i2c_driver_exit, !6, !"__exitcall_tda1997x_i2c_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author301, !9, !"__UNIQUE_ID_author301", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/tda1997x.c", i32 2846, i32 1}
!10 = !{ptr @__UNIQUE_ID_description302, !11, !"__UNIQUE_ID_description302", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/tda1997x.c", i32 2847, i32 1}
!12 = !{ptr @__UNIQUE_ID_file303, !13, !"__UNIQUE_ID_file303", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/tda1997x.c", i32 2848, i32 1}
!14 = !{ptr @__UNIQUE_ID_license304, !13, !"__UNIQUE_ID_license304", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/tda1997x.c", i32 38, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/tda1997x.c", i32 2836, i32 11}
!20 = !{ptr @tda1997x_i2c_driver, !21, !"tda1997x_i2c_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/tda1997x.c", i32 2834, i32 26}
!22 = !{ptr @tda1997x_probe.cea1920x1080, !23, !"cea1920x1080", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/tda1997x.c", i32 2531, i32 38}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/tda1997x.c", i32 2554, i32 4}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tda1997x_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @tda1997x_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/tda1997x.c", i32 2564, i32 3}
!32 = !{ptr @tda1997x_probe._entry.4, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tda1997x_probe._entry_ptr.6, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @tda1997x_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/tda1997x.c", i32 2577, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @tda1997x_probe.__key.8, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/media/i2c/tda1997x.c", i32 2578, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tda1997x_probe.__key.10, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/tda1997x.c", i32 2581, i32 2}
!42 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tda1997x_probe.__key.12, !41, !"__key", i1 false, i1 false}
!44 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/tda1997x.c", i32 2592, i32 39}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/tda1997x.c", i32 2697, i32 2}
!49 = !{ptr @tda1997x_probe._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @tda1997x_probe._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/tda1997x.c", i32 2699, i32 2}
!53 = !{ptr @tda1997x_probe._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tda1997x_probe._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/tda1997x.c", i32 2705, i32 3}
!59 = !{ptr @tda1997x_probe._entry.23, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @tda1997x_probe._entry_ptr.25, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/tda1997x.c", i32 2720, i32 2}
!63 = !{ptr @tda1997x_probe._entry.26, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tda1997x_probe._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @tda1997x_probe._key, !66, !"_key", i1 false, i1 false}
!66 = !{!"../drivers/media/i2c/tda1997x.c", i32 2728, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/tda1997x.c", i32 2754, i32 3}
!70 = !{ptr @tda1997x_probe._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @tda1997x_probe._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/i2c/tda1997x.c", i32 2775, i32 4}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tda1997x_probe._entry.33, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @tda1997x_probe._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/tda1997x.c", i32 2778, i32 3}
!80 = !{ptr @tda1997x_probe._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tda1997x_probe._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/tda1997x.c", i32 2787, i32 3}
!84 = !{ptr @tda1997x_probe._entry.41, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @tda1997x_probe._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/tda1997x.c", i32 2803, i32 2}
!88 = !{ptr @tda1997x_probe._entry.44, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @tda1997x_probe._entry_ptr.46, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/tda1997x.c", i32 2333, i32 40}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/tda1997x.c", i32 2346, i32 3}
!94 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @tda1997x_parse_dt._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @tda1997x_parse_dt._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/tda1997x.c", i32 2354, i32 35}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/i2c/tda1997x.c", i32 2355, i32 19}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/i2c/tda1997x.c", i32 2357, i32 24}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/i2c/tda1997x.c", i32 2360, i32 4}
!105 = !{ptr @tda1997x_parse_dt._entry.53, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @tda1997x_parse_dt._entry_ptr.55, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/i2c/tda1997x.c", i32 2363, i32 33}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/i2c/tda1997x.c", i32 2369, i32 5}
!111 = !{ptr @tda1997x_parse_dt._entry.57, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @tda1997x_parse_dt._entry_ptr.59, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/tda1997x.c", i32 2375, i32 33}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/i2c/tda1997x.c", i32 2381, i32 5}
!117 = !{ptr @tda1997x_parse_dt._entry.61, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @tda1997x_parse_dt._entry_ptr.63, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.64, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/tda1997x.c", i32 2387, i32 33}
!121 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/i2c/tda1997x.c", i32 2397, i32 5}
!123 = !{ptr @tda1997x_parse_dt._entry.65, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @tda1997x_parse_dt._entry_ptr.67, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/tda1997x.c", i32 199, i32 2}
!127 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/i2c/tda1997x.c", i32 200, i32 2}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/i2c/tda1997x.c", i32 201, i32 2}
!131 = distinct !{null, !132, !"tda1997x_supply_name", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/tda1997x.c", i32 198, i32 27}
!133 = !{ptr @.str.71, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/tda1997x.c", i32 566, i32 2}
!135 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @tda1997x_delayed_work_enable_hpd._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @tda1997x_delayed_work_enable_hpd._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.73, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/tda1997x.c", i32 2441, i32 3}
!140 = !{ptr @.str.74, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @tda1997x_identify_module._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @tda1997x_identify_module._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/tda1997x.c", i32 2445, i32 3}
!145 = !{ptr @tda1997x_identify_module._entry.75, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @tda1997x_identify_module._entry_ptr.77, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @tda1997x_subdev_ops, !148, !"tda1997x_subdev_ops", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/tda1997x.c", i32 2044, i32 37}
!149 = !{ptr @tda1997x_core_ops, !150, !"tda1997x_core_ops", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/tda1997x.c", i32 2034, i32 42}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/tda1997x.c", i32 1970, i32 2}
!153 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @tda1997x_log_status._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @tda1997x_log_status._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/i2c/tda1997x.c", i32 1971, i32 2}
!158 = !{ptr @tda1997x_log_status._entry.80, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @tda1997x_log_status._entry_ptr.82, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/tda1997x.c", i32 1973, i32 2}
!162 = !{ptr @tda1997x_log_status._entry.83, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @tda1997x_log_status._entry_ptr.85, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.86, !161, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.89, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/i2c/tda1997x.c", i32 1975, i32 2}
!168 = !{ptr @tda1997x_log_status._entry.88, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @tda1997x_log_status._entry_ptr.90, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.92, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/tda1997x.c", i32 1976, i32 2}
!172 = !{ptr @tda1997x_log_status._entry.91, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @tda1997x_log_status._entry_ptr.93, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.95, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/tda1997x.c", i32 1978, i32 2}
!176 = !{ptr @tda1997x_log_status._entry.94, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @tda1997x_log_status._entry_ptr.96, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.98, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/i2c/tda1997x.c", i32 1981, i32 2}
!180 = !{ptr @tda1997x_log_status._entry.97, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @tda1997x_log_status._entry_ptr.99, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/tda1997x.c", i32 1984, i32 3}
!184 = !{ptr @tda1997x_log_status._entry.100, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @tda1997x_log_status._entry_ptr.102, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.104, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/i2c/tda1997x.c", i32 1987, i32 3}
!188 = !{ptr @tda1997x_log_status._entry.103, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @tda1997x_log_status._entry_ptr.105, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.106, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/i2c/tda1997x.c", i32 1990, i32 34}
!192 = !{ptr @.str.108, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/tda1997x.c", i32 1993, i32 2}
!194 = !{ptr @tda1997x_log_status._entry.107, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @tda1997x_log_status._entry_ptr.109, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.111, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/tda1997x.c", i32 1994, i32 2}
!198 = !{ptr @tda1997x_log_status._entry.110, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @tda1997x_log_status._entry_ptr.112, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.113, !197, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.115, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/tda1997x.c", i32 1999, i32 2}
!203 = !{ptr @tda1997x_log_status._entry.114, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @tda1997x_log_status._entry_ptr.116, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.118, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/i2c/tda1997x.c", i32 2001, i32 2}
!207 = !{ptr @tda1997x_log_status._entry.117, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @tda1997x_log_status._entry_ptr.119, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.120, !206, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.122, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/tda1997x.c", i32 2004, i32 2}
!212 = !{ptr @tda1997x_log_status._entry.121, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @tda1997x_log_status._entry_ptr.123, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.125, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/i2c/tda1997x.c", i32 2006, i32 3}
!216 = !{ptr @tda1997x_log_status._entry.124, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @tda1997x_log_status._entry_ptr.126, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.128, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/i2c/tda1997x.c", i32 2009, i32 3}
!220 = !{ptr @tda1997x_log_status._entry.127, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @tda1997x_log_status._entry_ptr.129, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.131, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/i2c/tda1997x.c", i32 2012, i32 2}
!224 = !{ptr @tda1997x_log_status._entry.130, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @tda1997x_log_status._entry_ptr.132, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.133, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/i2c/tda1997x.c", i32 1119, i32 2}
!228 = !{ptr @.str.134, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @tda1997x_detect_std._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @tda1997x_detect_std._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.136, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/i2c/tda1997x.c", i32 1135, i32 2}
!233 = !{ptr @tda1997x_detect_std._entry.135, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @tda1997x_detect_std._entry_ptr.137, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.138, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/i2c/tda1997x.c", i32 1169, i32 34}
!237 = !{ptr @tda1997x_dv_timings_cap, !238, !"tda1997x_dv_timings_cap", i1 false, i1 false}
!238 = !{!"../drivers/media/i2c/tda1997x.c", i32 178, i32 41}
!239 = !{ptr @.str.139, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/i2c/tda1997x.c", i32 64, i32 2}
!241 = !{ptr @.str.140, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/i2c/tda1997x.c", i32 64, i32 9}
!243 = !{ptr @.str.141, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/i2c/tda1997x.c", i32 64, i32 19}
!245 = !{ptr @.str.142, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/i2c/tda1997x.c", i32 64, i32 29}
!247 = !{ptr @hdmi_colorspace_names, !248, !"hdmi_colorspace_names", i1 false, i1 false}
!248 = !{!"../drivers/media/i2c/tda1997x.c", i32 63, i32 27}
!249 = !{ptr @.str.143, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/i2c/tda1997x.c", i32 67, i32 6}
!251 = !{ptr @.str.144, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/i2c/tda1997x.c", i32 67, i32 16}
!253 = !{ptr @.str.145, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/i2c/tda1997x.c", i32 67, i32 26}
!255 = !{ptr @hdmi_colorimetry_names, !256, !"hdmi_colorimetry_names", i1 false, i1 false}
!256 = !{!"../drivers/media/i2c/tda1997x.c", i32 66, i32 27}
!257 = !{ptr @.str.146, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/i2c/tda1997x.c", i32 70, i32 2}
!259 = !{ptr @.str.147, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/i2c/tda1997x.c", i32 71, i32 2}
!261 = !{ptr @.str.148, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/i2c/tda1997x.c", i32 72, i32 2}
!263 = !{ptr @v4l2_quantization_names, !264, !"v4l2_quantization_names", i1 false, i1 false}
!264 = !{!"../drivers/media/i2c/tda1997x.c", i32 69, i32 27}
!265 = !{ptr @.str.149, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/i2c/tda1997x.c", i32 77, i32 2}
!267 = !{ptr @.str.150, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/i2c/tda1997x.c", i32 78, i32 2}
!269 = !{ptr @.str.151, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/i2c/tda1997x.c", i32 79, i32 2}
!271 = !{ptr @.str.152, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/i2c/tda1997x.c", i32 80, i32 2}
!273 = !{ptr @vidfmt_names, !274, !"vidfmt_names", i1 false, i1 false}
!274 = !{!"../drivers/media/i2c/tda1997x.c", i32 76, i32 27}
!275 = !{ptr @.str.153, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/i2c/tda1997x.c", i32 1951, i32 2}
!277 = !{ptr @.str.154, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @tda1997x_log_infoframe._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @tda1997x_log_infoframe._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.156, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/media/i2c/tda1997x.c", i32 1954, i32 3}
!282 = !{ptr @tda1997x_log_infoframe._entry.155, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @tda1997x_log_infoframe._entry_ptr.157, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.158, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/i2c/tda1997x.c", i32 1959, i32 21}
!286 = !{ptr @tda1997x_video_ops, !287, !"tda1997x_video_ops", i1 false, i1 false}
!287 = !{!"../drivers/media/i2c/tda1997x.c", i32 1725, i32 43}
!288 = !{ptr @.str.159, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/i2c/tda1997x.c", i32 1658, i32 2}
!290 = !{ptr @.str.160, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @tda1997x_g_input_status._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @tda1997x_g_input_status._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.161, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/i2c/tda1997x.c", i32 1677, i32 2}
!295 = !{ptr @.str.162, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @tda1997x_s_dv_timings._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @tda1997x_s_dv_timings._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @tda1997x_configure_csc.rgb_blanking, !299, !"rgb_blanking", i1 false, i1 false}
!299 = !{!"../drivers/media/i2c/tda1997x.c", i32 656, i32 37}
!300 = !{ptr @tda1997x_configure_csc.yuv_blanking, !301, !"yuv_blanking", i1 false, i1 false}
!301 = !{!"../drivers/media/i2c/tda1997x.c", i32 657, i32 37}
!302 = !{ptr @.str.163, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/i2c/tda1997x.c", i32 661, i32 2}
!304 = !{ptr @.str.164, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @tda1997x_configure_csc._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @tda1997x_configure_csc._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @tda1997x_configure_csc._entry.165, !308, !"_entry", i1 false, i1 false}
!308 = !{!"../drivers/media/i2c/tda1997x.c", i32 702, i32 3}
!309 = !{ptr @tda1997x_configure_csc._entry_ptr.166, !308, !"_entry_ptr", i1 false, i1 false}
!310 = !{ptr @.str.167, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/media/i2c/tda1997x.c", i32 121, i32 3}
!312 = !{ptr @.str.168, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/media/i2c/tda1997x.c", i32 129, i32 3}
!314 = !{ptr @.str.169, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/i2c/tda1997x.c", i32 137, i32 3}
!316 = !{ptr @.str.170, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/i2c/tda1997x.c", i32 145, i32 3}
!318 = !{ptr @.str.171, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/i2c/tda1997x.c", i32 153, i32 3}
!320 = !{ptr @.str.172, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/media/i2c/tda1997x.c", i32 161, i32 3}
!322 = !{ptr @.str.173, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/i2c/tda1997x.c", i32 169, i32 3}
!324 = !{ptr @conv_matrix, !325, !"conv_matrix", i1 false, i1 false}
!325 = !{!"../drivers/media/i2c/tda1997x.c", i32 119, i32 40}
!326 = !{ptr @.str.174, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/i2c/tda1997x.c", i32 1702, i32 2}
!328 = !{ptr @tda1997x_g_dv_timings._entry, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @tda1997x_g_dv_timings._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.175, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/i2c/tda1997x.c", i32 1716, i32 2}
!332 = !{ptr @tda1997x_query_dv_timings._entry, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @tda1997x_query_dv_timings._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @tda1997x_pad_ops, !335, !"tda1997x_pad_ops", i1 false, i1 false}
!335 = !{!"../drivers/media/i2c/tda1997x.c", i32 1927, i32 41}
!336 = !{ptr @.str.176, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../include/media/v4l2-subdev.h", i32 998, i32 6}
!338 = !{ptr @.str.177, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/i2c/tda1997x.c", i32 1755, i32 2}
!340 = !{ptr @.str.178, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @tda1997x_enum_mbus_code._entry, !339, !"_entry", i1 false, i1 false}
!342 = !{ptr @tda1997x_enum_mbus_code._entry_ptr, !339, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.179, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/i2c/tda1997x.c", i32 1787, i32 2}
!345 = !{ptr @.str.180, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @tda1997x_get_format._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @tda1997x_get_format._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.181, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/i2c/tda1997x.c", i32 1811, i32 2}
!350 = !{ptr @.str.182, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @tda1997x_set_format._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @tda1997x_set_format._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.183, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/media/i2c/tda1997x.c", i32 1848, i32 2}
!355 = !{ptr @.str.184, !354, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @tda1997x_get_edid._entry, !354, !"_entry", i1 false, i1 false}
!357 = !{ptr @tda1997x_get_edid._entry_ptr, !354, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.185, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/media/i2c/tda1997x.c", i32 1876, i32 2}
!360 = !{ptr @tda1997x_set_edid._entry, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @tda1997x_set_edid._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.186, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/media/i2c/tda1997x.c", i32 579, i32 2}
!364 = !{ptr @tda1997x_disable_edid._entry, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @tda1997x_disable_edid._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.187, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/i2c/tda1997x.c", i32 590, i32 2}
!368 = !{ptr @tda1997x_enable_edid._entry, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @tda1997x_enable_edid._entry_ptr, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @tda1997x_media_ops, !371, !"tda1997x_media_ops", i1 false, i1 false}
!371 = !{!"../drivers/media/i2c/tda1997x.c", i32 2455, i32 45}
!372 = !{ptr @.str.188, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/i2c/tda1997x.c", i32 606, i32 2}
!374 = !{ptr @.str.189, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @tda1997x_setup_format._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @tda1997x_setup_format._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.191, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/i2c/tda1997x.c", i32 625, i32 3}
!379 = !{ptr @tda1997x_setup_format._entry.190, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @tda1997x_setup_format._entry_ptr.192, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.194, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/i2c/tda1997x.c", i32 628, i32 2}
!383 = !{ptr @tda1997x_setup_format._entry.193, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @tda1997x_setup_format._entry_ptr.195, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.196, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/i2c/tda1997x.c", i32 449, i32 3}
!387 = !{ptr @.str.197, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @io_write._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @io_write._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @.str.198, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/media/i2c/tda1997x.c", i32 348, i32 4}
!392 = !{ptr @tda1997x_setpage._entry, !391, !"_entry", i1 false, i1 false}
!393 = !{ptr @tda1997x_setpage._entry_ptr, !391, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.199, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/media/i2c/tda1997x.c", i32 57, i32 2}
!396 = !{ptr @.str.200, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/i2c/tda1997x.c", i32 58, i32 2}
!398 = !{ptr @.str.201, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/media/i2c/tda1997x.c", i32 59, i32 2}
!400 = !{ptr @audfmt_names, !401, !"audfmt_names", i1 false, i1 false}
!401 = !{!"../drivers/media/i2c/tda1997x.c", i32 56, i32 27}
!402 = !{ptr @.str.202, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/media/i2c/tda1997x.c", i32 371, i32 3}
!404 = !{ptr @.str.203, !403, !"<string literal>", i1 false, i1 false}
!405 = !{ptr @io_read._entry, !403, !"_entry", i1 false, i1 false}
!406 = !{ptr @io_read._entry_ptr, !403, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.204, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/i2c/tda1997x.c", i32 2210, i32 3}
!409 = !{ptr @.str.205, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @tda1997x_core_init._entry, !408, !"_entry", i1 false, i1 false}
!411 = !{ptr @tda1997x_core_init._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.206, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/i2c/tda1997x.c", i32 327, i32 3}
!414 = !{ptr @tda1997x_cec_write._entry, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @tda1997x_cec_write._entry_ptr, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.207, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/media/i2c/tda1997x.c", i32 313, i32 3}
!418 = !{ptr @tda1997x_cec_read._entry, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @tda1997x_cec_read._entry_ptr, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @tda1997x_ctrl_ops, !421, !"tda1997x_ctrl_ops", i1 false, i1 false}
!421 = !{!"../drivers/media/i2c/tda1997x.c", i32 2083, i32 35}
!422 = !{ptr @.str.208, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/i2c/tda1997x.c", i32 1252, i32 2}
!424 = !{ptr @.str.209, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @set_rgb_quantization_range._entry, !423, !"_entry", i1 false, i1 false}
!426 = !{ptr @set_rgb_quantization_range._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.210, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/media/i2c/tda1997x.c", i32 2494, i32 18}
!429 = !{ptr @tda1997x_audio_dai, !430, !"tda1997x_audio_dai", i1 false, i1 false}
!430 = !{!"../drivers/media/i2c/tda1997x.c", i32 2491, i32 34}
!431 = !{ptr @tda1997x_dai_ops, !432, !"tda1997x_dai_ops", i1 false, i1 false}
!432 = !{!"../drivers/media/i2c/tda1997x.c", i32 2487, i32 37}
!433 = !{ptr @.str.211, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/i2c/tda1997x.c", i32 2478, i32 3}
!435 = !{ptr @.str.212, !434, !"<string literal>", i1 false, i1 false}
!436 = !{ptr @tda1997x_pcm_startup._entry, !434, !"_entry", i1 false, i1 false}
!437 = !{ptr @tda1997x_pcm_startup._entry_ptr, !434, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.214, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/i2c/tda1997x.c", i32 2482, i32 2}
!440 = !{ptr @tda1997x_pcm_startup._entry.213, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @tda1997x_pcm_startup._entry_ptr.215, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @tda1997x_codec_driver, !443, !"tda1997x_codec_driver", i1 false, i1 false}
!443 = !{!"../drivers/media/i2c/tda1997x.c", i32 2514, i32 40}
!444 = !{ptr @.str.216, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/i2c/tda1997x.c", i32 1402, i32 4}
!446 = !{ptr @.str.217, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @tda1997x_irq_sus._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @tda1997x_irq_sus._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @tda1997x_ev_fmt, !450, !"tda1997x_ev_fmt", i1 false, i1 false}
!450 = !{!"../drivers/media/i2c/tda1997x.c", i32 280, i32 32}
!451 = !{ptr @.str.219, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/media/i2c/tda1997x.c", i32 1466, i32 5}
!453 = !{ptr @.str.220, !452, !"<string literal>", i1 false, i1 false}
!454 = !{ptr @tda1997x_irq_rate._entry, !452, !"_entry", i1 false, i1 false}
!455 = !{ptr @tda1997x_irq_rate._entry_ptr, !452, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.222, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/media/i2c/tda1997x.c", i32 1485, i32 5}
!458 = !{ptr @tda1997x_irq_rate._entry.221, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @tda1997x_irq_rate._entry_ptr.223, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.224, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/media/i2c/tda1997x.c", i32 1274, i32 3}
!462 = !{ptr @tda1997x_parse_infoframe._entry, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @tda1997x_parse_infoframe._entry_ptr, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @tda1997x_irq_audio.freq, !465, !"freq", i1 false, i1 false}
!465 = !{!"../drivers/media/i2c/tda1997x.c", i32 1548, i32 20}
!466 = !{ptr @.str.225, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/media/i2c/tda1997x.c", i32 1554, i32 3}
!468 = !{ptr @.str.226, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @tda1997x_irq_audio._entry, !467, !"_entry", i1 false, i1 false}
!470 = !{ptr @tda1997x_irq_audio._entry_ptr, !467, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.228, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/media/i2c/tda1997x.c", i32 1567, i32 3}
!473 = !{ptr @tda1997x_irq_audio._entry.227, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @tda1997x_irq_audio._entry_ptr.229, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.230, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/media/i2c/tda1997x.c", i32 44, i32 2}
!477 = !{ptr @.str.231, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/media/i2c/tda1997x.c", i32 45, i32 2}
!479 = !{ptr @.str.232, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/media/i2c/tda1997x.c", i32 46, i32 2}
!481 = !{ptr @.str.233, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/media/i2c/tda1997x.c", i32 47, i32 2}
!483 = !{ptr @audtype_names, !484, !"audtype_names", i1 false, i1 false}
!484 = !{!"../drivers/media/i2c/tda1997x.c", i32 43, i32 27}
!485 = !{ptr @tda1997x_of_id, !486, !"tda1997x_of_id", i1 false, i1 false}
!486 = !{!"../drivers/media/i2c/tda1997x.c", i32 2280, i32 34}
!487 = !{ptr @.str.234, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/media/i2c/tda1997x.c", i32 288, i32 11}
!489 = !{ptr @.str.235, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/media/i2c/tda1997x.c", i32 292, i32 11}
!491 = !{ptr @tda1997x_chip_info, !492, !"tda1997x_chip_info", i1 false, i1 false}
!492 = !{!"../drivers/media/i2c/tda1997x.c", i32 285, i32 40}
!493 = !{ptr @tda1997x_i2c_id, !494, !"tda1997x_i2c_id", i1 false, i1 false}
!494 = !{!"../drivers/media/i2c/tda1997x.c", i32 2273, i32 35}
!495 = !{i32 1, !"wchar_size", i32 2}
!496 = !{i32 1, !"min_enum_size", i32 4}
!497 = !{i32 8, !"branch-target-enforcement", i32 0}
!498 = !{i32 8, !"sign-return-address", i32 0}
!499 = !{i32 8, !"sign-return-address-all", i32 0}
!500 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!501 = !{i32 7, !"uwtable", i32 1}
!502 = !{i32 7, !"frame-pointer", i32 2}
!503 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!504 = !{!"auto-init"}
!505 = !{!"branch_weights", i32 2000, i32 1}
!506 = !{i64 2148057036, i64 2148057316, i64 2148057650, i64 2148057984}
!507 = !{!"branch_weights", i32 1, i32 2000}
!508 = !{i8 0, i8 2}
