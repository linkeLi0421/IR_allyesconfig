; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/cros_ec_codec.c_pt.bc'
source_filename = "../sound/soc/codecs/cros_ec_codec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cros_ec_codec_priv = type { ptr, ptr, i32, i64, i32, i64, i32, i64, i64, %struct.atomic_t, i32, i8, ptr, i32, i8, ptr, i32, i8, %struct.mutex, [64000 x i8], i32, i32, i32, i8, ptr, %struct.delayed_work, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.83, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.83 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.78, [128 x i8] }
%union.anon.78 = type { %union.anon.80 }
%union.anon.80 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.ec_response_ec_codec_wov_get_lang = type { [32 x i8] }
%struct.ec_response_ec_codec_wov_read_audio = type { [128 x i8], i32 }

@__initcall__kmod_snd_soc_cros_ec_codec__268_1062_cros_ec_codec_platform_driver_init6 = internal global ptr @cros_ec_codec_platform_driver_init, section ".initcall6.init", align 4
@cros_ec_codec_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_ec_codec_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cros_ec_codec_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_ec_codec_platform_driver_exit = internal global ptr @cros_ec_codec_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file269 = internal constant [66 x i8] c"snd_soc_cros_ec_codec.file=sound/soc/codecs/snd-soc-cros-ec-codec\00", section ".modinfo", align 1
@__UNIQUE_ID_license270 = internal constant [37 x i8] c"snd_soc_cros_ec_codec.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description271 = internal constant [59 x i8] c"snd_soc_cros_ec_codec.description=ChromeOS EC codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author272 = internal constant [69 x i8] c"snd_soc_cros_ec_codec.author=Cheng-Yi Chiang <cychiang@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias273 = internal constant [51 x i8] c"snd_soc_cros_ec_codec.alias=platform:cros-ec-codec\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cros-ec-codec\00", [18 x i8] zeroinitializer }, align 32
@cros_ec_codec_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,cros-ec-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cros_ec_codec_platform_probe.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_cros_ec_codec\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cros_ec_codec_platform_probe\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/codecs/cros_ec_codec.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ec_shm_addr=%#llx len=%#x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"memory-region\00", [18 x i8] zeroinitializer }, align 32
@cros_ec_codec_platform_probe.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.6, i8 0, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ap_shm_phys_addr=%#llx len=%#x\0A\00", [32 x i8] zeroinitializer }, align 32
@cros_ec_codec_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1009, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to EC_CODEC_GET_CAPABILITIES\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_codec_platform_probe._entry_ptr = internal global ptr @cros_ec_codec_platform_probe._entry, section ".printk_index", align 4
@cros_ec_codec_platform_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1020, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Missing reset command. Please update EC firmware.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cros_ec_codec_platform_probe._entry_ptr.13 = internal global ptr @cros_ec_codec_platform_probe._entry.10, section ".printk_index", align 4
@cros_ec_codec_platform_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 1022, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to EC_CODEC_I2S_RESET: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cros_ec_codec_platform_probe._entry_ptr.16 = internal global ptr @cros_ec_codec_platform_probe._entry.14, section ".printk_index", align 4
@i2s_rx_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @i2s_rx_dapm_widgets, i32 3, ptr @i2s_rx_dapm_routes, i32 2, ptr @i2s_rx_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@i2s_rx_dai_driver = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.32, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @i2s_rx_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.20, i64 68, i32 128, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wov_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wov_controls, i32 2, ptr null, i32 0, ptr null, i32 0, ptr @wov_probe, ptr @wov_remove, ptr null, ptr null, ptr null, ptr null, ptr @wov_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wov_pcm_open, ptr null, ptr null, ptr @wov_pcm_hw_params, ptr @wov_pcm_hw_free, ptr null, ptr null, ptr null, ptr @wov_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wov_dai_driver = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.89, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.90, i64 4, i32 8, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@i2s_rx_dapm_routes = internal global { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.19, ptr null, ptr @.str.17, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.19, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"I2S RX Enable\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"I2S RX\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I2S Capture\00", [20 x i8] zeroinitializer }, align 32
@i2s_rx_dapm_widgets = internal global { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.17, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.18, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @i2s_rx_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.19, ptr @.str.20, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@i2s_rx_event.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s_rx_event\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enable I2S RX\0A\00", [17 x i8] zeroinitializer }, align 32
@i2s_rx_event.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.22, ptr @.str.3, ptr @.str.24, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"disable I2S RX\0A\00", [16 x i8] zeroinitializer }, align 32
@dmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 205, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"get_max_gain() unsupported\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dmic_probe._entry_ptr = internal global ptr @dmic_probe._entry, section ".printk_index", align 4
@dmic_probe.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.28, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max gain = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@dmic_controls = internal global { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @dmic_get_gain, ptr @dmic_put_gain, %union.anon.86 { ptr @dmic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EC Mic Gain\00", [20 x i8] zeroinitializer }, align 32
@dmic_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@dmic_put_gain.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dmic_put_gain\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set mic gain to %u, %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EC Codec I2S RX\00", [16 x i8] zeroinitializer }, align 32
@i2s_rx_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr @i2s_rx_set_bclk_ratio, ptr @i2s_rx_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2s_rx_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@i2s_rx_set_fmt.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2s_rx_set_fmt\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set format to %u\0A\00", [46 x i8] zeroinitializer }, align 32
@i2s_rx_hw_params.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2s_rx_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"set depth to %u\0A\00", [47 x i8] zeroinitializer }, align 32
@i2s_rx_hw_params.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.37, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set bclk to %u\0A\00", [16 x i8] zeroinitializer }, align 32
@wov_controls = internal global { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @wov_enable_get, ptr @wov_enable_put, %union.anon.86 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 268435504, i32 0, ptr @snd_soc_bytes_info_ext, ptr null, ptr null, %union.anon.86 { ptr @snd_soc_bytes_tlv_callback }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Wake-on-Voice Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Hotword Model\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_bytes_ext, [48 x i8] } { %struct.soc_bytes_ext { i32 69632, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr @wov_hotword_model_put }, [48 x i8] zeroinitializer }, align 32
@wov_enable_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 659, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed to %s wov\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wov_enable_put\00", [17 x i8] zeroinitializer }, align 32
@wov_enable_put._entry_ptr = internal global ptr @wov_enable_put._entry, section ".printk_index", align 4
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@wov_hotword_model_put.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wov_hotword_model_put\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: size=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@wov_hotword_model_put.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.47, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hash=%*phN\0A\00", [20 x i8] zeroinitializer }, align 32
@wov_hotword_model_put.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str.3, ptr @.str.48, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not updated\00", [20 x i8] zeroinitializer }, align 32
@wov_set_lang_shm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 678, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no enough SHM size: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wov_set_lang_shm\00", [47 x i8] zeroinitializer }, align 32
@wov_set_lang_shm._entry_ptr = internal global ptr @wov_set_lang_shm._entry, section ".printk_index", align 4
@wov_set_lang_shm._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 705, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to EC_CODEC_WOV_SET_LANG_SHM\0A\00", [59 x i8] zeroinitializer }, align 32
@wov_set_lang_shm._entry_ptr.53 = internal global ptr @wov_set_lang_shm._entry.51, section ".printk_index", align 4
@wov_set_lang._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 732, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to EC_CODEC_WOV_SET_LANG\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wov_set_lang\00", [19 x i8] zeroinitializer }, align 32
@wov_set_lang._entry_ptr = internal global ptr @wov_set_lang._entry, section ".printk_index", align 4
@wov_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->wov_dma_lock\00", [44 x i8] zeroinitializer }, align 32
@wov_probe.__key.57 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&priv->wov_copy_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@wov_probe.__key.59 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&priv->wov_copy_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@wov_copy_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 612, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no pcm substream\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wov_copy_work\00", [18 x i8] zeroinitializer }, align 32
@wov_copy_work._entry_ptr = internal global ptr @wov_copy_work._entry, section ".printk_index", align 4
@wov_copy_work._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 625, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read audio data\0A\00", [37 x i8] zeroinitializer }, align 32
@wov_copy_work._entry_ptr.65 = internal global ptr @wov_copy_work._entry.63, section ".printk_index", align 4
@wov_read_audio_shm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 561, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to EC_CODEC_WOV_READ_AUDIO_SHM\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wov_read_audio_shm\00", [45 x i8] zeroinitializer }, align 32
@wov_read_audio_shm._entry_ptr = internal global ptr @wov_read_audio_shm._entry, section ".printk_index", align 4
@wov_read_audio_shm.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no data, sleep\0A\00", [16 x i8] zeroinitializer }, align 32
@wov_queue_enqueue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 521, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"overrun detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wov_queue_enqueue\00", [46 x i8] zeroinitializer }, align 32
@wov_queue_enqueue._entry_ptr = internal global ptr @wov_queue_enqueue._entry, section ".printk_index", align 4
@wov_read_audio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 587, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to EC_CODEC_WOV_READ_AUDIO\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wov_read_audio\00", [17 x i8] zeroinitializer }, align 32
@wov_read_audio._entry_ptr = internal global ptr @wov_read_audio._entry, section ".printk_index", align 4
@wov_read_audio.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.72, ptr @.str.3, ptr @.str.68, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@wov_host_event.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 -53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wov_host_event\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@wov_map_shm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 404, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to EC_CODEC_GET_SHM_ADDR\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wov_map_shm\00", [20 x i8] zeroinitializer }, align 32
@wov_map_shm._entry_ptr = internal global ptr @wov_map_shm._entry, section ".printk_index", align 4
@wov_map_shm.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.3, ptr @.str.77, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"phys_addr=%#llx, len=%#x\0A\00", [38 x i8] zeroinitializer }, align 32
@wov_map_shm._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.76, ptr @.str.3, i32 419, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unknown status\0A\00", [16 x i8] zeroinitializer }, align 32
@wov_map_shm._entry_ptr.80 = internal global ptr @wov_map_shm._entry.78, section ".printk_index", align 4
@wov_map_shm.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.3, ptr @.str.81, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"round up from %u to %u\0A\00", [40 x i8] zeroinitializer }, align 32
@wov_map_shm._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.76, ptr @.str.3, i32 428, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"insufficient space for AP SHM\0A\00", [33 x i8] zeroinitializer }, align 32
@wov_map_shm._entry_ptr.84 = internal global ptr @wov_map_shm._entry.82, section ".printk_index", align 4
@wov_map_shm.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.76, ptr @.str.3, ptr @.str.85, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"alloc AP SHM addr=%#llx, len=%#x\0A\00", [62 x i8] zeroinitializer }, align 32
@wov_map_shm._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.76, ptr @.str.3, i32 442, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to EC_CODEC_SET_SHM_ADDR\0A\00", [63 x i8] zeroinitializer }, align 32
@wov_map_shm._entry_ptr.88 = internal global ptr @wov_map_shm._entry.86, section ".printk_index", align 4
@wov_pcm_open.hw_param = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 259, i64 4, i32 8, i32 0, i32 0, i32 1, i32 1, i32 131072, i32 4096, i32 16384, i32 8, i32 8, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Wake on Voice\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WoV Capture\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"cros_ec_codec_platform_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1053, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1055, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [23 x i8] c"cros_ec_codec_of_match\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1038, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 978, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 982, i32 40 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 994, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1009, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1019, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 1022, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"i2s_rx_component_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 384, i32 46 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"i2s_rx_dai_driver\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 366, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant [21 x i8] c"wov_component_driver\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 941, i32 46 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"wov_dai_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 795, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"i2s_rx_dapm_routes\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 361, i32 34 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 355, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 356, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 358, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c"i2s_rx_dapm_widgets\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 354, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 339, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 343, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 205, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 209, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [14 x i8] c"dmic_controls\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 179, i32 32 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 181, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [14 x i8] c"dmic_gain_tlv\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 173, i32 14 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 156, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 367, i32 10 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"i2s_rx_dai_ops\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 322, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 314, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 246, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 260, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [13 x i8] c"wov_controls\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 788, i32 32 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 789, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 791, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 658, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 757, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 764, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 774, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 677, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 705, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 732, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 830, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 831, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 612, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 625, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 561, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 566, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 521, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 586, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 813, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 404, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 408, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 419, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 424, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 428, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 432, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 442, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant [9 x i8] c"hw_param\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 872, i32 39 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 796, i32 10 }
@___asan_gen_.412 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.413 = private constant [36 x i8] c"../sound/soc/codecs/cros_ec_codec.c\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.413, i32 798, i32 18 }
@llvm.compiler.used = appending global [133 x ptr] [ptr @__UNIQUE_ID_alias273, ptr @__UNIQUE_ID_author272, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file269, ptr @__UNIQUE_ID_license270, ptr @__exitcall_cros_ec_codec_platform_driver_exit, ptr @__initcall__kmod_snd_soc_cros_ec_codec__268_1062_cros_ec_codec_platform_driver_init6, ptr @cros_ec_codec_platform_driver_exit, ptr @cros_ec_codec_platform_probe._entry, ptr @cros_ec_codec_platform_probe._entry.10, ptr @cros_ec_codec_platform_probe._entry.14, ptr @cros_ec_codec_platform_probe._entry_ptr, ptr @cros_ec_codec_platform_probe._entry_ptr.13, ptr @cros_ec_codec_platform_probe._entry_ptr.16, ptr @dmic_probe._entry, ptr @dmic_probe._entry_ptr, ptr @wov_copy_work._entry, ptr @wov_copy_work._entry.63, ptr @wov_copy_work._entry_ptr, ptr @wov_copy_work._entry_ptr.65, ptr @wov_enable_put._entry, ptr @wov_enable_put._entry_ptr, ptr @wov_map_shm._entry, ptr @wov_map_shm._entry.78, ptr @wov_map_shm._entry.82, ptr @wov_map_shm._entry.86, ptr @wov_map_shm._entry_ptr, ptr @wov_map_shm._entry_ptr.80, ptr @wov_map_shm._entry_ptr.84, ptr @wov_map_shm._entry_ptr.88, ptr @wov_queue_enqueue._entry, ptr @wov_queue_enqueue._entry_ptr, ptr @wov_read_audio._entry, ptr @wov_read_audio._entry_ptr, ptr @wov_read_audio_shm._entry, ptr @wov_read_audio_shm._entry_ptr, ptr @wov_set_lang._entry, ptr @wov_set_lang._entry_ptr, ptr @wov_set_lang_shm._entry, ptr @wov_set_lang_shm._entry.51, ptr @wov_set_lang_shm._entry_ptr, ptr @wov_set_lang_shm._entry_ptr.53, ptr @cros_ec_codec_platform_driver, ptr @.str, ptr @cros_ec_codec_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @i2s_rx_component_driver, ptr @i2s_rx_dai_driver, ptr @wov_component_driver, ptr @wov_dai_driver, ptr @i2s_rx_dapm_routes, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @i2s_rx_dapm_widgets, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @dmic_controls, ptr @.str.29, ptr @dmic_gain_tlv, ptr @.compoundliteral, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @i2s_rx_dai_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @wov_controls, ptr @.str.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @wov_probe.__key, ptr @.str.56, ptr @wov_probe.__key.57, ptr @.str.58, ptr @wov_probe.__key.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @wov_pcm_open.hw_param, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_codec_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_codec_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_codec_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_codec_platform_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_codec_platform_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_rx_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_rx_dai_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_dai_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_rx_dapm_routes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_rx_dapm_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2s_rx_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_enable_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_set_lang_shm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_set_lang_shm._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_set_lang._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_probe.__key.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_probe.__key.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_copy_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_copy_work._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_read_audio_shm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_queue_enqueue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_read_audio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_map_shm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_map_shm._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_map_shm._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_map_shm._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wov_pcm_open.hw_param to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_codec_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_ec_codec_platform_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_ec_codec_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_ec_codec_platform_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_codec_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %res = alloca %struct.resource, align 4
  %ec_shm_size = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #11
  %4 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %5 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ec_shm_size) #11
  %6 = ptrtoint ptr %ec_shm_size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %ec_shm_size, align 8, !annotation !223
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64328, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i137 = call ptr @__of_get_address(ptr noundef %8, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %ec_shm_size, ptr noundef null) #11
  %tobool5.not = icmp eq ptr %call.i137, null
  br i1 %tobool5.not, label %if.end.if.end16_crit_edge, label %if.then6

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %call.i137 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call.i137, align 4
  %conv.i = zext i32 %10 to i64
  %incdec.ptr.i = getelementptr i32, ptr %call.i137, i32 1
  %shl.1.i = shl nuw i64 %conv.i, 32
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %incdec.ptr.i, align 4
  %conv.1.i = zext i32 %12 to i64
  %or.1.i = or i64 %shl.1.i, %conv.1.i
  %ec_shm_addr = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %ec_shm_addr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or.1.i, ptr %ec_shm_addr, align 8
  %14 = ptrtoint ptr %ec_shm_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ec_shm_size, align 8
  %conv = trunc i64 %15 to i32
  %ec_shm_len = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %ec_shm_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %ec_shm_len, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_codec_platform_probe.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_codec_platform_probe, %if.then12)) #11
          to label %if.end16 [label %if.then12], !srcloc !224

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %ec_shm_addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ec_shm_addr, align 8
  %19 = ptrtoint ptr %ec_shm_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ec_shm_len, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_codec_platform_probe.__UNIQUE_ID_ddebug266, ptr noundef %dev1, ptr noundef nonnull @.str.4, i64 noundef %18, i32 noundef %20) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.then6, %if.end.if.end16_crit_edge
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #11
  %23 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i138 = call i32 @__of_parse_phandle_with_args(ptr noundef %22, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  br label %if.end51

of_parse_phandle.exit:                            ; preds = %if.end16
  %24 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #11
  %tobool19.not = icmp eq ptr %25, null
  br i1 %tobool19.not, label %of_parse_phandle.exit.if.end51_crit_edge, label %if.then20

of_parse_phandle.exit.if.end51_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then20:                                        ; preds = %of_parse_phandle.exit
  %call21 = call i32 @of_address_to_resource(ptr noundef nonnull %25, i32 noundef 0, ptr noundef nonnull %res) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.then20.if.end51_crit_edge

if.then20.if.end51_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then23:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %res, align 4
  %conv24 = zext i32 %27 to i64
  %ap_shm_phys_addr = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %ap_shm_phys_addr to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv24, ptr %ap_shm_phys_addr, align 8
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %4, align 4
  %sub.i = sub i32 1, %27
  %add.i = add i32 %sub.i, %30
  %ap_shm_len = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %call.i, i32 0, i32 6
  %31 = ptrtoint ptr %ap_shm_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %ap_shm_len, align 8
  %call29 = call ptr @devm_ioremap_wc(ptr noundef %dev1, i32 noundef %27, i32 noundef %add.i) #11
  %32 = ptrtoint ptr %call29 to i32
  %conv30 = zext i32 %32 to i64
  %ap_shm_addr = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %ap_shm_addr to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv30, ptr %ap_shm_addr, align 8
  %ap_shm_last_alloc = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %ap_shm_last_alloc to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %conv24, ptr %ap_shm_last_alloc, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_codec_platform_probe.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_codec_platform_probe, %if.then44)) #11
          to label %if.end51 [label %if.then44], !srcloc !224

if.then44:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %ap_shm_phys_addr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %ap_shm_phys_addr, align 8
  %37 = ptrtoint ptr %ap_shm_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ap_shm_len, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_codec_platform_probe.__UNIQUE_ID_ddebug267, ptr noundef %dev1, ptr noundef nonnull @.str.6, i64 noundef %36, i32 noundef %38) #11
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %if.then23, %if.then20.if.end51_crit_edge, %of_parse_phandle.exit.if.end51_crit_edge, %of_parse_phandle.exit.thread
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev1, ptr %call.i, align 8
  %ec_device53 = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %ec_device53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %3, ptr %ec_device53, align 4
  %dmic_probed = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %call.i, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %dmic_probed, i32 noundef 4) #11
  %41 = ptrtoint ptr %dmic_probed to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile i32 0, ptr %dmic_probed, align 4
  %42 = ptrtoint ptr %ec_device53 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ec_device53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3264, i32 noundef 40) #14
  %tobool.not.i140 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i140, label %if.end51.do.end60_crit_edge, label %if.end.i141

if.end51.do.end60_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end60

if.end.i141:                                      ; preds = %if.end51
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 188, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 20, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 4, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %data.i, align 4
  %p.sroa.7.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %50 = call ptr @memset(ptr %p.sroa.7.0.data.i.sroa_idx, i32 255, i32 19)
  %call6.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %43, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %send_ec_host_command.exit, label %if.end61

send_ec_host_command.exit:                        ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end60

do.end60:                                         ; preds = %send_ec_host_command.exit, %if.end51.do.end60_crit_edge
  %retval.0.i142174 = phi i32 [ %call6.i, %send_ec_host_command.exit ], [ -12, %if.end51.do.end60_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #15
  br label %cleanup

if.end61:                                         ; preds = %if.end.i141
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %r.sroa.0.0.copyload = load i32, ptr %data.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %ec_capabilities = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %call.i, i32 0, i32 2
  %52 = ptrtoint ptr %ec_capabilities to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %r.sroa.0.0.copyload, ptr %ec_capabilities, align 8
  %53 = ptrtoint ptr %ec_device53 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ec_device53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i143 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 40) #14
  %tobool.not.i144 = icmp eq ptr %call7.i.i143, null
  br i1 %tobool.not.i144, label %if.end61.do.end74_crit_edge, label %if.end.i151

if.end61.do.end74_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74

if.end.i151:                                      ; preds = %if.end61
  %56 = ptrtoint ptr %call7.i.i143 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %call7.i.i143, align 8
  %command.i145 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i143, i32 0, i32 1
  %57 = ptrtoint ptr %command.i145 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 190, ptr %command.i145, align 4
  %outsize1.i146 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i143, i32 0, i32 2
  %58 = ptrtoint ptr %outsize1.i146 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 20, ptr %outsize1.i146, align 8
  %insize2.i147 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i143, i32 0, i32 3
  %59 = ptrtoint ptr %insize2.i147 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %insize2.i147, align 4
  %data.i148 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i143, i32 0, i32 5
  %60 = ptrtoint ptr %data.i148 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 5, ptr %data.i148, align 4
  %p.sroa.7.0.data.i148.sroa_idx = getelementptr inbounds i8, ptr %data.i148, i32 1
  %61 = call ptr @memset(ptr %p.sroa.7.0.data.i148.sroa_idx, i32 255, i32 19)
  %call6.i149 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %54, ptr noundef nonnull %call7.i.i143) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i149)
  %cmp7.i150 = icmp slt i32 %call6.i149, 0
  call void @kfree(ptr noundef nonnull %call7.i.i143) #11
  br i1 %cmp7.i150, label %send_ec_host_command.exit156, label %if.end.i151.if.end76_crit_edge

if.end.i151.if.end76_crit_edge:                   ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end76

send_ec_host_command.exit156:                     ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_const_cmp4(i32 -92, i32 %call6.i149)
  %cond = icmp eq i32 %call6.i149, -92
  br i1 %cond, label %do.end69, label %send_ec_host_command.exit156.do.end74_crit_edge

send_ec_host_command.exit156.do.end74_crit_edge:  ; preds = %send_ec_host_command.exit156
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end74

do.end69:                                         ; preds = %send_ec_host_command.exit156
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11) #15
  br label %if.end76

do.end74:                                         ; preds = %send_ec_host_command.exit156.do.end74_crit_edge, %if.end61.do.end74_crit_edge
  %retval.0.i155181 = phi i32 [ %call6.i149, %send_ec_host_command.exit156.do.end74_crit_edge ], [ -12, %if.end61.do.end74_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i155181) #15
  br label %cleanup

if.end76:                                         ; preds = %do.end69, %if.end.i151.if.end76_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call77 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @i2s_rx_component_driver, ptr noundef nonnull @i2s_rx_dai_driver, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup_crit_edge

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end80:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #13
  %call81 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @wov_component_driver, ptr noundef nonnull @wov_dai_driver, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end76.cleanup_crit_edge, %do.end74, %do.end60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i142174, %do.end60 ], [ %call81, %if.end80 ], [ %retval.0.i155181, %do.end74 ], [ -12, %entry.cleanup_crit_edge ], [ %call77, %if.end76.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ec_shm_size) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_wc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_rx_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dmic_probe(ptr noundef %component)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_rx_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %do.body
    i32 4, label %do.body6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2s_rx_event.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2s_rx_event, %if.then)) #11
          to label %sw.epilog [label %if.then], !srcloc !224

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2s_rx_event.__UNIQUE_ID_ddebug245, ptr noundef %8, ptr noundef nonnull @.str.23) #11
  br label %sw.epilog

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2s_rx_event.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2s_rx_event, %if.then18)) #11
          to label %sw.epilog [label %if.then18], !srcloc !224

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2s_rx_event.__UNIQUE_ID_ddebug246, ptr noundef %10, ptr noundef nonnull @.str.24) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then18, %do.body6, %if.then, %do.body
  %storemerge = phi i8 [ 0, %if.then ], [ 1, %if.then18 ], [ 0, %do.body ], [ 1, %do.body6 ]
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 28) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 190, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %storemerge, ptr %data.i, align 4
  %p.sroa.5.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %19 = ptrtoint ptr %p.sroa.5.0.data.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %19, i32 7)
  store i56 0, ptr %p.sroa.5.0.data.i.sroa_idx, align 1
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %12, ptr noundef nonnull %call7.i.i) #11
  %20 = tail call i32 @llvm.smin.i32(i32 %call6.i, i32 0)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %20, %if.end.i ], [ -12, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmic_probe(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dmic_probed = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dmic_probed, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !225
  tail call void @llvm.prefetch.p0(ptr %dmic_probed, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %dmic_probed, ptr %dmic_probed, i32 1, i32 1, ptr elementtype(i32) %dmic_probed) #11, !srcloc !226
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !227
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3264, i32 noundef 28) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 189, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %data.i, align 4
  %p.sroa.5.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %15 = call ptr @memset(ptr %p.sroa.5.0.data.i.sroa_idx, i32 255, i32 7)
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %8, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %send_ec_host_command.exit.thread36, label %do.body6

send_ec_host_command.exit.thread36:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

do.end:                                           ; preds = %send_ec_host_command.exit.thread36, %if.end.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.25) #15
  br label %cleanup

do.body6:                                         ; preds = %if.end.i
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %r.sroa.0.0.copyload = load i8, ptr %data.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmic_probe.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmic_probe, %if.then10)) #11
          to label %do.end13 [label %if.then10], !srcloc !224

if.then10:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %r.sroa.0.0.copyload to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dmic_probe.__UNIQUE_ID_ddebug241, ptr noundef %5, ptr noundef nonnull @.str.28, i32 noundef %conv) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body6
  %17 = load i32, ptr getelementptr inbounds ([1 x %struct.snd_kcontrol_new], ptr @dmic_controls, i32 0, i32 0, i32 11), align 4
  %18 = inttoptr i32 %17 to ptr
  %conv15 = zext i8 %r.sroa.0.0.copyload to i32
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv15, ptr %max, align 4
  %platform_max = getelementptr inbounds %struct.soc_mixer_control, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %platform_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv15, ptr %platform_max, align 4
  %call18 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @dmic_controls, i32 noundef 1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call18, %do.end13 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_get_gain(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 28) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 189, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %data.i, align 4
  %p.sroa.7.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %14 = ptrtoint ptr %p.sroa.7.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %p.sroa.7.0.data.i.sroa_idx, align 1
  %p.sroa.8.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 2
  %15 = ptrtoint ptr %p.sroa.8.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %p.sroa.8.0.data.i.sroa_idx, align 2
  %p.sroa.9.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 3
  %16 = ptrtoint ptr %p.sroa.9.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %p.sroa.9.0.data.i.sroa_idx, align 1
  %p.sroa.10.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 1, i32 1
  %17 = ptrtoint ptr %p.sroa.10.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %p.sroa.10.0.data.i.sroa_idx, align 8
  %p.sroa.13.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 5
  %18 = ptrtoint ptr %p.sroa.13.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %p.sroa.13.0.data.i.sroa_idx, align 1
  %p.sroa.14.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 6
  %19 = ptrtoint ptr %p.sroa.14.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %p.sroa.14.0.data.i.sroa_idx, align 2
  %p.sroa.15.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 7
  %20 = ptrtoint ptr %p.sroa.15.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %p.sroa.15.0.data.i.sroa_idx, align 1
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %7, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %send_ec_host_command.exit.thread51, label %if.end

send_ec_host_command.exit.thread51:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %r.sroa.0.0.copyload = load i8, ptr %data.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %conv = zext i8 %r.sroa.0.0.copyload to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %value, align 8
  %23 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 28) #14
  %tobool.not.i25 = icmp eq ptr %call7.i.i24, null
  br i1 %tobool.not.i25, label %if.end.cleanup_crit_edge, label %if.end.i32

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i32:                                       ; preds = %if.end
  %26 = ptrtoint ptr %call7.i.i24 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %call7.i.i24, align 8
  %command.i26 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i24, i32 0, i32 1
  %27 = ptrtoint ptr %command.i26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 189, ptr %command.i26, align 4
  %outsize1.i27 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i24, i32 0, i32 2
  %28 = ptrtoint ptr %outsize1.i27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %outsize1.i27, align 8
  %insize2.i28 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i24, i32 0, i32 3
  %29 = ptrtoint ptr %insize2.i28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %insize2.i28, align 4
  %data.i29 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i24, i32 0, i32 5
  %30 = ptrtoint ptr %data.i29 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %data.i29, align 4
  %p.sroa.7.0.data.i29.sroa_idx = getelementptr inbounds i8, ptr %data.i29, i32 1
  %31 = ptrtoint ptr %p.sroa.7.0.data.i29.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %p.sroa.7.0.data.i29.sroa_idx, align 1
  %p.sroa.8.0.data.i29.sroa_idx = getelementptr inbounds i8, ptr %data.i29, i32 2
  %32 = ptrtoint ptr %p.sroa.8.0.data.i29.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %p.sroa.8.0.data.i29.sroa_idx, align 2
  %p.sroa.9.0.data.i29.sroa_idx = getelementptr inbounds i8, ptr %data.i29, i32 3
  %33 = ptrtoint ptr %p.sroa.9.0.data.i29.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %p.sroa.9.0.data.i29.sroa_idx, align 1
  %p.sroa.10.0.data.i29.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i24, i32 1, i32 1
  %34 = ptrtoint ptr %p.sroa.10.0.data.i29.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %p.sroa.10.0.data.i29.sroa_idx, align 8
  %p.sroa.13.0.data.i29.sroa_idx = getelementptr inbounds i8, ptr %data.i29, i32 5
  %35 = ptrtoint ptr %p.sroa.13.0.data.i29.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 -1, ptr %p.sroa.13.0.data.i29.sroa_idx, align 1
  %p.sroa.14.0.data.i29.sroa_idx = getelementptr inbounds i8, ptr %data.i29, i32 6
  %36 = ptrtoint ptr %p.sroa.14.0.data.i29.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %p.sroa.14.0.data.i29.sroa_idx, align 2
  %p.sroa.15.0.data.i29.sroa_idx = getelementptr inbounds i8, ptr %data.i29, i32 7
  %37 = ptrtoint ptr %p.sroa.15.0.data.i29.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %p.sroa.15.0.data.i29.sroa_idx, align 1
  %call6.i30 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %24, ptr noundef nonnull %call7.i.i24) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i30)
  %cmp7.i31 = icmp slt i32 %call6.i30, 0
  br i1 %cmp7.i31, label %send_ec_host_command.exit37.thread58, label %if.end10

send_ec_host_command.exit37.thread58:             ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i24) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %data.i29 to i32
  call void @__asan_load1_noabort(i32 %38)
  %r.sroa.0.0.copyload39 = load i8, ptr %data.i29, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i24) #11
  %conv12 = zext i8 %r.sroa.0.0.copyload39 to i32
  %arrayidx14 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv12, ptr %arrayidx14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %send_ec_host_command.exit37.thread58, %if.end.cleanup_crit_edge, %send_ec_host_command.exit.thread51, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call6.i, %send_ec_host_command.exit.thread51 ], [ %call6.i30, %send_ec_host_command.exit37.thread58 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_put_gain(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %max = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %arrayidx3 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %10)
  %cmp = icmp sgt i32 %12, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %10)
  %cmp4 = icmp sgt i32 %14, %10
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dmic_put_gain.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dmic_put_gain, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !224

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dmic_put_gain.__UNIQUE_ID_ddebug240, ptr noundef %16, ptr noundef nonnull @.str.31, i32 noundef %12, i32 noundef %14) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 28) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %conv = trunc i32 %12 to i8
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 189, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %data.i, align 4
  %p.sroa.7.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %25 = ptrtoint ptr %p.sroa.7.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %p.sroa.7.0.data.i.sroa_idx, align 1
  %p.sroa.8.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 2
  %26 = ptrtoint ptr %p.sroa.8.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %p.sroa.8.0.data.i.sroa_idx, align 2
  %p.sroa.9.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 3
  %27 = ptrtoint ptr %p.sroa.9.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -1, ptr %p.sroa.9.0.data.i.sroa_idx, align 1
  %p.sroa.10.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 1, i32 1
  %28 = ptrtoint ptr %p.sroa.10.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %p.sroa.10.0.data.i.sroa_idx, align 8
  %p.sroa.13.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 5
  %29 = ptrtoint ptr %p.sroa.13.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv, ptr %p.sroa.13.0.data.i.sroa_idx, align 1
  %p.sroa.16.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 6
  %30 = ptrtoint ptr %p.sroa.16.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %p.sroa.16.0.data.i.sroa_idx, align 2
  %p.sroa.17.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 7
  %31 = ptrtoint ptr %p.sroa.17.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %p.sroa.17.0.data.i.sroa_idx, align 1
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %18, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br i1 %cmp7.i, label %if.end.i.cleanup_crit_edge, label %if.end14

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end.i
  %32 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 28) #14
  %tobool.not.i42 = icmp eq ptr %call7.i.i41, null
  br i1 %tobool.not.i42, label %if.end14.cleanup_crit_edge, label %if.end.i49

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i49:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %conv17 = trunc i32 %14 to i8
  %35 = ptrtoint ptr %call7.i.i41 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %call7.i.i41, align 8
  %command.i43 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i41, i32 0, i32 1
  %36 = ptrtoint ptr %command.i43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 189, ptr %command.i43, align 4
  %outsize1.i44 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i41, i32 0, i32 2
  %37 = ptrtoint ptr %outsize1.i44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8, ptr %outsize1.i44, align 8
  %insize2.i45 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i41, i32 0, i32 3
  %38 = ptrtoint ptr %insize2.i45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %insize2.i45, align 4
  %data.i46 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i41, i32 0, i32 5
  %39 = ptrtoint ptr %data.i46 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %data.i46, align 4
  %p.sroa.7.0.data.i46.sroa_idx = getelementptr inbounds i8, ptr %data.i46, i32 1
  %40 = ptrtoint ptr %p.sroa.7.0.data.i46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %p.sroa.7.0.data.i46.sroa_idx, align 1
  %p.sroa.8.0.data.i46.sroa_idx = getelementptr inbounds i8, ptr %data.i46, i32 2
  %41 = ptrtoint ptr %p.sroa.8.0.data.i46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %p.sroa.8.0.data.i46.sroa_idx, align 2
  %p.sroa.9.0.data.i46.sroa_idx = getelementptr inbounds i8, ptr %data.i46, i32 3
  %42 = ptrtoint ptr %p.sroa.9.0.data.i46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %p.sroa.9.0.data.i46.sroa_idx, align 1
  %p.sroa.10.0.data.i46.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i41, i32 1, i32 1
  %43 = ptrtoint ptr %p.sroa.10.0.data.i46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %p.sroa.10.0.data.i46.sroa_idx, align 8
  %p.sroa.13.0.data.i46.sroa_idx = getelementptr inbounds i8, ptr %data.i46, i32 5
  %44 = ptrtoint ptr %p.sroa.13.0.data.i46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv17, ptr %p.sroa.13.0.data.i46.sroa_idx, align 1
  %p.sroa.16.0.data.i46.sroa_idx = getelementptr inbounds i8, ptr %data.i46, i32 6
  %45 = ptrtoint ptr %p.sroa.16.0.data.i46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %p.sroa.16.0.data.i46.sroa_idx, align 2
  %p.sroa.17.0.data.i46.sroa_idx = getelementptr inbounds i8, ptr %data.i46, i32 7
  %46 = ptrtoint ptr %p.sroa.17.0.data.i46.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %p.sroa.17.0.data.i46.sroa_idx, align 1
  %call6.i47 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %33, ptr noundef nonnull %call7.i.i41) #11
  %47 = tail call i32 @llvm.smin.i32(i32 %call6.i47, i32 0)
  tail call void @kfree(ptr noundef nonnull %call7.i.i41) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i49, %if.end14.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %47, %if.end.i49 ], [ -12, %if.end14.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ %call6.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @i2s_rx_set_bclk_ratio(ptr nocapture noundef readonly %dai, i32 noundef %ratio) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %i2s_rx_bclk_ratio = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %i2s_rx_bclk_ratio to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ratio, ptr %i2s_rx_bclk_ratio, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_rx_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = and i32 %fmt, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %6)
  %7 = icmp eq i32 %6, 16384
  br i1 %7, label %sw.epilog4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog4:                                       ; preds = %entry
  %and5 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %do.body, label %sw.epilog4.cleanup_crit_edge

sw.epilog4.cleanup_crit_edge:                     ; preds = %sw.epilog4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %sw.epilog4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2s_rx_set_fmt.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2s_rx_set_fmt, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !224

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2s_rx_set_fmt.__UNIQUE_ID_ddebug244, ptr noundef %10, ptr noundef nonnull @.str.34, i32 noundef %switch.tableidx) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 28) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %p.sroa.8.4.insert.shift = shl nuw nsw i32 %switch.tableidx, 24
  %p.sroa.8.4.insert.insert = or i32 %p.sroa.8.4.insert.shift, 16777215
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 190, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %data.i, align 4
  %p.sroa.5.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %19 = ptrtoint ptr %p.sroa.5.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %p.sroa.5.0.data.i.sroa_idx, align 1
  %p.sroa.6.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 2
  %20 = ptrtoint ptr %p.sroa.6.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %p.sroa.6.0.data.i.sroa_idx, align 2
  %p.sroa.7.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 3
  %21 = ptrtoint ptr %p.sroa.7.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -1, ptr %p.sroa.7.0.data.i.sroa_idx, align 1
  %p.sroa.8.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 1, i32 1
  %22 = ptrtoint ptr %p.sroa.8.0.data.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %p.sroa.8.4.insert.insert, ptr %p.sroa.8.0.data.i.sroa_idx, align 8
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %12, ptr noundef nonnull %call7.i.i) #11
  %23 = tail call i32 @llvm.smin.i32(i32 %call6.i, i32 0)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %do.end.cleanup_crit_edge, %sw.epilog4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog4.cleanup_crit_edge ], [ %23, %if.end.i ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2s_rx_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %7)
  %cmp.not = icmp eq i32 %7, 48000
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i62 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i62 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end.params_format.exit_crit_edge

if.end.params_format.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.1.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %9, %if.end.params_format.exit_crit_edge ], [ %11, %for.inc.i.i.params_format.exit_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #11, !range !228
  %add.i.i = or i32 %12, %i.09.lcssa.i.i
  %13 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %params_format.exit.do.body_crit_edge
    i32 6, label %sw.bb4
  ]

params_format.exit.do.body_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb4:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %sw.bb4, %params_format.exit.do.body_crit_edge
  %depth.0 = phi i32 [ 1, %sw.bb4 ], [ 0, %params_format.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2s_rx_hw_params.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2s_rx_hw_params, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !224

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2s_rx_hw_params.__UNIQUE_ID_ddebug242, ptr noundef %15, ptr noundef nonnull @.str.36, i32 noundef %depth.0) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 28) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  %p.sroa.10.4.insert.shift = shl nuw nsw i32 %depth.0, 24
  %p.sroa.10.4.insert.insert = or i32 %p.sroa.10.4.insert.shift, 16777215
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 190, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %data.i, align 4
  %p.sroa.7.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %24 = ptrtoint ptr %p.sroa.7.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %p.sroa.7.0.data.i.sroa_idx, align 1
  %p.sroa.8.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 2
  %25 = ptrtoint ptr %p.sroa.8.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -1, ptr %p.sroa.8.0.data.i.sroa_idx, align 2
  %p.sroa.9.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 3
  %26 = ptrtoint ptr %p.sroa.9.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -1, ptr %p.sroa.9.0.data.i.sroa_idx, align 1
  %p.sroa.10.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 1, i32 1
  %27 = ptrtoint ptr %p.sroa.10.0.data.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %p.sroa.10.4.insert.insert, ptr %p.sroa.10.0.data.i.sroa_idx, align 8
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %17, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br i1 %cmp7.i, label %if.end.i.cleanup_crit_edge, label %if.end15

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end.i
  %i2s_rx_bclk_ratio = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 10
  %28 = ptrtoint ptr %i2s_rx_bclk_ratio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i2s_rx_bclk_ratio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool16.not = icmp eq i32 %29, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i, align 4
  %mul = mul i32 %31, %29
  br label %do.body22

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #11
  br label %do.body22

do.body22:                                        ; preds = %if.else, %if.then17
  %bclk.0 = phi i32 [ %mul, %if.then17 ], [ %call20, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2s_rx_hw_params.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@i2s_rx_hw_params, %if.then34)) #11
          to label %do.end38 [label %if.then34], !srcloc !224

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @i2s_rx_hw_params.__UNIQUE_ID_ddebug243, ptr noundef %33, ptr noundef nonnull @.str.37, i32 noundef %bclk.0) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body22
  %34 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i65 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3264, i32 noundef 28) #14
  %tobool.not.i66 = icmp eq ptr %call7.i.i65, null
  br i1 %tobool.not.i66, label %do.end38.cleanup_crit_edge, label %if.end.i73

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i73:                                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %call7.i.i65 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %call7.i.i65, align 8
  %command.i67 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i65, i32 0, i32 1
  %38 = ptrtoint ptr %command.i67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 190, ptr %command.i67, align 4
  %outsize1.i68 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i65, i32 0, i32 2
  %39 = ptrtoint ptr %outsize1.i68 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %outsize1.i68, align 8
  %insize2.i69 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i65, i32 0, i32 3
  %40 = ptrtoint ptr %insize2.i69 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %insize2.i69, align 4
  %data.i70 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i65, i32 0, i32 5
  %41 = ptrtoint ptr %data.i70 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 4, ptr %data.i70, align 4
  %p.sroa.7.0.data.i70.sroa_idx = getelementptr inbounds i8, ptr %data.i70, i32 1
  %42 = ptrtoint ptr %p.sroa.7.0.data.i70.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 -1, ptr %p.sroa.7.0.data.i70.sroa_idx, align 1
  %p.sroa.8.0.data.i70.sroa_idx = getelementptr inbounds i8, ptr %data.i70, i32 2
  %43 = ptrtoint ptr %p.sroa.8.0.data.i70.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -1, ptr %p.sroa.8.0.data.i70.sroa_idx, align 2
  %p.sroa.9.0.data.i70.sroa_idx = getelementptr inbounds i8, ptr %data.i70, i32 3
  %44 = ptrtoint ptr %p.sroa.9.0.data.i70.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %p.sroa.9.0.data.i70.sroa_idx, align 1
  %p.sroa.10.0.data.i70.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i65, i32 1, i32 1
  %45 = ptrtoint ptr %p.sroa.10.0.data.i70.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %bclk.0, ptr %p.sroa.10.0.data.i70.sroa_idx, align 8
  %call6.i71 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %35, ptr noundef nonnull %call7.i.i65) #11
  %46 = tail call i32 @llvm.smin.i32(i32 %call6.i71, i32 0)
  tail call void @kfree(ptr noundef nonnull %call7.i.i65) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i73, %do.end38.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.cleanup_crit_edge, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %params_format.exit.cleanup_crit_edge ], [ %46, %if.end.i73 ], [ -12, %do.end38.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ], [ -12, %do.end.cleanup_crit_edge ], [ %call6.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wov_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %wov_dma_lock = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %wov_dma_lock, ptr noundef nonnull @.str.56, ptr noundef nonnull @wov_probe.__key) #11
  %wov_copy_work = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 25
  tail call void @__init_work(ptr noundef %wov_copy_work, i32 noundef 0) #11
  %4 = ptrtoint ptr %wov_copy_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %wov_copy_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 25, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.58, ptr noundef nonnull @wov_probe.__key.57, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry9 = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 25, i32 0, i32 1
  %5 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 25, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 25, i32 0, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @wov_copy_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 25, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.60, ptr noundef nonnull @wov_probe.__key.59) #11
  %wov_notifier = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 26
  %8 = ptrtoint ptr %wov_notifier to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @wov_host_event, ptr %wov_notifier, align 8
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ec_device, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %10, i32 0, i32 22
  %call21 = tail call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef %wov_notifier) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ec_capabilities.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %ec_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ec_capabilities.i, align 8
  %and.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not = icmp eq i32 %and.i, 0
  br i1 %tobool23.not, label %if.end.if.end30_crit_edge, label %if.then24

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24:                                        ; preds = %if.end
  %wov_lang_shm_len = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 16
  %wov_lang_shm_type = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 17
  %call25 = tail call fastcc ptr @wov_map_shm(ptr noundef %3, i8 noundef zeroext 1, ptr noundef %wov_lang_shm_len, ptr noundef %wov_lang_shm_type)
  %wov_lang_shm_p = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 15
  %13 = ptrtoint ptr %wov_lang_shm_p to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call25, ptr %wov_lang_shm_p, align 8
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.then24.cleanup_crit_edge, label %if.then24.if.end30_crit_edge

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %14 = ptrtoint ptr %ec_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ec_capabilities.i, align 8
  %and.i66 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool32.not = icmp eq i32 %and.i66, 0
  br i1 %tobool32.not, label %if.end30.if.end39_crit_edge, label %if.then33

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then33:                                        ; preds = %if.end30
  %wov_audio_shm_len = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 13
  %wov_audio_shm_type = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 14
  %call34 = tail call fastcc ptr @wov_map_shm(ptr noundef %3, i8 noundef zeroext 0, ptr noundef %wov_audio_shm_len, ptr noundef %wov_audio_shm_type)
  %wov_audio_shm_p = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 12
  %16 = ptrtoint ptr %wov_audio_shm_p to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call34, ptr %wov_audio_shm_p, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %if.then33.cleanup_crit_edge, label %if.then33.if.end39_crit_edge

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end39:                                         ; preds = %if.then33.if.end39_crit_edge, %if.end30.if.end39_crit_edge
  %call40 = tail call fastcc i32 @dmic_probe(ptr noundef %component)
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then33.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end39 ], [ %call21, %entry.cleanup_crit_edge ], [ -14, %if.then24.cleanup_crit_edge ], [ -14, %if.then33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wov_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_device, align 4
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %5, i32 0, i32 22
  %wov_notifier = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 26
  %call1 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier, ptr noundef %wov_notifier) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wov_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %call = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 7, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wov_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @wov_pcm_open.hw_param) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wov_pcm_hw_params(ptr nocapture noundef readonly %component, ptr noundef %substream, ptr nocapture noundef readnone %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %wov_dma_lock = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %wov_dma_lock, i32 noundef 0) #11
  %wov_substream = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %wov_substream to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %wov_substream, align 8
  %wov_wp = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 21
  %5 = ptrtoint ptr %wov_wp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wov_wp, align 4
  %wov_rp = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %wov_rp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %wov_rp, align 8
  %wov_dma_offset = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 22
  %7 = ptrtoint ptr %wov_dma_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wov_dma_offset, align 8
  %wov_burst_read = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 23
  %8 = ptrtoint ptr %wov_burst_read to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %wov_burst_read, align 4
  tail call void @mutex_unlock(ptr noundef %wov_dma_lock) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wov_pcm_hw_free(ptr nocapture noundef readonly %component, ptr nocapture noundef readnone %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %wov_dma_lock = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %wov_dma_lock, i32 noundef 0) #11
  %wov_wp.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %wov_wp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wov_wp.i, align 4
  %wov_rp.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wov_rp.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp ult i32 %5, %7
  %retval.0.p.v.i = select i1 %cmp.not.i, i32 64000, i32 0
  %retval.0.p.i = sub i32 %5, %7
  %retval.0.i = add i32 %retval.0.p.v.i, %retval.0.p.i
  %wov_substream.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not71.i = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not71.i, label %entry.wov_queue_dequeue.exit_crit_edge, label %while.body.lr.ph.i

entry.wov_queue_dequeue.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %wov_queue_dequeue.exit

while.body.lr.ph.i:                               ; preds = %entry
  %8 = ptrtoint ptr %wov_substream.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wov_substream.i, align 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime1.i, align 4
  %dma_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 52
  %wov_dma_offset.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 22
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %11, i32 0, i32 50
  %wov_buf.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 19
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %len.addr.072.i = phi i32 [ %retval.0.i, %while.body.lr.ph.i ], [ %sub37.i, %while.body.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_bytes.i, align 4
  %14 = ptrtoint ptr %wov_dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wov_dma_offset.i, align 8
  %sub.i = sub i32 %13, %15
  %16 = tail call i32 @llvm.umin.i32(i32 %len.addr.072.i, i32 %sub.i) #11
  %17 = ptrtoint ptr %wov_wp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wov_wp.i, align 4
  %19 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wov_rp.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp2.not.i = icmp ult i32 %18, %20
  %..i = select i1 %cmp2.not.i, i32 64000, i32 %18
  %sub13.i = sub i32 %..i, %20
  %21 = tail call i32 @llvm.umin.i32(i32 %16, i32 %sub13.i) #11
  %22 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_area.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %15
  %add.ptr22.i = getelementptr i8, ptr %wov_buf.i, i32 %20
  %24 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr22.i, i32 %21)
  %25 = ptrtoint ptr %wov_dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wov_dma_offset.i, align 8
  %add.i = add i32 %21, %26
  store i32 %add.i, ptr %wov_dma_offset.i, align 8
  %27 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %28)
  %cmp26.i = icmp eq i32 %add.i, %28
  %spec.store.select.i = select i1 %cmp26.i, i32 0, i32 %add.i
  %29 = ptrtoint ptr %wov_dma_offset.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.store.select.i, ptr %wov_dma_offset.i, align 8
  %30 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wov_rp.i, align 8
  %add31.i = add i32 %31, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %add31.i)
  %cmp33.i = icmp eq i32 %add31.i, 64000
  %storemerge.i = select i1 %cmp33.i, i32 0, i32 %add31.i
  %32 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge.i, ptr %wov_rp.i, align 8
  %sub37.i = sub i32 %len.addr.072.i, %21
  %tobool.not.i = icmp eq i32 %sub37.i, 0
  br i1 %tobool.not.i, label %while.body.i.wov_queue_dequeue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.wov_queue_dequeue.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wov_queue_dequeue.exit

wov_queue_dequeue.exit:                           ; preds = %while.body.i.wov_queue_dequeue.exit_crit_edge, %entry.wov_queue_dequeue.exit_crit_edge
  %33 = ptrtoint ptr %wov_substream.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wov_substream.i, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %34) #11
  %35 = ptrtoint ptr %wov_substream.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %wov_substream.i, align 8
  tail call void @mutex_unlock(ptr noundef %wov_dma_lock) #11
  %wov_copy_work = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %3, i32 0, i32 25
  %call3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %wov_copy_work) #11
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wov_pcm_pointer(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %substream) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %wov_dma_offset = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 22
  %6 = ptrtoint ptr %wov_dma_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wov_dma_offset, align 8
  %mul.i = shl i32 %7, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %9
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wov_enable_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %wov_enabled = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %wov_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %wov_enabled, align 8, !range !229
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wov_enable_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %wov_enabled = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 11
  %8 = ptrtoint ptr %wov_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %wov_enabled, align 8, !range !229
  %10 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %10)
  %cmp.not = icmp eq i32 %7, %10
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3 = icmp ne i32 %7, 0
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 196) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.do.end_crit_edge, label %if.end.i

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %. = select i1 %tobool3, i8 3, i8 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 191, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 176, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %., ptr %data.i, align 4
  %p.sroa.5.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %19 = call ptr @memset(ptr %p.sroa.5.0.data.i.sroa_idx, i32 255, i32 175)
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %12, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br i1 %cmp7.i, label %if.end.i.do.end_crit_edge, label %if.end10

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end.i.do.end_crit_edge, %if.then.do.end_crit_edge
  %retval.0.i27 = phi i32 [ -12, %if.then.do.end_crit_edge ], [ %call6.i, %if.end.i.do.end_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 8
  %cond = select i1 %tobool3, ptr @.str.43, ptr @.str.44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.41, ptr noundef nonnull %cond) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %frombool = zext i1 %tobool3 to i8
  %22 = ptrtoint ptr %wov_enabled to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %wov_enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i27, %do.end ], [ 0, %if.end10 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info_ext(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_tlv_callback(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wov_hotword_model_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %bytes, i32 noundef %size) #2 align 64 {
entry:
  %p.sroa.5.i95 = alloca [35 x i8], align 1
  %p.sroa.8.i = alloca { [128 x i8], i32 }, align 4
  %p.sroa.5.i = alloca [35 x i8], align 1
  %r = alloca %struct.ec_response_ec_codec_wov_get_lang, align 1
  %digest = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #11
  %6 = call ptr @memset(ptr %r, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %digest) #11
  %add.ptr = getelementptr i32, ptr %bytes, i32 2
  %sub = add i32 %size, -8
  %7 = call ptr @memset(ptr %digest, i32 255, i32 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wov_hotword_model_put.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wov_hotword_model_put, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wov_hotword_model_put.__UNIQUE_ID_ddebug262, ptr noundef %9, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.45, i32 noundef %sub) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @memdup_user(ptr noundef %add.ptr, i32 noundef %sub) #11
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @sha256(ptr noundef %call4, i32 noundef %sub, ptr noundef nonnull %digest) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wov_hotword_model_put.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wov_hotword_model_put, %if.then21)) #11
          to label %do.end26 [label %if.then21], !srcloc !224

if.then21:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wov_hotword_model_put.__UNIQUE_ID_ddebug263, ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef 32, ptr noundef nonnull %digest) #11
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %if.end8
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 196) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end26.leave_crit_edge, label %if.end.i

do.end26.leave_crit_edge:                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %leave

if.end.i:                                         ; preds = %do.end26
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 191, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 176, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %data.i, align 4
  %p.sroa.5.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %21 = call ptr @memset(ptr %p.sroa.5.0.data.i.sroa_idx, i32 255, i32 175)
  %call6.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %14, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %send_ec_host_command.exit, label %if.end30

send_ec_host_command.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %leave

if.end30:                                         ; preds = %if.end.i
  %22 = call ptr @memcpy(ptr %r, ptr %data.i, i32 32)
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %digest, ptr noundef nonnull dereferenceable(32) %r, i32 32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %do.body35, label %if.end52

do.body35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wov_hotword_model_put.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wov_hotword_model_put, %if.then47)) #11
          to label %leave [label %if.then47], !srcloc !224

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wov_hotword_model_put.__UNIQUE_ID_ddebug264, ptr noundef %24, ptr noundef nonnull @.str.48) #11
  br label %leave

if.end52:                                         ; preds = %if.end30
  %ec_capabilities.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 2
  %25 = ptrtoint ptr %ec_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ec_capabilities.i, align 8
  %and.i = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool54.not = icmp eq i32 %and.i, 0
  br i1 %tobool54.not, label %if.else, label %if.then55

if.then55:                                        ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %p.sroa.5.i)
  %27 = call ptr @memset(ptr %p.sroa.5.i, i32 255, i32 3)
  %wov_lang_shm_len.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 16
  %28 = ptrtoint ptr %wov_lang_shm_len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wov_lang_shm_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %sub)
  %cmp.i92 = icmp ult i32 %29, %sub
  br i1 %cmp.i92, label %do.end.i, label %if.end.i93

do.end.i:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.49, i32 noundef %29) #15
  br label %wov_set_lang_shm.exit

if.end.i93:                                       ; preds = %if.then55
  %wov_lang_shm_type.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 17
  %32 = ptrtoint ptr %wov_lang_shm_type.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %wov_lang_shm_type.i, align 8
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %33, label %if.end.i93.sw.epilog.i_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb4.i
  ]

if.end.i93.sw.epilog.i_crit_edge:                 ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #13
  %wov_lang_shm_p.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 15
  %35 = ptrtoint ptr %wov_lang_shm_p.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wov_lang_shm_p.i, align 8
  call void @mmiocpy(ptr noundef %36, ptr noundef %call4, i32 noundef %sub) #11
  %37 = ptrtoint ptr %wov_lang_shm_p.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wov_lang_shm_p.i, align 8
  %add.ptr.i = getelementptr i8, ptr %38, i32 %sub
  %39 = ptrtoint ptr %wov_lang_shm_len.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %wov_lang_shm_len.i, align 4
  %sub.i = sub i32 %40, %sub
  call void @mmioset(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef %sub.i) #11
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #13
  %wov_lang_shm_p5.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %5, i32 0, i32 15
  %41 = ptrtoint ptr %wov_lang_shm_p5.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wov_lang_shm_p5.i, align 8
  %43 = call ptr @memcpy(ptr %42, ptr %call4, i32 %sub)
  %44 = load ptr, ptr %wov_lang_shm_p5.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %44, i32 %sub
  %45 = ptrtoint ptr %wov_lang_shm_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wov_lang_shm_len.i, align 4
  %sub9.i = sub i32 %46, %sub
  %47 = call ptr @memset(ptr %add.ptr7.i, i32 0, i32 %sub9.i)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !230
  call void @arm_heavy_mb() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i, %if.end.i93.sw.epilog.i_crit_edge
  %p.sroa.5.4..sroa_idx.i = getelementptr inbounds i8, ptr %p.sroa.5.i, i32 3
  %48 = call ptr @memcpy(ptr %p.sroa.5.4..sroa_idx.i, ptr %digest, i32 32)
  %49 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %51 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3264, i32 noundef 196) #14
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.epilog.i.do.end16.i_crit_edge, label %if.end.i.i

sw.epilog.i.do.end16.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16.i

if.end.i.i:                                       ; preds = %sw.epilog.i
  %52 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %call7.i.i.i, align 8
  %command.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 191, ptr %command.i.i, align 4
  %outsize1.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %outsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 176, ptr %outsize1.i.i, align 8
  %insize2.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %insize2.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %insize2.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %data.i.i, align 4
  %p.sroa.5.0.data.i.sroa_idx.i = getelementptr inbounds i8, ptr %data.i.i, i32 1
  %57 = call ptr @memcpy(ptr %p.sroa.5.0.data.i.sroa_idx.i, ptr %p.sroa.5.i, i32 35)
  %p.sroa.6.0.data.i.sroa_idx.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 2, i32 4
  %58 = ptrtoint ptr %p.sroa.6.0.data.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub, ptr %p.sroa.6.0.data.i.sroa_idx.i, align 8
  %p.sroa.7.0.data.i.sroa_idx.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 3
  %59 = call ptr @memset(ptr %p.sroa.7.0.data.i.sroa_idx.i, i32 255, i32 136)
  %call6.i.i = call i32 @cros_ec_cmd_xfer_status(ptr noundef %50, ptr noundef nonnull %call7.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br i1 %cmp7.i.i, label %if.end.i.i.do.end16.i_crit_edge, label %if.end.i.i.wov_set_lang_shm.exit_crit_edge

if.end.i.i.wov_set_lang_shm.exit_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wov_set_lang_shm.exit

if.end.i.i.do.end16.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.end.i.i.do.end16.i_crit_edge, %sw.epilog.i.do.end16.i_crit_edge
  %retval.0.i44.i = phi i32 [ -12, %sw.epilog.i.do.end16.i_crit_edge ], [ %call6.i.i, %if.end.i.i.do.end16.i_crit_edge ]
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.52) #15
  br label %wov_set_lang_shm.exit

wov_set_lang_shm.exit:                            ; preds = %do.end16.i, %if.end.i.i.wov_set_lang_shm.exit_crit_edge, %do.end.i
  %retval.0.i94 = phi i32 [ -5, %do.end.i ], [ %retval.0.i44.i, %do.end16.i ], [ 0, %if.end.i.i.wov_set_lang_shm.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %p.sroa.5.i)
  br label %leave

if.else:                                          ; preds = %if.end52
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %p.sroa.5.i95)
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %p.sroa.8.i)
  %62 = call ptr @memset(ptr %p.sroa.5.i95, i32 255, i32 3)
  %63 = call ptr @memset(ptr %p.sroa.8.i, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp31.not.i = icmp eq i32 %sub, 0
  br i1 %cmp31.not.i, label %if.else.wov_set_lang.exit_crit_edge, label %for.body.lr.ph.i

if.else.wov_set_lang.exit_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %wov_set_lang.exit

for.body.lr.ph.i:                                 ; preds = %if.else
  %p.sroa.5.4..sroa_idx.i96 = getelementptr inbounds i8, ptr %p.sroa.5.i95, i32 3
  %p.sroa.8.i.128.i.128.len.sroa_idx = getelementptr inbounds i8, ptr %p.sroa.8.i, i32 128
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i.for.body.i_crit_edge ]
  %sub.i98 = sub i32 %sub, %i.032.i
  %64 = call i32 @llvm.umin.i32(i32 %sub.i98, i32 128) #11
  %65 = call ptr @memcpy(ptr %p.sroa.5.4..sroa_idx.i96, ptr %digest, i32 32)
  %add.ptr.i99 = getelementptr i8, ptr %call4, i32 %i.032.i
  %66 = call ptr @memcpy(ptr %p.sroa.8.i, ptr %add.ptr.i99, i32 %64)
  %67 = ptrtoint ptr %p.sroa.8.i.128.i.128.len.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %64, ptr %p.sroa.8.i.128.i.128.len.sroa_idx, align 4
  %68 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i100 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3264, i32 noundef 196) #14
  %tobool.not.i.i101 = icmp eq ptr %call7.i.i.i100, null
  br i1 %tobool.not.i.i101, label %for.body.i.do.end.i112_crit_edge, label %if.end.i.i111

for.body.i.do.end.i112_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i112

if.end.i.i111:                                    ; preds = %for.body.i
  %71 = ptrtoint ptr %call7.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %call7.i.i.i100, align 8
  %command.i.i102 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i100, i32 0, i32 1
  %72 = ptrtoint ptr %command.i.i102 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 191, ptr %command.i.i102, align 4
  %outsize1.i.i103 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i100, i32 0, i32 2
  %73 = ptrtoint ptr %outsize1.i.i103 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 176, ptr %outsize1.i.i103, align 8
  %insize2.i.i104 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i100, i32 0, i32 3
  %74 = ptrtoint ptr %insize2.i.i104 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %insize2.i.i104, align 4
  %data.i.i105 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i100, i32 0, i32 5
  %75 = ptrtoint ptr %data.i.i105 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %data.i.i105, align 4
  %p.sroa.5.0.data.i.sroa_idx.i106 = getelementptr inbounds i8, ptr %data.i.i105, i32 1
  %76 = call ptr @memcpy(ptr %p.sroa.5.0.data.i.sroa_idx.i106, ptr %p.sroa.5.i95, i32 35)
  %p.sroa.6.0.data.i.sroa_idx.i107 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i100, i32 2, i32 4
  %77 = ptrtoint ptr %p.sroa.6.0.data.i.sroa_idx.i107 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %sub, ptr %p.sroa.6.0.data.i.sroa_idx.i107, align 8
  %p.sroa.7.0.data.i.sroa_idx.i108 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i100, i32 3
  %78 = ptrtoint ptr %p.sroa.7.0.data.i.sroa_idx.i108 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %i.032.i, ptr %p.sroa.7.0.data.i.sroa_idx.i108, align 4
  %p.sroa.8.0.data.i.sroa_idx.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i100, i32 3, i32 1
  %79 = call ptr @memcpy(ptr %p.sroa.8.0.data.i.sroa_idx.i, ptr %p.sroa.8.i, i32 132)
  %call6.i.i109 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %69, ptr noundef nonnull %call7.i.i.i100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i109)
  %cmp7.i.i110 = icmp slt i32 %call6.i.i109, 0
  call void @kfree(ptr noundef nonnull %call7.i.i.i100) #11
  br i1 %cmp7.i.i110, label %if.end.i.i111.do.end.i112_crit_edge, label %for.inc.i

if.end.i.i111.do.end.i112_crit_edge:              ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i112

do.end.i112:                                      ; preds = %if.end.i.i111.do.end.i112_crit_edge, %for.body.i.do.end.i112_crit_edge
  %retval.0.i26.i = phi i32 [ %call6.i.i109, %if.end.i.i111.do.end.i112_crit_edge ], [ -12, %for.body.i.do.end.i112_crit_edge ]
  %80 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %5, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.54) #15
  br label %wov_set_lang.exit

for.inc.i:                                        ; preds = %if.end.i.i111
  %add.i = add i32 %64, %i.032.i
  %cmp.i113 = icmp ult i32 %add.i, %sub
  br i1 %cmp.i113, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.wov_set_lang.exit_crit_edge

for.inc.i.wov_set_lang.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %wov_set_lang.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

wov_set_lang.exit:                                ; preds = %for.inc.i.wov_set_lang.exit_crit_edge, %do.end.i112, %if.else.wov_set_lang.exit_crit_edge
  %retval.0.i114 = phi i32 [ %retval.0.i26.i, %do.end.i112 ], [ 0, %if.else.wov_set_lang.exit_crit_edge ], [ 0, %for.inc.i.wov_set_lang.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %p.sroa.5.i95)
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %p.sroa.8.i)
  br label %leave

leave:                                            ; preds = %wov_set_lang.exit, %wov_set_lang_shm.exit, %if.then47, %do.body35, %send_ec_host_command.exit, %do.end26.leave_crit_edge
  %ret.0 = phi i32 [ %call6.i, %send_ec_host_command.exit ], [ 0, %if.then47 ], [ %retval.0.i94, %wov_set_lang_shm.exit ], [ %retval.0.i114, %wov_set_lang.exit ], [ 0, %do.body35 ], [ -12, %do.end26.leave_crit_edge ]
  call void @kfree(ptr noundef %call4) #11
  br label %cleanup

cleanup:                                          ; preds = %leave, %if.then6
  %retval.0 = phi i32 [ %10, %if.then6 ], [ %ret.0, %leave ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %digest) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sha256(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wov_copy_work(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -64212
  %wov_dma_lock = getelementptr i8, ptr %w, i32 -64112
  tail call void @mutex_lock_nested(ptr noundef %wov_dma_lock, i32 noundef 0) #11
  %wov_substream = getelementptr i8, ptr %w, i32 -4
  %0 = ptrtoint ptr %wov_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wov_substream, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.61) #15
  br label %leave

if.end:                                           ; preds = %entry
  %ec_capabilities.i = getelementptr i8, ptr %w, i32 -64204
  %4 = ptrtoint ptr %ec_capabilities.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ec_capabilities.i, align 8
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not = icmp eq i32 %and.i, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call fastcc i32 @wov_read_audio_shm(ptr noundef %add.ptr)
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call fastcc i32 @wov_read_audio(ptr noundef %add.ptr)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ %call4, %if.else ]
  %6 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %ret.0, label %do.end14 [
    i32 -11, label %if.then6
    i32 0, label %if.end5.leave_crit_edge
  ]

if.end5.leave_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %leave

if.then6:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %w, i32 noundef 1) #11
  br label %leave

do.end14:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.64) #15
  br label %leave

leave:                                            ; preds = %do.end14, %if.then6, %if.end5.leave_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef %wov_dma_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wov_host_event(ptr noundef %nb, i32 noundef %queued_during_suspend, ptr nocapture noundef readnone %notify) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wov_host_event.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wov_host_event, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !224

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %nb, i32 -64312
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wov_host_event.__UNIQUE_ID_ddebug265, ptr noundef %1, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ec_device = getelementptr i8, ptr %nb, i32 -64308
  %2 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_device, align 4
  %call4 = tail call i32 @cros_ec_get_host_event(ptr noundef %3) #11
  %4 = and i32 %call4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.then6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %wov_copy_work = getelementptr i8, ptr %nb, i32 -100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %wov_copy_work, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then6 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @wov_map_shm(ptr nocapture noundef %priv, i8 noundef zeroext %shm_id, ptr nocapture noundef writeonly %len, ptr nocapture noundef writeonly %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 40) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 188, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 20, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %data.i, align 4
  %p.sroa.7.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %8 = ptrtoint ptr %p.sroa.7.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %p.sroa.7.0.data.i.sroa_idx, align 1
  %p.sroa.8.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 2
  %9 = ptrtoint ptr %p.sroa.8.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %p.sroa.8.0.data.i.sroa_idx, align 2
  %p.sroa.9.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 3
  %10 = ptrtoint ptr %p.sroa.9.0.data.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %p.sroa.9.0.data.i.sroa_idx, align 1
  %p.sroa.10.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 1, i32 1
  %p.sroa.10.sroa.0.0.insert.ext = zext i8 %shm_id to i64
  %p.sroa.10.sroa.0.0.insert.shift = shl nuw i64 %p.sroa.10.sroa.0.0.insert.ext, 56
  %p.sroa.10.sroa.0.0.insert.insert = or i64 %p.sroa.10.sroa.0.0.insert.shift, 72057594037927935
  %11 = ptrtoint ptr %p.sroa.10.0.data.i.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %p.sroa.10.sroa.0.0.insert.insert, ptr %p.sroa.10.0.data.i.sroa_idx, align 8
  %p.sroa.13.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 1, i32 3
  %12 = ptrtoint ptr %p.sroa.13.0.data.i.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %p.sroa.13.0.data.i.sroa_idx, align 8
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %1, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %send_ec_host_command.exit.thread183, label %do.body2

send_ec_host_command.exit.thread183:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

do.end:                                           ; preds = %send_ec_host_command.exit.thread183, %entry.do.end_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.75) #15
  br label %cleanup

do.body2:                                         ; preds = %if.end.i
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %r.sroa.0.0.copyload = load i64, ptr %data.i, align 4
  %r.sroa.7.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 1, i32 2
  %16 = ptrtoint ptr %r.sroa.7.0.data.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %r.sroa.7.0.copyload = load i32, ptr %r.sroa.7.0.data.i.sroa_idx, align 4
  %17 = ptrtoint ptr %p.sroa.13.0.data.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %r.sroa.13.0.copyload = load i8, ptr %p.sroa.13.0.data.i.sroa_idx, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wov_map_shm.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wov_map_shm, %if.then6)) #11
          to label %do.end11 [label %if.then6], !srcloc !224

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wov_map_shm.__UNIQUE_ID_ddebug247, ptr noundef %19, ptr noundef nonnull @.str.77, i64 noundef %r.sroa.0.0.copyload, i32 noundef %r.sroa.7.0.copyload) #11
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %r.sroa.7.0.copyload, ptr %len, align 4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %r.sroa.13.0.copyload, ptr %type, align 1
  %22 = zext i8 %r.sroa.13.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %r.sroa.13.0.copyload, label %do.end11.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb20
  ]

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %priv, align 8
  %ec_shm_addr = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 3
  %25 = ptrtoint ptr %ec_shm_addr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ec_shm_addr, align 8
  %add = add i64 %26, %r.sroa.0.0.copyload
  %conv17 = trunc i64 %add to i32
  %call19 = tail call ptr @devm_ioremap_wc(ptr noundef %24, i32 noundef %conv17, i32 noundef %r.sroa.7.0.copyload) #11
  br label %cleanup

sw.bb20:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %r.sroa.0.0.copyload)
  %tobool22.not = icmp eq i64 %r.sroa.0.0.copyload, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.79) #15
  br label %cleanup

if.end28:                                         ; preds = %sw.bb20
  %sub = add i32 %r.sroa.7.0.copyload, -1
  %or = or i32 %sub, 4095
  %add30 = add i32 %or, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wov_map_shm.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wov_map_shm, %if.then43)) #11
          to label %do.end48 [label %if.then43], !srcloc !224

if.then43:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wov_map_shm.__UNIQUE_ID_ddebug248, ptr noundef %30, ptr noundef nonnull @.str.81, i32 noundef %r.sroa.7.0.copyload, i32 noundef %add30) #11
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %if.end28
  %ap_shm_last_alloc = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 8
  %31 = ptrtoint ptr %ap_shm_last_alloc to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ap_shm_last_alloc, align 8
  %conv49 = zext i32 %add30 to i64
  %add50 = add i64 %32, %conv49
  %ap_shm_phys_addr = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 5
  %33 = ptrtoint ptr %ap_shm_phys_addr to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %ap_shm_phys_addr, align 8
  %ap_shm_len = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 6
  %35 = ptrtoint ptr %ap_shm_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ap_shm_len, align 8
  %conv51 = zext i32 %36 to i64
  %add52 = add i64 %34, %conv51
  call void @__sanitizer_cov_trace_cmp8(i64 %add50, i64 %add52)
  %cmp53 = icmp ugt i64 %add50, %add52
  br i1 %cmp53, label %do.end58, label %do.body61

do.end58:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.83) #15
  br label %cleanup

do.body61:                                        ; preds = %do.end48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wov_map_shm.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wov_map_shm, %if.then73)) #11
          to label %do.end78 [label %if.then73], !srcloc !224

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 8
  %41 = ptrtoint ptr %ap_shm_last_alloc to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %ap_shm_last_alloc, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wov_map_shm.__UNIQUE_ID_ddebug249, ptr noundef %40, ptr noundef nonnull @.str.85, i64 noundef %42, i32 noundef %add30) #11
  br label %do.end78

do.end78:                                         ; preds = %if.then73, %do.body61
  %43 = ptrtoint ptr %ap_shm_last_alloc to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ap_shm_last_alloc, align 8
  %45 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i138 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3264, i32 noundef 40) #14
  %tobool.not.i139 = icmp eq ptr %call7.i.i138, null
  br i1 %tobool.not.i139, label %do.end78.do.end91_crit_edge, label %if.end.i146

do.end78.do.end91_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end91

if.end.i146:                                      ; preds = %do.end78
  %48 = ptrtoint ptr %call7.i.i138 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %call7.i.i138, align 8
  %command.i140 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i138, i32 0, i32 1
  %49 = ptrtoint ptr %command.i140 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 188, ptr %command.i140, align 4
  %outsize1.i141 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i138, i32 0, i32 2
  %50 = ptrtoint ptr %outsize1.i141 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 20, ptr %outsize1.i141, align 8
  %insize2.i142 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i138, i32 0, i32 3
  %51 = ptrtoint ptr %insize2.i142 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %insize2.i142, align 4
  %data.i143 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i138, i32 0, i32 5
  %52 = ptrtoint ptr %data.i143 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 2, ptr %data.i143, align 4
  %p.sroa.7.0.data.i143.sroa_idx = getelementptr inbounds i8, ptr %data.i143, i32 1
  %53 = ptrtoint ptr %p.sroa.7.0.data.i143.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %p.sroa.7.0.data.i143.sroa_idx, align 1
  %p.sroa.8.0.data.i143.sroa_idx = getelementptr inbounds i8, ptr %data.i143, i32 2
  %54 = ptrtoint ptr %p.sroa.8.0.data.i143.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %p.sroa.8.0.data.i143.sroa_idx, align 2
  %p.sroa.9.0.data.i143.sroa_idx = getelementptr inbounds i8, ptr %data.i143, i32 3
  %55 = ptrtoint ptr %p.sroa.9.0.data.i143.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %p.sroa.9.0.data.i143.sroa_idx, align 1
  %p.sroa.10.0.data.i143.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i138, i32 1, i32 1
  %56 = ptrtoint ptr %p.sroa.10.0.data.i143.sroa_idx to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %44, ptr %p.sroa.10.0.data.i143.sroa_idx, align 8
  %p.sroa.13.0.data.i143.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i138, i32 1, i32 3
  %57 = ptrtoint ptr %p.sroa.13.0.data.i143.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add30, ptr %p.sroa.13.0.data.i143.sroa_idx, align 8
  %p.sroa.15.0.data.i143.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i138, i32 1, i32 4
  %58 = ptrtoint ptr %p.sroa.15.0.data.i143.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %shm_id, ptr %p.sroa.15.0.data.i143.sroa_idx, align 4
  %p.sroa.17.0.data.i143.sroa_idx = getelementptr inbounds i8, ptr %data.i143, i32 17
  %59 = ptrtoint ptr %p.sroa.17.0.data.i143.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 -1, ptr %p.sroa.17.0.data.i143.sroa_idx, align 1
  %p.sroa.18.0.data.i143.sroa_idx = getelementptr inbounds i8, ptr %data.i143, i32 18
  %60 = ptrtoint ptr %p.sroa.18.0.data.i143.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 -1, ptr %p.sroa.18.0.data.i143.sroa_idx, align 2
  %p.sroa.19.0.data.i143.sroa_idx = getelementptr inbounds i8, ptr %data.i143, i32 19
  %61 = ptrtoint ptr %p.sroa.19.0.data.i143.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 -1, ptr %p.sroa.19.0.data.i143.sroa_idx, align 1
  %call6.i144 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %46, ptr noundef nonnull %call7.i.i138) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i144)
  %cmp7.i145 = icmp slt i32 %call6.i144, 0
  tail call void @kfree(ptr noundef nonnull %call7.i.i138) #11
  br i1 %cmp7.i145, label %if.end.i146.do.end91_crit_edge, label %if.end93

if.end.i146.do.end91_crit_edge:                   ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end91

do.end91:                                         ; preds = %if.end.i146.do.end91_crit_edge, %do.end78.do.end91_crit_edge
  %62 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.87) #15
  br label %cleanup

if.end93:                                         ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %ap_shm_last_alloc to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %ap_shm_last_alloc, align 8
  %66 = ptrtoint ptr %ap_shm_phys_addr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %ap_shm_phys_addr, align 8
  %sub96 = sub i64 %65, %67
  %add100 = add i64 %65, %conv49
  store i64 %add100, ptr %ap_shm_last_alloc, align 8
  %ap_shm_addr = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 7
  %68 = ptrtoint ptr %ap_shm_addr to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %ap_shm_addr, align 8
  %add102 = add i64 %sub96, %69
  %conv103 = trunc i64 %add102 to i32
  %70 = inttoptr i32 %conv103 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %do.end91, %do.end58, %do.end26, %sw.bb, %do.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end26 ], [ null, %do.end58 ], [ null, %do.end91 ], [ %70, %if.end93 ], [ %call19, %sw.bb ], [ null, %do.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wov_read_audio_shm(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 196) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 191, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 176, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %data.i, align 4
  %p.sroa.5.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %8 = call ptr @memset(ptr %p.sroa.5.0.data.i.sroa_idx, i32 255, i32 175)
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %1, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %send_ec_host_command.exit, label %if.end

send_ec_host_command.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

do.end:                                           ; preds = %send_ec_host_command.exit, %entry.do.end_crit_edge
  %retval.0.i2429 = phi i32 [ %call6.i, %send_ec_host_command.exit ], [ -12, %entry.do.end_crit_edge ]
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.66) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %r.sroa.0.0.copyload = load i32, ptr %data.i, align 4
  %r.sroa.5.0.data.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 1, i32 1
  %12 = ptrtoint ptr %r.sroa.5.0.data.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %r.sroa.5.0.copyload = load i32, ptr %r.sroa.5.0.data.i.sroa_idx, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.sroa.5.0.copyload)
  %tobool1.not = icmp eq i32 %r.sroa.5.0.copyload, 0
  br i1 %tobool1.not, label %do.body3, label %if.else

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wov_read_audio_shm.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wov_read_audio_shm, %if.then8)) #11
          to label %cleanup [label %if.then8], !srcloc !224

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wov_read_audio_shm.__UNIQUE_ID_ddebug258, ptr noundef %14, ptr noundef nonnull @.str.68) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %wov_audio_shm_p = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 12
  %15 = ptrtoint ptr %wov_audio_shm_p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wov_audio_shm_p, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %r.sroa.0.0.copyload
  %wov_audio_shm_type = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 14
  %17 = ptrtoint ptr %wov_audio_shm_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %wov_audio_shm_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp = icmp eq i8 %18, 0
  tail call fastcc void @wov_queue_enqueue(ptr noundef %priv, ptr noundef %add.ptr, i32 noundef %r.sroa.5.0.copyload, i1 noundef zeroext %cmp)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %do.body3, %do.end
  %retval.0 = phi i32 [ %retval.0.i2429, %do.end ], [ -11, %if.then8 ], [ -11, %if.else ], [ -11, %do.body3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wov_read_audio(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %r = alloca %struct.ec_response_ec_codec_wov_read_audio, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %r) #11
  %wov_burst_read = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 23
  %0 = ptrtoint ptr %wov_burst_read to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wov_burst_read, align 4, !range !229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 320, i32 16000
  %ec_device = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 1
  %len = getelementptr inbounds %struct.ec_response_ec_codec_wov_read_audio, ptr %r, i32 0, i32 1
  %wov_wp.i.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 21
  %wov_rp.i.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 20
  %wov_buf16.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %wov_queue_enqueue.exit.while.body_crit_edge, %entry
  %remain.040 = phi i32 [ %cond, %entry ], [ %sub, %wov_queue_enqueue.exit.while.body_crit_edge ]
  %2 = ptrtoint ptr %ec_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_device, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 196) #14
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %while.body.do.end_crit_edge, label %if.end.i

while.body.do.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %while.body
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %call7.i.i, align 8
  %command.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 191, ptr %command.i, align 4
  %outsize1.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %outsize1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 176, ptr %outsize1.i, align 8
  %insize2.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %insize2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 132, ptr %insize2.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %data.i, align 4
  %p.sroa.5.0.data.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %10 = call ptr @memset(ptr %p.sroa.5.0.data.i.sroa_idx, i32 255, i32 175)
  %call6.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %3, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %send_ec_host_command.exit, label %if.end

send_ec_host_command.exit:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %do.end

do.end:                                           ; preds = %send_ec_host_command.exit, %while.body.do.end_crit_edge
  %retval.0.i2832 = phi i32 [ %call6.i, %send_ec_host_command.exit ], [ -12, %while.body.do.end_crit_edge ]
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.71) #15
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %13 = call ptr @memcpy(ptr %r, ptr %data.i, i32 132)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %14 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not = icmp eq i32 %15, 0
  br i1 %tobool2.not, label %do.body4, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

do.body4:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wov_read_audio.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wov_read_audio, %if.then9)) #11
          to label %do.end13 [label %if.then9], !srcloc !224

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wov_read_audio.__UNIQUE_ID_ddebug259, ptr noundef %17, ptr noundef nonnull @.str.68) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body4
  %18 = ptrtoint ptr %wov_burst_read to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %wov_burst_read, align 4
  br label %cleanup

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %addr.addr.064.i = phi ptr [ %add.ptr27.i, %if.end3.i.while.body.i_crit_edge ], [ %r, %if.end.while.body.i_crit_edge ]
  %len.addr.063.i = phi i32 [ %sub28.i, %if.end3.i.while.body.i_crit_edge ], [ %15, %if.end.while.body.i_crit_edge ]
  %19 = ptrtoint ptr %wov_wp.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wov_wp.i.i, align 4
  %add.i.i = add i32 %20, 1
  %rem.i.i = urem i32 %add.i.i, 64000
  %21 = ptrtoint ptr %wov_rp.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wov_rp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i.i, i32 %22)
  %cmp.i.i = icmp eq i32 %rem.i.i, %22
  br i1 %cmp.i.i, label %if.then.i, label %while.body.i.if.end3.i_crit_edge

while.body.i.if.end3.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

if.then.i:                                        ; preds = %while.body.i
  tail call fastcc void @wov_queue_try_dequeue(ptr noundef %priv) #11
  %23 = ptrtoint ptr %wov_wp.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wov_wp.i.i, align 4
  %add.i58.i = add i32 %24, 1
  %rem.i59.i = urem i32 %add.i58.i, 64000
  %25 = ptrtoint ptr %wov_rp.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wov_rp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i59.i, i32 %26)
  %cmp.i61.i = icmp eq i32 %rem.i59.i, %26
  br i1 %cmp.i61.i, label %do.end.i, label %if.then.i.if.end3.i_crit_edge

if.then.i.if.end3.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.69) #15
  br label %wov_queue_enqueue.exit

if.end3.i:                                        ; preds = %if.then.i.if.end3.i_crit_edge, %while.body.i.if.end3.i_crit_edge
  %29 = ptrtoint ptr %wov_wp.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wov_wp.i.i, align 4
  %31 = ptrtoint ptr %wov_rp.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wov_rp.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %30)
  %cmp.not.i = icmp ugt i32 %32, %30
  %sub.i = sub i32 64000, %30
  %33 = xor i32 %30, -1
  %sub9.i = add i32 %32, %33
  %req.0.i = select i1 %cmp.not.i, i32 %sub9.i, i32 %sub.i
  %34 = tail call i32 @llvm.umin.i32(i32 %req.0.i, i32 %len.addr.063.i) #11
  %add.ptr.i = getelementptr i8, ptr %wov_buf16.i, i32 %30
  %35 = call ptr @memcpy(ptr %add.ptr.i, ptr %addr.addr.064.i, i32 %34)
  %36 = ptrtoint ptr %wov_wp.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wov_wp.i.i, align 4
  %add.i = add i32 %34, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %add.i)
  %cmp23.i = icmp eq i32 %add.i, 64000
  %spec.select.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %38 = ptrtoint ptr %wov_wp.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select.i, ptr %wov_wp.i.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %addr.addr.064.i, i32 %34
  %sub28.i = sub i32 %len.addr.063.i, %34
  %tobool.not.i29 = icmp eq i32 %sub28.i, 0
  br i1 %tobool.not.i29, label %while.end.i, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @wov_queue_try_dequeue(ptr noundef %priv) #11
  br label %wov_queue_enqueue.exit

wov_queue_enqueue.exit:                           ; preds = %while.end.i, %do.end.i
  %sub = sub i32 %remain.040, %15
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %wov_queue_enqueue.exit.while.body_crit_edge, label %wov_queue_enqueue.exit.cleanup_crit_edge

wov_queue_enqueue.exit.cleanup_crit_edge:         ; preds = %wov_queue_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

wov_queue_enqueue.exit.while.body_crit_edge:      ; preds = %wov_queue_enqueue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %wov_queue_enqueue.exit.cleanup_crit_edge, %do.end13, %do.end
  %retval.0 = phi i32 [ %retval.0.i2832, %do.end ], [ -11, %do.end13 ], [ -11, %wov_queue_enqueue.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %r) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wov_queue_enqueue(ptr noundef %priv, ptr noundef %addr, i32 noundef %len, i1 noundef zeroext %iomem) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not62 = icmp eq i32 %len, 0
  br i1 %tobool.not62, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %wov_wp.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 21
  %wov_rp.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 20
  %wov_buf16 = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %while.body.lr.ph
  %addr.addr.064 = phi ptr [ %addr, %while.body.lr.ph ], [ %add.ptr27, %if.end20.while.body_crit_edge ]
  %len.addr.063 = phi i32 [ %len, %while.body.lr.ph ], [ %sub28, %if.end20.while.body_crit_edge ]
  %0 = ptrtoint ptr %wov_wp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wov_wp.i, align 4
  %add.i = add i32 %1, 1
  %rem.i = urem i32 %add.i, 64000
  %2 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wov_rp.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %3)
  %cmp.i = icmp eq i32 %rem.i, %3
  br i1 %cmp.i, label %if.then, label %while.body.if.end3_crit_edge

while.body.if.end3_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %while.body
  tail call fastcc void @wov_queue_try_dequeue(ptr noundef %priv)
  %4 = ptrtoint ptr %wov_wp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wov_wp.i, align 4
  %add.i58 = add i32 %5, 1
  %rem.i59 = urem i32 %add.i58, 64000
  %6 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wov_rp.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i59, i32 %7)
  %cmp.i61 = icmp eq i32 %rem.i59, %7
  br i1 %cmp.i61, label %do.end, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.69) #15
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %while.body.if.end3_crit_edge
  %10 = ptrtoint ptr %wov_wp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wov_wp.i, align 4
  %12 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wov_rp.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not = icmp ugt i32 %13, %11
  %sub = sub i32 64000, %11
  %14 = xor i32 %11, -1
  %sub9 = add i32 %13, %14
  %req.0 = select i1 %cmp.not, i32 %sub9, i32 %sub
  %15 = tail call i32 @llvm.umin.i32(i32 %req.0, i32 %len.addr.063)
  %add.ptr = getelementptr i8, ptr %wov_buf16, i32 %11
  br i1 %iomem, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %addr.addr.064, i32 noundef %15) #11
  br label %if.end20

if.else15:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %16 = call ptr @memcpy(ptr %add.ptr, ptr %addr.addr.064, i32 %15)
  br label %if.end20

if.end20:                                         ; preds = %if.else15, %if.then13
  %17 = ptrtoint ptr %wov_wp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %wov_wp.i, align 4
  %add = add i32 %18, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %add)
  %cmp23 = icmp eq i32 %add, 64000
  %spec.select = select i1 %cmp23, i32 0, i32 %add
  %19 = ptrtoint ptr %wov_wp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select, ptr %wov_wp.i, align 4
  %add.ptr27 = getelementptr i8, ptr %addr.addr.064, i32 %15
  %sub28 = sub i32 %len.addr.063, %15
  %tobool.not = icmp eq i32 %sub28, 0
  br i1 %tobool.not, label %if.end20.while.end_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end20.while.end_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %if.end20.while.end_crit_edge, %entry.while.end_crit_edge
  tail call fastcc void @wov_queue_try_dequeue(ptr noundef %priv)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wov_queue_try_dequeue(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wov_substream = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 24
  %0 = ptrtoint ptr %wov_substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wov_substream, align 8
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %period_size.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %period_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size.i, align 4
  %frame_bits.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i.i, align 8
  %mul.i.i = mul i32 %7, %5
  %wov_wp.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul.i.i)
  %tobool.not18 = icmp ult i32 %mul.i.i, 8
  br i1 %tobool.not18, label %entry.while.end_crit_edge, label %land.rhs.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %wov_rp.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 20
  %wov_dma_offset.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 22
  %wov_buf.i = getelementptr inbounds %struct.cros_ec_codec_priv, ptr %priv, i32 0, i32 19
  br label %land.rhs

land.rhs:                                         ; preds = %wov_queue_dequeue.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %period_bytes.019.in = phi i32 [ %mul.i.i, %land.rhs.lr.ph ], [ %mul.i.i15, %wov_queue_dequeue.exit.land.rhs_crit_edge ]
  %period_bytes.019 = lshr i32 %period_bytes.019.in, 3
  %8 = ptrtoint ptr %wov_wp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wov_wp.i, align 4
  %10 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wov_rp.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not.i = icmp ult i32 %9, %11
  %retval.0.p.v.i = select i1 %cmp.not.i, i32 64000, i32 0
  %retval.0.p.i = sub i32 %9, %11
  %retval.0.i = add i32 %retval.0.p.i, %retval.0.p.v.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %period_bytes.019)
  %cmp.not = icmp ult i32 %retval.0.i, %period_bytes.019
  br i1 %cmp.not, label %land.rhs.while.end_crit_edge, label %while.body.lr.ph.i

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph.i:                               ; preds = %land.rhs
  %12 = ptrtoint ptr %wov_substream to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wov_substream, align 8
  %runtime1.i9 = getelementptr inbounds %struct.snd_pcm_substream, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %runtime1.i9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime1.i9, align 4
  %dma_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 52
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %15, i32 0, i32 50
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %len.addr.072.i = phi i32 [ %period_bytes.019, %while.body.lr.ph.i ], [ %sub37.i, %while.body.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_bytes.i, align 4
  %18 = ptrtoint ptr %wov_dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wov_dma_offset.i, align 8
  %sub.i = sub i32 %17, %19
  %20 = tail call i32 @llvm.umin.i32(i32 %len.addr.072.i, i32 %sub.i) #11
  %21 = ptrtoint ptr %wov_wp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wov_wp.i, align 4
  %23 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wov_rp.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp2.not.i = icmp ult i32 %22, %24
  %..i = select i1 %cmp2.not.i, i32 64000, i32 %22
  %sub13.i = sub i32 %..i, %24
  %25 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub13.i) #11
  %26 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_area.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %19
  %add.ptr22.i = getelementptr i8, ptr %wov_buf.i, i32 %24
  %28 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr22.i, i32 %25)
  %29 = ptrtoint ptr %wov_dma_offset.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wov_dma_offset.i, align 8
  %add.i = add i32 %25, %30
  store i32 %add.i, ptr %wov_dma_offset.i, align 8
  %31 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_bytes.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %32)
  %cmp26.i = icmp eq i32 %add.i, %32
  %spec.store.select.i = select i1 %cmp26.i, i32 0, i32 %add.i
  %33 = ptrtoint ptr %wov_dma_offset.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.store.select.i, ptr %wov_dma_offset.i, align 8
  %34 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wov_rp.i, align 8
  %add31.i = add i32 %35, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %add31.i)
  %cmp33.i = icmp eq i32 %add31.i, 64000
  %storemerge.i = select i1 %cmp33.i, i32 0, i32 %add31.i
  %36 = ptrtoint ptr %wov_rp.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %storemerge.i, ptr %wov_rp.i, align 8
  %sub37.i = sub i32 %len.addr.072.i, %25
  %tobool.not.i = icmp eq i32 %sub37.i, 0
  br i1 %tobool.not.i, label %wov_queue_dequeue.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

wov_queue_dequeue.exit:                           ; preds = %while.body.i
  %37 = ptrtoint ptr %wov_substream to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wov_substream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %38) #11
  %39 = ptrtoint ptr %wov_substream to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wov_substream, align 8
  %runtime1.i12 = getelementptr inbounds %struct.snd_pcm_substream, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %runtime1.i12 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %runtime1.i12, align 4
  %period_size.i13 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %period_size.i13 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %period_size.i13, align 4
  %frame_bits.i.i14 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 21
  %45 = ptrtoint ptr %frame_bits.i.i14 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frame_bits.i.i14, align 8
  %mul.i.i15 = mul i32 %46, %44
  %tobool.not = icmp ult i32 %mul.i.i15, 8
  br i1 %tobool.not, label %wov_queue_dequeue.exit.while.end_crit_edge, label %wov_queue_dequeue.exit.land.rhs_crit_edge

wov_queue_dequeue.exit.land.rhs_crit_edge:        ; preds = %wov_queue_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

wov_queue_dequeue.exit.while.end_crit_edge:       ; preds = %wov_queue_dequeue.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %wov_queue_dequeue.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_get_host_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51, !53, !55, !56, !57, !59, !60, !62, !64, !65, !66, !67, !68, !70, !71, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !102, !104, !106, !108, !109, !110, !111, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !142, !143, !144, !145, !147, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !164, !165, !166, !167, !169, !170, !171, !172, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !188, !189, !190, !192, !193, !195, !196, !197, !199, !200, !202, !203, !204, !206, !208, !210, !212}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__initcall__kmod_snd_soc_cros_ec_codec__268_1062_cros_ec_codec_platform_driver_init6, !1, !"__initcall__kmod_snd_soc_cros_ec_codec__268_1062_cros_ec_codec_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1062, i32 1}
!2 = !{ptr @__exitcall_cros_ec_codec_platform_driver_exit, !1, !"__exitcall_cros_ec_codec_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file269, !4, !"__UNIQUE_ID_file269", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1064, i32 1}
!5 = !{ptr @__UNIQUE_ID_license270, !4, !"__UNIQUE_ID_license270", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description271, !7, !"__UNIQUE_ID_description271", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1065, i32 1}
!8 = !{ptr @__UNIQUE_ID_author272, !9, !"__UNIQUE_ID_author272", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1066, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias273, !11, !"__UNIQUE_ID_alias273", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1067, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1055, i32 11}
!14 = !{ptr @cros_ec_codec_platform_driver, !15, !"cros_ec_codec_platform_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1053, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 978, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cros_ec_codec_platform_probe.__UNIQUE_ID_ddebug266, !17, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 982, i32 40}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 994, i32 4}
!26 = !{ptr @cros_ec_codec_platform_probe.__UNIQUE_ID_ddebug267, !25, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1009, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cros_ec_codec_platform_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @cros_ec_codec_platform_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1019, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cros_ec_codec_platform_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @cros_ec_codec_platform_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1022, i32 3}
!40 = !{ptr @cros_ec_codec_platform_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cros_ec_codec_platform_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @i2s_rx_component_driver, !43, !"i2s_rx_component_driver", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 384, i32 46}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 355, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 356, i32 2}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 358, i32 2}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @i2s_rx_dapm_widgets, !52, !"i2s_rx_dapm_widgets", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 354, i32 35}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 339, i32 3}
!55 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @i2s_rx_event.__UNIQUE_ID_ddebug245, !54, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 343, i32 3}
!59 = !{ptr @i2s_rx_event.__UNIQUE_ID_ddebug246, !58, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!60 = !{ptr @i2s_rx_dapm_routes, !61, !"i2s_rx_dapm_routes", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 361, i32 34}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 205, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dmic_probe._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @dmic_probe._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 209, i32 2}
!70 = !{ptr @dmic_probe.__UNIQUE_ID_ddebug241, !69, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 181, i32 3}
!73 = !{ptr @dmic_controls, !74, !"dmic_controls", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 179, i32 32}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 156, i32 2}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @dmic_put_gain.__UNIQUE_ID_ddebug240, !76, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!79 = !{ptr @dmic_gain_tlv, !80, !"dmic_gain_tlv", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 173, i32 14}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 367, i32 10}
!83 = !{ptr @i2s_rx_dai_driver, !84, !"i2s_rx_dai_driver", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 366, i32 34}
!85 = !{ptr @i2s_rx_dai_ops, !86, !"i2s_rx_dai_ops", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 322, i32 37}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 314, i32 2}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @i2s_rx_set_fmt.__UNIQUE_ID_ddebug244, !88, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 246, i32 2}
!93 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @i2s_rx_hw_params.__UNIQUE_ID_ddebug242, !92, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 260, i32 2}
!97 = !{ptr @i2s_rx_hw_params.__UNIQUE_ID_ddebug243, !96, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!98 = !{ptr @wov_component_driver, !99, !"wov_component_driver", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 941, i32 46}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 789, i32 2}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 791, i32 2}
!104 = !{ptr @wov_controls, !105, !"wov_controls", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 788, i32 32}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 658, i32 4}
!108 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @wov_enable_put._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @wov_enable_put._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 757, i32 2}
!115 = !{ptr @.str.46, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @wov_hotword_model_put.__UNIQUE_ID_ddebug262, !114, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 764, i32 2}
!119 = !{ptr @wov_hotword_model_put.__UNIQUE_ID_ddebug263, !118, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 774, i32 3}
!122 = !{ptr @wov_hotword_model_put.__UNIQUE_ID_ddebug264, !121, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 677, i32 3}
!125 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @wov_set_lang_shm._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @wov_set_lang_shm._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.52, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 705, i32 3}
!130 = !{ptr @wov_set_lang_shm._entry.51, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @wov_set_lang_shm._entry_ptr.53, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 732, i32 4}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @wov_set_lang._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @wov_set_lang._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @wov_probe.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 830, i32 2}
!139 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @wov_probe.__key.57, !141, !"__key", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 831, i32 2}
!142 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @wov_probe.__key.59, !141, !"__key", i1 false, i1 false}
!144 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 612, i32 3}
!147 = !{ptr @.str.62, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @wov_copy_work._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @wov_copy_work._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 625, i32 3}
!152 = !{ptr @wov_copy_work._entry.63, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @wov_copy_work._entry_ptr.65, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 561, i32 3}
!156 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @wov_read_audio_shm._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @wov_read_audio_shm._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.68, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 566, i32 3}
!161 = !{ptr @wov_read_audio_shm.__UNIQUE_ID_ddebug258, !160, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!162 = !{ptr @.str.69, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 521, i32 5}
!164 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @wov_queue_enqueue._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @wov_queue_enqueue._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 586, i32 4}
!169 = !{ptr @.str.72, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @wov_read_audio._entry, !168, !"_entry", i1 false, i1 false}
!171 = !{ptr @wov_read_audio._entry_ptr, !168, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @wov_read_audio.__UNIQUE_ID_ddebug259, !173, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 592, i32 4}
!174 = !{ptr @.str.73, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 813, i32 2}
!176 = !{ptr @.str.74, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @wov_host_event.__UNIQUE_ID_ddebug265, !175, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!178 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 404, i32 3}
!180 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @wov_map_shm._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @wov_map_shm._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.77, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 408, i32 2}
!185 = !{ptr @wov_map_shm.__UNIQUE_ID_ddebug247, !184, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!186 = !{ptr @.str.79, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 419, i32 4}
!188 = !{ptr @wov_map_shm._entry.78, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @wov_map_shm._entry_ptr.80, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.81, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 424, i32 3}
!192 = !{ptr @wov_map_shm.__UNIQUE_ID_ddebug248, !191, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!193 = !{ptr @.str.83, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 428, i32 4}
!195 = !{ptr @wov_map_shm._entry.82, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @wov_map_shm._entry_ptr.84, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.85, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 432, i32 3}
!199 = !{ptr @wov_map_shm.__UNIQUE_ID_ddebug249, !198, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 442, i32 4}
!202 = !{ptr @wov_map_shm._entry.86, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @wov_map_shm._entry_ptr.88, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @wov_pcm_open.hw_param, !205, !"hw_param", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 872, i32 39}
!206 = !{ptr @.str.89, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 796, i32 10}
!208 = !{ptr @.str.90, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 798, i32 18}
!210 = !{ptr @wov_dai_driver, !211, !"wov_dai_driver", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 795, i32 34}
!212 = !{ptr @cros_ec_codec_of_match, !213, !"cros_ec_codec_of_match", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/cros_ec_codec.c", i32 1038, i32 34}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{!"auto-init"}
!224 = !{i64 2148978261, i64 2148978266, i64 2148978279, i64 2148978323, i64 2148978357, i64 2148978378}
!225 = !{i64 2148333388}
!226 = !{i64 818211, i64 818236, i64 818258, i64 818274, i64 818286, i64 818306, i64 818330, i64 818346, i64 818358}
!227 = !{i64 2148333576}
!228 = !{i32 0, i32 33}
!229 = !{i8 0, i8 2}
!230 = !{i64 2155564965}
