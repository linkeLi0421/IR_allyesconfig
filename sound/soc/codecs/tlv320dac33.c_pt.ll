; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tlv320dac33.c_pt.bc'
source_filename = "../sound/soc/codecs/tlv320dac33.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tlv320dac33_priv = type { %struct.mutex, %struct.work_struct, ptr, [3 x %struct.regulator_bulk_data], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32, i32, %struct.spinlock, i64, i64, i32, i32, i32, i32, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.tlv320dac33_platform_data = type { i32, i32, i32, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
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
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.97, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.97 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.92, [128 x i8] }
%union.anon.92 = type { %union.anon.94 }
%union.anon.94 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@__initcall__kmod_snd_soc_tlv320dac33__295_1574_tlv320dac33_i2c_driver_init6 = internal global ptr @tlv320dac33_i2c_driver_init, section ".initcall6.init", align 4
@tlv320dac33_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @dac33_i2c_probe, ptr @dac33_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tlv320dac33_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tlv320dac33_i2c_driver_exit = internal global ptr @tlv320dac33_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [62 x i8] c"snd_soc_tlv320dac33.description=ASoC TLV320DAC33 codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [66 x i8] c"snd_soc_tlv320dac33.author=Peter Ujfalusi <peter.ujfalusi@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [62 x i8] c"snd_soc_tlv320dac33.file=sound/soc/codecs/snd-soc-tlv320dac33\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [32 x i8] c"snd_soc_tlv320dac33.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tlv320dac33-codec\00", [46 x i8] zeroinitializer }, align 32
@tlv320dac33_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tlv320dac33\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dac33_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Platform data not set\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dac33_i2c_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/codecs/tlv320dac33.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dac33_i2c_probe._entry_ptr = internal global ptr @dac33_i2c_probe._entry, section ".printk_index", align 4
@dac33_reg = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\80\80\80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\DA3\03", [32 x i8] zeroinitializer }, align 32
@dac33_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dac33->mutex\00", [18 x i8] zeroinitializer }, align 32
@dac33_i2c_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&dac33->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tlv320dac33 reset\00", [46 x i8] zeroinitializer }, align 32
@dac33_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1513, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to request reset GPIO (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@dac33_i2c_probe._entry_ptr.12 = internal global ptr @dac33_i2c_probe._entry.10, section ".printk_index", align 4
@dac33_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1526, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dac33_i2c_probe._entry_ptr.15 = internal global ptr @dac33_i2c_probe._entry.13, section ".printk_index", align 4
@soc_component_dev_tlv320dac33 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @dac33_snd_controls, i32 5, ptr @dac33_dapm_widgets, i32 19, ptr @audio_map, i32 20, ptr @dac33_soc_probe, ptr @dac33_soc_remove, ptr null, ptr null, ptr @dac33_read_reg_cache, ptr @dac33_write_locked, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dac33_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dac33_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.96, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @dac33_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.97, i64 1028, i32 192, i32 0, i32 0, i32 2, i32 2, i32 24 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IOVDD\00", [26 x i8] zeroinitializer }, align 32
@dac33_snd_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_digivol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @l_lineout_gain_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @r_lineout_gain_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@audio_map = internal constant { [20 x %struct.snd_soc_dapm_route], [272 x i8] } { [20 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.38, ptr @.str.52, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr @.str.52, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.56, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.56, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.57, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.57, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }], [272 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC Digital Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@dac_digivol_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 47, i32 48, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC Digital Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 48, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Line to Line Out Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 69, i32 72, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Left Line Output Gain\00", [42 x i8] zeroinitializer }, align 32
@l_lineout_gain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 64, i8 0, i8 0, i32 4, i32 3, ptr @lr_lineout_gain_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right Line Output Gain\00", [41 x i8] zeroinitializer }, align 32
@r_lineout_gain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 65, i8 0, i8 0, i32 4, i32 3, ptr @lr_lineout_gain_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lr_lineout_gain_texts = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Line -12dB DAC 0dB\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Line -6dB DAC 6dB\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Line 0dB DAC 12dB\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Line 6dB DAC 18dB\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LEFT_LO\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RIGHT_LO\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINEL\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINER\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Analog Left Bypass\00", [45 x i8] zeroinitializer }, align 32
@dac33_dapm_abypassl_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Analog Right Bypass\00", [44 x i8] zeroinitializer }, align 32
@dac33_dapm_abypassr_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Left LOM Inverted From\00", [41 x i8] zeroinitializer }, align 32
@dac33_dapm_left_lom_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dac33_left_lom_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Right LOM Inverted From\00", [40 x i8] zeroinitializer }, align 32
@dac33_dapm_right_lom_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dac33_right_lom_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left Bypass PGA\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right Bypass PGA\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Output Left Amplifier\00", [42 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Output Right Amplifier\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left DAC Power\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right DAC Power\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Codec Power\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Pre Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Post Playback\00", [18 x i8] zeroinitializer }, align 32
@dac33_dapm_widgets = internal constant { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [836 x i8] } { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.34, ptr @.str.35, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.36, ptr @.str.37, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac33_dapm_abypassl_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac33_dapm_abypassr_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac33_dapm_left_lom_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac33_dapm_right_lom_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 67, i8 6, i32 3, i32 3, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 67, i8 4, i32 3, i32 3, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 64, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 65, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 17, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @dac33_playback_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 18, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @dac33_playback_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [836 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 69, i32 69, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 72, i32 72, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@dac33_left_lom_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 3, i8 3, i32 2, i32 1, ptr @dac33_lr_lom_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac33_lr_lom_texts = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.56, ptr @.str.57], [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOP\00", [28 x i8] zeroinitializer }, align 32
@dac33_right_lom_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 2, i8 2, i32 2, i32 1, ptr @dac33_lr_lom_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac33_prepare_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 866, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unsupported rate %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dac33_prepare_chip\00", [45 x i8] zeroinitializer }, align 32
@dac33_prepare_chip._entry_ptr = internal global ptr @dac33_prepare_chip._entry, section ".printk_index", align 4
@dac33_prepare_chip._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unsupported format %d\0A\00", [41 x i8] zeroinitializer }, align 32
@dac33_prepare_chip._entry_ptr.62 = internal global ptr @dac33_prepare_chip._entry.60, section ".printk_index", align 4
@dac33_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Write failed (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dac33_write\00", [20 x i8] zeroinitializer }, align 32
@dac33_write._entry_ptr = internal global ptr @dac33_write._entry, section ".printk_index", align 4
@dac33_write16._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.65, ptr @.str.3, i32 274, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dac33_write16\00", [18 x i8] zeroinitializer }, align 32
@dac33_write16._entry_ptr = internal global ptr @dac33_write16._entry, section ".printk_index", align 4
@dac33_oscwait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 778, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"internal oscillator calibration failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dac33_oscwait\00", [18 x i8] zeroinitializer }, align 32
@dac33_oscwait._entry_ptr = internal global ptr @dac33_oscwait._entry, section ".printk_index", align 4
@dac33_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Read failed (%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dac33_read\00", [21 x i8] zeroinitializer }, align 32
@dac33_read._entry_ptr = internal global ptr @dac33_read._entry, section ".printk_index", align 4
@dac33_soc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.3, i32 1376, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to power up component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dac33_soc_probe\00", [16 x i8] zeroinitializer }, align 32
@dac33_soc_probe._entry_ptr = internal global ptr @dac33_soc_probe._entry, section ".printk_index", align 4
@dac33_soc_probe._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.3, i32 1383, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read chip ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dac33_soc_probe._entry_ptr.74 = internal global ptr @dac33_soc_probe._entry.72, section ".printk_index", align 4
@dac33_soc_probe._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.3, i32 1395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not request IRQ%d (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@dac33_soc_probe._entry_ptr.77 = internal global ptr @dac33_soc_probe._entry.75, section ".printk_index", align 4
@dac33_soc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&dac33->work)\00", [32 x i8] zeroinitializer }, align 32
@dac33_mode_snd_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @dac33_get_fifo_mode, ptr @dac33_set_fifo_mode, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dac33_fifo_mode_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@dac33_hard_power.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.79, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_soc_tlv320dac33\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dac33_hard_power\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Trying to set the same power state: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@dac33_hard_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.80, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dac33_hard_power._entry_ptr = internal global ptr @dac33_hard_power._entry, section ".printk_index", align 4
@dac33_hard_power._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.80, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to disable supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@dac33_hard_power._entry_ptr.87 = internal global ptr @dac33_hard_power._entry.85, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dac33_prefill_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 686, ptr @.str.90, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unhandled FIFO mode: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dac33_prefill_handler\00", [42 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@dac33_prefill_handler._entry_ptr = internal global ptr @dac33_prefill_handler._entry, section ".printk_index", align 4
@dac33_playback_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.91, ptr @.str.3, i32 711, ptr @.str.90, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dac33_playback_handler\00", [41 x i8] zeroinitializer }, align 32
@dac33_playback_handler._entry_ptr = internal global ptr @dac33_playback_handler._entry, section ".printk_index", align 4
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FIFO Mode\00", [22 x i8] zeroinitializer }, align 32
@dac33_fifo_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 0, ptr @dac33_fifo_mode_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac33_fifo_mode_texts = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.93, ptr @.str.94, ptr @.str.95], [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Bypass\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 1\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mode 7\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tlv320dac33-hifi\00", [47 x i8] zeroinitializer }, align 32
@dac33_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @dac33_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @dac33_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dac33_startup, ptr @dac33_shutdown, ptr @dac33_hw_params, ptr null, ptr null, ptr @dac33_pcm_trigger, ptr null, ptr @dac33_dai_delay, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@dac33_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.99, ptr @.str.3, i32 1300, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock ID (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dac33_set_dai_sysclk\00", [43 x i8] zeroinitializer }, align 32
@dac33_set_dai_sysclk._entry_ptr = internal global ptr @dac33_set_dai_sysclk._entry, section ".printk_index", align 4
@dac33_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 1329, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"FIFO mode requires master mode\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dac33_set_dai_fmt\00", [46 x i8] zeroinitializer }, align 32
@dac33_set_dai_fmt._entry_ptr = internal global ptr @dac33_set_dai_fmt._entry, section ".printk_index", align 4
@dac33_set_dai_fmt._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 1356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported format (%u)\0A\00", [39 x i8] zeroinitializer }, align 32
@dac33_set_dai_fmt._entry_ptr.104 = internal global ptr @dac33_set_dai_fmt._entry.102, section ".printk_index", align 4
@dac33_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.105, ptr @.str.3, i32 818, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dac33_hw_params\00", [16 x i8] zeroinitializer }, align 32
@dac33_hw_params._entry_ptr = internal global ptr @dac33_hw_params._entry, section ".printk_index", align 4
@dac33_hw_params._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.3, i32 833, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unsupported width %d\0A\00", [42 x i8] zeroinitializer }, align 32
@dac33_hw_params._entry_ptr.108 = internal global ptr @dac33_hw_params._entry.106, section ".printk_index", align 4
@dac33_dai_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.109, ptr @.str.3, i32 1274, ptr @.str.90, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dac33_dai_delay\00", [16 x i8] zeroinitializer }, align 32
@dac33_dai_delay._entry_ptr = internal global ptr @dac33_dai_delay._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.125 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.127 = private unnamed_addr constant [23 x i8] c"tlv320dac33_i2c_driver\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1565, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1567, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"tlv320dac33_i2c_id\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1556, i32 35 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1474, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [10 x i8] c"dac33_reg\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 114, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1492, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1493, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1509, i32 41 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1511, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1526, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [30 x i8] c"soc_component_dev_tlv320dac33\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1422, i32 46 }
@___asan_gen_.187 = private unnamed_addr constant [10 x i8] c"dac33_dai\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1453, i32 34 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 72, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 73, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 74, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"dac33_snd_controls\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 493, i32 38 }
@___asan_gen_.202 = private unnamed_addr constant [10 x i8] c"audio_map\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 579, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 494, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [16 x i8] c"dac_digivol_tlv\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 491, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 497, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 499, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 501, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c"l_lineout_gain_enum\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 476, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 502, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c"r_lineout_gain_enum\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 480, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"lr_lineout_gain_texts\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 471, i32 20 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 472, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 472, i32 24 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 473, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 473, i32 23 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 535, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 536, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 538, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 539, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 541, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 542, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 545, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [28 x i8] c"dac33_dapm_abypassl_control\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 511, i32 38 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 547, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [28 x i8] c"dac33_dapm_abypassr_control\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 514, i32 38 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 550, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [28 x i8] c"dac33_dapm_left_lom_control\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 524, i32 38 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 552, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [29 x i8] c"dac33_dapm_right_lom_control\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 531, i32 38 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 559, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 560, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 562, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 564, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 567, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 569, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 572, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 575, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 576, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant [19 x i8] c"dac33_dapm_widgets\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 534, i32 41 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 512, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 525, i32 1 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c"dac33_left_lom_enum\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 520, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant [19 x i8] c"dac33_lr_lom_texts\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 518, i32 20 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 518, i32 44 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 518, i32 51 }
@___asan_gen_.345 = private unnamed_addr constant [21 x i8] c"dac33_right_lom_enum\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 527, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 865, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 887, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 227, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 274, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 777, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 194, i32 4 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1376, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1383, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1394, i32 4 }
@___asan_gen_.417 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1399, i32 4 }
@___asan_gen_.423 = private unnamed_addr constant [24 x i8] c"dac33_mode_snd_controls\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 505, i32 38 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 372, i32 3 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 381, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 398, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 685, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 710, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 506, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [21 x i8] c"dac33_fifo_mode_enum\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 468, i32 8 }
@___asan_gen_.477 = private unnamed_addr constant [22 x i8] c"dac33_fifo_mode_texts\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 464, i32 20 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 465, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 465, i32 12 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 465, i32 22 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1454, i32 10 }
@___asan_gen_.492 = private unnamed_addr constant [14 x i8] c"dac33_dai_ops\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1443, i32 37 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1456, i32 18 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1300, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1329, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1355, i32 3 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 817, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 832, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.538 = private constant [34 x i8] c"../sound/soc/codecs/tlv320dac33.c\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.538, i32 1273, i32 3 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_tlv320dac33_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_tlv320dac33__295_1574_tlv320dac33_i2c_driver_init6, ptr @dac33_dai_delay._entry, ptr @dac33_dai_delay._entry_ptr, ptr @dac33_hard_power._entry, ptr @dac33_hard_power._entry.85, ptr @dac33_hard_power._entry_ptr, ptr @dac33_hard_power._entry_ptr.87, ptr @dac33_hw_params._entry, ptr @dac33_hw_params._entry.106, ptr @dac33_hw_params._entry_ptr, ptr @dac33_hw_params._entry_ptr.108, ptr @dac33_i2c_probe._entry, ptr @dac33_i2c_probe._entry.10, ptr @dac33_i2c_probe._entry.13, ptr @dac33_i2c_probe._entry_ptr, ptr @dac33_i2c_probe._entry_ptr.12, ptr @dac33_i2c_probe._entry_ptr.15, ptr @dac33_oscwait._entry, ptr @dac33_oscwait._entry_ptr, ptr @dac33_playback_handler._entry, ptr @dac33_playback_handler._entry_ptr, ptr @dac33_prefill_handler._entry, ptr @dac33_prefill_handler._entry_ptr, ptr @dac33_prepare_chip._entry, ptr @dac33_prepare_chip._entry.60, ptr @dac33_prepare_chip._entry_ptr, ptr @dac33_prepare_chip._entry_ptr.62, ptr @dac33_read._entry, ptr @dac33_read._entry_ptr, ptr @dac33_set_dai_fmt._entry, ptr @dac33_set_dai_fmt._entry.102, ptr @dac33_set_dai_fmt._entry_ptr, ptr @dac33_set_dai_fmt._entry_ptr.104, ptr @dac33_set_dai_sysclk._entry, ptr @dac33_set_dai_sysclk._entry_ptr, ptr @dac33_soc_probe._entry, ptr @dac33_soc_probe._entry.72, ptr @dac33_soc_probe._entry.75, ptr @dac33_soc_probe._entry_ptr, ptr @dac33_soc_probe._entry_ptr.74, ptr @dac33_soc_probe._entry_ptr.77, ptr @dac33_write._entry, ptr @dac33_write._entry_ptr, ptr @dac33_write16._entry, ptr @dac33_write16._entry_ptr, ptr @tlv320dac33_i2c_driver_exit, ptr @tlv320dac33_i2c_driver, ptr @.str, ptr @tlv320dac33_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @dac33_reg, ptr @dac33_i2c_probe.__key, ptr @.str.6, ptr @dac33_i2c_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @soc_component_dev_tlv320dac33, ptr @dac33_dai, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @dac33_snd_controls, ptr @audio_map, ptr @.str.19, ptr @dac_digivol_tlv, ptr @.compoundliteral, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @l_lineout_gain_enum, ptr @.str.25, ptr @r_lineout_gain_enum, ptr @lr_lineout_gain_texts, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @dac33_dapm_abypassl_control, ptr @.str.39, ptr @dac33_dapm_abypassr_control, ptr @.str.40, ptr @dac33_dapm_left_lom_control, ptr @.str.41, ptr @dac33_dapm_right_lom_control, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @dac33_dapm_widgets, ptr @.str.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @dac33_left_lom_enum, ptr @dac33_lr_lom_texts, ptr @.str.56, ptr @.str.57, ptr @dac33_right_lom_enum, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @dac33_soc_probe.__key, ptr @.str.78, ptr @dac33_mode_snd_controls, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @dac33_fifo_mode_enum, ptr @dac33_fifo_mode_texts, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @dac33_dai_ops, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109], section "llvm.metadata"
@0 = internal global [141 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320dac33_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320dac33_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_reg to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_i2c_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_tlv320dac33 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_snd_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_map to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_digivol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l_lineout_gain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_lineout_gain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lr_lineout_gain_texts to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_dapm_abypassl_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_dapm_abypassr_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_dapm_left_lom_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_dapm_right_lom_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_dapm_widgets to i32), i32 3420, i32 4256, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_left_lom_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_lr_lom_texts to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_right_lom_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_prepare_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_prepare_chip._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_write16._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_oscwait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_soc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_soc_probe._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_soc_probe._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_soc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_mode_snd_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_hard_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_hard_power._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_prefill_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_playback_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_fifo_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_fifo_mode_texts to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_set_dai_fmt._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_hw_params._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac33_dai_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tlv320dac33_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tlv320dac33_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tlv320dac33_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tlv320dac33_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 320, i32 noundef 3520) #8
  %cmp5 = icmp eq ptr %call.i, null
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull @dac33_reg, i32 noundef 128, i32 noundef 3264) #8
  %reg_cache = getelementptr inbounds %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 15
  %2 = ptrtoint ptr %reg_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %reg_cache, align 4
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %i2c = getelementptr inbounds %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 25
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %i2c, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @dac33_i2c_probe.__key) #8
  %lock = getelementptr inbounds %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @dac33_i2c_probe.__key.7, i16 noundef signext 3) #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %power_gpio20 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %power_gpio20 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %power_gpio20, align 4
  %burst_bclkdiv = getelementptr inbounds %struct.tlv320dac33_platform_data, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %burst_bclkdiv to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %burst_bclkdiv, align 4
  %burst_bclkdiv21 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 14
  %10 = ptrtoint ptr %burst_bclkdiv21 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %burst_bclkdiv21, align 8
  %keep_bclk = getelementptr inbounds %struct.tlv320dac33_platform_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %keep_bclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %keep_bclk, align 4
  %keep_bclk22 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 17
  %13 = ptrtoint ptr %keep_bclk22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %keep_bclk22, align 4
  %mode1_latency = getelementptr inbounds %struct.tlv320dac33_platform_data, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %mode1_latency to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode1_latency, align 4
  %mode1_latency23 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not = icmp eq i32 %15, 0
  %spec.select = select i1 %tobool25.not, i32 10000, i32 %15
  %16 = ptrtoint ptr %mode1_latency23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %mode1_latency23, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %irq29 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %irq29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %irq29, align 4
  %fifo_mode = getelementptr inbounds %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 10
  %20 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp31 = icmp sgt i32 %6, -1
  br i1 %cmp31, label %if.then32, label %if.end12.if.end45_crit_edge

if.end12.if.end45_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then32:                                        ; preds = %if.end12
  %call34 = tail call i32 @gpio_request(i32 noundef %6, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  %21 = ptrtoint ptr %power_gpio20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %power_gpio20, align 4
  br i1 %cmp35, label %do.end39, label %if.end42

do.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %22) #11
  br label %cleanup

if.end42:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %call.i117 = tail call ptr @gpio_to_desc(i32 noundef %22) #8
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i117, i32 noundef 0) #8
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.end12.if.end45_crit_edge
  %arrayidx47 = getelementptr %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 3, i32 0
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.16, ptr %arrayidx47, align 4
  %arrayidx47.1 = getelementptr %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.17, ptr %arrayidx47.1, align 4
  %arrayidx47.2 = getelementptr %struct.tlv320dac33_priv, ptr %call.i, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.18, ptr %arrayidx47.2, align 4
  %call50 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 3, ptr noundef %arrayidx47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call50) #11
  br label %err_get

if.end57:                                         ; preds = %if.end45
  %call59 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_tlv320dac33, ptr noundef nonnull @dac33_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end57.err_get_crit_edge, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57.err_get_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_get

err_get:                                          ; preds = %if.end57.err_get_crit_edge, %do.end55
  %ret.0 = phi i32 [ %call50, %do.end55 ], [ %call59, %if.end57.err_get_crit_edge ]
  %26 = ptrtoint ptr %power_gpio20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %power_gpio20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp64 = icmp sgt i32 %27, -1
  br i1 %cmp64, label %if.then65, label %err_get.cleanup_crit_edge

err_get.cleanup_crit_edge:                        ; preds = %err_get
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then65:                                        ; preds = %err_get
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpio_free(i32 noundef %27) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %err_get.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end39, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call59, %if.end57.cleanup_crit_edge ], [ %call34, %do.end39 ], [ %ret.0, %if.then65 ], [ %ret.0, %err_get.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip_power = getelementptr inbounds %struct.tlv320dac33_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %chip_power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !272

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %component = getelementptr inbounds %struct.tlv320dac33_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %component, align 8
  %call3 = tail call fastcc i32 @dac33_hard_power(ptr noundef %5, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %power_gpio = getelementptr inbounds %struct.tlv320dac33_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %power_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %power_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @gpio_free(i32 noundef %7) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_soc_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %component1 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %component1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %component1, align 8
  %call2 = tail call fastcc i32 @dac33_hard_power(ptr noundef %component, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.70, i32 noundef %call2) #11
  br label %err_power

if.end:                                           ; preds = %entry
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %chip_power.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %chip_power.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chip_power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end.for.inc.i_crit_edge, label %if.then.i.i

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i.i:                                      ; preds = %if.end
  %i2c.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %8, i32 0, i32 25
  %11 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c.i.i, align 8
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 125) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i.do.end9_crit_edge, label %if.end.i38.i.i

if.then.i.i.do.end9_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

if.end.i38.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i = trunc i32 %call1.i.i to i8
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i34.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i34.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i34.i.i, align 4
  %reg_cache.i36.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %reg_cache.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_cache.i36.i.i, align 4
  %arrayidx.i37.i.i = getelementptr i8, ptr %18, i32 125
  %19 = ptrtoint ptr %arrayidx.i37.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7.i.i, ptr %arrayidx.i37.i.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i38.i.i, %if.end.for.inc.i_crit_edge
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.1.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i.1.i, align 4
  %chip_power.i.1.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %chip_power.i.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chip_power.i.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.1.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.i.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then.i.1.i:                                    ; preds = %for.inc.i
  %i2c.i.1.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %23, i32 0, i32 25
  %26 = ptrtoint ptr %i2c.i.1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i2c.i.1.i, align 8
  %call1.i.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 126) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call1.i.1.i, 0
  br i1 %cmp.i.1.i, label %if.then.i.1.i.do.end9_crit_edge, label %if.end.i38.i.1.i

if.then.i.1.i.do.end9_crit_edge:                  ; preds = %if.then.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

if.end.i38.i.1.i:                                 ; preds = %if.then.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.1.i = trunc i32 %call1.i.1.i to i8
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i34.i.1.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i34.i.1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i34.i.1.i, align 4
  %reg_cache.i36.i.1.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %reg_cache.i36.i.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_cache.i36.i.1.i, align 4
  %arrayidx.i37.i.1.i = getelementptr i8, ptr %33, i32 126
  %34 = ptrtoint ptr %arrayidx.i37.i.1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv7.i.1.i, ptr %arrayidx.i37.i.1.i, align 1
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end.i38.i.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.2.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i.2.i, align 4
  %chip_power.i.2.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %chip_power.i.2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chip_power.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.2.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.2.i, label %for.inc.1.i.if.end11_crit_edge, label %if.then.i.2.i

for.inc.1.i.if.end11_crit_edge:                   ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.i.2.i:                                    ; preds = %for.inc.1.i
  %i2c.i.2.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %38, i32 0, i32 25
  %41 = ptrtoint ptr %i2c.i.2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c.i.2.i, align 8
  %call1.i.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.2.i)
  %cmp.i.2.i = icmp slt i32 %call1.i.2.i, 0
  br i1 %cmp.i.2.i, label %if.then.i.2.i.do.end9_crit_edge, label %if.end.i38.i.2.i

if.then.i.2.i.do.end9_crit_edge:                  ; preds = %if.then.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

if.end.i38.i.2.i:                                 ; preds = %if.then.i.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.2.i = trunc i32 %call1.i.2.i to i8
  %43 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i34.i.2.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %driver_data.i.i.i34.i.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver_data.i.i.i34.i.2.i, align 4
  %reg_cache.i36.i.2.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %reg_cache.i36.i.2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_cache.i36.i.2.i, align 4
  %arrayidx.i37.i.2.i = getelementptr i8, ptr %48, i32 127
  %49 = ptrtoint ptr %arrayidx.i37.i.2.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv7.i.2.i, ptr %arrayidx.i37.i.2.i, align 1
  br label %if.end11

do.end9:                                          ; preds = %if.then.i.2.i.do.end9_crit_edge, %if.then.i.1.i.do.end9_crit_edge, %if.then.i.i.do.end9_crit_edge
  %call1.i.lcssa.i = phi i32 [ %call1.i.i, %if.then.i.i.do.end9_crit_edge ], [ %call1.i.1.i, %if.then.i.1.i.do.end9_crit_edge ], [ %call1.i.2.i, %if.then.i.2.i.do.end9_crit_edge ]
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.68, i32 noundef %call1.i.lcssa.i) #11
  %call4 = tail call fastcc i32 @dac33_hard_power(ptr noundef %component, i32 noundef 0)
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.73, i32 noundef %call1.i.lcssa.i) #11
  br label %err_power

if.end11:                                         ; preds = %if.end.i38.i.2.i, %for.inc.1.i.if.end11_crit_edge
  %call471 = tail call fastcc i32 @dac33_hard_power(ptr noundef %component, i32 noundef 0)
  %irq = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 7
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp12 = icmp sgt i32 %55, -1
  br i1 %cmp12, label %if.then13, label %if.end11.err_power_crit_edge

if.end11.err_power_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_power

if.then13:                                        ; preds = %if.end11
  %56 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %component, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %55, ptr noundef nonnull @dac33_interrupt_handler, ptr noundef null, i32 noundef 1, ptr noundef %57, ptr noundef %component) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16 = icmp slt i32 %call.i, 0
  br i1 %cmp16, label %if.end24.thread, label %if.end24

if.end24.thread:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  %60 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.76, i32 noundef %61, i32 noundef %call.i) #11
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %irq, align 4
  br label %err_power

if.end24:                                         ; preds = %if.then13
  %63 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp26.not = icmp eq i32 %.pr, -1
  br i1 %cmp26.not, label %if.end24.err_power_crit_edge, label %if.end37

if.end24.err_power_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_power

if.end37:                                         ; preds = %if.end24
  %work = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 1
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %64 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.78, ptr noundef nonnull @dac33_soc_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry32 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 1, i32 1, i32 1
  %66 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry32, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @dac33_work, ptr %func, align 4
  %68 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr75 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr75)
  %cmp39 = icmp sgt i32 %.pr75, -1
  br i1 %cmp39, label %if.then40, label %if.end37.err_power_crit_edge

if.end37.err_power_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_power

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @dac33_mode_snd_controls, i32 noundef 1) #8
  br label %err_power

err_power:                                        ; preds = %if.then40, %if.end37.err_power_crit_edge, %if.end24.err_power_crit_edge, %if.end24.thread, %if.end11.err_power_crit_edge, %do.end9, %do.end
  %ret.1 = phi i32 [ %call2, %do.end ], [ -19, %do.end9 ], [ %call.i, %if.then40 ], [ %call.i, %if.end37.err_power_crit_edge ], [ %call.i, %if.end24.thread ], [ 0, %if.end11.err_power_crit_edge ], [ %call.i, %if.end24.err_power_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dac33_soc_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %irq = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp sgt i32 %5, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %component2 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %component2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component2, align 8
  %call3 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %7) #8
  %work = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 1
  %call4 = tail call zeroext i1 @flush_work(ptr noundef %work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dac33_read_reg_cache(ptr nocapture noundef readonly %component, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %reg)
  %cmp = icmp ugt i32 %reg, 127
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %reg_cache = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %reg_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_cache, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %reg
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_write_locked(ptr nocapture noundef readonly %component, i32 noundef %reg, i32 noundef %value) #2 align 64 {
entry:
  %data.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %8 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %conv.i = trunc i32 %reg to i8
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %data.i, align 1
  %conv2.i = trunc i32 %value to i8
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i)
  %cmp.i.i = icmp slt i8 %conv.i, 0
  br i1 %cmp.i.i, label %entry.dac33_write_reg_cache.exit.i_crit_edge, label %if.end.i.i

entry.dac33_write_reg_cache.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = and i32 %reg, 255
  %reg_cache.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %7, i32 0, i32 15
  %11 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_cache.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %12, i32 %conv.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv2.i, ptr %arrayidx.i.i, align 1
  br label %dac33_write_reg_cache.exit.i

dac33_write_reg_cache.exit.i:                     ; preds = %if.end.i.i, %entry.dac33_write_reg_cache.exit.i_crit_edge
  %chip_power.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %chip_power.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chip_power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %dac33_write_reg_cache.exit.i.dac33_write.exit_crit_edge, label %if.then.i

dac33_write_reg_cache.exit.i.dac33_write.exit_crit_edge: ; preds = %dac33_write_reg_cache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit

if.then.i:                                        ; preds = %dac33_write_reg_cache.exit.i
  %i2c.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %7, i32 0, i32 25
  %16 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i2c.i, align 8
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %if.then.i.dac33_write.exit_crit_edge, label %do.end.i

if.then.i.dac33_write.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.63, i32 noundef %call.i.i) #11
  br label %dac33_write.exit

dac33_write.exit:                                 ; preds = %do.end.i, %if.then.i.dac33_write.exit_crit_edge, %dac33_write_reg_cache.exit.i.dac33_write.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %do.end.i ], [ 0, %dac33_write_reg_cache.exit.i.dac33_write.exit_crit_edge ], [ 0, %if.then.i.dac33_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_set_bias_level(ptr noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  %data.i198.i = alloca [2 x i8], align 1
  %data.i179.i = alloca [2 x i8], align 1
  %data.i160.i = alloca [2 x i8], align 1
  %data.i141.i = alloca [2 x i8], align 1
  %data.i122.i = alloca [2 x i8], align 1
  %data.i103.i = alloca [2 x i8], align 1
  %data.i84.i = alloca [2 x i8], align 1
  %data.i68.i = alloca [2 x i8], align 1
  %data.i54.i = alloca [2 x i8], align 1
  %data.i40.i = alloca [2 x i8], align 1
  %data.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb5
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %1 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %call1 = tail call fastcc i32 @dac33_hard_power(ptr noundef %component, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %chip_power.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %chip_power.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip_power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.sw.epilog_crit_edge, label %if.end.i, !prof !273

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #8
  %9 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 44, ptr %data.i.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %9, align 1
  %reg_cache.i.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %6, i32 0, i32 15
  %12 = ptrtoint ptr %reg_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_cache.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %13, i32 44
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx.i.i.i, align 1
  %15 = ptrtoint ptr %chip_power.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chip_power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.end.i.dac33_write.exit.i_crit_edge, label %if.then.i.i

if.end.i.dac33_write.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %i2c.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %6, i32 0, i32 25
  %17 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %data.i.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.then.i.i.dac33_write.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.dac33_write.exit.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i) #11
  br label %dac33_write.exit.i

dac33_write.exit.i:                               ; preds = %do.end.i.i, %if.then.i.i.dac33_write.exit.i_crit_edge, %if.end.i.dac33_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #8
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i42.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i.i42.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i40.i) #8
  %25 = getelementptr inbounds [2 x i8], ptr %data.i40.i, i32 0, i32 1
  %26 = ptrtoint ptr %data.i40.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 45, ptr %data.i40.i, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 5, ptr %25, align 1
  %reg_cache.i.i43.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %24, i32 0, i32 15
  %28 = ptrtoint ptr %reg_cache.i.i43.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_cache.i.i43.i, align 4
  %arrayidx.i.i44.i = getelementptr i8, ptr %29, i32 45
  %30 = ptrtoint ptr %arrayidx.i.i44.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %arrayidx.i.i44.i, align 1
  %chip_power.i45.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %24, i32 0, i32 6
  %31 = ptrtoint ptr %chip_power.i45.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip_power.i45.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i46.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i46.i, label %dac33_write.exit.i.dac33_write.exit53.i_crit_edge, label %if.then.i50.i

dac33_write.exit.i.dac33_write.exit53.i_crit_edge: ; preds = %dac33_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit53.i

if.then.i50.i:                                    ; preds = %dac33_write.exit.i
  %i2c.i47.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %24, i32 0, i32 25
  %33 = ptrtoint ptr %i2c.i47.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %i2c.i47.i, align 8
  %call.i.i48.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %34, ptr noundef nonnull %data.i40.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i48.i)
  %cmp.not.i49.i = icmp eq i32 %call.i.i48.i, 2
  br i1 %cmp.not.i49.i, label %if.then.i50.i.dac33_write.exit53.i_crit_edge, label %do.end.i51.i

if.then.i50.i.dac33_write.exit53.i_crit_edge:     ; preds = %if.then.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit53.i

do.end.i51.i:                                     ; preds = %if.then.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.63, i32 noundef %call.i.i48.i) #11
  br label %dac33_write.exit53.i

dac33_write.exit53.i:                             ; preds = %do.end.i51.i, %if.then.i50.i.dac33_write.exit53.i_crit_edge, %dac33_write.exit.i.dac33_write.exit53.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i40.i) #8
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i56.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i.i56.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %driver_data.i.i.i56.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i54.i) #8
  %41 = getelementptr inbounds [2 x i8], ptr %data.i54.i, i32 0, i32 1
  %42 = ptrtoint ptr %data.i54.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 46, ptr %data.i54.i, align 1
  %43 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %41, align 1
  %reg_cache.i.i57.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %40, i32 0, i32 15
  %44 = ptrtoint ptr %reg_cache.i.i57.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_cache.i.i57.i, align 4
  %arrayidx.i.i58.i = getelementptr i8, ptr %45, i32 46
  %46 = ptrtoint ptr %arrayidx.i.i58.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx.i.i58.i, align 1
  %chip_power.i59.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %40, i32 0, i32 6
  %47 = ptrtoint ptr %chip_power.i59.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %chip_power.i59.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i60.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i60.i, label %dac33_write.exit53.i.dac33_write.exit67.i_crit_edge, label %if.then.i64.i

dac33_write.exit53.i.dac33_write.exit67.i_crit_edge: ; preds = %dac33_write.exit53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit67.i

if.then.i64.i:                                    ; preds = %dac33_write.exit53.i
  %i2c.i61.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %40, i32 0, i32 25
  %49 = ptrtoint ptr %i2c.i61.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c.i61.i, align 8
  %call.i.i62.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %50, ptr noundef nonnull %data.i54.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i62.i)
  %cmp.not.i63.i = icmp eq i32 %call.i.i62.i, 2
  br i1 %cmp.not.i63.i, label %if.then.i64.i.dac33_write.exit67.i_crit_edge, label %do.end.i65.i

if.then.i64.i.dac33_write.exit67.i_crit_edge:     ; preds = %if.then.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit67.i

do.end.i65.i:                                     ; preds = %if.then.i64.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.63, i32 noundef %call.i.i62.i) #11
  br label %dac33_write.exit67.i

dac33_write.exit67.i:                             ; preds = %do.end.i65.i, %if.then.i64.i.dac33_write.exit67.i_crit_edge, %dac33_write.exit53.i.dac33_write.exit67.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i54.i) #8
  %53 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i70.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %driver_data.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %driver_data.i.i.i70.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i68.i) #8
  %57 = getelementptr inbounds [2 x i8], ptr %data.i68.i, i32 0, i32 1
  %58 = ptrtoint ptr %data.i68.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 73, ptr %data.i68.i, align 1
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %57, align 1
  %reg_cache.i.i71.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %56, i32 0, i32 15
  %60 = ptrtoint ptr %reg_cache.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_cache.i.i71.i, align 4
  %arrayidx.i.i72.i = getelementptr i8, ptr %61, i32 73
  %62 = ptrtoint ptr %arrayidx.i.i72.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 2, ptr %arrayidx.i.i72.i, align 1
  %chip_power.i73.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %56, i32 0, i32 6
  %63 = ptrtoint ptr %chip_power.i73.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %chip_power.i73.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i74.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i74.i, label %dac33_write.exit67.i.dac33_write.exit81.i_crit_edge, label %if.then.i78.i

dac33_write.exit67.i.dac33_write.exit81.i_crit_edge: ; preds = %dac33_write.exit67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit81.i

if.then.i78.i:                                    ; preds = %dac33_write.exit67.i
  %i2c.i75.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %56, i32 0, i32 25
  %65 = ptrtoint ptr %i2c.i75.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c.i75.i, align 8
  %call.i.i76.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %66, ptr noundef nonnull %data.i68.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i76.i)
  %cmp.not.i77.i = icmp eq i32 %call.i.i76.i, 2
  br i1 %cmp.not.i77.i, label %if.then.i78.i.dac33_write.exit81.i_crit_edge, label %do.end.i79.i

if.then.i78.i.dac33_write.exit81.i_crit_edge:     ; preds = %if.then.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit81.i

do.end.i79.i:                                     ; preds = %if.then.i78.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.63, i32 noundef %call.i.i76.i) #11
  br label %dac33_write.exit81.i

dac33_write.exit81.i:                             ; preds = %do.end.i79.i, %if.then.i78.i.dac33_write.exit81.i_crit_edge, %dac33_write.exit67.i.dac33_write.exit81.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i68.i) #8
  %69 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i83.i = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 8
  %71 = ptrtoint ptr %driver_data.i.i.i83.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i.i83.i, align 4
  %reg_cache.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %72, i32 0, i32 15
  %73 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_cache.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %74, i32 47
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i84.i) #8
  %77 = getelementptr inbounds [2 x i8], ptr %data.i84.i, i32 0, i32 1
  %78 = ptrtoint ptr %data.i84.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 47, ptr %data.i84.i, align 1
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %76, ptr %77, align 1
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %76, ptr %arrayidx.i.i, align 1
  %chip_power.i89.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %72, i32 0, i32 6
  %81 = ptrtoint ptr %chip_power.i89.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %chip_power.i89.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i90.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i90.i, label %dac33_write.exit81.i.dac33_write.exit97.i_crit_edge, label %if.then.i94.i

dac33_write.exit81.i.dac33_write.exit97.i_crit_edge: ; preds = %dac33_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit97.i

if.then.i94.i:                                    ; preds = %dac33_write.exit81.i
  %i2c.i91.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %72, i32 0, i32 25
  %83 = ptrtoint ptr %i2c.i91.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %i2c.i91.i, align 8
  %call.i.i92.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %84, ptr noundef nonnull %data.i84.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i92.i)
  %cmp.not.i93.i = icmp eq i32 %call.i.i92.i, 2
  br i1 %cmp.not.i93.i, label %if.then.i94.i.dac33_write.exit97.i_crit_edge, label %do.end.i95.i

if.then.i94.i.dac33_write.exit97.i_crit_edge:     ; preds = %if.then.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit97.i

do.end.i95.i:                                     ; preds = %if.then.i94.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.63, i32 noundef %call.i.i92.i) #11
  br label %dac33_write.exit97.i

dac33_write.exit97.i:                             ; preds = %do.end.i95.i, %if.then.i94.i.dac33_write.exit97.i_crit_edge, %dac33_write.exit81.i.dac33_write.exit97.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i84.i) #8
  %87 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i99.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 8
  %89 = ptrtoint ptr %driver_data.i.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %driver_data.i.i.i99.i, align 4
  %reg_cache.i100.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %90, i32 0, i32 15
  %91 = ptrtoint ptr %reg_cache.i100.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %reg_cache.i100.i, align 4
  %arrayidx.i101.i = getelementptr i8, ptr %92, i32 48
  %93 = ptrtoint ptr %arrayidx.i101.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i101.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i103.i) #8
  %95 = getelementptr inbounds [2 x i8], ptr %data.i103.i, i32 0, i32 1
  %96 = ptrtoint ptr %data.i103.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 48, ptr %data.i103.i, align 1
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %94, ptr %95, align 1
  %98 = ptrtoint ptr %arrayidx.i101.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %94, ptr %arrayidx.i101.i, align 1
  %chip_power.i108.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %90, i32 0, i32 6
  %99 = ptrtoint ptr %chip_power.i108.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %chip_power.i108.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i109.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i109.i, label %dac33_write.exit97.i.dac33_write.exit116.i_crit_edge, label %if.then.i113.i

dac33_write.exit97.i.dac33_write.exit116.i_crit_edge: ; preds = %dac33_write.exit97.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit116.i

if.then.i113.i:                                   ; preds = %dac33_write.exit97.i
  %i2c.i110.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %90, i32 0, i32 25
  %101 = ptrtoint ptr %i2c.i110.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %i2c.i110.i, align 8
  %call.i.i111.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %102, ptr noundef nonnull %data.i103.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i111.i)
  %cmp.not.i112.i = icmp eq i32 %call.i.i111.i, 2
  br i1 %cmp.not.i112.i, label %if.then.i113.i.dac33_write.exit116.i_crit_edge, label %do.end.i114.i

if.then.i113.i.dac33_write.exit116.i_crit_edge:   ; preds = %if.then.i113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit116.i

do.end.i114.i:                                    ; preds = %if.then.i113.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.63, i32 noundef %call.i.i111.i) #11
  br label %dac33_write.exit116.i

dac33_write.exit116.i:                            ; preds = %do.end.i114.i, %if.then.i113.i.dac33_write.exit116.i_crit_edge, %dac33_write.exit97.i.dac33_write.exit116.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i103.i) #8
  %105 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i118.i = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 8
  %107 = ptrtoint ptr %driver_data.i.i.i118.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %driver_data.i.i.i118.i, align 4
  %reg_cache.i119.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %108, i32 0, i32 15
  %109 = ptrtoint ptr %reg_cache.i119.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg_cache.i119.i, align 4
  %arrayidx.i120.i = getelementptr i8, ptr %110, i32 69
  %111 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i120.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i122.i) #8
  %113 = getelementptr inbounds [2 x i8], ptr %data.i122.i, i32 0, i32 1
  %114 = ptrtoint ptr %data.i122.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 69, ptr %data.i122.i, align 1
  %115 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %112, ptr %113, align 1
  %116 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %112, ptr %arrayidx.i120.i, align 1
  %chip_power.i127.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %108, i32 0, i32 6
  %117 = ptrtoint ptr %chip_power.i127.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %chip_power.i127.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.not.i128.i = icmp eq i32 %118, 0
  br i1 %tobool.not.i128.i, label %dac33_write.exit116.i.dac33_write.exit135.i_crit_edge, label %if.then.i132.i

dac33_write.exit116.i.dac33_write.exit135.i_crit_edge: ; preds = %dac33_write.exit116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit135.i

if.then.i132.i:                                   ; preds = %dac33_write.exit116.i
  %i2c.i129.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %108, i32 0, i32 25
  %119 = ptrtoint ptr %i2c.i129.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %i2c.i129.i, align 8
  %call.i.i130.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %120, ptr noundef nonnull %data.i122.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i130.i)
  %cmp.not.i131.i = icmp eq i32 %call.i.i130.i, 2
  br i1 %cmp.not.i131.i, label %if.then.i132.i.dac33_write.exit135.i_crit_edge, label %do.end.i133.i

if.then.i132.i.dac33_write.exit135.i_crit_edge:   ; preds = %if.then.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit135.i

do.end.i133.i:                                    ; preds = %if.then.i132.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.63, i32 noundef %call.i.i130.i) #11
  br label %dac33_write.exit135.i

dac33_write.exit135.i:                            ; preds = %do.end.i133.i, %if.then.i132.i.dac33_write.exit135.i_crit_edge, %dac33_write.exit116.i.dac33_write.exit135.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i122.i) #8
  %123 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i137.i = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %driver_data.i.i.i137.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %driver_data.i.i.i137.i, align 4
  %reg_cache.i138.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %126, i32 0, i32 15
  %127 = ptrtoint ptr %reg_cache.i138.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_cache.i138.i, align 4
  %arrayidx.i139.i = getelementptr i8, ptr %128, i32 72
  %129 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx.i139.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i141.i) #8
  %131 = getelementptr inbounds [2 x i8], ptr %data.i141.i, i32 0, i32 1
  %132 = ptrtoint ptr %data.i141.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 72, ptr %data.i141.i, align 1
  %133 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %130, ptr %131, align 1
  %134 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %130, ptr %arrayidx.i139.i, align 1
  %chip_power.i146.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %126, i32 0, i32 6
  %135 = ptrtoint ptr %chip_power.i146.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %chip_power.i146.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i147.i = icmp eq i32 %136, 0
  br i1 %tobool.not.i147.i, label %dac33_write.exit135.i.dac33_write.exit154.i_crit_edge, label %if.then.i151.i

dac33_write.exit135.i.dac33_write.exit154.i_crit_edge: ; preds = %dac33_write.exit135.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit154.i

if.then.i151.i:                                   ; preds = %dac33_write.exit135.i
  %i2c.i148.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %126, i32 0, i32 25
  %137 = ptrtoint ptr %i2c.i148.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %i2c.i148.i, align 8
  %call.i.i149.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %138, ptr noundef nonnull %data.i141.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i149.i)
  %cmp.not.i150.i = icmp eq i32 %call.i.i149.i, 2
  br i1 %cmp.not.i150.i, label %if.then.i151.i.dac33_write.exit154.i_crit_edge, label %do.end.i152.i

if.then.i151.i.dac33_write.exit154.i_crit_edge:   ; preds = %if.then.i151.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit154.i

do.end.i152.i:                                    ; preds = %if.then.i151.i
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.63, i32 noundef %call.i.i149.i) #11
  br label %dac33_write.exit154.i

dac33_write.exit154.i:                            ; preds = %do.end.i152.i, %if.then.i151.i.dac33_write.exit154.i_crit_edge, %dac33_write.exit135.i.dac33_write.exit154.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i141.i) #8
  %141 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i156.i = getelementptr inbounds %struct.device, ptr %142, i32 0, i32 8
  %143 = ptrtoint ptr %driver_data.i.i.i156.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %driver_data.i.i.i156.i, align 4
  %reg_cache.i157.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %144, i32 0, i32 15
  %145 = ptrtoint ptr %reg_cache.i157.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %reg_cache.i157.i, align 4
  %arrayidx.i158.i = getelementptr i8, ptr %146, i32 68
  %147 = ptrtoint ptr %arrayidx.i158.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx.i158.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i160.i) #8
  %149 = getelementptr inbounds [2 x i8], ptr %data.i160.i, i32 0, i32 1
  %150 = ptrtoint ptr %data.i160.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 68, ptr %data.i160.i, align 1
  %151 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %148, ptr %149, align 1
  %152 = ptrtoint ptr %arrayidx.i158.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %148, ptr %arrayidx.i158.i, align 1
  %chip_power.i165.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %144, i32 0, i32 6
  %153 = ptrtoint ptr %chip_power.i165.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %chip_power.i165.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool.not.i166.i = icmp eq i32 %154, 0
  br i1 %tobool.not.i166.i, label %dac33_write.exit154.i.dac33_write.exit173.i_crit_edge, label %if.then.i170.i

dac33_write.exit154.i.dac33_write.exit173.i_crit_edge: ; preds = %dac33_write.exit154.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit173.i

if.then.i170.i:                                   ; preds = %dac33_write.exit154.i
  %i2c.i167.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %144, i32 0, i32 25
  %155 = ptrtoint ptr %i2c.i167.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %i2c.i167.i, align 8
  %call.i.i168.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %156, ptr noundef nonnull %data.i160.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i168.i)
  %cmp.not.i169.i = icmp eq i32 %call.i.i168.i, 2
  br i1 %cmp.not.i169.i, label %if.then.i170.i.dac33_write.exit173.i_crit_edge, label %do.end.i171.i

if.then.i170.i.dac33_write.exit173.i_crit_edge:   ; preds = %if.then.i170.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit173.i

do.end.i171.i:                                    ; preds = %if.then.i170.i
  call void @__sanitizer_cov_trace_pc() #10
  %157 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.63, i32 noundef %call.i.i168.i) #11
  br label %dac33_write.exit173.i

dac33_write.exit173.i:                            ; preds = %do.end.i171.i, %if.then.i170.i.dac33_write.exit173.i_crit_edge, %dac33_write.exit154.i.dac33_write.exit173.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i160.i) #8
  %159 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i175.i = getelementptr inbounds %struct.device, ptr %160, i32 0, i32 8
  %161 = ptrtoint ptr %driver_data.i.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %driver_data.i.i.i175.i, align 4
  %reg_cache.i176.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %162, i32 0, i32 15
  %163 = ptrtoint ptr %reg_cache.i176.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %reg_cache.i176.i, align 4
  %arrayidx.i177.i = getelementptr i8, ptr %164, i32 64
  %165 = ptrtoint ptr %arrayidx.i177.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %arrayidx.i177.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i179.i) #8
  %167 = getelementptr inbounds [2 x i8], ptr %data.i179.i, i32 0, i32 1
  %168 = ptrtoint ptr %data.i179.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 64, ptr %data.i179.i, align 1
  %169 = ptrtoint ptr %167 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %166, ptr %167, align 1
  %170 = ptrtoint ptr %arrayidx.i177.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %166, ptr %arrayidx.i177.i, align 1
  %chip_power.i184.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %162, i32 0, i32 6
  %171 = ptrtoint ptr %chip_power.i184.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %chip_power.i184.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i185.i = icmp eq i32 %172, 0
  br i1 %tobool.not.i185.i, label %dac33_write.exit173.i.dac33_write.exit192.i_crit_edge, label %if.then.i189.i

dac33_write.exit173.i.dac33_write.exit192.i_crit_edge: ; preds = %dac33_write.exit173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit192.i

if.then.i189.i:                                   ; preds = %dac33_write.exit173.i
  %i2c.i186.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %162, i32 0, i32 25
  %173 = ptrtoint ptr %i2c.i186.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i2c.i186.i, align 8
  %call.i.i187.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %174, ptr noundef nonnull %data.i179.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i187.i)
  %cmp.not.i188.i = icmp eq i32 %call.i.i187.i, 2
  br i1 %cmp.not.i188.i, label %if.then.i189.i.dac33_write.exit192.i_crit_edge, label %do.end.i190.i

if.then.i189.i.dac33_write.exit192.i_crit_edge:   ; preds = %if.then.i189.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit192.i

do.end.i190.i:                                    ; preds = %if.then.i189.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %176, ptr noundef nonnull @.str.63, i32 noundef %call.i.i187.i) #11
  br label %dac33_write.exit192.i

dac33_write.exit192.i:                            ; preds = %do.end.i190.i, %if.then.i189.i.dac33_write.exit192.i_crit_edge, %dac33_write.exit173.i.dac33_write.exit192.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i179.i) #8
  %177 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i194.i = getelementptr inbounds %struct.device, ptr %178, i32 0, i32 8
  %179 = ptrtoint ptr %driver_data.i.i.i194.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %driver_data.i.i.i194.i, align 4
  %reg_cache.i195.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %180, i32 0, i32 15
  %181 = ptrtoint ptr %reg_cache.i195.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %reg_cache.i195.i, align 4
  %arrayidx.i196.i = getelementptr i8, ptr %182, i32 65
  %183 = ptrtoint ptr %arrayidx.i196.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx.i196.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i198.i) #8
  %185 = getelementptr inbounds [2 x i8], ptr %data.i198.i, i32 0, i32 1
  %186 = ptrtoint ptr %data.i198.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 65, ptr %data.i198.i, align 1
  %187 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %184, ptr %185, align 1
  %188 = ptrtoint ptr %arrayidx.i196.i to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 %184, ptr %arrayidx.i196.i, align 1
  %chip_power.i203.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %180, i32 0, i32 6
  %189 = ptrtoint ptr %chip_power.i203.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %chip_power.i203.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i204.i = icmp eq i32 %190, 0
  br i1 %tobool.not.i204.i, label %dac33_write.exit192.i.dac33_write.exit211.i_crit_edge, label %if.then.i208.i

dac33_write.exit192.i.dac33_write.exit211.i_crit_edge: ; preds = %dac33_write.exit192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit211.i

if.then.i208.i:                                   ; preds = %dac33_write.exit192.i
  %i2c.i205.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %180, i32 0, i32 25
  %191 = ptrtoint ptr %i2c.i205.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %i2c.i205.i, align 8
  %call.i.i206.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %192, ptr noundef nonnull %data.i198.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i206.i)
  %cmp.not.i207.i = icmp eq i32 %call.i.i206.i, 2
  br i1 %cmp.not.i207.i, label %if.then.i208.i.dac33_write.exit211.i_crit_edge, label %do.end.i209.i

if.then.i208.i.dac33_write.exit211.i_crit_edge:   ; preds = %if.then.i208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit211.i

do.end.i209.i:                                    ; preds = %if.then.i208.i
  call void @__sanitizer_cov_trace_pc() #10
  %193 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.63, i32 noundef %call.i.i206.i) #11
  br label %dac33_write.exit211.i

dac33_write.exit211.i:                            ; preds = %do.end.i209.i, %if.then.i208.i.dac33_write.exit211.i_crit_edge, %dac33_write.exit192.i.dac33_write.exit211.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i198.i) #8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %dapm.i.i21 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %195 = ptrtoint ptr %dapm.i.i21 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %dapm.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %cmp7 = icmp eq i32 %196, 0
  br i1 %cmp7, label %sw.bb5.cleanup_crit_edge, label %if.end9

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %sw.bb5
  %call10 = tail call fastcc i32 @dac33_hard_power(ptr noundef %component, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 0
  br i1 %cmp11.not, label %if.end9.sw.epilog_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end9.sw.epilog_crit_edge, %dac33_write.exit211.i, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end9.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call1, %if.then.cleanup_crit_edge ], [ 0, %sw.bb5.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_playback_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  %data.i25.i = alloca [2 x i8], align 1
  %data.i.i26 = alloca [2 x i8], align 1
  %data.i374.i = alloca [3 x i8], align 1
  %data.i350.i = alloca [3 x i8], align 1
  %data.i326.i = alloca [3 x i8], align 1
  %data.i312.i = alloca [2 x i8], align 1
  %data.i298.i = alloca [2 x i8], align 1
  %data.i284.i = alloca [2 x i8], align 1
  %data.i269.i = alloca [2 x i8], align 1
  %data.i255.i = alloca [2 x i8], align 1
  %data.i241.i = alloca [2 x i8], align 1
  %data.i222.i = alloca [2 x i8], align 1
  %data.i208.i = alloca [2 x i8], align 1
  %data.i194.i = alloca [2 x i8], align 1
  %data.i180.i = alloca [2 x i8], align 1
  %data.i166.i = alloca [2 x i8], align 1
  %data.i142.i = alloca [3 x i8], align 1
  %data.i128.i = alloca [2 x i8], align 1
  %data.i114.i = alloca [2 x i8], align 1
  %data.i89.i = alloca [2 x i8], align 1
  %data.i70.i = alloca [2 x i8], align 1
  %data.i56.i = alloca [2 x i8], align 1
  %data.i42.i = alloca [2 x i8], align 1
  %data.i30.i = alloca [3 x i8], align 1
  %data.i.i = alloca [2 x i8], align 1
  %data.i.i6.i = alloca [2 x i8], align 1
  %data.i.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %substream = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %substream, align 8
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then, !prof !273

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %runtime.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime.i, align 4
  %period_size1.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %period_size1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %period_size1.i, align 4
  %rate3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 14
  %13 = ptrtoint ptr %rate3.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rate3.i, align 4
  %fifo_mode.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %fifo_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fifo_mode.i, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %16, label %if.then.dac33_calculate_times.exit_crit_edge [
    i32 2, label %sw.bb27.i
    i32 1, label %sw.bb.i
  ]

if.then.dac33_calculate_times.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_calculate_times.exit

sw.bb.i:                                          ; preds = %if.then
  %mode1_latency.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 13
  %18 = ptrtoint ptr %mode1_latency.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode1_latency.i, align 4
  %20 = tail call i32 @llvm.smin.i32(i32 %19, i32 1000000) #8
  %div.i = sdiv i32 1000000, %20
  %div6.i = udiv i32 %14, %div.i
  %alarm_threshold.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 9
  %21 = ptrtoint ptr %alarm_threshold.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div6.i, ptr %alarm_threshold.i, align 4
  %fifo_size.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 11
  %22 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fifo_size.i, align 4
  %sub.i = sub i32 %23, %div6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div6.i)
  %cmp9.not.i = icmp ugt i32 %12, %div6.i
  br i1 %cmp9.not.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %div6.i.frozen = freeze i32 %div6.i
  %.frozen = freeze i32 %12
  %div12.i = udiv i32 %div6.i.frozen, %.frozen
  %24 = mul i32 %div12.i, %.frozen
  %rem.i.decomposed = sub i32 %div6.i.frozen, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool14.not.i = icmp ne i32 %rem.i.decomposed, 0
  %cond15.i = zext i1 %tobool14.not.i to i32
  %add.i = add i32 %div12.i, %cond15.i
  %mul.i = mul i32 %add.i, %12
  %nsample.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 12
  %25 = ptrtoint ptr %nsample.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i, ptr %nsample.i, align 8
  br label %if.end22.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %sub.i)
  %cmp16.i = icmp ugt i32 %12, %sub.i
  %nsample18.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 12
  br i1 %cmp16.i, label %if.then17.i, label %if.else19.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %nsample18.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i, ptr %nsample18.i, align 8
  br label %if.end22.i

if.else19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %nsample18.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %12, ptr %nsample18.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else19.i, %if.then17.i, %if.then10.i
  %burst_rate.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 16
  %28 = ptrtoint ptr %burst_rate.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %burst_rate.i, align 8
  %mul23.i = mul i32 %29, 1000
  %nsample24.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 12
  %30 = ptrtoint ptr %nsample24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nsample24.i, align 8
  %div25.i = udiv i32 %mul23.i, %31
  %div26.i = udiv i32 1000000000, %div25.i
  %mode1_us_burst.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 21
  %32 = ptrtoint ptr %mode1_us_burst.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div26.i, ptr %mode1_us_burst.i, align 8
  %t_stamp1.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 19
  %33 = call ptr @memset(ptr %t_stamp1.i, i32 0, i32 16)
  br label %dac33_calculate_times.exit

sw.bb27.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mul28.i = mul i32 %12, 5000
  %burst_rate29.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 16
  %34 = ptrtoint ptr %burst_rate29.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %burst_rate29.i, align 8
  %mul30.i = mul i32 %35, 5000
  %sub32.i = sub i32 %35, %14
  %div33.i = udiv i32 %mul30.i, %sub32.i
  %div34.i = udiv i32 %mul28.i, %div33.i
  %add35.i = add i32 %div34.i, 9
  %uthr.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 23
  %fifo_size37.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 11
  %36 = ptrtoint ptr %fifo_size37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fifo_size37.i, align 4
  %sub38.i = add i32 %37, -10
  %38 = tail call i32 @llvm.umin.i32(i32 %add35.i, i32 %sub38.i) #8
  %39 = tail call i32 @llvm.umax.i32(i32 %38, i32 20) #8
  %40 = ptrtoint ptr %uthr.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %uthr.i, align 8
  %41 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %runtime.i, align 4
  %rate51.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 14
  %43 = ptrtoint ptr %rate51.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rate51.i, align 4
  %mul52.i = mul i32 %44, 1000
  %add55.i = add i32 %39, -9
  %div56.i = udiv i32 %mul52.i, %add55.i
  %div57.i = udiv i32 1000000000, %div56.i
  %mode7_us_to_lthr.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 22
  %45 = ptrtoint ptr %mode7_us_to_lthr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div57.i, ptr %mode7_us_to_lthr.i, align 4
  %t_stamp158.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 19
  %46 = ptrtoint ptr %t_stamp158.i to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 0, ptr %t_stamp158.i, align 8
  br label %dac33_calculate_times.exit

dac33_calculate_times.exit:                       ; preds = %sw.bb27.i, %if.end22.i, %if.then.dac33_calculate_times.exit_crit_edge
  %47 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %substream, align 8
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i14 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %driver_data.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %driver_data.i.i.i14, align 4
  %runtime.i15 = getelementptr inbounds %struct.snd_pcm_substream, ptr %48, i32 0, i32 11
  %53 = ptrtoint ptr %runtime.i15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %runtime.i15, align 4
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %54, i32 0, i32 14
  %55 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rate.i, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %56, label %do.end.i [
    i32 44100, label %dac33_calculate_times.exit.sw.bb.i20_crit_edge
    i32 48000, label %dac33_calculate_times.exit.sw.bb.i20_crit_edge37
  ]

dac33_calculate_times.exit.sw.bb.i20_crit_edge37: ; preds = %dac33_calculate_times.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i20

dac33_calculate_times.exit.sw.bb.i20_crit_edge:   ; preds = %dac33_calculate_times.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i20

sw.bb.i20:                                        ; preds = %dac33_calculate_times.exit.sw.bb.i20_crit_edge, %dac33_calculate_times.exit.sw.bb.i20_crit_edge37
  %mul.i16 = mul nuw nsw i32 %56, 10000
  %refclk.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %52, i32 0, i32 8
  %58 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %refclk.i, align 8
  %div.i17 = udiv i32 %mul.i16, %59
  %mul3.i = shl i32 %div.i17, 12
  %add.i18 = add i32 %mul3.i, 7000
  %div4.i = udiv i32 %add.i18, 10000
  %mul6.i = mul i32 %59, 100000
  %div9.i = udiv i32 %mul6.i, %56
  %mul10.i = shl nuw nsw i32 %div9.i, 14
  %add11.i = add nuw nsw i32 %mul10.i, 50000
  %div12.i19 = udiv i32 %add11.i, 100000
  %reg_cache.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %52, i32 0, i32 15
  %60 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_cache.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %61, i32 18
  %62 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i.i, align 1
  %conv17.i = and i8 %63, 15
  %arrayidx.i4.i = getelementptr i8, ptr %61, i32 21
  %64 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i4.i, align 1
  %conv25.i = and i8 %65, -10
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %54, i32 0, i32 12
  %66 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %format.i, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %67, label %do.end40.i [
    i32 2, label %sw.bb27.i21
    i32 10, label %sw.bb33.i
  ]

do.end.i:                                         ; preds = %dac33_calculate_times.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.58, i32 noundef %56) #11
  br label %sw.epilog

sw.bb27.i21:                                      ; preds = %sw.bb.i20
  call void @__sanitizer_cov_trace_pc() #10
  %69 = or i8 %conv25.i, 1
  br label %sw.epilog44.i

sw.bb33.i:                                        ; preds = %sw.bb.i20
  call void @__sanitizer_cov_trace_pc() #10
  %70 = or i8 %conv17.i, -32
  br label %sw.epilog44.i

do.end40.i:                                       ; preds = %sw.bb.i20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.61, i32 noundef %67) #11
  br label %sw.epilog

sw.epilog44.i:                                    ; preds = %sw.bb33.i, %sw.bb27.i21
  %aictrl_a.0.i = phi i8 [ %70, %sw.bb33.i ], [ %conv17.i, %sw.bb27.i21 ]
  %fifoctrl_a.0.i = phi i8 [ %conv25.i, %sw.bb33.i ], [ %69, %sw.bb27.i21 ]
  tail call void @mutex_lock_nested(ptr noundef %52, i32 noundef 0) #8
  %chip_power.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %52, i32 0, i32 6
  %71 = ptrtoint ptr %chip_power.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %chip_power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.epilog44.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %52) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.epilog44.i
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %74, i32 0, i32 8
  %75 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %reg_cache.i.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %76, i32 0, i32 15
  %77 = ptrtoint ptr %reg_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_cache.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %78, i32 1
  %79 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv4.i.i = and i8 %80, -24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i.i) #8
  %81 = getelementptr inbounds [2 x i8], ptr %data.i.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %data.i.i.i, align 1
  %83 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv4.i.i, ptr %81, align 1
  %84 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv4.i.i, ptr %arrayidx.i.i.i, align 1
  %chip_power.i.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %76, i32 0, i32 6
  %85 = ptrtoint ptr %chip_power.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %chip_power.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i.i.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.dac33_soft_power.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.dac33_soft_power.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_soft_power.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i
  %i2c.i.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %76, i32 0, i32 25
  %87 = ptrtoint ptr %i2c.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %i2c.i.i.i, align 8
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %88, ptr noundef nonnull %data.i.i.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 2
  br i1 %cmp.not.i.i.i, label %if.then.i.i.i.dac33_soft_power.exit.i_crit_edge, label %do.end.i.i.i

if.then.i.i.i.dac33_soft_power.exit.i_crit_edge:  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_soft_power.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i.i) #11
  br label %dac33_soft_power.exit.i

dac33_soft_power.exit.i:                          ; preds = %do.end.i.i.i, %if.then.i.i.i.dac33_soft_power.exit.i_crit_edge, %if.end.i.dac33_soft_power.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i.i) #8
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i8.i = getelementptr inbounds %struct.device, ptr %92, i32 0, i32 8
  %93 = ptrtoint ptr %driver_data.i.i.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %driver_data.i.i.i.i8.i, align 4
  %reg_cache.i.i9.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %94, i32 0, i32 15
  %95 = ptrtoint ptr %reg_cache.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_cache.i.i9.i, align 4
  %arrayidx.i.i10.i = getelementptr i8, ptr %96, i32 1
  %97 = ptrtoint ptr %arrayidx.i.i10.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i.i10.i, align 1
  %or.i11.i = or i8 %98, 16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i6.i) #8
  %99 = getelementptr inbounds [2 x i8], ptr %data.i.i6.i, i32 0, i32 1
  %100 = ptrtoint ptr %data.i.i6.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %data.i.i6.i, align 1
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %or.i11.i, ptr %99, align 1
  %102 = ptrtoint ptr %arrayidx.i.i10.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %or.i11.i, ptr %arrayidx.i.i10.i, align 1
  %chip_power.i.i13.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %94, i32 0, i32 6
  %103 = ptrtoint ptr %chip_power.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %chip_power.i.i13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i.i14.i = icmp eq i32 %104, 0
  br i1 %tobool.not.i.i14.i, label %dac33_soft_power.exit.i.dac33_soft_power.exit20.i_crit_edge, label %if.then.i.i18.i

dac33_soft_power.exit.i.dac33_soft_power.exit20.i_crit_edge: ; preds = %dac33_soft_power.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_soft_power.exit20.i

if.then.i.i18.i:                                  ; preds = %dac33_soft_power.exit.i
  %i2c.i.i15.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %94, i32 0, i32 25
  %105 = ptrtoint ptr %i2c.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i2c.i.i15.i, align 8
  %call.i.i.i16.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %106, ptr noundef nonnull %data.i.i6.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i16.i)
  %cmp.not.i.i17.i = icmp eq i32 %call.i.i.i16.i, 2
  br i1 %cmp.not.i.i17.i, label %if.then.i.i18.i.dac33_soft_power.exit20.i_crit_edge, label %do.end.i.i19.i

if.then.i.i18.i.dac33_soft_power.exit20.i_crit_edge: ; preds = %if.then.i.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_soft_power.exit20.i

do.end.i.i19.i:                                   ; preds = %if.then.i.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i16.i) #11
  br label %dac33_soft_power.exit20.i

dac33_soft_power.exit20.i:                        ; preds = %do.end.i.i19.i, %if.then.i.i18.i.dac33_soft_power.exit20.i_crit_edge, %dac33_soft_power.exit.i.dac33_soft_power.exit20.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i6.i) #8
  %109 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i22.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 8
  %111 = ptrtoint ptr %driver_data.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %driver_data.i.i.i22.i, align 4
  %reg_cache.i23.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %112, i32 0, i32 15
  %113 = ptrtoint ptr %reg_cache.i23.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg_cache.i23.i, align 4
  %arrayidx.i24.i = getelementptr i8, ptr %114, i32 7
  %115 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i24.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #8
  %117 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 7, ptr %data.i.i, align 1
  %119 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %116, ptr %117, align 1
  %120 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %116, ptr %arrayidx.i24.i, align 1
  %chip_power.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %112, i32 0, i32 6
  %121 = ptrtoint ptr %chip_power.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %chip_power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i.i = icmp eq i32 %122, 0
  br i1 %tobool.not.i.i, label %dac33_soft_power.exit20.i.dac33_write.exit.i_crit_edge, label %if.then.i.i

dac33_soft_power.exit20.i.dac33_write.exit.i_crit_edge: ; preds = %dac33_soft_power.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit.i

if.then.i.i:                                      ; preds = %dac33_soft_power.exit20.i
  %i2c.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %112, i32 0, i32 25
  %123 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %i2c.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %124, ptr noundef nonnull %data.i.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.then.i.i.dac33_write.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.dac33_write.exit.i_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i) #11
  br label %dac33_write.exit.i

dac33_write.exit.i:                               ; preds = %do.end.i.i, %if.then.i.i.dac33_write.exit.i_crit_edge, %dac33_soft_power.exit20.i.dac33_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #8
  %127 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i32.i = getelementptr inbounds %struct.device, ptr %128, i32 0, i32 8
  %129 = ptrtoint ptr %driver_data.i.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %driver_data.i.i.i32.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i30.i) #8
  %131 = getelementptr inbounds [3 x i8], ptr %data.i30.i, i32 0, i32 1
  %132 = getelementptr inbounds [3 x i8], ptr %data.i30.i, i32 0, i32 2
  %133 = ptrtoint ptr %data.i30.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 8, ptr %data.i30.i, align 1
  %shr.i.i = lshr i32 %div4.i, 8
  %conv2.i.i = trunc i32 %shr.i.i to i8
  %134 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %conv2.i.i, ptr %131, align 1
  %conv5.i.i = trunc i32 %div4.i to i8
  %135 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv5.i.i, ptr %132, align 1
  %reg_cache.i.i33.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %130, i32 0, i32 15
  %136 = ptrtoint ptr %reg_cache.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %reg_cache.i.i33.i, align 4
  %arrayidx.i.i34.i = getelementptr i8, ptr %137, i32 8
  %138 = ptrtoint ptr %arrayidx.i.i34.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv2.i.i, ptr %arrayidx.i.i34.i, align 1
  %139 = load i8, ptr %data.i30.i, align 1
  %add.i.i = add i8 %139, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i.i)
  %cmp.i1.i.i = icmp slt i8 %add.i.i, 0
  br i1 %cmp.i1.i.i, label %dac33_write.exit.i.dac33_write_reg_cache.exit8.i.i_crit_edge, label %if.end.i7.i.i

dac33_write.exit.i.dac33_write_reg_cache.exit8.i.i_crit_edge: ; preds = %dac33_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit8.i.i

if.end.i7.i.i:                                    ; preds = %dac33_write.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %132, align 1
  %142 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i3.i.i = getelementptr inbounds %struct.device, ptr %143, i32 0, i32 8
  %144 = ptrtoint ptr %driver_data.i.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %driver_data.i.i.i3.i.i, align 4
  %conv.i4.i.i = zext i8 %add.i.i to i32
  %reg_cache.i5.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %145, i32 0, i32 15
  %146 = ptrtoint ptr %reg_cache.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_cache.i5.i.i, align 4
  %arrayidx.i6.i.i = getelementptr i8, ptr %147, i32 %conv.i4.i.i
  %148 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %141, ptr %arrayidx.i6.i.i, align 1
  br label %dac33_write_reg_cache.exit8.i.i

dac33_write_reg_cache.exit8.i.i:                  ; preds = %if.end.i7.i.i, %dac33_write.exit.i.dac33_write_reg_cache.exit8.i.i_crit_edge
  %chip_power.i35.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %130, i32 0, i32 6
  %149 = ptrtoint ptr %chip_power.i35.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %chip_power.i35.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i36.i = icmp eq i32 %150, 0
  br i1 %tobool.not.i36.i, label %dac33_write_reg_cache.exit8.i.i.dac33_write16.exit.i_crit_edge, label %if.then.i40.i

dac33_write_reg_cache.exit8.i.i.dac33_write16.exit.i_crit_edge: ; preds = %dac33_write_reg_cache.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit.i

if.then.i40.i:                                    ; preds = %dac33_write_reg_cache.exit8.i.i
  %151 = ptrtoint ptr %data.i30.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %data.i30.i, align 1
  %153 = or i8 %152, -128
  store i8 %153, ptr %data.i30.i, align 1
  %i2c.i37.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %130, i32 0, i32 25
  %154 = ptrtoint ptr %i2c.i37.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %i2c.i37.i, align 8
  %call.i.i38.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %155, ptr noundef nonnull %data.i30.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i38.i)
  %cmp.not.i39.i = icmp eq i32 %call.i.i38.i, 3
  br i1 %cmp.not.i39.i, label %if.then.i40.i.dac33_write16.exit.i_crit_edge, label %do.end.i41.i

if.then.i40.i.dac33_write16.exit.i_crit_edge:     ; preds = %if.then.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit.i

do.end.i41.i:                                     ; preds = %if.then.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  %156 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.63, i32 noundef %call.i.i38.i) #11
  br label %dac33_write16.exit.i

dac33_write16.exit.i:                             ; preds = %do.end.i41.i, %if.then.i40.i.dac33_write16.exit.i_crit_edge, %dac33_write_reg_cache.exit8.i.i.dac33_write16.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i30.i) #8
  %158 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i44.i = getelementptr inbounds %struct.device, ptr %159, i32 0, i32 8
  %160 = ptrtoint ptr %driver_data.i.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %driver_data.i.i.i44.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i42.i) #8
  %162 = getelementptr inbounds [2 x i8], ptr %data.i42.i, i32 0, i32 1
  %163 = ptrtoint ptr %data.i42.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 11, ptr %data.i42.i, align 1
  %164 = ptrtoint ptr %162 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 96, ptr %162, align 1
  %reg_cache.i.i45.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %161, i32 0, i32 15
  %165 = ptrtoint ptr %reg_cache.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %reg_cache.i.i45.i, align 4
  %arrayidx.i.i46.i = getelementptr i8, ptr %166, i32 11
  %167 = ptrtoint ptr %arrayidx.i.i46.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 96, ptr %arrayidx.i.i46.i, align 1
  %chip_power.i47.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %161, i32 0, i32 6
  %168 = ptrtoint ptr %chip_power.i47.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %chip_power.i47.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool.not.i48.i = icmp eq i32 %169, 0
  br i1 %tobool.not.i48.i, label %dac33_write16.exit.i.dac33_write.exit55.i_crit_edge, label %if.then.i52.i

dac33_write16.exit.i.dac33_write.exit55.i_crit_edge: ; preds = %dac33_write16.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit55.i

if.then.i52.i:                                    ; preds = %dac33_write16.exit.i
  %i2c.i49.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %161, i32 0, i32 25
  %170 = ptrtoint ptr %i2c.i49.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %i2c.i49.i, align 8
  %call.i.i50.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %171, ptr noundef nonnull %data.i42.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i50.i)
  %cmp.not.i51.i = icmp eq i32 %call.i.i50.i, 2
  br i1 %cmp.not.i51.i, label %if.then.i52.i.dac33_write.exit55.i_crit_edge, label %do.end.i53.i

if.then.i52.i.dac33_write.exit55.i_crit_edge:     ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit55.i

do.end.i53.i:                                     ; preds = %if.then.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  %172 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.63, i32 noundef %call.i.i50.i) #11
  br label %dac33_write.exit55.i

dac33_write.exit55.i:                             ; preds = %do.end.i53.i, %if.then.i52.i.dac33_write.exit55.i_crit_edge, %dac33_write16.exit.i.dac33_write.exit55.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i42.i) #8
  %174 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i58.i = getelementptr inbounds %struct.device, ptr %175, i32 0, i32 8
  %176 = ptrtoint ptr %driver_data.i.i.i58.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %driver_data.i.i.i58.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i56.i) #8
  %178 = getelementptr inbounds [2 x i8], ptr %data.i56.i, i32 0, i32 1
  %179 = ptrtoint ptr %data.i56.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 12, ptr %data.i56.i, align 1
  %180 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 33, ptr %178, align 1
  %reg_cache.i.i59.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %177, i32 0, i32 15
  %181 = ptrtoint ptr %reg_cache.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %reg_cache.i.i59.i, align 4
  %arrayidx.i.i60.i = getelementptr i8, ptr %182, i32 12
  %183 = ptrtoint ptr %arrayidx.i.i60.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 33, ptr %arrayidx.i.i60.i, align 1
  %chip_power.i61.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %177, i32 0, i32 6
  %184 = ptrtoint ptr %chip_power.i61.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %chip_power.i61.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool.not.i62.i = icmp eq i32 %185, 0
  br i1 %tobool.not.i62.i, label %dac33_write.exit55.i.dac33_write.exit69.i_crit_edge, label %if.then.i66.i

dac33_write.exit55.i.dac33_write.exit69.i_crit_edge: ; preds = %dac33_write.exit55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit69.i

if.then.i66.i:                                    ; preds = %dac33_write.exit55.i
  %i2c.i63.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %177, i32 0, i32 25
  %186 = ptrtoint ptr %i2c.i63.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %i2c.i63.i, align 8
  %call.i.i64.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %187, ptr noundef nonnull %data.i56.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i64.i)
  %cmp.not.i65.i = icmp eq i32 %call.i.i64.i, 2
  br i1 %cmp.not.i65.i, label %if.then.i66.i.dac33_write.exit69.i_crit_edge, label %do.end.i67.i

if.then.i66.i.dac33_write.exit69.i_crit_edge:     ; preds = %if.then.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit69.i

do.end.i67.i:                                     ; preds = %if.then.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  %188 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.63, i32 noundef %call.i.i64.i) #11
  br label %dac33_write.exit69.i

dac33_write.exit69.i:                             ; preds = %do.end.i67.i, %if.then.i66.i.dac33_write.exit69.i_crit_edge, %dac33_write.exit55.i.dac33_write.exit69.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i56.i) #8
  %190 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i72.i = getelementptr inbounds %struct.device, ptr %191, i32 0, i32 8
  %192 = ptrtoint ptr %driver_data.i.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %driver_data.i.i.i72.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i70.i) #8
  %194 = getelementptr inbounds [2 x i8], ptr %data.i70.i, i32 0, i32 1
  %195 = ptrtoint ptr %data.i70.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 13, ptr %data.i70.i, align 1
  %196 = ptrtoint ptr %194 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 64, ptr %194, align 1
  %reg_cache.i.i73.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %193, i32 0, i32 15
  %197 = ptrtoint ptr %reg_cache.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %reg_cache.i.i73.i, align 4
  %arrayidx.i.i74.i = getelementptr i8, ptr %198, i32 13
  %199 = ptrtoint ptr %arrayidx.i.i74.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 64, ptr %arrayidx.i.i74.i, align 1
  %chip_power.i75.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %193, i32 0, i32 6
  %200 = ptrtoint ptr %chip_power.i75.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %chip_power.i75.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i76.i = icmp eq i32 %201, 0
  br i1 %tobool.not.i76.i, label %dac33_write.exit69.i.dac33_write.exit83.i_crit_edge, label %if.then.i80.i

dac33_write.exit69.i.dac33_write.exit83.i_crit_edge: ; preds = %dac33_write.exit69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit83.i

if.then.i80.i:                                    ; preds = %dac33_write.exit69.i
  %i2c.i77.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %193, i32 0, i32 25
  %202 = ptrtoint ptr %i2c.i77.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %i2c.i77.i, align 8
  %call.i.i78.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %203, ptr noundef nonnull %data.i70.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i78.i)
  %cmp.not.i79.i = icmp eq i32 %call.i.i78.i, 2
  br i1 %cmp.not.i79.i, label %if.then.i80.i.dac33_write.exit83.i_crit_edge, label %do.end.i81.i

if.then.i80.i.dac33_write.exit83.i_crit_edge:     ; preds = %if.then.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit83.i

do.end.i81.i:                                     ; preds = %if.then.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull @.str.63, i32 noundef %call.i.i78.i) #11
  br label %dac33_write.exit83.i

dac33_write.exit83.i:                             ; preds = %do.end.i81.i, %if.then.i80.i.dac33_write.exit83.i_crit_edge, %dac33_write.exit69.i.dac33_write.exit83.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i70.i) #8
  %206 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i85.i = getelementptr inbounds %struct.device, ptr %207, i32 0, i32 8
  %208 = ptrtoint ptr %driver_data.i.i.i85.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %driver_data.i.i.i85.i, align 4
  %reg_cache.i86.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %209, i32 0, i32 15
  %210 = ptrtoint ptr %reg_cache.i86.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %reg_cache.i86.i, align 4
  %arrayidx.i87.i = getelementptr i8, ptr %211, i32 1
  %212 = ptrtoint ptr %arrayidx.i87.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %arrayidx.i87.i, align 1
  %214 = or i8 %213, 7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i89.i) #8
  %215 = getelementptr inbounds [2 x i8], ptr %data.i89.i, i32 0, i32 1
  %216 = ptrtoint ptr %data.i89.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 1, ptr %data.i89.i, align 1
  %217 = ptrtoint ptr %215 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %214, ptr %215, align 1
  %218 = ptrtoint ptr %arrayidx.i87.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %214, ptr %arrayidx.i87.i, align 1
  %chip_power.i95.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %209, i32 0, i32 6
  %219 = ptrtoint ptr %chip_power.i95.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %chip_power.i95.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %220)
  %tobool.not.i96.i = icmp eq i32 %220, 0
  br i1 %tobool.not.i96.i, label %dac33_write.exit83.i.dac33_write.exit103.i_crit_edge, label %if.then.i100.i

dac33_write.exit83.i.dac33_write.exit103.i_crit_edge: ; preds = %dac33_write.exit83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit103.i

if.then.i100.i:                                   ; preds = %dac33_write.exit83.i
  %i2c.i97.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %209, i32 0, i32 25
  %221 = ptrtoint ptr %i2c.i97.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %i2c.i97.i, align 8
  %call.i.i98.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %222, ptr noundef nonnull %data.i89.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i98.i)
  %cmp.not.i99.i = icmp eq i32 %call.i.i98.i, 2
  br i1 %cmp.not.i99.i, label %if.then.i100.i.dac33_write.exit103.i_crit_edge, label %do.end.i101.i

if.then.i100.i.dac33_write.exit103.i_crit_edge:   ; preds = %if.then.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit103.i

do.end.i101.i:                                    ; preds = %if.then.i100.i
  call void @__sanitizer_cov_trace_pc() #10
  %223 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %224, ptr noundef nonnull @.str.63, i32 noundef %call.i.i98.i) #11
  br label %dac33_write.exit103.i

dac33_write.exit103.i:                            ; preds = %do.end.i101.i, %if.then.i100.i.dac33_write.exit103.i_crit_edge, %dac33_write.exit83.i.dac33_write.exit103.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i89.i) #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %dac33_read.exit.i.i.do.body.i.i_crit_edge, %dac33_write.exit103.i
  %timeout.0.i.i = phi i32 [ 60, %dac33_write.exit103.i ], [ %dec.i.i, %dac33_read.exit.i.i.do.body.i.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %225 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i105.i = getelementptr inbounds %struct.device, ptr %226, i32 0, i32 8
  %227 = ptrtoint ptr %driver_data.i.i.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %driver_data.i.i.i.i105.i, align 4
  %chip_power.i.i106.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %228, i32 0, i32 6
  %229 = ptrtoint ptr %chip_power.i.i106.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %chip_power.i.i106.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool.not.i.i107.i = icmp eq i32 %230, 0
  br i1 %tobool.not.i.i107.i, label %if.else11.i.i.i, label %if.then.i.i109.i

if.then.i.i109.i:                                 ; preds = %do.body.i.i
  %i2c.i.i108.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %228, i32 0, i32 25
  %231 = ptrtoint ptr %i2c.i.i108.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %i2c.i.i108.i, align 8
  %call1.i.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %232, i8 noundef zeroext 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i110.i, label %if.else.i.i.i

do.end.i.i110.i:                                  ; preds = %if.then.i.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  %233 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %234, ptr noundef nonnull @.str.68, i32 noundef %call1.i.i.i) #11
  %235 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i.i.i = getelementptr inbounds %struct.device, ptr %236, i32 0, i32 8
  %237 = ptrtoint ptr %driver_data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %driver_data.i.i.i.i.i.i, align 4
  %reg_cache.i.i.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %238, i32 0, i32 15
  %239 = ptrtoint ptr %reg_cache.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %reg_cache.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i8, ptr %240, i32 14
  %241 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %arrayidx.i.i.i.i, align 1
  br label %dac33_read.exit.i.i

if.else.i.i.i:                                    ; preds = %if.then.i.i109.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i.i.i = trunc i32 %call1.i.i.i to i8
  %243 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i34.i.i.i = getelementptr inbounds %struct.device, ptr %244, i32 0, i32 8
  %245 = ptrtoint ptr %driver_data.i.i.i34.i.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %driver_data.i.i.i34.i.i.i, align 4
  %reg_cache.i36.i.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %246, i32 0, i32 15
  %247 = ptrtoint ptr %reg_cache.i36.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %reg_cache.i36.i.i.i, align 4
  %arrayidx.i37.i.i.i = getelementptr i8, ptr %248, i32 14
  %249 = ptrtoint ptr %arrayidx.i37.i.i.i to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 %conv7.i.i.i, ptr %arrayidx.i37.i.i.i, align 1
  br label %dac33_read.exit.i.i

if.else11.i.i.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg_cache.i42.i.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %228, i32 0, i32 15
  %250 = ptrtoint ptr %reg_cache.i42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %reg_cache.i42.i.i.i, align 4
  %arrayidx.i43.i.i.i = getelementptr i8, ptr %251, i32 14
  %252 = ptrtoint ptr %arrayidx.i43.i.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %arrayidx.i43.i.i.i, align 1
  br label %dac33_read.exit.i.i

dac33_read.exit.i.i:                              ; preds = %if.else11.i.i.i, %if.else.i.i.i, %do.end.i.i110.i
  %reg.0.i.i = phi i8 [ %253, %if.else11.i.i.i ], [ %242, %do.end.i.i110.i ], [ %conv7.i.i.i, %if.else.i.i.i ]
  %254 = and i8 %reg.0.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %254)
  %cmp.not.i111.i = icmp eq i8 %254, 1
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0.i.i)
  %tobool.not.i112.i = icmp eq i32 %timeout.0.i.i, 0
  %or.cond.i.i = select i1 %cmp.not.i111.i, i1 true, i1 %tobool.not.i112.i
  br i1 %or.cond.i.i, label %do.end.i113.i, label %dac33_read.exit.i.i.do.body.i.i_crit_edge

dac33_read.exit.i.i.do.body.i.i_crit_edge:        ; preds = %dac33_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end.i113.i:                                    ; preds = %dac33_read.exit.i.i
  br i1 %cmp.not.i111.i, label %do.end.i113.i.dac33_oscwait.exit.i_crit_edge, label %do.end8.i.i

do.end.i113.i.dac33_oscwait.exit.i_crit_edge:     ; preds = %do.end.i113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_oscwait.exit.i

do.end8.i.i:                                      ; preds = %do.end.i113.i
  call void @__sanitizer_cov_trace_pc() #10
  %255 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.66) #11
  br label %dac33_oscwait.exit.i

dac33_oscwait.exit.i:                             ; preds = %do.end8.i.i, %do.end.i113.i.dac33_oscwait.exit.i_crit_edge
  %fifo_mode.i22 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %52, i32 0, i32 10
  %257 = ptrtoint ptr %fifo_mode.i22 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %fifo_mode.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool55.not.i = icmp eq i32 %258, 0
  %259 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i182.i = getelementptr inbounds %struct.device, ptr %260, i32 0, i32 8
  %261 = ptrtoint ptr %driver_data.i.i.i182.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %driver_data.i.i.i182.i, align 4
  br i1 %tobool55.not.i, label %if.else.i23, label %if.then56.i

if.then56.i:                                      ; preds = %dac33_oscwait.exit.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i114.i) #8
  %263 = getelementptr inbounds [2 x i8], ptr %data.i114.i, i32 0, i32 1
  %264 = ptrtoint ptr %data.i114.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 50, ptr %data.i114.i, align 1
  %265 = ptrtoint ptr %263 to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 8, ptr %263, align 1
  %reg_cache.i.i117.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %262, i32 0, i32 15
  %266 = ptrtoint ptr %reg_cache.i.i117.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %reg_cache.i.i117.i, align 4
  %arrayidx.i.i118.i = getelementptr i8, ptr %267, i32 50
  %268 = ptrtoint ptr %arrayidx.i.i118.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 8, ptr %arrayidx.i.i118.i, align 1
  %chip_power.i119.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %262, i32 0, i32 6
  %269 = ptrtoint ptr %chip_power.i119.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %chip_power.i119.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool.not.i120.i = icmp eq i32 %270, 0
  br i1 %tobool.not.i120.i, label %if.then56.i.dac33_write.exit127.i_crit_edge, label %if.then.i124.i

if.then56.i.dac33_write.exit127.i_crit_edge:      ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit127.i

if.then.i124.i:                                   ; preds = %if.then56.i
  %i2c.i121.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %262, i32 0, i32 25
  %271 = ptrtoint ptr %i2c.i121.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %i2c.i121.i, align 8
  %call.i.i122.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %272, ptr noundef nonnull %data.i114.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i122.i)
  %cmp.not.i123.i = icmp eq i32 %call.i.i122.i, 2
  br i1 %cmp.not.i123.i, label %if.then.i124.i.dac33_write.exit127.i_crit_edge, label %do.end.i125.i

if.then.i124.i.dac33_write.exit127.i_crit_edge:   ; preds = %if.then.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit127.i

do.end.i125.i:                                    ; preds = %if.then.i124.i
  call void @__sanitizer_cov_trace_pc() #10
  %273 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.63, i32 noundef %call.i.i122.i) #11
  br label %dac33_write.exit127.i

dac33_write.exit127.i:                            ; preds = %do.end.i125.i, %if.then.i124.i.dac33_write.exit127.i_crit_edge, %if.then56.i.dac33_write.exit127.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i114.i) #8
  %275 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i130.i = getelementptr inbounds %struct.device, ptr %276, i32 0, i32 8
  %277 = ptrtoint ptr %driver_data.i.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %driver_data.i.i.i130.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i128.i) #8
  %279 = getelementptr inbounds [2 x i8], ptr %data.i128.i, i32 0, i32 1
  %280 = ptrtoint ptr %data.i128.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 51, ptr %data.i128.i, align 1
  %281 = ptrtoint ptr %279 to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 1, ptr %279, align 1
  %reg_cache.i.i131.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %278, i32 0, i32 15
  %282 = ptrtoint ptr %reg_cache.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %reg_cache.i.i131.i, align 4
  %arrayidx.i.i132.i = getelementptr i8, ptr %283, i32 51
  %284 = ptrtoint ptr %arrayidx.i.i132.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 1, ptr %arrayidx.i.i132.i, align 1
  %chip_power.i133.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %278, i32 0, i32 6
  %285 = ptrtoint ptr %chip_power.i133.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %chip_power.i133.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %tobool.not.i134.i = icmp eq i32 %286, 0
  br i1 %tobool.not.i134.i, label %dac33_write.exit127.i.dac33_write.exit141.i_crit_edge, label %if.then.i138.i

dac33_write.exit127.i.dac33_write.exit141.i_crit_edge: ; preds = %dac33_write.exit127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit141.i

if.then.i138.i:                                   ; preds = %dac33_write.exit127.i
  %i2c.i135.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %278, i32 0, i32 25
  %287 = ptrtoint ptr %i2c.i135.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %i2c.i135.i, align 8
  %call.i.i136.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %288, ptr noundef nonnull %data.i128.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i136.i)
  %cmp.not.i137.i = icmp eq i32 %call.i.i136.i, 2
  br i1 %cmp.not.i137.i, label %if.then.i138.i.dac33_write.exit141.i_crit_edge, label %do.end.i139.i

if.then.i138.i.dac33_write.exit141.i_crit_edge:   ; preds = %if.then.i138.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit141.i

do.end.i139.i:                                    ; preds = %if.then.i138.i
  call void @__sanitizer_cov_trace_pc() #10
  %289 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %290, ptr noundef nonnull @.str.63, i32 noundef %call.i.i136.i) #11
  br label %dac33_write.exit141.i

dac33_write.exit141.i:                            ; preds = %do.end.i139.i, %if.then.i138.i.dac33_write.exit141.i_crit_edge, %dac33_write.exit127.i.dac33_write.exit141.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i128.i) #8
  %291 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i144.i = getelementptr inbounds %struct.device, ptr %292, i32 0, i32 8
  %293 = ptrtoint ptr %driver_data.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %driver_data.i.i.i144.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i142.i) #8
  %295 = getelementptr inbounds [3 x i8], ptr %data.i142.i, i32 0, i32 1
  %296 = getelementptr inbounds [3 x i8], ptr %data.i142.i, i32 0, i32 2
  %297 = ptrtoint ptr %data.i142.i to i32
  call void @__asan_store1_noabort(i32 %297)
  store i8 52, ptr %data.i142.i, align 1
  %shr.i145.i = lshr i32 %div12.i19, 8
  %conv2.i146.i = trunc i32 %shr.i145.i to i8
  %298 = ptrtoint ptr %295 to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 %conv2.i146.i, ptr %295, align 1
  %conv5.i147.i = trunc i32 %div12.i19 to i8
  %299 = ptrtoint ptr %296 to i32
  call void @__asan_store1_noabort(i32 %299)
  store i8 %conv5.i147.i, ptr %296, align 1
  %reg_cache.i.i148.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %294, i32 0, i32 15
  %300 = ptrtoint ptr %reg_cache.i.i148.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %reg_cache.i.i148.i, align 4
  %arrayidx.i.i149.i = getelementptr i8, ptr %301, i32 52
  %302 = ptrtoint ptr %arrayidx.i.i149.i to i32
  call void @__asan_store1_noabort(i32 %302)
  store i8 %conv2.i146.i, ptr %arrayidx.i.i149.i, align 1
  %303 = load i8, ptr %data.i142.i, align 1
  %add.i150.i = add i8 %303, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i150.i)
  %cmp.i1.i151.i = icmp slt i8 %add.i150.i, 0
  br i1 %cmp.i1.i151.i, label %dac33_write.exit141.i.dac33_write_reg_cache.exit8.i159.i_crit_edge, label %if.end.i7.i156.i

dac33_write.exit141.i.dac33_write_reg_cache.exit8.i159.i_crit_edge: ; preds = %dac33_write.exit141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit8.i159.i

if.end.i7.i156.i:                                 ; preds = %dac33_write.exit141.i
  call void @__sanitizer_cov_trace_pc() #10
  %304 = ptrtoint ptr %296 to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %296, align 1
  %306 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i3.i152.i = getelementptr inbounds %struct.device, ptr %307, i32 0, i32 8
  %308 = ptrtoint ptr %driver_data.i.i.i3.i152.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %driver_data.i.i.i3.i152.i, align 4
  %conv.i4.i153.i = zext i8 %add.i150.i to i32
  %reg_cache.i5.i154.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %309, i32 0, i32 15
  %310 = ptrtoint ptr %reg_cache.i5.i154.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %reg_cache.i5.i154.i, align 4
  %arrayidx.i6.i155.i = getelementptr i8, ptr %311, i32 %conv.i4.i153.i
  %312 = ptrtoint ptr %arrayidx.i6.i155.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 %305, ptr %arrayidx.i6.i155.i, align 1
  br label %dac33_write_reg_cache.exit8.i159.i

dac33_write_reg_cache.exit8.i159.i:               ; preds = %if.end.i7.i156.i, %dac33_write.exit141.i.dac33_write_reg_cache.exit8.i159.i_crit_edge
  %chip_power.i157.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %294, i32 0, i32 6
  %313 = ptrtoint ptr %chip_power.i157.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %chip_power.i157.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i158.i = icmp eq i32 %314, 0
  br i1 %tobool.not.i158.i, label %dac33_write_reg_cache.exit8.i159.i.dac33_write16.exit165.i_crit_edge, label %if.then.i163.i

dac33_write_reg_cache.exit8.i159.i.dac33_write16.exit165.i_crit_edge: ; preds = %dac33_write_reg_cache.exit8.i159.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit165.i

if.then.i163.i:                                   ; preds = %dac33_write_reg_cache.exit8.i159.i
  %315 = ptrtoint ptr %data.i142.i to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %data.i142.i, align 1
  %317 = or i8 %316, -128
  store i8 %317, ptr %data.i142.i, align 1
  %i2c.i160.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %294, i32 0, i32 25
  %318 = ptrtoint ptr %i2c.i160.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %i2c.i160.i, align 8
  %call.i.i161.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %319, ptr noundef nonnull %data.i142.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i161.i)
  %cmp.not.i162.i = icmp eq i32 %call.i.i161.i, 3
  br i1 %cmp.not.i162.i, label %if.then.i163.i.dac33_write16.exit165.i_crit_edge, label %do.end.i164.i

if.then.i163.i.dac33_write16.exit165.i_crit_edge: ; preds = %if.then.i163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit165.i

do.end.i164.i:                                    ; preds = %if.then.i163.i
  call void @__sanitizer_cov_trace_pc() #10
  %320 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %321, ptr noundef nonnull @.str.63, i32 noundef %call.i.i161.i) #11
  br label %dac33_write16.exit165.i

dac33_write16.exit165.i:                          ; preds = %do.end.i164.i, %if.then.i163.i.dac33_write16.exit165.i_crit_edge, %dac33_write_reg_cache.exit8.i159.i.dac33_write16.exit165.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i142.i) #8
  %322 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i168.i = getelementptr inbounds %struct.device, ptr %323, i32 0, i32 8
  %324 = ptrtoint ptr %driver_data.i.i.i168.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %driver_data.i.i.i168.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i166.i) #8
  %326 = getelementptr inbounds [2 x i8], ptr %data.i166.i, i32 0, i32 1
  %327 = ptrtoint ptr %data.i166.i to i32
  call void @__asan_store1_noabort(i32 %327)
  store i8 56, ptr %data.i166.i, align 1
  %328 = ptrtoint ptr %326 to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 4, ptr %326, align 1
  %reg_cache.i.i169.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %325, i32 0, i32 15
  %329 = ptrtoint ptr %reg_cache.i.i169.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %reg_cache.i.i169.i, align 4
  %arrayidx.i.i170.i = getelementptr i8, ptr %330, i32 56
  %331 = ptrtoint ptr %arrayidx.i.i170.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 4, ptr %arrayidx.i.i170.i, align 1
  %chip_power.i171.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %325, i32 0, i32 6
  %332 = ptrtoint ptr %chip_power.i171.i to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %chip_power.i171.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %333)
  %tobool.not.i172.i = icmp eq i32 %333, 0
  br i1 %tobool.not.i172.i, label %dac33_write16.exit165.i.dac33_write.exit179.i_crit_edge, label %if.then.i176.i

dac33_write16.exit165.i.dac33_write.exit179.i_crit_edge: ; preds = %dac33_write16.exit165.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit179.i

if.then.i176.i:                                   ; preds = %dac33_write16.exit165.i
  %i2c.i173.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %325, i32 0, i32 25
  %334 = ptrtoint ptr %i2c.i173.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %i2c.i173.i, align 8
  %call.i.i174.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %335, ptr noundef nonnull %data.i166.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i174.i)
  %cmp.not.i175.i = icmp eq i32 %call.i.i174.i, 2
  br i1 %cmp.not.i175.i, label %if.then.i176.i.dac33_write.exit179.i_crit_edge, label %do.end.i177.i

if.then.i176.i.dac33_write.exit179.i_crit_edge:   ; preds = %if.then.i176.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit179.i

do.end.i177.i:                                    ; preds = %if.then.i176.i
  call void @__sanitizer_cov_trace_pc() #10
  %336 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %337, ptr noundef nonnull @.str.63, i32 noundef %call.i.i174.i) #11
  br label %dac33_write.exit179.i

dac33_write.exit179.i:                            ; preds = %do.end.i177.i, %if.then.i176.i.dac33_write.exit179.i_crit_edge, %dac33_write16.exit165.i.dac33_write.exit179.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i166.i) #8
  br label %if.end63.i

if.else.i23:                                      ; preds = %dac33_oscwait.exit.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i180.i) #8
  %338 = getelementptr inbounds [2 x i8], ptr %data.i180.i, i32 0, i32 1
  %339 = ptrtoint ptr %data.i180.i to i32
  call void @__asan_store1_noabort(i32 %339)
  store i8 50, ptr %data.i180.i, align 1
  %340 = ptrtoint ptr %338 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 1, ptr %338, align 1
  %reg_cache.i.i183.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %262, i32 0, i32 15
  %341 = ptrtoint ptr %reg_cache.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %reg_cache.i.i183.i, align 4
  %arrayidx.i.i184.i = getelementptr i8, ptr %342, i32 50
  %343 = ptrtoint ptr %arrayidx.i.i184.i to i32
  call void @__asan_store1_noabort(i32 %343)
  store i8 1, ptr %arrayidx.i.i184.i, align 1
  %chip_power.i185.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %262, i32 0, i32 6
  %344 = ptrtoint ptr %chip_power.i185.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %chip_power.i185.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool.not.i186.i = icmp eq i32 %345, 0
  br i1 %tobool.not.i186.i, label %if.else.i23.dac33_write.exit193.i_crit_edge, label %if.then.i190.i

if.else.i23.dac33_write.exit193.i_crit_edge:      ; preds = %if.else.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit193.i

if.then.i190.i:                                   ; preds = %if.else.i23
  %i2c.i187.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %262, i32 0, i32 25
  %346 = ptrtoint ptr %i2c.i187.i to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %i2c.i187.i, align 8
  %call.i.i188.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %347, ptr noundef nonnull %data.i180.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i188.i)
  %cmp.not.i189.i = icmp eq i32 %call.i.i188.i, 2
  br i1 %cmp.not.i189.i, label %if.then.i190.i.dac33_write.exit193.i_crit_edge, label %do.end.i191.i

if.then.i190.i.dac33_write.exit193.i_crit_edge:   ; preds = %if.then.i190.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit193.i

do.end.i191.i:                                    ; preds = %if.then.i190.i
  call void @__sanitizer_cov_trace_pc() #10
  %348 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %349, ptr noundef nonnull @.str.63, i32 noundef %call.i.i188.i) #11
  br label %dac33_write.exit193.i

dac33_write.exit193.i:                            ; preds = %do.end.i191.i, %if.then.i190.i.dac33_write.exit193.i_crit_edge, %if.else.i23.dac33_write.exit193.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i180.i) #8
  %350 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i196.i = getelementptr inbounds %struct.device, ptr %351, i32 0, i32 8
  %352 = ptrtoint ptr %driver_data.i.i.i196.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %driver_data.i.i.i196.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i194.i) #8
  %354 = getelementptr inbounds [2 x i8], ptr %data.i194.i, i32 0, i32 1
  %355 = ptrtoint ptr %data.i194.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 51, ptr %data.i194.i, align 1
  %356 = ptrtoint ptr %354 to i32
  call void @__asan_store1_noabort(i32 %356)
  store i8 0, ptr %354, align 1
  %reg_cache.i.i197.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %353, i32 0, i32 15
  %357 = ptrtoint ptr %reg_cache.i.i197.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %reg_cache.i.i197.i, align 4
  %arrayidx.i.i198.i = getelementptr i8, ptr %358, i32 51
  %359 = ptrtoint ptr %arrayidx.i.i198.i to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 0, ptr %arrayidx.i.i198.i, align 1
  %chip_power.i199.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %353, i32 0, i32 6
  %360 = ptrtoint ptr %chip_power.i199.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %chip_power.i199.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %361)
  %tobool.not.i200.i = icmp eq i32 %361, 0
  br i1 %tobool.not.i200.i, label %dac33_write.exit193.i.dac33_write.exit207.i_crit_edge, label %if.then.i204.i

dac33_write.exit193.i.dac33_write.exit207.i_crit_edge: ; preds = %dac33_write.exit193.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit207.i

if.then.i204.i:                                   ; preds = %dac33_write.exit193.i
  %i2c.i201.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %353, i32 0, i32 25
  %362 = ptrtoint ptr %i2c.i201.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %i2c.i201.i, align 8
  %call.i.i202.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %363, ptr noundef nonnull %data.i194.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i202.i)
  %cmp.not.i203.i = icmp eq i32 %call.i.i202.i, 2
  br i1 %cmp.not.i203.i, label %if.then.i204.i.dac33_write.exit207.i_crit_edge, label %do.end.i205.i

if.then.i204.i.dac33_write.exit207.i_crit_edge:   ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit207.i

do.end.i205.i:                                    ; preds = %if.then.i204.i
  call void @__sanitizer_cov_trace_pc() #10
  %364 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %365, ptr noundef nonnull @.str.63, i32 noundef %call.i.i202.i) #11
  br label %dac33_write.exit207.i

dac33_write.exit207.i:                            ; preds = %do.end.i205.i, %if.then.i204.i.dac33_write.exit207.i_crit_edge, %dac33_write.exit193.i.dac33_write.exit207.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i194.i) #8
  br label %if.end63.i

if.end63.i:                                       ; preds = %dac33_write.exit207.i, %dac33_write.exit179.i
  %366 = ptrtoint ptr %fifo_mode.i22 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %fifo_mode.i22, align 8
  %368 = zext i32 %367 to i64
  call void @__sanitizer_cov_trace_switch(i64 %368, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %367, label %if.end63.i.sw.epilog70.i_crit_edge [
    i32 1, label %sw.bb65.i
    i32 2, label %sw.bb67.i
  ]

if.end63.i.sw.epilog70.i_crit_edge:               ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog70.i

sw.bb65.i:                                        ; preds = %if.end63.i
  %369 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i210.i = getelementptr inbounds %struct.device, ptr %370, i32 0, i32 8
  %371 = ptrtoint ptr %driver_data.i.i.i210.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %driver_data.i.i.i210.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i208.i) #8
  %373 = getelementptr inbounds [2 x i8], ptr %data.i208.i, i32 0, i32 1
  %374 = ptrtoint ptr %data.i208.i to i32
  call void @__asan_store1_noabort(i32 %374)
  store i8 43, ptr %data.i208.i, align 1
  %375 = ptrtoint ptr %373 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 32, ptr %373, align 1
  %reg_cache.i.i211.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %372, i32 0, i32 15
  %376 = ptrtoint ptr %reg_cache.i.i211.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %reg_cache.i.i211.i, align 4
  %arrayidx.i.i212.i = getelementptr i8, ptr %377, i32 43
  %378 = ptrtoint ptr %arrayidx.i.i212.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 32, ptr %arrayidx.i.i212.i, align 1
  %chip_power.i213.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %372, i32 0, i32 6
  %379 = ptrtoint ptr %chip_power.i213.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %chip_power.i213.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %tobool.not.i214.i = icmp eq i32 %380, 0
  br i1 %tobool.not.i214.i, label %sw.bb65.i.dac33_write.exit221.i_crit_edge, label %if.then.i218.i

sw.bb65.i.dac33_write.exit221.i_crit_edge:        ; preds = %sw.bb65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit221.i

if.then.i218.i:                                   ; preds = %sw.bb65.i
  %i2c.i215.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %372, i32 0, i32 25
  %381 = ptrtoint ptr %i2c.i215.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %i2c.i215.i, align 8
  %call.i.i216.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %382, ptr noundef nonnull %data.i208.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i216.i)
  %cmp.not.i217.i = icmp eq i32 %call.i.i216.i, 2
  br i1 %cmp.not.i217.i, label %if.then.i218.i.dac33_write.exit221.i_crit_edge, label %do.end.i219.i

if.then.i218.i.dac33_write.exit221.i_crit_edge:   ; preds = %if.then.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit221.i

do.end.i219.i:                                    ; preds = %if.then.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  %383 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %384, ptr noundef nonnull @.str.63, i32 noundef %call.i.i216.i) #11
  br label %dac33_write.exit221.i

dac33_write.exit221.i:                            ; preds = %do.end.i219.i, %if.then.i218.i.dac33_write.exit221.i_crit_edge, %sw.bb65.i.dac33_write.exit221.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i208.i) #8
  br label %sw.epilog70.i

sw.bb67.i:                                        ; preds = %if.end63.i
  %385 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i224.i = getelementptr inbounds %struct.device, ptr %386, i32 0, i32 8
  %387 = ptrtoint ptr %driver_data.i.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %driver_data.i.i.i224.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i222.i) #8
  %389 = getelementptr inbounds [2 x i8], ptr %data.i222.i, i32 0, i32 1
  %390 = ptrtoint ptr %data.i222.i to i32
  call void @__asan_store1_noabort(i32 %390)
  store i8 42, ptr %data.i222.i, align 1
  %391 = ptrtoint ptr %389 to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 2, ptr %389, align 1
  %reg_cache.i.i225.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %388, i32 0, i32 15
  %392 = ptrtoint ptr %reg_cache.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %reg_cache.i.i225.i, align 4
  %arrayidx.i.i226.i = getelementptr i8, ptr %393, i32 42
  %394 = ptrtoint ptr %arrayidx.i.i226.i to i32
  call void @__asan_store1_noabort(i32 %394)
  store i8 2, ptr %arrayidx.i.i226.i, align 1
  %chip_power.i227.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %388, i32 0, i32 6
  %395 = ptrtoint ptr %chip_power.i227.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %chip_power.i227.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %396)
  %tobool.not.i228.i = icmp eq i32 %396, 0
  br i1 %tobool.not.i228.i, label %sw.bb67.i.dac33_write.exit235.i_crit_edge, label %if.then.i232.i

sw.bb67.i.dac33_write.exit235.i_crit_edge:        ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit235.i

if.then.i232.i:                                   ; preds = %sw.bb67.i
  %i2c.i229.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %388, i32 0, i32 25
  %397 = ptrtoint ptr %i2c.i229.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %i2c.i229.i, align 8
  %call.i.i230.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %398, ptr noundef nonnull %data.i222.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i230.i)
  %cmp.not.i231.i = icmp eq i32 %call.i.i230.i, 2
  br i1 %cmp.not.i231.i, label %if.then.i232.i.dac33_write.exit235.i_crit_edge, label %do.end.i233.i

if.then.i232.i.dac33_write.exit235.i_crit_edge:   ; preds = %if.then.i232.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit235.i

do.end.i233.i:                                    ; preds = %if.then.i232.i
  call void @__sanitizer_cov_trace_pc() #10
  %399 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %400, ptr noundef nonnull @.str.63, i32 noundef %call.i.i230.i) #11
  br label %dac33_write.exit235.i

dac33_write.exit235.i:                            ; preds = %do.end.i233.i, %if.then.i232.i.dac33_write.exit235.i_crit_edge, %sw.bb67.i.dac33_write.exit235.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i222.i) #8
  br label %sw.epilog70.i

sw.epilog70.i:                                    ; preds = %dac33_write.exit235.i, %dac33_write.exit221.i, %if.end63.i.sw.epilog70.i_crit_edge
  %401 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i237.i = getelementptr inbounds %struct.device, ptr %402, i32 0, i32 8
  %403 = ptrtoint ptr %driver_data.i.i.i237.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %driver_data.i.i.i237.i, align 4
  %reg_cache.i238.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %404, i32 0, i32 15
  %405 = ptrtoint ptr %reg_cache.i238.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %reg_cache.i238.i, align 4
  %arrayidx.i239.i = getelementptr i8, ptr %406, i32 19
  %407 = ptrtoint ptr %arrayidx.i239.i to i32
  call void @__asan_load1_noabort(i32 %407)
  %408 = load i8, ptr %arrayidx.i239.i, align 1
  %409 = ptrtoint ptr %fifo_mode.i22 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %fifo_mode.i22, align 8
  %411 = zext i32 %410 to i64
  call void @__sanitizer_cov_trace_switch(i64 %411, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %410, label %sw.default109.i [
    i32 1, label %sw.bb74.i
    i32 2, label %sw.bb91.i
  ]

sw.bb74.i:                                        ; preds = %sw.epilog70.i
  %412 = and i8 %fifoctrl_a.0.i, -7
  %keep_bclk.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %52, i32 0, i32 17
  %413 = ptrtoint ptr %keep_bclk.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load i32, ptr %keep_bclk.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %414)
  %tobool81.not.i = icmp eq i32 %414, 0
  br i1 %tobool81.not.i, label %if.else86.i, label %if.then82.i

if.then82.i:                                      ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #10
  %or84.i = or i8 %408, 32
  br label %sw.epilog116.i

if.else86.i:                                      ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #10
  %and88.i = and i8 %408, -33
  br label %sw.epilog116.i

sw.bb91.i:                                        ; preds = %sw.epilog70.i
  %415 = and i8 %fifoctrl_a.0.i, -7
  %416 = or i8 %415, 4
  %keep_bclk98.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %52, i32 0, i32 17
  %417 = ptrtoint ptr %keep_bclk98.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %keep_bclk98.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %tobool99.not.i = icmp eq i32 %418, 0
  br i1 %tobool99.not.i, label %if.else104.i, label %if.then100.i

if.then100.i:                                     ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #10
  %or102.i = or i8 %408, 32
  br label %sw.epilog116.i

if.else104.i:                                     ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv107.i = and i8 %408, -33
  br label %sw.epilog116.i

sw.default109.i:                                  ; preds = %sw.epilog70.i
  call void @__sanitizer_cov_trace_pc() #10
  %419 = or i8 %fifoctrl_a.0.i, 2
  %or114.i = or i8 %408, 32
  br label %sw.epilog116.i

sw.epilog116.i:                                   ; preds = %sw.default109.i, %if.else104.i, %if.then100.i, %if.else86.i, %if.then82.i
  %aictrl_b.0.i = phi i8 [ %or114.i, %sw.default109.i ], [ %or102.i, %if.then100.i ], [ %conv107.i, %if.else104.i ], [ %or84.i, %if.then82.i ], [ %and88.i, %if.else86.i ]
  %fifoctrl_a.1.i = phi i8 [ %419, %sw.default109.i ], [ %416, %if.then100.i ], [ %416, %if.else104.i ], [ %412, %if.then82.i ], [ %412, %if.else86.i ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i241.i) #8
  %420 = getelementptr inbounds [2 x i8], ptr %data.i241.i, i32 0, i32 1
  %421 = ptrtoint ptr %data.i241.i to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 21, ptr %data.i241.i, align 1
  %422 = ptrtoint ptr %420 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %fifoctrl_a.1.i, ptr %420, align 1
  %arrayidx.i.i245.i = getelementptr i8, ptr %406, i32 21
  %423 = ptrtoint ptr %arrayidx.i.i245.i to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 %fifoctrl_a.1.i, ptr %arrayidx.i.i245.i, align 1
  %chip_power.i246.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %404, i32 0, i32 6
  %424 = ptrtoint ptr %chip_power.i246.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %chip_power.i246.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %425)
  %tobool.not.i247.i = icmp eq i32 %425, 0
  br i1 %tobool.not.i247.i, label %sw.epilog116.i.dac33_write.exit254.i_crit_edge, label %if.then.i251.i

sw.epilog116.i.dac33_write.exit254.i_crit_edge:   ; preds = %sw.epilog116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit254.i

if.then.i251.i:                                   ; preds = %sw.epilog116.i
  %i2c.i248.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %404, i32 0, i32 25
  %426 = ptrtoint ptr %i2c.i248.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %i2c.i248.i, align 8
  %call.i.i249.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %427, ptr noundef nonnull %data.i241.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i249.i)
  %cmp.not.i250.i = icmp eq i32 %call.i.i249.i, 2
  br i1 %cmp.not.i250.i, label %if.then.i251.i.dac33_write.exit254.i_crit_edge, label %do.end.i252.i

if.then.i251.i.dac33_write.exit254.i_crit_edge:   ; preds = %if.then.i251.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit254.i

do.end.i252.i:                                    ; preds = %if.then.i251.i
  call void @__sanitizer_cov_trace_pc() #10
  %428 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %429, ptr noundef nonnull @.str.63, i32 noundef %call.i.i249.i) #11
  br label %dac33_write.exit254.i

dac33_write.exit254.i:                            ; preds = %do.end.i252.i, %if.then.i251.i.dac33_write.exit254.i_crit_edge, %sw.epilog116.i.dac33_write.exit254.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i241.i) #8
  %430 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i257.i = getelementptr inbounds %struct.device, ptr %431, i32 0, i32 8
  %432 = ptrtoint ptr %driver_data.i.i.i257.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %driver_data.i.i.i257.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i255.i) #8
  %434 = getelementptr inbounds [2 x i8], ptr %data.i255.i, i32 0, i32 1
  %435 = ptrtoint ptr %data.i255.i to i32
  call void @__asan_store1_noabort(i32 %435)
  store i8 18, ptr %data.i255.i, align 1
  %436 = ptrtoint ptr %434 to i32
  call void @__asan_store1_noabort(i32 %436)
  store i8 %aictrl_a.0.i, ptr %434, align 1
  %reg_cache.i.i258.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %433, i32 0, i32 15
  %437 = ptrtoint ptr %reg_cache.i.i258.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %reg_cache.i.i258.i, align 4
  %arrayidx.i.i259.i = getelementptr i8, ptr %438, i32 18
  %439 = ptrtoint ptr %arrayidx.i.i259.i to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 %aictrl_a.0.i, ptr %arrayidx.i.i259.i, align 1
  %chip_power.i260.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %433, i32 0, i32 6
  %440 = ptrtoint ptr %chip_power.i260.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %chip_power.i260.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %tobool.not.i261.i = icmp eq i32 %441, 0
  br i1 %tobool.not.i261.i, label %dac33_write.exit254.i.dac33_write.exit268.i_crit_edge, label %if.then.i265.i

dac33_write.exit254.i.dac33_write.exit268.i_crit_edge: ; preds = %dac33_write.exit254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit268.i

if.then.i265.i:                                   ; preds = %dac33_write.exit254.i
  %i2c.i262.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %433, i32 0, i32 25
  %442 = ptrtoint ptr %i2c.i262.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %i2c.i262.i, align 8
  %call.i.i263.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %443, ptr noundef nonnull %data.i255.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i263.i)
  %cmp.not.i264.i = icmp eq i32 %call.i.i263.i, 2
  br i1 %cmp.not.i264.i, label %if.then.i265.i.dac33_write.exit268.i_crit_edge, label %do.end.i266.i

if.then.i265.i.dac33_write.exit268.i_crit_edge:   ; preds = %if.then.i265.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit268.i

do.end.i266.i:                                    ; preds = %if.then.i265.i
  call void @__sanitizer_cov_trace_pc() #10
  %444 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %445, ptr noundef nonnull @.str.63, i32 noundef %call.i.i263.i) #11
  br label %dac33_write.exit268.i

dac33_write.exit268.i:                            ; preds = %do.end.i266.i, %if.then.i265.i.dac33_write.exit268.i_crit_edge, %dac33_write.exit254.i.dac33_write.exit268.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i255.i) #8
  %446 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i271.i = getelementptr inbounds %struct.device, ptr %447, i32 0, i32 8
  %448 = ptrtoint ptr %driver_data.i.i.i271.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %driver_data.i.i.i271.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i269.i) #8
  %450 = getelementptr inbounds [2 x i8], ptr %data.i269.i, i32 0, i32 1
  %451 = ptrtoint ptr %data.i269.i to i32
  call void @__asan_store1_noabort(i32 %451)
  store i8 19, ptr %data.i269.i, align 1
  %452 = ptrtoint ptr %450 to i32
  call void @__asan_store1_noabort(i32 %452)
  store i8 %aictrl_b.0.i, ptr %450, align 1
  %reg_cache.i.i273.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %449, i32 0, i32 15
  %453 = ptrtoint ptr %reg_cache.i.i273.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %reg_cache.i.i273.i, align 4
  %arrayidx.i.i274.i = getelementptr i8, ptr %454, i32 19
  %455 = ptrtoint ptr %arrayidx.i.i274.i to i32
  call void @__asan_store1_noabort(i32 %455)
  store i8 %aictrl_b.0.i, ptr %arrayidx.i.i274.i, align 1
  %chip_power.i275.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %449, i32 0, i32 6
  %456 = ptrtoint ptr %chip_power.i275.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load i32, ptr %chip_power.i275.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %457)
  %tobool.not.i276.i = icmp eq i32 %457, 0
  br i1 %tobool.not.i276.i, label %dac33_write.exit268.i.dac33_write.exit283.i_crit_edge, label %if.then.i280.i

dac33_write.exit268.i.dac33_write.exit283.i_crit_edge: ; preds = %dac33_write.exit268.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit283.i

if.then.i280.i:                                   ; preds = %dac33_write.exit268.i
  %i2c.i277.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %449, i32 0, i32 25
  %458 = ptrtoint ptr %i2c.i277.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %i2c.i277.i, align 8
  %call.i.i278.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %459, ptr noundef nonnull %data.i269.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i278.i)
  %cmp.not.i279.i = icmp eq i32 %call.i.i278.i, 2
  br i1 %cmp.not.i279.i, label %if.then.i280.i.dac33_write.exit283.i_crit_edge, label %do.end.i281.i

if.then.i280.i.dac33_write.exit283.i_crit_edge:   ; preds = %if.then.i280.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit283.i

do.end.i281.i:                                    ; preds = %if.then.i280.i
  call void @__sanitizer_cov_trace_pc() #10
  %460 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %461, ptr noundef nonnull @.str.63, i32 noundef %call.i.i278.i) #11
  br label %dac33_write.exit283.i

dac33_write.exit283.i:                            ; preds = %do.end.i281.i, %if.then.i280.i.dac33_write.exit283.i_crit_edge, %dac33_write.exit268.i.dac33_write.exit283.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i269.i) #8
  %462 = ptrtoint ptr %fifo_mode.i22 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %fifo_mode.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %463)
  %tobool124.not.i = icmp eq i32 %463, 0
  br i1 %tobool124.not.i, label %if.else128.i, label %if.then125.i

if.then125.i:                                     ; preds = %dac33_write.exit283.i
  %burst_bclkdiv.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %52, i32 0, i32 14
  %464 = ptrtoint ptr %burst_bclkdiv.i to i32
  call void @__asan_load1_noabort(i32 %464)
  %465 = load i8, ptr %burst_bclkdiv.i, align 8
  %466 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i286.i = getelementptr inbounds %struct.device, ptr %467, i32 0, i32 8
  %468 = ptrtoint ptr %driver_data.i.i.i286.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %driver_data.i.i.i286.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i284.i) #8
  %470 = getelementptr inbounds [2 x i8], ptr %data.i284.i, i32 0, i32 1
  %471 = ptrtoint ptr %data.i284.i to i32
  call void @__asan_store1_noabort(i32 %471)
  store i8 20, ptr %data.i284.i, align 1
  %472 = ptrtoint ptr %470 to i32
  call void @__asan_store1_noabort(i32 %472)
  store i8 %465, ptr %470, align 1
  %reg_cache.i.i287.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %469, i32 0, i32 15
  %473 = ptrtoint ptr %reg_cache.i.i287.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %reg_cache.i.i287.i, align 4
  %arrayidx.i.i288.i = getelementptr i8, ptr %474, i32 20
  %475 = ptrtoint ptr %arrayidx.i.i288.i to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 %465, ptr %arrayidx.i.i288.i, align 1
  %chip_power.i289.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %469, i32 0, i32 6
  %476 = ptrtoint ptr %chip_power.i289.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %chip_power.i289.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %477)
  %tobool.not.i290.i = icmp eq i32 %477, 0
  br i1 %tobool.not.i290.i, label %if.then125.i.dac33_write.exit297.i_crit_edge, label %if.then.i294.i

if.then125.i.dac33_write.exit297.i_crit_edge:     ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit297.i

if.then.i294.i:                                   ; preds = %if.then125.i
  %i2c.i291.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %469, i32 0, i32 25
  %478 = ptrtoint ptr %i2c.i291.i to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %i2c.i291.i, align 8
  %call.i.i292.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %479, ptr noundef nonnull %data.i284.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i292.i)
  %cmp.not.i293.i = icmp eq i32 %call.i.i292.i, 2
  br i1 %cmp.not.i293.i, label %if.then.i294.i.dac33_write.exit297.i_crit_edge, label %do.end.i295.i

if.then.i294.i.dac33_write.exit297.i_crit_edge:   ; preds = %if.then.i294.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit297.i

do.end.i295.i:                                    ; preds = %if.then.i294.i
  call void @__sanitizer_cov_trace_pc() #10
  %480 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %481, ptr noundef nonnull @.str.63, i32 noundef %call.i.i292.i) #11
  br label %dac33_write.exit297.i

dac33_write.exit297.i:                            ; preds = %do.end.i295.i, %if.then.i294.i.dac33_write.exit297.i_crit_edge, %if.then125.i.dac33_write.exit297.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i284.i) #8
  br label %if.end137.i

if.else128.i:                                     ; preds = %dac33_write.exit283.i
  %482 = ptrtoint ptr %runtime.i15 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %runtime.i15, align 4
  %format130.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %483, i32 0, i32 12
  %484 = ptrtoint ptr %format130.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %format130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %485)
  %cmp.i = icmp eq i32 %485, 2
  %486 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i300.i = getelementptr inbounds %struct.device, ptr %487, i32 0, i32 8
  %488 = ptrtoint ptr %driver_data.i.i.i300.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %driver_data.i.i.i300.i, align 4
  br i1 %cmp.i, label %if.then132.i, label %if.else134.i

if.then132.i:                                     ; preds = %if.else128.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i298.i) #8
  %490 = getelementptr inbounds [2 x i8], ptr %data.i298.i, i32 0, i32 1
  %491 = ptrtoint ptr %data.i298.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 20, ptr %data.i298.i, align 1
  %492 = ptrtoint ptr %490 to i32
  call void @__asan_store1_noabort(i32 %492)
  store i8 32, ptr %490, align 1
  %reg_cache.i.i301.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %489, i32 0, i32 15
  %493 = ptrtoint ptr %reg_cache.i.i301.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %reg_cache.i.i301.i, align 4
  %arrayidx.i.i302.i = getelementptr i8, ptr %494, i32 20
  %495 = ptrtoint ptr %arrayidx.i.i302.i to i32
  call void @__asan_store1_noabort(i32 %495)
  store i8 32, ptr %arrayidx.i.i302.i, align 1
  %chip_power.i303.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %489, i32 0, i32 6
  %496 = ptrtoint ptr %chip_power.i303.i to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load i32, ptr %chip_power.i303.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %497)
  %tobool.not.i304.i = icmp eq i32 %497, 0
  br i1 %tobool.not.i304.i, label %if.then132.i.dac33_write.exit311.i_crit_edge, label %if.then.i308.i

if.then132.i.dac33_write.exit311.i_crit_edge:     ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit311.i

if.then.i308.i:                                   ; preds = %if.then132.i
  %i2c.i305.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %489, i32 0, i32 25
  %498 = ptrtoint ptr %i2c.i305.i to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load ptr, ptr %i2c.i305.i, align 8
  %call.i.i306.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %499, ptr noundef nonnull %data.i298.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i306.i)
  %cmp.not.i307.i = icmp eq i32 %call.i.i306.i, 2
  br i1 %cmp.not.i307.i, label %if.then.i308.i.dac33_write.exit311.i_crit_edge, label %do.end.i309.i

if.then.i308.i.dac33_write.exit311.i_crit_edge:   ; preds = %if.then.i308.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit311.i

do.end.i309.i:                                    ; preds = %if.then.i308.i
  call void @__sanitizer_cov_trace_pc() #10
  %500 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %501, ptr noundef nonnull @.str.63, i32 noundef %call.i.i306.i) #11
  br label %dac33_write.exit311.i

dac33_write.exit311.i:                            ; preds = %do.end.i309.i, %if.then.i308.i.dac33_write.exit311.i_crit_edge, %if.then132.i.dac33_write.exit311.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i298.i) #8
  br label %if.end137.i

if.else134.i:                                     ; preds = %if.else128.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i312.i) #8
  %502 = getelementptr inbounds [2 x i8], ptr %data.i312.i, i32 0, i32 1
  %503 = ptrtoint ptr %data.i312.i to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 20, ptr %data.i312.i, align 1
  %504 = ptrtoint ptr %502 to i32
  call void @__asan_store1_noabort(i32 %504)
  store i8 16, ptr %502, align 1
  %reg_cache.i.i315.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %489, i32 0, i32 15
  %505 = ptrtoint ptr %reg_cache.i.i315.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %reg_cache.i.i315.i, align 4
  %arrayidx.i.i316.i = getelementptr i8, ptr %506, i32 20
  %507 = ptrtoint ptr %arrayidx.i.i316.i to i32
  call void @__asan_store1_noabort(i32 %507)
  store i8 16, ptr %arrayidx.i.i316.i, align 1
  %chip_power.i317.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %489, i32 0, i32 6
  %508 = ptrtoint ptr %chip_power.i317.i to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load i32, ptr %chip_power.i317.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %509)
  %tobool.not.i318.i = icmp eq i32 %509, 0
  br i1 %tobool.not.i318.i, label %if.else134.i.dac33_write.exit325.i_crit_edge, label %if.then.i322.i

if.else134.i.dac33_write.exit325.i_crit_edge:     ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit325.i

if.then.i322.i:                                   ; preds = %if.else134.i
  %i2c.i319.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %489, i32 0, i32 25
  %510 = ptrtoint ptr %i2c.i319.i to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %i2c.i319.i, align 8
  %call.i.i320.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %511, ptr noundef nonnull %data.i312.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i320.i)
  %cmp.not.i321.i = icmp eq i32 %call.i.i320.i, 2
  br i1 %cmp.not.i321.i, label %if.then.i322.i.dac33_write.exit325.i_crit_edge, label %do.end.i323.i

if.then.i322.i.dac33_write.exit325.i_crit_edge:   ; preds = %if.then.i322.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit325.i

do.end.i323.i:                                    ; preds = %if.then.i322.i
  call void @__sanitizer_cov_trace_pc() #10
  %512 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %513, ptr noundef nonnull @.str.63, i32 noundef %call.i.i320.i) #11
  br label %dac33_write.exit325.i

dac33_write.exit325.i:                            ; preds = %do.end.i323.i, %if.then.i322.i.dac33_write.exit325.i_crit_edge, %if.else134.i.dac33_write.exit325.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i312.i) #8
  br label %if.end137.i

if.end137.i:                                      ; preds = %dac33_write.exit325.i, %dac33_write.exit311.i, %dac33_write.exit297.i
  %514 = ptrtoint ptr %fifo_mode.i22 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load i32, ptr %fifo_mode.i22, align 8
  %516 = zext i32 %515 to i64
  call void @__sanitizer_cov_trace_switch(i64 %516, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %515, label %if.end137.i.sw.epilog148.i_crit_edge [
    i32 1, label %sw.bb139.i
    i32 2, label %sw.bb142.i
  ]

if.end137.i.sw.epilog148.i_crit_edge:             ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog148.i

sw.bb139.i:                                       ; preds = %if.end137.i
  %alarm_threshold.i24 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %52, i32 0, i32 9
  %517 = ptrtoint ptr %alarm_threshold.i24 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %alarm_threshold.i24, align 4
  %and140.i = shl i32 %518, 3
  %519 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i328.i = getelementptr inbounds %struct.device, ptr %520, i32 0, i32 8
  %521 = ptrtoint ptr %driver_data.i.i.i328.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %driver_data.i.i.i328.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i326.i) #8
  %523 = getelementptr inbounds [3 x i8], ptr %data.i326.i, i32 0, i32 1
  %524 = getelementptr inbounds [3 x i8], ptr %data.i326.i, i32 0, i32 2
  %525 = ptrtoint ptr %data.i326.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 24, ptr %data.i326.i, align 1
  %shr.i329.i = lshr i32 %and140.i, 8
  %conv2.i330.i = trunc i32 %shr.i329.i to i8
  %526 = ptrtoint ptr %523 to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 %conv2.i330.i, ptr %523, align 1
  %conv5.i331.i = trunc i32 %and140.i to i8
  %527 = ptrtoint ptr %524 to i32
  call void @__asan_store1_noabort(i32 %527)
  store i8 %conv5.i331.i, ptr %524, align 1
  %reg_cache.i.i332.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %522, i32 0, i32 15
  %528 = ptrtoint ptr %reg_cache.i.i332.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %reg_cache.i.i332.i, align 4
  %arrayidx.i.i333.i = getelementptr i8, ptr %529, i32 24
  %530 = ptrtoint ptr %arrayidx.i.i333.i to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 %conv2.i330.i, ptr %arrayidx.i.i333.i, align 1
  %531 = load i8, ptr %data.i326.i, align 1
  %add.i334.i = add i8 %531, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i334.i)
  %cmp.i1.i335.i = icmp slt i8 %add.i334.i, 0
  br i1 %cmp.i1.i335.i, label %sw.bb139.i.dac33_write_reg_cache.exit8.i343.i_crit_edge, label %if.end.i7.i340.i

sw.bb139.i.dac33_write_reg_cache.exit8.i343.i_crit_edge: ; preds = %sw.bb139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit8.i343.i

if.end.i7.i340.i:                                 ; preds = %sw.bb139.i
  call void @__sanitizer_cov_trace_pc() #10
  %532 = ptrtoint ptr %524 to i32
  call void @__asan_load1_noabort(i32 %532)
  %533 = load i8, ptr %524, align 1
  %534 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i3.i336.i = getelementptr inbounds %struct.device, ptr %535, i32 0, i32 8
  %536 = ptrtoint ptr %driver_data.i.i.i3.i336.i to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %driver_data.i.i.i3.i336.i, align 4
  %conv.i4.i337.i = zext i8 %add.i334.i to i32
  %reg_cache.i5.i338.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %537, i32 0, i32 15
  %538 = ptrtoint ptr %reg_cache.i5.i338.i to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %reg_cache.i5.i338.i, align 4
  %arrayidx.i6.i339.i = getelementptr i8, ptr %539, i32 %conv.i4.i337.i
  %540 = ptrtoint ptr %arrayidx.i6.i339.i to i32
  call void @__asan_store1_noabort(i32 %540)
  store i8 %533, ptr %arrayidx.i6.i339.i, align 1
  br label %dac33_write_reg_cache.exit8.i343.i

dac33_write_reg_cache.exit8.i343.i:               ; preds = %if.end.i7.i340.i, %sw.bb139.i.dac33_write_reg_cache.exit8.i343.i_crit_edge
  %chip_power.i341.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %522, i32 0, i32 6
  %541 = ptrtoint ptr %chip_power.i341.i to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %chip_power.i341.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %542)
  %tobool.not.i342.i = icmp eq i32 %542, 0
  br i1 %tobool.not.i342.i, label %dac33_write_reg_cache.exit8.i343.i.dac33_write16.exit349.i_crit_edge, label %if.then.i347.i

dac33_write_reg_cache.exit8.i343.i.dac33_write16.exit349.i_crit_edge: ; preds = %dac33_write_reg_cache.exit8.i343.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit349.i

if.then.i347.i:                                   ; preds = %dac33_write_reg_cache.exit8.i343.i
  %543 = ptrtoint ptr %data.i326.i to i32
  call void @__asan_load1_noabort(i32 %543)
  %544 = load i8, ptr %data.i326.i, align 1
  %545 = or i8 %544, -128
  store i8 %545, ptr %data.i326.i, align 1
  %i2c.i344.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %522, i32 0, i32 25
  %546 = ptrtoint ptr %i2c.i344.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %i2c.i344.i, align 8
  %call.i.i345.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %547, ptr noundef nonnull %data.i326.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i345.i)
  %cmp.not.i346.i = icmp eq i32 %call.i.i345.i, 3
  br i1 %cmp.not.i346.i, label %if.then.i347.i.dac33_write16.exit349.i_crit_edge, label %do.end.i348.i

if.then.i347.i.dac33_write16.exit349.i_crit_edge: ; preds = %if.then.i347.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit349.i

do.end.i348.i:                                    ; preds = %if.then.i347.i
  call void @__sanitizer_cov_trace_pc() #10
  %548 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %549, ptr noundef nonnull @.str.63, i32 noundef %call.i.i345.i) #11
  br label %dac33_write16.exit349.i

dac33_write16.exit349.i:                          ; preds = %do.end.i348.i, %if.then.i347.i.dac33_write16.exit349.i_crit_edge, %dac33_write_reg_cache.exit8.i343.i.dac33_write16.exit349.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i326.i) #8
  br label %sw.epilog148.i

sw.bb142.i:                                       ; preds = %if.end137.i
  %uthr.i25 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %52, i32 0, i32 23
  %550 = ptrtoint ptr %uthr.i25 to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %uthr.i25, align 8
  %and143.i = shl i32 %551, 3
  %552 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i352.i = getelementptr inbounds %struct.device, ptr %553, i32 0, i32 8
  %554 = ptrtoint ptr %driver_data.i.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %driver_data.i.i.i352.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i350.i) #8
  %556 = getelementptr inbounds [3 x i8], ptr %data.i350.i, i32 0, i32 1
  %557 = getelementptr inbounds [3 x i8], ptr %data.i350.i, i32 0, i32 2
  %558 = ptrtoint ptr %data.i350.i to i32
  call void @__asan_store1_noabort(i32 %558)
  store i8 22, ptr %data.i350.i, align 1
  %shr.i353.i = lshr i32 %and143.i, 8
  %conv2.i354.i = trunc i32 %shr.i353.i to i8
  %559 = ptrtoint ptr %556 to i32
  call void @__asan_store1_noabort(i32 %559)
  store i8 %conv2.i354.i, ptr %556, align 1
  %conv5.i355.i = trunc i32 %and143.i to i8
  %560 = ptrtoint ptr %557 to i32
  call void @__asan_store1_noabort(i32 %560)
  store i8 %conv5.i355.i, ptr %557, align 1
  %reg_cache.i.i356.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %555, i32 0, i32 15
  %561 = ptrtoint ptr %reg_cache.i.i356.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %reg_cache.i.i356.i, align 4
  %arrayidx.i.i357.i = getelementptr i8, ptr %562, i32 22
  %563 = ptrtoint ptr %arrayidx.i.i357.i to i32
  call void @__asan_store1_noabort(i32 %563)
  store i8 %conv2.i354.i, ptr %arrayidx.i.i357.i, align 1
  %564 = load i8, ptr %data.i350.i, align 1
  %add.i358.i = add i8 %564, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i358.i)
  %cmp.i1.i359.i = icmp slt i8 %add.i358.i, 0
  br i1 %cmp.i1.i359.i, label %sw.bb142.i.dac33_write_reg_cache.exit8.i367.i_crit_edge, label %if.end.i7.i364.i

sw.bb142.i.dac33_write_reg_cache.exit8.i367.i_crit_edge: ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit8.i367.i

if.end.i7.i364.i:                                 ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #10
  %565 = ptrtoint ptr %557 to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %557, align 1
  %567 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i3.i360.i = getelementptr inbounds %struct.device, ptr %568, i32 0, i32 8
  %569 = ptrtoint ptr %driver_data.i.i.i3.i360.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %driver_data.i.i.i3.i360.i, align 4
  %conv.i4.i361.i = zext i8 %add.i358.i to i32
  %reg_cache.i5.i362.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %570, i32 0, i32 15
  %571 = ptrtoint ptr %reg_cache.i5.i362.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %reg_cache.i5.i362.i, align 4
  %arrayidx.i6.i363.i = getelementptr i8, ptr %572, i32 %conv.i4.i361.i
  %573 = ptrtoint ptr %arrayidx.i6.i363.i to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 %566, ptr %arrayidx.i6.i363.i, align 1
  br label %dac33_write_reg_cache.exit8.i367.i

dac33_write_reg_cache.exit8.i367.i:               ; preds = %if.end.i7.i364.i, %sw.bb142.i.dac33_write_reg_cache.exit8.i367.i_crit_edge
  %chip_power.i365.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %555, i32 0, i32 6
  %574 = ptrtoint ptr %chip_power.i365.i to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load i32, ptr %chip_power.i365.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %575)
  %tobool.not.i366.i = icmp eq i32 %575, 0
  br i1 %tobool.not.i366.i, label %dac33_write_reg_cache.exit8.i367.i.dac33_write16.exit373.i_crit_edge, label %if.then.i371.i

dac33_write_reg_cache.exit8.i367.i.dac33_write16.exit373.i_crit_edge: ; preds = %dac33_write_reg_cache.exit8.i367.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit373.i

if.then.i371.i:                                   ; preds = %dac33_write_reg_cache.exit8.i367.i
  %576 = ptrtoint ptr %data.i350.i to i32
  call void @__asan_load1_noabort(i32 %576)
  %577 = load i8, ptr %data.i350.i, align 1
  %578 = or i8 %577, -128
  store i8 %578, ptr %data.i350.i, align 1
  %i2c.i368.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %555, i32 0, i32 25
  %579 = ptrtoint ptr %i2c.i368.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %i2c.i368.i, align 8
  %call.i.i369.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %580, ptr noundef nonnull %data.i350.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i369.i)
  %cmp.not.i370.i = icmp eq i32 %call.i.i369.i, 3
  br i1 %cmp.not.i370.i, label %if.then.i371.i.dac33_write16.exit373.i_crit_edge, label %do.end.i372.i

if.then.i371.i.dac33_write16.exit373.i_crit_edge: ; preds = %if.then.i371.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit373.i

do.end.i372.i:                                    ; preds = %if.then.i371.i
  call void @__sanitizer_cov_trace_pc() #10
  %581 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %582, ptr noundef nonnull @.str.63, i32 noundef %call.i.i369.i) #11
  br label %dac33_write16.exit373.i

dac33_write16.exit373.i:                          ; preds = %do.end.i372.i, %if.then.i371.i.dac33_write16.exit373.i_crit_edge, %dac33_write_reg_cache.exit8.i367.i.dac33_write16.exit373.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i350.i) #8
  %583 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i376.i = getelementptr inbounds %struct.device, ptr %584, i32 0, i32 8
  %585 = ptrtoint ptr %driver_data.i.i.i376.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %driver_data.i.i.i376.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i374.i) #8
  %587 = getelementptr inbounds [3 x i8], ptr %data.i374.i, i32 0, i32 1
  %588 = getelementptr inbounds [3 x i8], ptr %data.i374.i, i32 0, i32 2
  %589 = ptrtoint ptr %data.i374.i to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 26, ptr %data.i374.i, align 1
  %590 = ptrtoint ptr %587 to i32
  call void @__asan_store1_noabort(i32 %590)
  store i8 0, ptr %587, align 1
  %591 = ptrtoint ptr %588 to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 80, ptr %588, align 1
  %reg_cache.i.i377.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %586, i32 0, i32 15
  %592 = ptrtoint ptr %reg_cache.i.i377.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %reg_cache.i.i377.i, align 4
  %arrayidx.i.i378.i = getelementptr i8, ptr %593, i32 26
  %594 = ptrtoint ptr %arrayidx.i.i378.i to i32
  call void @__asan_store1_noabort(i32 %594)
  store i8 0, ptr %arrayidx.i.i378.i, align 1
  %595 = load i8, ptr %data.i374.i, align 1
  %add.i379.i = add i8 %595, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i379.i)
  %cmp.i1.i380.i = icmp slt i8 %add.i379.i, 0
  br i1 %cmp.i1.i380.i, label %dac33_write16.exit373.i.dac33_write_reg_cache.exit8.i388.i_crit_edge, label %if.end.i7.i385.i

dac33_write16.exit373.i.dac33_write_reg_cache.exit8.i388.i_crit_edge: ; preds = %dac33_write16.exit373.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit8.i388.i

if.end.i7.i385.i:                                 ; preds = %dac33_write16.exit373.i
  call void @__sanitizer_cov_trace_pc() #10
  %596 = ptrtoint ptr %588 to i32
  call void @__asan_load1_noabort(i32 %596)
  %597 = load i8, ptr %588, align 1
  %598 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i3.i381.i = getelementptr inbounds %struct.device, ptr %599, i32 0, i32 8
  %600 = ptrtoint ptr %driver_data.i.i.i3.i381.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %driver_data.i.i.i3.i381.i, align 4
  %conv.i4.i382.i = zext i8 %add.i379.i to i32
  %reg_cache.i5.i383.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %601, i32 0, i32 15
  %602 = ptrtoint ptr %reg_cache.i5.i383.i to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %reg_cache.i5.i383.i, align 4
  %arrayidx.i6.i384.i = getelementptr i8, ptr %603, i32 %conv.i4.i382.i
  %604 = ptrtoint ptr %arrayidx.i6.i384.i to i32
  call void @__asan_store1_noabort(i32 %604)
  store i8 %597, ptr %arrayidx.i6.i384.i, align 1
  br label %dac33_write_reg_cache.exit8.i388.i

dac33_write_reg_cache.exit8.i388.i:               ; preds = %if.end.i7.i385.i, %dac33_write16.exit373.i.dac33_write_reg_cache.exit8.i388.i_crit_edge
  %chip_power.i386.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %586, i32 0, i32 6
  %605 = ptrtoint ptr %chip_power.i386.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %chip_power.i386.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %606)
  %tobool.not.i387.i = icmp eq i32 %606, 0
  br i1 %tobool.not.i387.i, label %dac33_write_reg_cache.exit8.i388.i.dac33_write16.exit394.i_crit_edge, label %if.then.i392.i

dac33_write_reg_cache.exit8.i388.i.dac33_write16.exit394.i_crit_edge: ; preds = %dac33_write_reg_cache.exit8.i388.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit394.i

if.then.i392.i:                                   ; preds = %dac33_write_reg_cache.exit8.i388.i
  %607 = ptrtoint ptr %data.i374.i to i32
  call void @__asan_load1_noabort(i32 %607)
  %608 = load i8, ptr %data.i374.i, align 1
  %609 = or i8 %608, -128
  store i8 %609, ptr %data.i374.i, align 1
  %i2c.i389.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %586, i32 0, i32 25
  %610 = ptrtoint ptr %i2c.i389.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load ptr, ptr %i2c.i389.i, align 8
  %call.i.i390.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %611, ptr noundef nonnull %data.i374.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i390.i)
  %cmp.not.i391.i = icmp eq i32 %call.i.i390.i, 3
  br i1 %cmp.not.i391.i, label %if.then.i392.i.dac33_write16.exit394.i_crit_edge, label %do.end.i393.i

if.then.i392.i.dac33_write16.exit394.i_crit_edge: ; preds = %if.then.i392.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit394.i

do.end.i393.i:                                    ; preds = %if.then.i392.i
  call void @__sanitizer_cov_trace_pc() #10
  %612 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %613, ptr noundef nonnull @.str.63, i32 noundef %call.i.i390.i) #11
  br label %dac33_write16.exit394.i

dac33_write16.exit394.i:                          ; preds = %do.end.i393.i, %if.then.i392.i.dac33_write16.exit394.i_crit_edge, %dac33_write_reg_cache.exit8.i388.i.dac33_write16.exit394.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i374.i) #8
  br label %sw.epilog148.i

sw.epilog148.i:                                   ; preds = %dac33_write16.exit394.i, %dac33_write16.exit349.i, %if.end137.i.sw.epilog148.i_crit_edge
  call void @mutex_unlock(ptr noundef %52) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %reg_cache.i.i27 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 15
  %614 = ptrtoint ptr %reg_cache.i.i27 to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load ptr, ptr %reg_cache.i.i27, align 4
  %arrayidx.i.i28 = getelementptr i8, ptr %615, i32 19
  %616 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load1_noabort(i32 %616)
  %617 = load i8, ptr %arrayidx.i.i28, align 1
  %618 = and i8 %617, -33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i26) #8
  %619 = getelementptr inbounds [2 x i8], ptr %data.i.i26, i32 0, i32 1
  %620 = ptrtoint ptr %data.i.i26 to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 19, ptr %data.i.i26, align 1
  %621 = ptrtoint ptr %619 to i32
  call void @__asan_store1_noabort(i32 %621)
  store i8 %618, ptr %619, align 1
  %622 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_store1_noabort(i32 %622)
  store i8 %618, ptr %arrayidx.i.i28, align 1
  %chip_power.i.i29 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 6
  %623 = ptrtoint ptr %chip_power.i.i29 to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %chip_power.i.i29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %624)
  %tobool.not.i.i30 = icmp eq i32 %624, 0
  br i1 %tobool.not.i.i30, label %sw.bb7.dac33_write.exit.i36_crit_edge, label %if.then.i.i34

sw.bb7.dac33_write.exit.i36_crit_edge:            ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit.i36

if.then.i.i34:                                    ; preds = %sw.bb7
  %i2c.i.i31 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 25
  %625 = ptrtoint ptr %i2c.i.i31 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %i2c.i.i31, align 8
  %call.i.i.i32 = call i32 @i2c_transfer_buffer_flags(ptr noundef %626, ptr noundef nonnull %data.i.i26, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i32)
  %cmp.not.i.i33 = icmp eq i32 %call.i.i.i32, 2
  br i1 %cmp.not.i.i33, label %if.then.i.i34.dac33_write.exit.i36_crit_edge, label %do.end.i.i35

if.then.i.i34.dac33_write.exit.i36_crit_edge:     ; preds = %if.then.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit.i36

do.end.i.i35:                                     ; preds = %if.then.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  %627 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %628, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i32) #11
  br label %dac33_write.exit.i36

dac33_write.exit.i36:                             ; preds = %do.end.i.i35, %if.then.i.i34.dac33_write.exit.i36_crit_edge, %sw.bb7.dac33_write.exit.i36_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i26) #8
  %629 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i21.i = getelementptr inbounds %struct.device, ptr %630, i32 0, i32 8
  %631 = ptrtoint ptr %driver_data.i.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %driver_data.i.i.i21.i, align 4
  %reg_cache.i22.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %632, i32 0, i32 15
  %633 = ptrtoint ptr %reg_cache.i22.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %reg_cache.i22.i, align 4
  %arrayidx.i23.i = getelementptr i8, ptr %634, i32 1
  %635 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load1_noabort(i32 %635)
  %636 = load i8, ptr %arrayidx.i23.i, align 1
  %637 = and i8 %636, -8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i25.i) #8
  %638 = getelementptr inbounds [2 x i8], ptr %data.i25.i, i32 0, i32 1
  %639 = ptrtoint ptr %data.i25.i to i32
  call void @__asan_store1_noabort(i32 %639)
  store i8 1, ptr %data.i25.i, align 1
  %640 = ptrtoint ptr %638 to i32
  call void @__asan_store1_noabort(i32 %640)
  store i8 %637, ptr %638, align 1
  %641 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_store1_noabort(i32 %641)
  store i8 %637, ptr %arrayidx.i23.i, align 1
  %chip_power.i31.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %632, i32 0, i32 6
  %642 = ptrtoint ptr %chip_power.i31.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %chip_power.i31.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %643)
  %tobool.not.i32.i = icmp eq i32 %643, 0
  br i1 %tobool.not.i32.i, label %dac33_write.exit.i36.dac33_disable_digital.exit_crit_edge, label %if.then.i36.i

dac33_write.exit.i36.dac33_disable_digital.exit_crit_edge: ; preds = %dac33_write.exit.i36
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_disable_digital.exit

if.then.i36.i:                                    ; preds = %dac33_write.exit.i36
  %i2c.i33.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %632, i32 0, i32 25
  %644 = ptrtoint ptr %i2c.i33.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %i2c.i33.i, align 8
  %call.i.i34.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %645, ptr noundef nonnull %data.i25.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i34.i)
  %cmp.not.i35.i = icmp eq i32 %call.i.i34.i, 2
  br i1 %cmp.not.i35.i, label %if.then.i36.i.dac33_disable_digital.exit_crit_edge, label %do.end.i37.i

if.then.i36.i.dac33_disable_digital.exit_crit_edge: ; preds = %if.then.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_disable_digital.exit

do.end.i37.i:                                     ; preds = %if.then.i36.i
  call void @__sanitizer_cov_trace_pc() #10
  %646 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %647, ptr noundef nonnull @.str.63, i32 noundef %call.i.i34.i) #11
  br label %dac33_disable_digital.exit

dac33_disable_digital.exit:                       ; preds = %do.end.i37.i, %if.then.i36.i.dac33_disable_digital.exit_crit_edge, %dac33_write.exit.i36.dac33_disable_digital.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i25.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %dac33_disable_digital.exit, %sw.epilog148.i, %if.then.i, %do.end40.i, %do.end.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dac33_hard_power(ptr nocapture noundef readonly %component, i32 noundef %power) unnamed_addr #2 align 64 {
entry:
  %data.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %chip_power = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %chip_power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chip_power, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %power)
  %cmp = icmp eq i32 %5, %power
  br i1 %cmp, label %do.body, label %if.end12, !prof !273

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dac33_hard_power.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dac33_hard_power, %if.then10)) #8
          to label %exit [label %if.then10], !srcloc !274

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool11.not = icmp eq i32 %power, 0
  %cond = select i1 %tobool11.not, ptr @.str.83, ptr @.str.82
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dac33_hard_power.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.81, ptr noundef nonnull %cond) #8
  br label %exit

if.end12:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %tobool13.not = icmp eq i32 %power, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  %supplies = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 3
  %call15 = tail call i32 @regulator_bulk_enable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end22, label %do.end20

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.84, i32 noundef %call15) #11
  br label %exit

if.end22:                                         ; preds = %if.then14
  %power_gpio = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %power_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %power_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp23 = icmp sgt i32 %11, -1
  br i1 %cmp23, label %if.then24, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %11) #8
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %12 = ptrtoint ptr %chip_power to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %chip_power, align 8
  br label %exit

if.else:                                          ; preds = %if.end12
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %reg_cache.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_cache.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %18, i32 1
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %conv4.i = and i8 %20, -24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i.i) #8
  %21 = getelementptr inbounds [2 x i8], ptr %data.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %data.i.i, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv4.i, ptr %21, align 1
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv4.i, ptr %arrayidx.i.i, align 1
  %chip_power.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %16, i32 0, i32 6
  %25 = ptrtoint ptr %chip_power.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chip_power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.else.dac33_soft_power.exit_crit_edge, label %if.then.i.i

if.else.dac33_soft_power.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_soft_power.exit

if.then.i.i:                                      ; preds = %if.else
  %i2c.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %16, i32 0, i32 25
  %27 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %data.i.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.then.i.i.dac33_soft_power.exit_crit_edge, label %do.end.i.i

if.then.i.i.dac33_soft_power.exit_crit_edge:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_soft_power.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i) #11
  br label %dac33_soft_power.exit

dac33_soft_power.exit:                            ; preds = %do.end.i.i, %if.then.i.i.dac33_soft_power.exit_crit_edge, %if.else.dac33_soft_power.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i.i) #8
  %power_gpio28 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 5
  %31 = ptrtoint ptr %power_gpio28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %power_gpio28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp29 = icmp sgt i32 %32, -1
  br i1 %cmp29, label %if.then30, label %dac33_soft_power.exit.if.end32_crit_edge

dac33_soft_power.exit.if.end32_crit_edge:         ; preds = %dac33_soft_power.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then30:                                        ; preds = %dac33_soft_power.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i67 = call ptr @gpio_to_desc(i32 noundef %32) #8
  call void @gpiod_set_raw_value(ptr noundef %call.i67, i32 noundef 0) #8
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %dac33_soft_power.exit.if.end32_crit_edge
  %supplies33 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 3
  %call35 = call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.86, i32 noundef %call35) #11
  br label %exit

if.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %chip_power to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %chip_power, align 8
  br label %exit

exit:                                             ; preds = %if.end42, %do.end40, %if.end26, %do.end20, %if.then10, %do.body
  %ret.0 = phi i32 [ 0, %if.then10 ], [ %call15, %do.end20 ], [ 0, %if.end26 ], [ %call35, %do.end40 ], [ 0, %if.end42 ], [ 0, %do.body ]
  call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_interrupt_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 18
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call6 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call6)
  %cmp8.i.i = icmp slt i64 %call6, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %call6, i1 false) #8
  %5 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %4, i32 0) #12, !srcloc !275
  %asmresult.i.i.i = extractvalue { i64, i32 } %5, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %5, 1
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %4, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !276
  %asmresult10.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %t_stamp1 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 19
  %7 = ptrtoint ptr %t_stamp1 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %cond213.i.i, ptr %t_stamp1, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  %fifo_mode = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp9.not = icmp eq i32 %9, 2
  br i1 %cmp9.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %work = getelementptr inbounds %struct.tlv320dac33_priv, ptr %3, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dac33_work(ptr noundef %work) #2 align 64 {
entry:
  %data.i62 = alloca [2 x i8], align 1
  %data.i = alloca [2 x i8], align 1
  %data.i.i22 = alloca [3 x i8], align 1
  %data.i132.i = alloca [2 x i8], align 1
  %data.i111.i = alloca [3 x i8], align 1
  %data.i92.i = alloca [2 x i8], align 1
  %data.i68.i = alloca [3 x i8], align 1
  %data.i.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -92
  %component1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 8
  tail call void @mutex_lock_nested(ptr noundef %add.ptr, i32 noundef 0) #8
  %state = getelementptr i8, ptr %work, i32 216
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %state, align 4
  %6 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component1, align 8
  %fifo_mode.i = getelementptr i8, ptr %work, i32 108
  %8 = ptrtoint ptr %fifo_mode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_mode.i, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %9, label %do.end43.i [
    i32 1, label %sw.bb.i
    i32 2, label %do.body20.i
  ]

sw.bb.i:                                          ; preds = %sw.bb
  %nsample.i = getelementptr i8, ptr %work, i32 116
  %11 = ptrtoint ptr %nsample.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nsample.i, align 8
  %and.i = shl i32 %12, 3
  %dev.i.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #8
  %17 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %18 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 30, ptr %data.i.i, align 1
  %shr.i.i = lshr i32 %and.i, 8
  %conv2.i.i = trunc i32 %shr.i.i to i8
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv2.i.i, ptr %17, align 1
  %conv5.i.i = trunc i32 %and.i to i8
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv5.i.i, ptr %18, align 1
  %reg_cache.i.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %16, i32 0, i32 15
  %22 = ptrtoint ptr %reg_cache.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_cache.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %23, i32 30
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv2.i.i, ptr %arrayidx.i.i.i, align 1
  %25 = load i8, ptr %data.i.i, align 1
  %add.i.i = add i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i.i)
  %cmp.i1.i.i = icmp slt i8 %add.i.i, 0
  br i1 %cmp.i1.i.i, label %sw.bb.i.dac33_write_reg_cache.exit8.i.i_crit_edge, label %if.end.i7.i.i

sw.bb.i.dac33_write_reg_cache.exit8.i.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit8.i.i

if.end.i7.i.i:                                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %18, align 1
  %28 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i3.i.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i.i3.i.i, align 4
  %conv.i4.i.i = zext i8 %add.i.i to i32
  %reg_cache.i5.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %reg_cache.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_cache.i5.i.i, align 4
  %arrayidx.i6.i.i = getelementptr i8, ptr %33, i32 %conv.i4.i.i
  %34 = ptrtoint ptr %arrayidx.i6.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %27, ptr %arrayidx.i6.i.i, align 1
  br label %dac33_write_reg_cache.exit8.i.i

dac33_write_reg_cache.exit8.i.i:                  ; preds = %if.end.i7.i.i, %sw.bb.i.dac33_write_reg_cache.exit8.i.i_crit_edge
  %chip_power.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %16, i32 0, i32 6
  %35 = ptrtoint ptr %chip_power.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chip_power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %dac33_write_reg_cache.exit8.i.i.dac33_write16.exit.i_crit_edge, label %if.then.i.i

dac33_write_reg_cache.exit8.i.i.dac33_write16.exit.i_crit_edge: ; preds = %dac33_write_reg_cache.exit8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit.i

if.then.i.i:                                      ; preds = %dac33_write_reg_cache.exit8.i.i
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data.i.i, align 1
  %39 = or i8 %38, -128
  store i8 %39, ptr %data.i.i, align 1
  %i2c.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %16, i32 0, i32 25
  %40 = ptrtoint ptr %i2c.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %41, ptr noundef nonnull %data.i.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 3
  br i1 %cmp.not.i.i, label %if.then.i.i.dac33_write16.exit.i_crit_edge, label %do.end.i.i

if.then.i.i.dac33_write16.exit.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i) #11
  br label %dac33_write16.exit.i

dac33_write16.exit.i:                             ; preds = %do.end.i.i, %if.then.i.i.dac33_write16.exit.i_crit_edge, %dac33_write_reg_cache.exit8.i.i.dac33_write16.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #8
  %lock.i = getelementptr i8, ptr %work, i32 140
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %call7.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call7.i)
  %cmp8.i.i.i = icmp slt i64 %call7.i, 0
  %44 = call i64 @llvm.abs.i64(i64 %call7.i, i1 false) #8
  %45 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %44, i32 0) #12, !srcloc !275
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %45, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %45, 1
  %46 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %44, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !276
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %46, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %t_stamp2.i = getelementptr i8, ptr %work, i32 196
  %47 = ptrtoint ptr %t_stamp2.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %cond213.i.i.i, ptr %t_stamp2.i, align 8
  %t_stamp1.i = getelementptr i8, ptr %work, i32 188
  %48 = ptrtoint ptr %t_stamp1.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %cond213.i.i.i, ptr %t_stamp1.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #8
  %alarm_threshold.i = getelementptr i8, ptr %work, i32 104
  %49 = ptrtoint ptr %alarm_threshold.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %alarm_threshold.i, align 4
  %and11.i = shl i32 %50, 3
  %51 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i70.i = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %driver_data.i.i.i70.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i.i70.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i68.i) #8
  %55 = getelementptr inbounds [3 x i8], ptr %data.i68.i, i32 0, i32 1
  %56 = getelementptr inbounds [3 x i8], ptr %data.i68.i, i32 0, i32 2
  %57 = ptrtoint ptr %data.i68.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 28, ptr %data.i68.i, align 1
  %shr.i71.i = lshr i32 %and11.i, 8
  %conv2.i72.i = trunc i32 %shr.i71.i to i8
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv2.i72.i, ptr %55, align 1
  %conv5.i73.i = trunc i32 %and11.i to i8
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv5.i73.i, ptr %56, align 1
  %reg_cache.i.i74.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %54, i32 0, i32 15
  %60 = ptrtoint ptr %reg_cache.i.i74.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_cache.i.i74.i, align 4
  %arrayidx.i.i75.i = getelementptr i8, ptr %61, i32 28
  %62 = ptrtoint ptr %arrayidx.i.i75.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv2.i72.i, ptr %arrayidx.i.i75.i, align 1
  %63 = load i8, ptr %data.i68.i, align 1
  %add.i76.i = add i8 %63, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i76.i)
  %cmp.i1.i77.i = icmp slt i8 %add.i76.i, 0
  br i1 %cmp.i1.i77.i, label %dac33_write16.exit.i.dac33_write_reg_cache.exit8.i85.i_crit_edge, label %if.end.i7.i82.i

dac33_write16.exit.i.dac33_write_reg_cache.exit8.i85.i_crit_edge: ; preds = %dac33_write16.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit8.i85.i

if.end.i7.i82.i:                                  ; preds = %dac33_write16.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %56 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %56, align 1
  %66 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i3.i78.i = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %driver_data.i.i.i3.i78.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i.i3.i78.i, align 4
  %conv.i4.i79.i = zext i8 %add.i76.i to i32
  %reg_cache.i5.i80.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %69, i32 0, i32 15
  %70 = ptrtoint ptr %reg_cache.i5.i80.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_cache.i5.i80.i, align 4
  %arrayidx.i6.i81.i = getelementptr i8, ptr %71, i32 %conv.i4.i79.i
  %72 = ptrtoint ptr %arrayidx.i6.i81.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %65, ptr %arrayidx.i6.i81.i, align 1
  br label %dac33_write_reg_cache.exit8.i85.i

dac33_write_reg_cache.exit8.i85.i:                ; preds = %if.end.i7.i82.i, %dac33_write16.exit.i.dac33_write_reg_cache.exit8.i85.i_crit_edge
  %chip_power.i83.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %54, i32 0, i32 6
  %73 = ptrtoint ptr %chip_power.i83.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %chip_power.i83.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i84.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i84.i, label %dac33_write_reg_cache.exit8.i85.i.dac33_write16.exit91.i_crit_edge, label %if.then.i89.i

dac33_write_reg_cache.exit8.i85.i.dac33_write16.exit91.i_crit_edge: ; preds = %dac33_write_reg_cache.exit8.i85.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit91.i

if.then.i89.i:                                    ; preds = %dac33_write_reg_cache.exit8.i85.i
  %75 = ptrtoint ptr %data.i68.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %data.i68.i, align 1
  %77 = or i8 %76, -128
  store i8 %77, ptr %data.i68.i, align 1
  %i2c.i86.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %54, i32 0, i32 25
  %78 = ptrtoint ptr %i2c.i86.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %i2c.i86.i, align 8
  %call.i.i87.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %79, ptr noundef nonnull %data.i68.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i87.i)
  %cmp.not.i88.i = icmp eq i32 %call.i.i87.i, 3
  br i1 %cmp.not.i88.i, label %if.then.i89.i.dac33_write16.exit91.i_crit_edge, label %do.end.i90.i

if.then.i89.i.dac33_write16.exit91.i_crit_edge:   ; preds = %if.then.i89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit91.i

do.end.i90.i:                                     ; preds = %if.then.i89.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.63, i32 noundef %call.i.i87.i) #11
  br label %dac33_write16.exit91.i

dac33_write16.exit91.i:                           ; preds = %do.end.i90.i, %if.then.i89.i.dac33_write16.exit91.i_crit_edge, %dac33_write_reg_cache.exit8.i85.i.dac33_write16.exit91.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i68.i) #8
  %burst_rate.i = getelementptr i8, ptr %work, i32 132
  %82 = ptrtoint ptr %burst_rate.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %burst_rate.i, align 8
  %mul.i = mul i32 %83, 1000
  %84 = ptrtoint ptr %alarm_threshold.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %alarm_threshold.i, align 4
  %div.i = udiv i32 %mul.i, %85
  %div15.i = udiv i32 1000000000, %div.i
  %add.i = add nuw nsw i32 %div15.i, 1000
  %add16.i = add nuw nsw i32 %div15.i, 1500
  call void @usleep_range_state(i32 noundef %add.i, i32 noundef %add16.i, i32 noundef 2) #8
  %86 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i94.i = getelementptr inbounds %struct.device, ptr %87, i32 0, i32 8
  %88 = ptrtoint ptr %driver_data.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %driver_data.i.i.i94.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i92.i) #8
  %90 = getelementptr inbounds [2 x i8], ptr %data.i92.i, i32 0, i32 1
  %91 = ptrtoint ptr %data.i92.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 41, ptr %data.i92.i, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 4, ptr %90, align 1
  %reg_cache.i.i95.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %89, i32 0, i32 15
  %93 = ptrtoint ptr %reg_cache.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_cache.i.i95.i, align 4
  %arrayidx.i.i96.i = getelementptr i8, ptr %94, i32 41
  %95 = ptrtoint ptr %arrayidx.i.i96.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 4, ptr %arrayidx.i.i96.i, align 1
  %chip_power.i97.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %89, i32 0, i32 6
  %96 = ptrtoint ptr %chip_power.i97.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %chip_power.i97.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool.not.i98.i = icmp eq i32 %97, 0
  br i1 %tobool.not.i98.i, label %dac33_write16.exit91.i.dac33_write.exit.i_crit_edge, label %if.then.i102.i

dac33_write16.exit91.i.dac33_write.exit.i_crit_edge: ; preds = %dac33_write16.exit91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit.i

if.then.i102.i:                                   ; preds = %dac33_write16.exit91.i
  %i2c.i99.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %89, i32 0, i32 25
  %98 = ptrtoint ptr %i2c.i99.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %i2c.i99.i, align 8
  %call.i.i100.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %99, ptr noundef nonnull %data.i92.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i100.i)
  %cmp.not.i101.i = icmp eq i32 %call.i.i100.i, 2
  br i1 %cmp.not.i101.i, label %if.then.i102.i.dac33_write.exit.i_crit_edge, label %do.end.i103.i

if.then.i102.i.dac33_write.exit.i_crit_edge:      ; preds = %if.then.i102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit.i

do.end.i103.i:                                    ; preds = %if.then.i102.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.63, i32 noundef %call.i.i100.i) #11
  br label %dac33_write.exit.i

dac33_write.exit.i:                               ; preds = %do.end.i103.i, %if.then.i102.i.dac33_write.exit.i_crit_edge, %dac33_write16.exit91.i.dac33_write.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i92.i) #8
  br label %sw.epilog

do.body20.i:                                      ; preds = %sw.bb
  %lock26.i = getelementptr i8, ptr %work, i32 140
  %call28.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock26.i) #8
  %call33.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call33.i)
  %cmp8.i.i104.i = icmp slt i64 %call33.i, 0
  %102 = tail call i64 @llvm.abs.i64(i64 %call33.i, i1 false) #8
  %103 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %102, i32 0) #12, !srcloc !275
  %asmresult.i.i.i105.i = extractvalue { i64, i32 } %103, 0
  %asmresult4.i.i.i106.i = extractvalue { i64, i32 } %103, 1
  %104 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %102, i64 %asmresult.i.i.i105.i, i32 %asmresult4.i.i.i106.i) #12, !srcloc !276
  %asmresult10.i.i.i107.i = extractvalue { i64, i32 } %104, 0
  %div1811.i.i108.i = lshr i64 %asmresult10.i.i.i107.i, 9
  %sub210.i.i109.i = sub nsw i64 0, %div1811.i.i108.i
  %cond213.i.i110.i = select i1 %cmp8.i.i104.i, i64 %sub210.i.i109.i, i64 %div1811.i.i108.i
  %t_stamp135.i = getelementptr i8, ptr %work, i32 188
  %mode7_us_to_lthr.i = getelementptr i8, ptr %work, i32 208
  %105 = ptrtoint ptr %mode7_us_to_lthr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mode7_us_to_lthr.i, align 4
  %conv36.i = zext i32 %106 to i64
  %sub.i = sub nsw i64 %cond213.i.i110.i, %conv36.i
  %107 = ptrtoint ptr %t_stamp135.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %sub.i, ptr %t_stamp135.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock26.i, i32 noundef %call28.i) #8
  %dev.i.i112.i = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %108 = ptrtoint ptr %dev.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev.i.i112.i, align 4
  %driver_data.i.i.i113.i = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 8
  %110 = ptrtoint ptr %driver_data.i.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %driver_data.i.i.i113.i, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i111.i) #8
  %112 = getelementptr inbounds [3 x i8], ptr %data.i111.i, i32 0, i32 1
  %113 = getelementptr inbounds [3 x i8], ptr %data.i111.i, i32 0, i32 2
  %114 = ptrtoint ptr %data.i111.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 28, ptr %data.i111.i, align 1
  %115 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 0, ptr %112, align 1
  %116 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 80, ptr %113, align 1
  %reg_cache.i.i114.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %111, i32 0, i32 15
  %117 = ptrtoint ptr %reg_cache.i.i114.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %reg_cache.i.i114.i, align 4
  %arrayidx.i.i115.i = getelementptr i8, ptr %118, i32 28
  %119 = ptrtoint ptr %arrayidx.i.i115.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %arrayidx.i.i115.i, align 1
  %120 = load i8, ptr %data.i111.i, align 1
  %add.i116.i = add i8 %120, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i116.i)
  %cmp.i1.i117.i = icmp slt i8 %add.i116.i, 0
  br i1 %cmp.i1.i117.i, label %do.body20.i.dac33_write_reg_cache.exit8.i125.i_crit_edge, label %if.end.i7.i122.i

do.body20.i.dac33_write_reg_cache.exit8.i125.i_crit_edge: ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit8.i125.i

if.end.i7.i122.i:                                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %113, align 1
  %123 = ptrtoint ptr %dev.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev.i.i112.i, align 4
  %driver_data.i.i.i3.i118.i = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %driver_data.i.i.i3.i118.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %driver_data.i.i.i3.i118.i, align 4
  %conv.i4.i119.i = zext i8 %add.i116.i to i32
  %reg_cache.i5.i120.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %126, i32 0, i32 15
  %127 = ptrtoint ptr %reg_cache.i5.i120.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_cache.i5.i120.i, align 4
  %arrayidx.i6.i121.i = getelementptr i8, ptr %128, i32 %conv.i4.i119.i
  %129 = ptrtoint ptr %arrayidx.i6.i121.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %122, ptr %arrayidx.i6.i121.i, align 1
  br label %dac33_write_reg_cache.exit8.i125.i

dac33_write_reg_cache.exit8.i125.i:               ; preds = %if.end.i7.i122.i, %do.body20.i.dac33_write_reg_cache.exit8.i125.i_crit_edge
  %chip_power.i123.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %111, i32 0, i32 6
  %130 = ptrtoint ptr %chip_power.i123.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %chip_power.i123.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i124.i = icmp eq i32 %131, 0
  br i1 %tobool.not.i124.i, label %dac33_write_reg_cache.exit8.i125.i.dac33_write16.exit131.i_crit_edge, label %if.then.i129.i

dac33_write_reg_cache.exit8.i125.i.dac33_write16.exit131.i_crit_edge: ; preds = %dac33_write_reg_cache.exit8.i125.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit131.i

if.then.i129.i:                                   ; preds = %dac33_write_reg_cache.exit8.i125.i
  %132 = ptrtoint ptr %data.i111.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %data.i111.i, align 1
  %134 = or i8 %133, -128
  store i8 %134, ptr %data.i111.i, align 1
  %i2c.i126.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %111, i32 0, i32 25
  %135 = ptrtoint ptr %i2c.i126.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %i2c.i126.i, align 8
  %call.i.i127.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %136, ptr noundef nonnull %data.i111.i, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i127.i)
  %cmp.not.i128.i = icmp eq i32 %call.i.i127.i, 3
  br i1 %cmp.not.i128.i, label %if.then.i129.i.dac33_write16.exit131.i_crit_edge, label %do.end.i130.i

if.then.i129.i.dac33_write16.exit131.i_crit_edge: ; preds = %if.then.i129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit131.i

do.end.i130.i:                                    ; preds = %if.then.i129.i
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %dev.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i.i112.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.63, i32 noundef %call.i.i127.i) #11
  br label %dac33_write16.exit131.i

dac33_write16.exit131.i:                          ; preds = %do.end.i130.i, %if.then.i129.i.dac33_write16.exit131.i_crit_edge, %dac33_write_reg_cache.exit8.i125.i.dac33_write16.exit131.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i111.i) #8
  %139 = ptrtoint ptr %dev.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i.i112.i, align 4
  %driver_data.i.i.i134.i = getelementptr inbounds %struct.device, ptr %140, i32 0, i32 8
  %141 = ptrtoint ptr %driver_data.i.i.i134.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %driver_data.i.i.i134.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i132.i) #8
  %143 = getelementptr inbounds [2 x i8], ptr %data.i132.i, i32 0, i32 1
  %144 = ptrtoint ptr %data.i132.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 41, ptr %data.i132.i, align 1
  %145 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 16, ptr %143, align 1
  %reg_cache.i.i135.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %142, i32 0, i32 15
  %146 = ptrtoint ptr %reg_cache.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_cache.i.i135.i, align 4
  %arrayidx.i.i136.i = getelementptr i8, ptr %147, i32 41
  %148 = ptrtoint ptr %arrayidx.i.i136.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 16, ptr %arrayidx.i.i136.i, align 1
  %chip_power.i137.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %142, i32 0, i32 6
  %149 = ptrtoint ptr %chip_power.i137.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %chip_power.i137.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool.not.i138.i = icmp eq i32 %150, 0
  br i1 %tobool.not.i138.i, label %dac33_write16.exit131.i.dac33_write.exit145.i_crit_edge, label %if.then.i142.i

dac33_write16.exit131.i.dac33_write.exit145.i_crit_edge: ; preds = %dac33_write16.exit131.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit145.i

if.then.i142.i:                                   ; preds = %dac33_write16.exit131.i
  %i2c.i139.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %142, i32 0, i32 25
  %151 = ptrtoint ptr %i2c.i139.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %i2c.i139.i, align 8
  %call.i.i140.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %152, ptr noundef nonnull %data.i132.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i140.i)
  %cmp.not.i141.i = icmp eq i32 %call.i.i140.i, 2
  br i1 %cmp.not.i141.i, label %if.then.i142.i.dac33_write.exit145.i_crit_edge, label %do.end.i143.i

if.then.i142.i.dac33_write.exit145.i_crit_edge:   ; preds = %if.then.i142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit145.i

do.end.i143.i:                                    ; preds = %if.then.i142.i
  call void @__sanitizer_cov_trace_pc() #10
  %153 = ptrtoint ptr %dev.i.i112.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev.i.i112.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %154, ptr noundef nonnull @.str.63, i32 noundef %call.i.i140.i) #11
  br label %dac33_write.exit145.i

dac33_write.exit145.i:                            ; preds = %do.end.i143.i, %if.then.i142.i.dac33_write.exit145.i_crit_edge, %dac33_write16.exit131.i.dac33_write.exit145.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i132.i) #8
  br label %sw.epilog

do.end43.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %155 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %156, ptr noundef nonnull @.str.88, i32 noundef %9) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %157 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %component1, align 8
  %fifo_mode.i24 = getelementptr i8, ptr %work, i32 108
  %159 = ptrtoint ptr %fifo_mode.i24 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %fifo_mode.i24, align 8
  %161 = zext i32 %160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %160, label %do.end12.i [
    i32 1, label %do.body2.i
    i32 2, label %sw.bb3.sw.epilog_crit_edge
  ]

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body2.i:                                       ; preds = %sw.bb3
  %lock.i25 = getelementptr i8, ptr %work, i32 140
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i25) #8
  %call6.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call6.i)
  %cmp8.i.i.i26 = icmp slt i64 %call6.i, 0
  %162 = tail call i64 @llvm.abs.i64(i64 %call6.i, i1 false) #8
  %163 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %162, i32 0) #12, !srcloc !275
  %asmresult.i.i.i.i27 = extractvalue { i64, i32 } %163, 0
  %asmresult4.i.i.i.i28 = extractvalue { i64, i32 } %163, 1
  %164 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %162, i64 %asmresult.i.i.i.i27, i32 %asmresult4.i.i.i.i28) #12, !srcloc !276
  %asmresult10.i.i.i.i29 = extractvalue { i64, i32 } %164, 0
  %div1811.i.i.i30 = lshr i64 %asmresult10.i.i.i.i29, 9
  %sub210.i.i.i31 = sub nsw i64 0, %div1811.i.i.i30
  %cond213.i.i.i32 = select i1 %cmp8.i.i.i26, i64 %sub210.i.i.i31, i64 %div1811.i.i.i30
  %t_stamp2.i33 = getelementptr i8, ptr %work, i32 196
  %165 = ptrtoint ptr %t_stamp2.i33 to i32
  call void @__asan_store8_noabort(i32 %165)
  store i64 %cond213.i.i.i32, ptr %t_stamp2.i33, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i25, i32 noundef %call3.i) #8
  %nsample.i34 = getelementptr i8, ptr %work, i32 116
  %166 = ptrtoint ptr %nsample.i34 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %nsample.i34, align 8
  %and.i35 = shl i32 %167, 3
  %dev.i.i.i36 = getelementptr inbounds %struct.snd_soc_component, ptr %158, i32 0, i32 3
  %168 = ptrtoint ptr %dev.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev.i.i.i36, align 4
  %driver_data.i.i.i.i37 = getelementptr inbounds %struct.device, ptr %169, i32 0, i32 8
  %170 = ptrtoint ptr %driver_data.i.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %driver_data.i.i.i.i37, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i22) #8
  %172 = getelementptr inbounds [3 x i8], ptr %data.i.i22, i32 0, i32 1
  %173 = getelementptr inbounds [3 x i8], ptr %data.i.i22, i32 0, i32 2
  %174 = ptrtoint ptr %data.i.i22 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 30, ptr %data.i.i22, align 1
  %shr.i.i38 = lshr i32 %and.i35, 8
  %conv2.i.i39 = trunc i32 %shr.i.i38 to i8
  %175 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %conv2.i.i39, ptr %172, align 1
  %conv5.i.i40 = trunc i32 %and.i35 to i8
  %176 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv5.i.i40, ptr %173, align 1
  %reg_cache.i.i.i41 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %171, i32 0, i32 15
  %177 = ptrtoint ptr %reg_cache.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg_cache.i.i.i41, align 4
  %arrayidx.i.i.i42 = getelementptr i8, ptr %178, i32 30
  %179 = ptrtoint ptr %arrayidx.i.i.i42 to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %conv2.i.i39, ptr %arrayidx.i.i.i42, align 1
  %180 = load i8, ptr %data.i.i22, align 1
  %add.i.i43 = add i8 %180, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %add.i.i43)
  %cmp.i1.i.i44 = icmp slt i8 %add.i.i43, 0
  br i1 %cmp.i1.i.i44, label %do.body2.i.dac33_write_reg_cache.exit8.i.i52_crit_edge, label %if.end.i7.i.i49

do.body2.i.dac33_write_reg_cache.exit8.i.i52_crit_edge: ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write_reg_cache.exit8.i.i52

if.end.i7.i.i49:                                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %173 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %173, align 1
  %183 = ptrtoint ptr %dev.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev.i.i.i36, align 4
  %driver_data.i.i.i3.i.i45 = getelementptr inbounds %struct.device, ptr %184, i32 0, i32 8
  %185 = ptrtoint ptr %driver_data.i.i.i3.i.i45 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %driver_data.i.i.i3.i.i45, align 4
  %conv.i4.i.i46 = zext i8 %add.i.i43 to i32
  %reg_cache.i5.i.i47 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %186, i32 0, i32 15
  %187 = ptrtoint ptr %reg_cache.i5.i.i47 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %reg_cache.i5.i.i47, align 4
  %arrayidx.i6.i.i48 = getelementptr i8, ptr %188, i32 %conv.i4.i.i46
  %189 = ptrtoint ptr %arrayidx.i6.i.i48 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %182, ptr %arrayidx.i6.i.i48, align 1
  br label %dac33_write_reg_cache.exit8.i.i52

dac33_write_reg_cache.exit8.i.i52:                ; preds = %if.end.i7.i.i49, %do.body2.i.dac33_write_reg_cache.exit8.i.i52_crit_edge
  %chip_power.i.i50 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %171, i32 0, i32 6
  %190 = ptrtoint ptr %chip_power.i.i50 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %chip_power.i.i50, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool.not.i.i51 = icmp eq i32 %191, 0
  br i1 %tobool.not.i.i51, label %dac33_write_reg_cache.exit8.i.i52.dac33_write16.exit.i58_crit_edge, label %if.then.i.i56

dac33_write_reg_cache.exit8.i.i52.dac33_write16.exit.i58_crit_edge: ; preds = %dac33_write_reg_cache.exit8.i.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit.i58

if.then.i.i56:                                    ; preds = %dac33_write_reg_cache.exit8.i.i52
  %192 = ptrtoint ptr %data.i.i22 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %data.i.i22, align 1
  %194 = or i8 %193, -128
  store i8 %194, ptr %data.i.i22, align 1
  %i2c.i.i53 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %171, i32 0, i32 25
  %195 = ptrtoint ptr %i2c.i.i53 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %i2c.i.i53, align 8
  %call.i.i.i54 = call i32 @i2c_transfer_buffer_flags(ptr noundef %196, ptr noundef nonnull %data.i.i22, i32 noundef 3, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i54)
  %cmp.not.i.i55 = icmp eq i32 %call.i.i.i54, 3
  br i1 %cmp.not.i.i55, label %if.then.i.i56.dac33_write16.exit.i58_crit_edge, label %do.end.i.i57

if.then.i.i56.dac33_write16.exit.i58_crit_edge:   ; preds = %if.then.i.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write16.exit.i58

do.end.i.i57:                                     ; preds = %if.then.i.i56
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %dev.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dev.i.i.i36, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.63, i32 noundef %call.i.i.i54) #11
  br label %dac33_write16.exit.i58

dac33_write16.exit.i58:                           ; preds = %do.end.i.i57, %if.then.i.i56.dac33_write16.exit.i58_crit_edge, %dac33_write_reg_cache.exit8.i.i52.dac33_write16.exit.i58_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i22) #8
  br label %sw.epilog

do.end12.i:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i59 = getelementptr inbounds %struct.snd_soc_component, ptr %158, i32 0, i32 3
  %199 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dev.i59, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %200, ptr noundef nonnull @.str.88, i32 noundef %160) #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %201 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %state, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %202 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %203, i32 0, i32 8
  %204 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i) #8
  %206 = getelementptr inbounds [2 x i8], ptr %data.i, i32 0, i32 1
  %207 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 41, ptr %data.i, align 1
  %208 = ptrtoint ptr %206 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %206, align 1
  %reg_cache.i.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %205, i32 0, i32 15
  %209 = ptrtoint ptr %reg_cache.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %reg_cache.i.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %210, i32 41
  %211 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 0, ptr %arrayidx.i.i, align 1
  %chip_power.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %205, i32 0, i32 6
  %212 = ptrtoint ptr %chip_power.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %chip_power.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i = icmp eq i32 %213, 0
  br i1 %tobool.not.i, label %sw.bb4.dac33_write.exit_crit_edge, label %if.then.i

sw.bb4.dac33_write.exit_crit_edge:                ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit

if.then.i:                                        ; preds = %sw.bb4
  %i2c.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %205, i32 0, i32 25
  %214 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %i2c.i, align 8
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %215, ptr noundef nonnull %data.i, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %if.then.i.dac33_write.exit_crit_edge, label %do.end.i

if.then.i.dac33_write.exit_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %216 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str.63, i32 noundef %call.i.i) #11
  br label %dac33_write.exit

dac33_write.exit:                                 ; preds = %do.end.i, %if.then.i.dac33_write.exit_crit_edge, %sw.bb4.dac33_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i) #8
  %218 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i61 = getelementptr inbounds %struct.device, ptr %219, i32 0, i32 8
  %220 = ptrtoint ptr %driver_data.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %driver_data.i.i.i61, align 4
  %reg_cache.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %221, i32 0, i32 15
  %222 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %reg_cache.i, align 4
  %arrayidx.i = getelementptr i8, ptr %223, i32 21
  %224 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %224)
  %225 = load i8, ptr %arrayidx.i, align 1
  %226 = or i8 %225, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data.i62) #8
  %227 = getelementptr inbounds [2 x i8], ptr %data.i62, i32 0, i32 1
  %228 = ptrtoint ptr %data.i62 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 21, ptr %data.i62, align 1
  %229 = ptrtoint ptr %227 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 %226, ptr %227, align 1
  %230 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %226, ptr %arrayidx.i, align 1
  %chip_power.i67 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %221, i32 0, i32 6
  %231 = ptrtoint ptr %chip_power.i67 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %chip_power.i67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool.not.i68 = icmp eq i32 %232, 0
  br i1 %tobool.not.i68, label %dac33_write.exit.dac33_write.exit75_crit_edge, label %if.then.i72

dac33_write.exit.dac33_write.exit75_crit_edge:    ; preds = %dac33_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit75

if.then.i72:                                      ; preds = %dac33_write.exit
  %i2c.i69 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %221, i32 0, i32 25
  %233 = ptrtoint ptr %i2c.i69 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %i2c.i69, align 8
  %call.i.i70 = call i32 @i2c_transfer_buffer_flags(ptr noundef %234, ptr noundef nonnull %data.i62, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i70)
  %cmp.not.i71 = icmp eq i32 %call.i.i70, 2
  br i1 %cmp.not.i71, label %if.then.i72.dac33_write.exit75_crit_edge, label %do.end.i73

if.then.i72.dac33_write.exit75_crit_edge:         ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %dac33_write.exit75

do.end.i73:                                       ; preds = %if.then.i72
  call void @__sanitizer_cov_trace_pc() #10
  %235 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %236, ptr noundef nonnull @.str.63, i32 noundef %call.i.i70) #11
  br label %dac33_write.exit75

dac33_write.exit75:                               ; preds = %do.end.i73, %if.then.i72.dac33_write.exit75_crit_edge, %dac33_write.exit.dac33_write.exit75_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data.i62) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %dac33_write.exit75, %do.end12.i, %dac33_write16.exit.i58, %sw.bb3.sw.epilog_crit_edge, %do.end43.i, %dac33_write.exit145.i, %dac33_write.exit.i, %entry.sw.epilog_crit_edge
  call void @mutex_unlock(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dac33_get_fifo_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %fifo_mode = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_mode, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dac33_set_fifo_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %fifo_mode = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_mode, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp = icmp eq i32 %7, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %active.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp7 = icmp ugt i32 %9, 2
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.else

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %fifo_mode, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.else ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
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
  %reg_cache.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_cache.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %arrayidx.i29 = getelementptr i8, ptr %7, i32 51
  %10 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i29, align 1
  %12 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %clk_id, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv6 = or i8 %9, 2
  %conv9 = or i8 %11, 16
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv12 = and i8 %9, -3
  %conv15 = and i8 %11, -17
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.98, i32 noundef %clk_id) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb10, %sw.bb
  %ioc_reg.0 = phi i8 [ %9, %do.end ], [ %conv12, %sw.bb10 ], [ %conv6, %sw.bb ]
  %asrcb_reg.0 = phi i8 [ %11, %do.end ], [ %conv15, %sw.bb10 ], [ %conv9, %sw.bb ]
  %refclk = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %freq, ptr %refclk, align 8
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i32 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i32, align 4
  %reg_cache.i33 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %reg_cache.i33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_cache.i33, align 4
  %arrayidx.i34 = getelementptr i8, ptr %19, i32 7
  %20 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %ioc_reg.0, ptr %arrayidx.i34, align 1
  %21 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i36 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i36, align 4
  %reg_cache.i37 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %reg_cache.i37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_cache.i37, align 4
  %arrayidx.i38 = getelementptr i8, ptr %25, i32 51
  %26 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %asrcb_reg.0, ptr %arrayidx.i38, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
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
  %reg_cache.i = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %reg_cache.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_cache.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 18
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %arrayidx.i67 = getelementptr i8, ptr %7, i32 19
  %10 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i67, align 1
  %12 = trunc i32 %fmt to i16
  %trunc = and i16 %12, -4096
  %13 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i8 %9, 3
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %fifo_mode = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.100) #11
  br label %cleanup

if.else:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %conv10 = and i8 %9, -4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb
  %aictrl_a.0 = phi i8 [ %conv10, %if.else ], [ %or, %sw.bb ]
  %conv13 = and i8 %aictrl_a.0, -13
  %and14 = and i32 %fmt, 15
  %16 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %and14, label %do.end40 [
    i32 1, label %sw.epilog.sw.epilog43_crit_edge
    i32 4, label %sw.bb19
    i32 2, label %sw.bb29
    i32 3, label %sw.bb33
  ]

sw.epilog.sw.epilog43_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog43

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %17 = or i8 %conv13, 4
  %conv25 = and i8 %11, -13
  br label %sw.epilog43

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %18 = or i8 %conv13, 8
  br label %sw.epilog43

sw.bb33:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv36 = or i8 %aictrl_a.0, 12
  br label %sw.epilog43

do.end40:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.103, i32 noundef %and14) #11
  br label %cleanup

sw.epilog43:                                      ; preds = %sw.bb33, %sw.bb29, %sw.bb19, %sw.epilog.sw.epilog43_crit_edge
  %aictrl_a.1 = phi i8 [ %conv36, %sw.bb33 ], [ %18, %sw.bb29 ], [ %17, %sw.bb19 ], [ %conv13, %sw.epilog.sw.epilog43_crit_edge ]
  %aictrl_b.0 = phi i8 [ %11, %sw.bb33 ], [ %11, %sw.bb29 ], [ %conv25, %sw.bb19 ], [ %11, %sw.epilog.sw.epilog43_crit_edge ]
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %aictrl_a.1, ptr %arrayidx.i, align 1
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i74 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i74, align 4
  %reg_cache.i75 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %reg_cache.i75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_cache.i75, align 4
  %arrayidx.i76 = getelementptr i8, ptr %25, i32 19
  %26 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %aictrl_b.0, ptr %arrayidx.i76, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog43, %do.end40, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end40 ], [ 0, %sw.epilog43 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dac33_startup(ptr noundef %substream, ptr nocapture noundef readonly %dai) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %substream2 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream2, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @dac33_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %substream2 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %substream2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %7, label %do.end [
    i32 44100, label %entry.sw.epilog_crit_edge
    i32 48000, label %entry.sw.epilog_crit_edge47
  ]

entry.sw.epilog_crit_edge47:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.58, i32 noundef %7) #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge47
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %sw.epilog.if.then.i.i.i_crit_edge

sw.epilog.if.then.i.i.i_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %sw.epilog.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %sw.epilog.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %10, %sw.epilog.if.then.i.i.i_crit_edge ], [ %13, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %11 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !277
  %add.i.i.i = or i32 %11, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %sw.epilog
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  %14 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call1.i, label %do.end17 [
    i32 16, label %sw.bb5
    i32 32, label %sw.bb7
  ]

sw.bb5:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fifo_size = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 11
  %15 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6144, ptr %fifo_size, align 4
  %burst_bclkdiv = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 14
  %16 = ptrtoint ptr %burst_bclkdiv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %burst_bclkdiv, align 8
  %conv = zext i8 %17 to i32
  %div = udiv i32 49152000, %conv
  %div633 = lshr i32 %div, 5
  %burst_rate = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 16
  %18 = ptrtoint ptr %burst_rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div633, ptr %burst_rate, align 8
  br label %cleanup

sw.bb7:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %fifo_size8 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 11
  %19 = ptrtoint ptr %fifo_size8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4096, ptr %fifo_size8, align 4
  %burst_bclkdiv9 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 14
  %20 = ptrtoint ptr %burst_bclkdiv9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %burst_bclkdiv9, align 8
  %conv10 = zext i8 %21 to i32
  %div11 = udiv i32 49152000, %conv10
  %div1232 = lshr i32 %div11, 6
  %burst_rate13 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 16
  %22 = ptrtoint ptr %burst_rate13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div1232, ptr %burst_rate13, align 8
  br label %cleanup

do.end17:                                         ; preds = %params_width.exit
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i36 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i36, label %for.inc.i.i.i43, label %do.end17.if.then.i.i.i40_crit_edge

do.end17.if.then.i.i.i40_crit_edge:               ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i40

if.then.i.i.i40:                                  ; preds = %for.inc.i.i.i43.if.then.i.i.i40_crit_edge, %do.end17.if.then.i.i.i40_crit_edge
  %i.09.lcssa.i.i.i37 = phi i32 [ 0, %do.end17.if.then.i.i.i40_crit_edge ], [ 32, %for.inc.i.i.i43.if.then.i.i.i40_crit_edge ]
  %.lcssa.i.i.i38 = phi i32 [ %26, %do.end17.if.then.i.i.i40_crit_edge ], [ %29, %for.inc.i.i.i43.if.then.i.i.i40_crit_edge ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i38, i1 true) #8, !range !277
  %add.i.i.i39 = or i32 %27, %i.09.lcssa.i.i.i37
  br label %params_width.exit46

for.inc.i.i.i43:                                  ; preds = %do.end17
  %arrayidx.1.i.i.i41 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i.i.i42 = icmp eq i32 %29, 0
  br i1 %tobool.not.1.i.i.i42, label %for.inc.i.i.i43.params_width.exit46_crit_edge, label %for.inc.i.i.i43.if.then.i.i.i40_crit_edge

for.inc.i.i.i43.if.then.i.i.i40_crit_edge:        ; preds = %for.inc.i.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i40

for.inc.i.i.i43.params_width.exit46_crit_edge:    ; preds = %for.inc.i.i.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit46

params_width.exit46:                              ; preds = %for.inc.i.i.i43.params_width.exit46_crit_edge, %if.then.i.i.i40
  %retval.0.i.i.i44 = phi i32 [ %add.i.i.i39, %if.then.i.i.i40 ], [ 0, %for.inc.i.i.i43.params_width.exit46_crit_edge ]
  %call1.i45 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i44) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.107, i32 noundef %call1.i45) #11
  br label %cleanup

cleanup:                                          ; preds = %params_width.exit46, %sw.bb7, %sw.bb5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %params_width.exit46 ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_pcm_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge17
    i32 4, label %entry.sw.bb_crit_edge18
    i32 0, label %entry.sw.bb3_crit_edge
    i32 5, label %entry.sw.bb3_crit_edge19
    i32 3, label %entry.sw.bb3_crit_edge20
  ]

entry.sw.bb3_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb3

entry.sw.bb_crit_edge18:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge17:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge17, %entry.sw.bb_crit_edge18
  %fifo_mode = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 10
  %7 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fifo_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge19, %entry.sw.bb3_crit_edge20
  %fifo_mode4 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %fifo_mode4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fifo_mode4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.sw.epilog.sink.split_crit_edge

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb3.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 1, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 3, %sw.bb3.sw.epilog.sink.split_crit_edge ]
  %state7 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 24
  %11 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %state7, align 4
  %work8 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i16 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work8) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb3.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac33_dai_delay(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %fifo_mode = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fifo_mode, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %7, label %do.end213 [
    i32 0, label %entry.out_crit_edge
    i32 1, label %do.body2
    i32 2, label %do.body124
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 18
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %t_stamp1 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 19
  %9 = ptrtoint ptr %t_stamp1 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %t_stamp1, align 8
  %t_stamp2 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 20
  %11 = ptrtoint ptr %t_stamp2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %t_stamp2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  %call8 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call8)
  %cmp8.i.i = icmp slt i64 %call8, 0
  %13 = tail call i64 @llvm.abs.i64(i64 %call8, i1 false) #8
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %13, i32 0) #12, !srcloc !275
  %asmresult.i.i.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %14, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %13, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !276
  %asmresult10.i.i.i = extractvalue { i64, i32 } %15, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool.not = icmp eq i64 %12, 0
  br i1 %tobool.not, label %do.body2.out_crit_edge, label %if.end

do.body2.out_crit_edge:                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %do.body2
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %12)
  %cmp10 = icmp ugt i64 %10, %12
  br i1 %cmp10, label %if.then12, label %if.else30

if.then12:                                        ; preds = %if.end
  %sub = sub i64 %cond213.i.i, %10
  %conv13 = trunc i64 %sub to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13)
  %tobool14.not = icmp eq i32 %conv13, 0
  br i1 %tobool14.not, label %if.then12.cond.end20_crit_edge, label %cond.true

if.then12.cond.end20_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rate, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %conv13, i32 1000000)
  %div = udiv i32 1000000, %20
  %div18 = udiv i32 %19, %div
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true, %if.then12.cond.end20_crit_edge
  %cond21 = phi i32 [ %div18, %cond.true ], [ 0, %if.then12.cond.end20_crit_edge ]
  %alarm_threshold = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 9
  %21 = ptrtoint ptr %alarm_threshold to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %alarm_threshold, align 4
  %23 = tail call i32 @llvm.usub.sat.i32(i32 %22, i32 %cond21)
  br label %out

if.else30:                                        ; preds = %if.end
  %sub31 = sub i64 %cond213.i.i, %12
  %mode1_us_burst = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 21
  %24 = ptrtoint ptr %mode1_us_burst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode1_us_burst, align 8
  %conv32 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub31, i64 %conv32)
  %cmp33.not = icmp ugt i64 %sub31, %conv32
  %sub82 = sub i64 %cond213.i.i, %10
  %conv83 = trunc i64 %sub82 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv83)
  %tobool84.not = icmp eq i32 %conv83, 0
  br i1 %cmp33.not, label %if.else81, label %if.then35

if.then35:                                        ; preds = %if.else30
  br i1 %tobool84.not, label %if.then35.cond.end51_crit_edge, label %cond.true39

if.then35.cond.end51_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end51

cond.true39:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %runtime40 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %26 = ptrtoint ptr %runtime40 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %runtime40, align 4
  %rate41 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %rate41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rate41, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %conv83, i32 1000000)
  %div48 = udiv i32 1000000, %30
  %div49 = udiv i32 %29, %div48
  br label %cond.end51

cond.end51:                                       ; preds = %cond.true39, %if.then35.cond.end51_crit_edge
  %cond52 = phi i32 [ %div49, %cond.true39 ], [ 0, %if.then35.cond.end51_crit_edge ]
  %conv54 = trunc i64 %sub31 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv54)
  %tobool55.not = icmp eq i32 %conv54, 0
  br i1 %tobool55.not, label %cond.end51.cond.end66_crit_edge, label %cond.true56

cond.end51.cond.end66_crit_edge:                  ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end66

cond.true56:                                      ; preds = %cond.end51
  call void @__sanitizer_cov_trace_pc() #10
  %burst_rate = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 16
  %31 = ptrtoint ptr %burst_rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %burst_rate, align 8
  %33 = tail call i32 @llvm.umin.i32(i32 %conv54, i32 1000000)
  %div63 = udiv i32 1000000, %33
  %div64 = udiv i32 %32, %div63
  br label %cond.end66

cond.end66:                                       ; preds = %cond.true56, %cond.end51.cond.end66_crit_edge
  %cond67 = phi i32 [ %div64, %cond.true56 ], [ 0, %cond.end51.cond.end66_crit_edge ]
  %alarm_threshold68 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 9
  %34 = ptrtoint ptr %alarm_threshold68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %alarm_threshold68, align 4
  %sub69 = sub i32 %cond67, %cond52
  %add = add i32 %sub69, %35
  %36 = tail call i32 @llvm.smax.i32(i32 %add, i32 0)
  br label %out

if.else81:                                        ; preds = %if.else30
  br i1 %tobool84.not, label %if.else81.cond.end97_crit_edge, label %cond.true85

if.else81.cond.end97_crit_edge:                   ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end97

cond.true85:                                      ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #10
  %runtime86 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %37 = ptrtoint ptr %runtime86 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %runtime86, align 4
  %rate87 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %rate87 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rate87, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %conv83, i32 1000000)
  %div94 = udiv i32 1000000, %41
  %div95 = udiv i32 %40, %div94
  br label %cond.end97

cond.end97:                                       ; preds = %cond.true85, %if.else81.cond.end97_crit_edge
  %cond98 = phi i32 [ %div95, %cond.true85 ], [ 0, %if.else81.cond.end97_crit_edge ]
  %nsample = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 12
  %42 = ptrtoint ptr %nsample to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nsample, align 8
  %alarm_threshold99 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 9
  %44 = ptrtoint ptr %alarm_threshold99 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %alarm_threshold99, align 4
  %sub100 = sub i32 %43, %cond98
  %add101 = add i32 %45, %sub100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add101)
  %cmp102 = icmp sgt i32 %add101, 0
  br i1 %cmp102, label %if.then110, label %cond.end97.out_crit_edge, !prof !272

cond.end97.out_crit_edge:                         ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then110:                                       ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #10
  %fifo_size = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 11
  %46 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fifo_size, align 4
  %48 = tail call i32 @llvm.umin.i32(i32 %add101, i32 %47)
  br label %out

do.body124:                                       ; preds = %entry
  %lock130 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 18
  %call132 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock130) #8
  %t_stamp1137 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 19
  %49 = ptrtoint ptr %t_stamp1137 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %t_stamp1137, align 8
  %uthr138 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 23
  %51 = ptrtoint ptr %uthr138 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %uthr138, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock130, i32 noundef %call132) #8
  %call140 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call140)
  %cmp8.i.i309 = icmp slt i64 %call140, 0
  %53 = tail call i64 @llvm.abs.i64(i64 %call140, i1 false) #8
  %54 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %53, i32 0) #12, !srcloc !275
  %asmresult.i.i.i310 = extractvalue { i64, i32 } %54, 0
  %asmresult4.i.i.i311 = extractvalue { i64, i32 } %54, 1
  %55 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %53, i64 %asmresult.i.i.i310, i32 %asmresult4.i.i.i311) #12, !srcloc !276
  %asmresult10.i.i.i312 = extractvalue { i64, i32 } %55, 0
  %div1811.i.i313 = lshr i64 %asmresult10.i.i.i312, 9
  %sub210.i.i314 = sub nsw i64 0, %div1811.i.i313
  %cond213.i.i315 = select i1 %cmp8.i.i309, i64 %sub210.i.i314, i64 %div1811.i.i313
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %tobool142.not = icmp eq i64 %50, 0
  br i1 %tobool142.not, label %do.body124.out_crit_edge, label %if.end144

do.body124.out_crit_edge:                         ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end144:                                        ; preds = %do.body124
  call void @__sanitizer_cov_trace_cmp8(i64 %cond213.i.i315, i64 %50)
  %cmp145.not = icmp ugt i64 %cond213.i.i315, %50
  br i1 %cmp145.not, label %if.end148, label %if.end144.out_crit_edge

if.end144.out_crit_edge:                          ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end148:                                        ; preds = %if.end144
  %sub149 = sub i64 %cond213.i.i315, %50
  %conv150 = trunc i64 %sub149 to i32
  %mode7_us_to_lthr = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 22
  %56 = ptrtoint ptr %mode7_us_to_lthr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mode7_us_to_lthr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv150)
  %cmp151.not = icmp ult i32 %57, %conv150
  br i1 %cmp151.not, label %if.else176, label %if.then153

if.then153:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  %runtime154 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %58 = ptrtoint ptr %runtime154 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %runtime154, align 4
  %rate155 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %59, i32 0, i32 14
  %60 = ptrtoint ptr %rate155 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rate155, align 4
  %62 = tail call i32 @llvm.umin.i32(i32 %conv150, i32 1000000)
  %div162 = udiv i32 1000000, %62
  %div163 = udiv i32 %61, %div162
  %63 = tail call i32 @llvm.usub.sat.i32(i32 %52, i32 %div163)
  br label %out

if.else176:                                       ; preds = %if.end148
  %sub178 = sub i32 %conv150, %57
  %runtime179 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %64 = ptrtoint ptr %runtime179 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %runtime179, align 4
  %rate180 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %rate180 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rate180, align 4
  %68 = tail call i32 @llvm.umin.i32(i32 %sub178, i32 1000000)
  %div187 = udiv i32 1000000, %68
  %div188 = udiv i32 %67, %div187
  %burst_rate189 = getelementptr inbounds %struct.tlv320dac33_priv, ptr %5, i32 0, i32 16
  %69 = ptrtoint ptr %burst_rate189 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %burst_rate189, align 8
  %div197 = udiv i32 %70, %div187
  %add198 = sub i32 10, %div188
  %sub199 = add i32 %add198, %div197
  call void @__sanitizer_cov_trace_cmp4(i32 %sub199, i32 %52)
  %cmp200 = icmp ugt i32 %sub199, %52
  br i1 %cmp200, label %if.then208, label %if.else176.out_crit_edge, !prof !273

if.else176.out_crit_edge:                         ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then208:                                       ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end213:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.88, i32 noundef %7) #11
  br label %out

out:                                              ; preds = %do.end213, %if.then208, %if.else176.out_crit_edge, %if.then153, %if.end144.out_crit_edge, %do.body124.out_crit_edge, %if.then110, %cond.end97.out_crit_edge, %cond.end66, %cond.end20, %do.body2.out_crit_edge, %entry.out_crit_edge
  %delay.0 = phi i32 [ 0, %do.end213 ], [ %52, %if.then208 ], [ %sub199, %if.else176.out_crit_edge ], [ 0, %do.body124.out_crit_edge ], [ %48, %if.then110 ], [ 0, %do.body2.out_crit_edge ], [ %7, %entry.out_crit_edge ], [ %36, %cond.end66 ], [ 0, %cond.end97.out_crit_edge ], [ %52, %if.end144.out_crit_edge ], [ %23, %cond.end20 ], [ %63, %if.then153 ]
  ret i32 %delay.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 141)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !190, !191, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !208, !209, !211, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !238, !239, !240, !242, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261}
!llvm.module.flags = !{!263, !264, !265, !266, !267, !268, !269, !270}
!llvm.ident = !{!271}

!0 = !{ptr @__initcall__kmod_snd_soc_tlv320dac33__295_1574_tlv320dac33_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_tlv320dac33__295_1574_tlv320dac33_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1574, i32 1}
!2 = !{ptr @__exitcall_tlv320dac33_i2c_driver_exit, !1, !"__exitcall_tlv320dac33_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1576, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1577, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1578, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1567, i32 11}
!12 = !{ptr @tlv320dac33_i2c_driver, !13, !"tlv320dac33_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1565, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1474, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dac33_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dac33_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @dac33_i2c_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1492, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dac33_i2c_probe.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1493, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1509, i32 41}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1511, i32 4}
!32 = !{ptr @dac33_i2c_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dac33_i2c_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1526, i32 3}
!36 = !{ptr @dac33_i2c_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dac33_i2c_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dac33_reg, !39, !"dac33_reg", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 114, i32 17}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 72, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 73, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 74, i32 2}
!46 = distinct !{null, !47, !"dac33_supply_names", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 71, i32 20}
!48 = !{ptr @soc_component_dev_tlv320dac33, !49, !"soc_component_dev_tlv320dac33", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1422, i32 46}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 494, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 497, i32 2}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 499, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 501, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 502, i32 2}
!60 = !{ptr @dac33_snd_controls, !61, !"dac33_snd_controls", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 493, i32 38}
!62 = !{ptr @dac_digivol_tlv, !63, !"dac_digivol_tlv", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 491, i32 8}
!64 = !{ptr @l_lineout_gain_enum, !65, !"l_lineout_gain_enum", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 476, i32 8}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 472, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 472, i32 24}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 473, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 473, i32 23}
!74 = !{ptr @lr_lineout_gain_texts, !75, !"lr_lineout_gain_texts", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 471, i32 20}
!76 = !{ptr @r_lineout_gain_enum, !77, !"r_lineout_gain_enum", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 480, i32 8}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 535, i32 2}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 536, i32 2}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 538, i32 2}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 539, i32 2}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 541, i32 2}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 542, i32 2}
!91 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 545, i32 2}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 547, i32 2}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 550, i32 2}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 552, i32 2}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 559, i32 2}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 560, i32 2}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 562, i32 2}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 564, i32 2}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 567, i32 2}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 569, i32 2}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 572, i32 2}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 575, i32 2}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 576, i32 2}
!118 = !{ptr @dac33_dapm_widgets, !119, !"dac33_dapm_widgets", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 534, i32 41}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 512, i32 2}
!122 = !{ptr @dac33_dapm_abypassl_control, !123, !"dac33_dapm_abypassl_control", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 511, i32 38}
!124 = !{ptr @dac33_dapm_abypassr_control, !125, !"dac33_dapm_abypassr_control", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 514, i32 38}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 525, i32 1}
!128 = !{ptr @dac33_dapm_left_lom_control, !129, !"dac33_dapm_left_lom_control", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 524, i32 38}
!130 = !{ptr @dac33_left_lom_enum, !131, !"dac33_left_lom_enum", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 520, i32 8}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 518, i32 44}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 518, i32 51}
!136 = !{ptr @dac33_lr_lom_texts, !137, !"dac33_lr_lom_texts", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 518, i32 20}
!138 = !{ptr @dac33_dapm_right_lom_control, !139, !"dac33_dapm_right_lom_control", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 531, i32 38}
!140 = !{ptr @dac33_right_lom_enum, !141, !"dac33_right_lom_enum", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 527, i32 8}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 865, i32 3}
!144 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @dac33_prepare_chip._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @dac33_prepare_chip._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 887, i32 3}
!149 = !{ptr @dac33_prepare_chip._entry.60, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @dac33_prepare_chip._entry_ptr.62, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 227, i32 4}
!153 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @dac33_write._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @dac33_write._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 274, i32 4}
!158 = !{ptr @dac33_write16._entry, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @dac33_write16._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 777, i32 3}
!162 = !{ptr @.str.67, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @dac33_oscwait._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @dac33_oscwait._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 194, i32 4}
!167 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @dac33_read._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @dac33_read._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @audio_map, !171, !"audio_map", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 579, i32 40}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1376, i32 3}
!174 = !{ptr @.str.71, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @dac33_soc_probe._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @dac33_soc_probe._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.73, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1383, i32 3}
!179 = !{ptr @dac33_soc_probe._entry.72, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @dac33_soc_probe._entry_ptr.74, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.76, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1394, i32 4}
!183 = !{ptr @dac33_soc_probe._entry.75, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @dac33_soc_probe._entry_ptr.77, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @dac33_soc_probe.__key, !186, !"__key", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1399, i32 4}
!187 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.79, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 372, i32 3}
!190 = !{ptr @.str.80, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.81, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @dac33_hard_power.__UNIQUE_ID_ddebug294, !189, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!193 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.84, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 381, i32 4}
!197 = !{ptr @dac33_hard_power._entry, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @dac33_hard_power._entry_ptr, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.86, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 398, i32 4}
!201 = !{ptr @dac33_hard_power._entry.85, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @dac33_hard_power._entry_ptr.87, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 685, i32 3}
!205 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @dac33_prefill_handler._entry, !204, !"_entry", i1 false, i1 false}
!208 = !{ptr @dac33_prefill_handler._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.91, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 710, i32 3}
!211 = !{ptr @dac33_playback_handler._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @dac33_playback_handler._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.92, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 506, i32 2}
!215 = !{ptr @dac33_mode_snd_controls, !216, !"dac33_mode_snd_controls", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 505, i32 38}
!217 = !{ptr @dac33_fifo_mode_enum, !218, !"dac33_fifo_mode_enum", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 468, i32 8}
!219 = !{ptr @.str.93, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 465, i32 2}
!221 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 465, i32 12}
!223 = !{ptr @.str.95, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 465, i32 22}
!225 = !{ptr @dac33_fifo_mode_texts, !226, !"dac33_fifo_mode_texts", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 464, i32 20}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1454, i32 10}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1456, i32 18}
!231 = !{ptr @dac33_dai, !232, !"dac33_dai", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1453, i32 34}
!233 = !{ptr @dac33_dai_ops, !234, !"dac33_dai_ops", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1443, i32 37}
!235 = !{ptr @.str.98, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1300, i32 3}
!237 = !{ptr @.str.99, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @dac33_set_dai_sysclk._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @dac33_set_dai_sysclk._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1329, i32 4}
!242 = !{ptr @.str.101, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @dac33_set_dai_fmt._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @dac33_set_dai_fmt._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.103, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1355, i32 3}
!247 = !{ptr @dac33_set_dai_fmt._entry.102, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @dac33_set_dai_fmt._entry_ptr.104, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.105, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 817, i32 3}
!251 = !{ptr @dac33_hw_params._entry, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @dac33_hw_params._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.107, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 832, i32 3}
!255 = !{ptr @dac33_hw_params._entry.106, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @dac33_hw_params._entry_ptr.108, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.109, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1273, i32 3}
!259 = !{ptr @dac33_dai_delay._entry, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @dac33_dai_delay._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @tlv320dac33_i2c_id, !262, !"tlv320dac33_i2c_id", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/tlv320dac33.c", i32 1556, i32 35}
!263 = !{i32 1, !"wchar_size", i32 2}
!264 = !{i32 1, !"min_enum_size", i32 4}
!265 = !{i32 8, !"branch-target-enforcement", i32 0}
!266 = !{i32 8, !"sign-return-address", i32 0}
!267 = !{i32 8, !"sign-return-address-all", i32 0}
!268 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!269 = !{i32 7, !"uwtable", i32 1}
!270 = !{i32 7, !"frame-pointer", i32 2}
!271 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!272 = !{!"branch_weights", i32 2000, i32 1}
!273 = !{!"branch_weights", i32 1, i32 2000}
!274 = !{i64 2148994948, i64 2148994953, i64 2148994966, i64 2148995010, i64 2148995044, i64 2148995065}
!275 = !{i64 742451, i64 742478, i64 742500, i64 742528}
!276 = !{i64 742859, i64 742886, i64 742919, i64 742940, i64 742967, i64 742993}
!277 = !{i32 0, i32 33}
