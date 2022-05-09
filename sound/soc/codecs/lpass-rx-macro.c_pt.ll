; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/lpass-rx-macro.c_pt.bc'
source_filename = "../sound/soc/codecs/lpass-rx-macro.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.wcd_iir_filter_ctl = type { i32, i32, %struct.soc_bytes_ext }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
%struct.comp_coeff_val = type { i8, i8 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rx_macro = type { ptr, [2 x i32], [3 x i32], [6 x i32], [3 x i16], i32, i8, i32, i32, i8, i8, i8, ptr, [6 x i32], [6 x i32], [6 x i16], i32, i32, i32, ptr, [5 x %struct.clk_bulk_data], %struct.clk_hw }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.73, [64 x i8] }
%union.anon.73 = type { %struct.anon.76, [40 x i8] }
%struct.anon.76 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_lpass_rx_macro__238_3596_rx_macro_driver_init6 = internal global ptr @rx_macro_driver_init, section ".initcall6.init", align 4
@rx_macro_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rx_macro_probe, ptr @rx_macro_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @rx_macro_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rx_macro_driver_exit = internal global ptr @rx_macro_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [51 x i8] c"snd_soc_lpass_rx_macro.description=RX macro driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [68 x i8] c"snd_soc_lpass_rx_macro.file=sound/soc/codecs/snd-soc-lpass-rx-macro\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [35 x i8] c"snd_soc_lpass_rx_macro.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_macro\00", [23 x i8] zeroinitializer }, align 32
@rx_macro_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-lpass-rx-macro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-lpass-rx-macro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"macro\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dcodec\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"npl\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsgen\00", [26 x i8] zeroinitializer }, align 32
@rx_macro_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 3536, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error getting RX Clocks (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rx_macro_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/codecs/lpass-rx-macro.c\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rx_macro_probe._entry_ptr = internal global ptr @rx_macro_probe._entry, section ".printk_index", align 4
@rx_macro_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rx_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str, i32 16, i32 4, i32 0, i32 32, ptr @rx_is_writeable_register, ptr @rx_is_readable_register, ptr @rx_is_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3980, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rx_defaults, i32 285, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"lpass_rx_macro:3544:(&rx_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@rx_macro_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.15, ptr @rx_macro_snd_controls, i32 41, ptr @rx_macro_dapm_widgets, i32 72, ptr @rx_audio_map, i32 288, ptr @rx_macro_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@rx_macro_dai = internal global { [5 x %struct.snd_soc_dai_driver], [216 x i8] } { [5 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.190, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rx_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.99, i64 4294968388, i32 32490, i32 8000, i32 384000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.191, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rx_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.101, i64 4294968388, i32 32490, i32 8000, i32 384000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.192, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rx_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.103, i64 4294968388, i32 32490, i32 8000, i32 384000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.193, i32 4, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rx_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.105, i64 4294968388, i32 32490, i32 8000, i32 384000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.249, i32 5, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @rx_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.107, i64 4294967364, i32 138, i32 8000, i32 48000, i32 1, i32 3, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [216 x i8] zeroinitializer }, align 32
@rx_defaults = internal constant { [285 x %struct.reg_default], [568 x i8] } { [285 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 112, i32 17 }, %struct.reg_default { i32 116, i32 32 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 128, i32 17 }, %struct.reg_default { i32 132, i32 32 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 12 }, %struct.reg_default { i32 148, i32 12 }, %struct.reg_default { i32 152, i32 12 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 260, i32 0 }, %struct.reg_default { i32 264, i32 0 }, %struct.reg_default { i32 268, i32 0 }, %struct.reg_default { i32 272, i32 8 }, %struct.reg_default { i32 320, i32 0 }, %struct.reg_default { i32 324, i32 56 }, %struct.reg_default { i32 384, i32 0 }, %struct.reg_default { i32 388, i32 0 }, %struct.reg_default { i32 392, i32 0 }, %struct.reg_default { i32 396, i32 0 }, %struct.reg_default { i32 400, i32 0 }, %struct.reg_default { i32 404, i32 0 }, %struct.reg_default { i32 408, i32 0 }, %struct.reg_default { i32 412, i32 0 }, %struct.reg_default { i32 416, i32 0 }, %struct.reg_default { i32 512, i32 0 }, %struct.reg_default { i32 516, i32 3 }, %struct.reg_default { i32 520, i32 2 }, %struct.reg_default { i32 524, i32 28 }, %struct.reg_default { i32 528, i32 57 }, %struct.reg_default { i32 532, i32 12 }, %struct.reg_default { i32 536, i32 12 }, %struct.reg_default { i32 540, i32 1 }, %struct.reg_default { i32 544, i32 0 }, %struct.reg_default { i32 548, i32 0 }, %struct.reg_default { i32 552, i32 128 }, %struct.reg_default { i32 556, i32 0 }, %struct.reg_default { i32 560, i32 0 }, %struct.reg_default { i32 564, i32 0 }, %struct.reg_default { i32 568, i32 7 }, %struct.reg_default { i32 572, i32 0 }, %struct.reg_default { i32 576, i32 0 }, %struct.reg_default { i32 580, i32 2 }, %struct.reg_default { i32 584, i32 154 }, %struct.reg_default { i32 588, i32 16 }, %struct.reg_default { i32 640, i32 0 }, %struct.reg_default { i32 644, i32 16 }, %struct.reg_default { i32 648, i32 0 }, %struct.reg_default { i32 652, i32 0 }, %struct.reg_default { i32 656, i32 4 }, %struct.reg_default { i32 660, i32 224 }, %struct.reg_default { i32 664, i32 1 }, %struct.reg_default { i32 668, i32 64 }, %struct.reg_default { i32 672, i32 42 }, %struct.reg_default { i32 672, i32 0 }, %struct.reg_default { i32 680, i32 0 }, %struct.reg_default { i32 684, i32 24 }, %struct.reg_default { i32 688, i32 24 }, %struct.reg_default { i32 692, i32 3 }, %struct.reg_default { i32 696, i32 1 }, %struct.reg_default { i32 700, i32 0 }, %struct.reg_default { i32 704, i32 0 }, %struct.reg_default { i32 708, i32 100 }, %struct.reg_default { i32 712, i32 1 }, %struct.reg_default { i32 716, i32 0 }, %struct.reg_default { i32 720, i32 0 }, %struct.reg_default { i32 724, i32 0 }, %struct.reg_default { i32 728, i32 12 }, %struct.reg_default { i32 732, i32 0 }, %struct.reg_default { i32 736, i32 119 }, %struct.reg_default { i32 740, i32 1 }, %struct.reg_default { i32 744, i32 0 }, %struct.reg_default { i32 748, i32 75 }, %struct.reg_default { i32 752, i32 0 }, %struct.reg_default { i32 756, i32 1 }, %struct.reg_default { i32 760, i32 0 }, %struct.reg_default { i32 764, i32 0 }, %struct.reg_default { i32 768, i32 4 }, %struct.reg_default { i32 772, i32 8 }, %struct.reg_default { i32 776, i32 12 }, %struct.reg_default { i32 780, i32 224 }, %struct.reg_default { i32 784, i32 0 }, %struct.reg_default { i32 788, i32 0 }, %struct.reg_default { i32 792, i32 0 }, %struct.reg_default { i32 796, i32 0 }, %struct.reg_default { i32 800, i32 0 }, %struct.reg_default { i32 804, i32 0 }, %struct.reg_default { i32 832, i32 0 }, %struct.reg_default { i32 836, i32 0 }, %struct.reg_default { i32 864, i32 255 }, %struct.reg_default { i32 872, i32 0 }, %struct.reg_default { i32 880, i32 0 }, %struct.reg_default { i32 896, i32 255 }, %struct.reg_default { i32 904, i32 0 }, %struct.reg_default { i32 912, i32 0 }, %struct.reg_default { i32 960, i32 0 }, %struct.reg_default { i32 968, i32 0 }, %struct.reg_default { i32 976, i32 0 }, %struct.reg_default { i32 1024, i32 4 }, %struct.reg_default { i32 1028, i32 0 }, %struct.reg_default { i32 1032, i32 100 }, %struct.reg_default { i32 1036, i32 143 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1044, i32 0 }, %struct.reg_default { i32 1048, i32 4 }, %struct.reg_default { i32 1052, i32 126 }, %struct.reg_default { i32 1056, i32 0 }, %struct.reg_default { i32 1060, i32 8 }, %struct.reg_default { i32 1064, i32 0 }, %struct.reg_default { i32 1068, i32 0 }, %struct.reg_default { i32 1072, i32 0 }, %struct.reg_default { i32 1076, i32 0 }, %struct.reg_default { i32 1080, i32 8 }, %struct.reg_default { i32 1084, i32 0 }, %struct.reg_default { i32 1088, i32 8 }, %struct.reg_default { i32 1092, i32 0 }, %struct.reg_default { i32 1096, i32 0 }, %struct.reg_default { i32 1100, i32 0 }, %struct.reg_default { i32 1104, i32 85 }, %struct.reg_default { i32 1108, i32 85 }, %struct.reg_default { i32 1112, i32 85 }, %struct.reg_default { i32 1152, i32 4 }, %struct.reg_default { i32 1156, i32 0 }, %struct.reg_default { i32 1160, i32 100 }, %struct.reg_default { i32 1164, i32 143 }, %struct.reg_default { i32 1168, i32 0 }, %struct.reg_default { i32 1172, i32 0 }, %struct.reg_default { i32 1176, i32 4 }, %struct.reg_default { i32 1180, i32 126 }, %struct.reg_default { i32 1184, i32 0 }, %struct.reg_default { i32 1188, i32 8 }, %struct.reg_default { i32 1192, i32 0 }, %struct.reg_default { i32 1196, i32 0 }, %struct.reg_default { i32 1200, i32 0 }, %struct.reg_default { i32 1204, i32 0 }, %struct.reg_default { i32 1208, i32 8 }, %struct.reg_default { i32 1212, i32 0 }, %struct.reg_default { i32 1216, i32 8 }, %struct.reg_default { i32 1220, i32 0 }, %struct.reg_default { i32 1224, i32 0 }, %struct.reg_default { i32 1228, i32 0 }, %struct.reg_default { i32 1232, i32 85 }, %struct.reg_default { i32 1236, i32 85 }, %struct.reg_default { i32 1240, i32 85 }, %struct.reg_default { i32 1280, i32 4 }, %struct.reg_default { i32 1284, i32 0 }, %struct.reg_default { i32 1288, i32 100 }, %struct.reg_default { i32 1292, i32 143 }, %struct.reg_default { i32 1296, i32 0 }, %struct.reg_default { i32 1300, i32 0 }, %struct.reg_default { i32 1304, i32 4 }, %struct.reg_default { i32 1308, i32 126 }, %struct.reg_default { i32 1312, i32 0 }, %struct.reg_default { i32 1316, i32 4 }, %struct.reg_default { i32 1320, i32 8 }, %struct.reg_default { i32 1324, i32 0 }, %struct.reg_default { i32 1328, i32 0 }, %struct.reg_default { i32 1332, i32 0 }, %struct.reg_default { i32 1336, i32 0 }, %struct.reg_default { i32 1340, i32 0 }, %struct.reg_default { i32 1344, i32 0 }, %struct.reg_default { i32 1348, i32 8 }, %struct.reg_default { i32 1352, i32 0 }, %struct.reg_default { i32 1356, i32 0 }, %struct.reg_default { i32 1920, i32 0 }, %struct.reg_default { i32 1924, i32 7 }, %struct.reg_default { i32 1928, i32 60 }, %struct.reg_default { i32 1932, i32 0 }, %struct.reg_default { i32 1936, i32 0 }, %struct.reg_default { i32 2048, i32 96 }, %struct.reg_default { i32 2052, i32 219 }, %struct.reg_default { i32 2056, i32 255 }, %struct.reg_default { i32 2060, i32 53 }, %struct.reg_default { i32 2064, i32 255 }, %struct.reg_default { i32 2068, i32 0 }, %struct.reg_default { i32 2072, i32 1 }, %struct.reg_default { i32 2076, i32 40 }, %struct.reg_default { i32 2112, i32 96 }, %struct.reg_default { i32 2116, i32 219 }, %struct.reg_default { i32 2120, i32 255 }, %struct.reg_default { i32 2124, i32 53 }, %struct.reg_default { i32 2128, i32 255 }, %struct.reg_default { i32 2132, i32 0 }, %struct.reg_default { i32 2136, i32 1 }, %struct.reg_default { i32 2140, i32 40 }, %struct.reg_default { i32 2560, i32 0 }, %struct.reg_default { i32 2564, i32 0 }, %struct.reg_default { i32 2568, i32 0 }, %struct.reg_default { i32 2572, i32 0 }, %struct.reg_default { i32 2576, i32 0 }, %struct.reg_default { i32 2580, i32 0 }, %struct.reg_default { i32 2584, i32 0 }, %struct.reg_default { i32 2588, i32 0 }, %struct.reg_default { i32 2592, i32 0 }, %struct.reg_default { i32 2596, i32 64 }, %struct.reg_default { i32 2600, i32 0 }, %struct.reg_default { i32 2604, i32 0 }, %struct.reg_default { i32 2608, i32 0 }, %struct.reg_default { i32 2688, i32 0 }, %struct.reg_default { i32 2692, i32 0 }, %struct.reg_default { i32 2696, i32 0 }, %struct.reg_default { i32 2700, i32 0 }, %struct.reg_default { i32 2704, i32 0 }, %struct.reg_default { i32 2708, i32 0 }, %struct.reg_default { i32 2712, i32 0 }, %struct.reg_default { i32 2716, i32 0 }, %struct.reg_default { i32 2720, i32 0 }, %struct.reg_default { i32 2724, i32 64 }, %struct.reg_default { i32 2728, i32 0 }, %struct.reg_default { i32 2732, i32 0 }, %struct.reg_default { i32 2736, i32 0 }, %struct.reg_default { i32 2816, i32 0 }, %struct.reg_default { i32 2820, i32 0 }, %struct.reg_default { i32 2824, i32 0 }, %struct.reg_default { i32 2828, i32 0 }, %struct.reg_default { i32 2832, i32 0 }, %struct.reg_default { i32 2836, i32 0 }, %struct.reg_default { i32 2840, i32 0 }, %struct.reg_default { i32 2844, i32 0 }, %struct.reg_default { i32 2880, i32 4 }, %struct.reg_default { i32 2884, i32 0 }, %struct.reg_default { i32 2896, i32 4 }, %struct.reg_default { i32 2900, i32 0 }, %struct.reg_default { i32 3072, i32 0 }, %struct.reg_default { i32 3076, i32 1 }, %struct.reg_default { i32 3136, i32 0 }, %struct.reg_default { i32 3140, i32 1 }, %struct.reg_default { i32 3200, i32 0 }, %struct.reg_default { i32 3204, i32 1 }, %struct.reg_default { i32 3328, i32 0 }, %struct.reg_default { i32 3332, i32 0 }, %struct.reg_default { i32 3336, i32 0 }, %struct.reg_default { i32 3340, i32 168 }, %struct.reg_default { i32 3344, i32 0 }, %struct.reg_default { i32 3348, i32 0 }, %struct.reg_default { i32 3352, i32 0 }, %struct.reg_default { i32 3356, i32 0 }, %struct.reg_default { i32 3360, i32 0 }, %struct.reg_default { i32 3392, i32 0 }, %struct.reg_default { i32 3396, i32 0 }, %struct.reg_default { i32 3400, i32 0 }, %struct.reg_default { i32 3404, i32 168 }, %struct.reg_default { i32 3408, i32 0 }, %struct.reg_default { i32 3412, i32 0 }, %struct.reg_default { i32 3416, i32 0 }, %struct.reg_default { i32 3420, i32 0 }, %struct.reg_default { i32 3424, i32 0 }, %struct.reg_default { i32 3456, i32 0 }, %struct.reg_default { i32 3460, i32 0 }, %struct.reg_default { i32 3464, i32 0 }, %struct.reg_default { i32 3468, i32 168 }, %struct.reg_default { i32 3472, i32 0 }, %struct.reg_default { i32 3476, i32 0 }, %struct.reg_default { i32 3480, i32 0 }, %struct.reg_default { i32 3484, i32 0 }, %struct.reg_default { i32 3488, i32 0 }, %struct.reg_default { i32 3840, i32 0 }, %struct.reg_default { i32 3844, i32 0 }, %struct.reg_default { i32 3848, i32 98 }, %struct.reg_default { i32 3852, i32 150 }, %struct.reg_default { i32 3968, i32 0 }, %struct.reg_default { i32 3972, i32 0 }, %struct.reg_default { i32 3976, i32 98 }, %struct.reg_default { i32 3980, i32 150 }], [568 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lpass-rx-mclk\00", [18 x i8] zeroinitializer }, align 32
@swclk_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @swclk_gate_enable, ptr @swclk_gate_disable, ptr null, ptr null, ptr null, ptr null, ptr @swclk_gate_is_enabled, ptr null, ptr null, ptr null, ptr @swclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rx_macro_mclk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.8, i32 1870, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: clock already disabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_macro_mclk_enable\00", [43 x i8] zeroinitializer }, align 32
@rx_macro_mclk_enable._entry_ptr = internal global ptr @rx_macro_mclk_enable._entry, section ".printk_index", align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RX-MACRO\00", [23 x i8] zeroinitializer }, align 32
@rx_macro_snd_controls = internal constant { [41 x %struct.snd_kcontrol_new], [496 x i8] } { [41 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rx_macro_get_compander, ptr @rx_macro_set_compander, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rx_macro_get_compander, ptr @rx_macro_set_compander, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rx_macro_get_ear_mode, ptr @rx_macro_put_ear_mode, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rx_macro_get_hph_hd2_mode, ptr @rx_macro_put_hph_hd2_mode, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rx_macro_get_hph_pwr_mode, ptr @rx_macro_put_hph_pwr_mode, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_macro_hph_pwr_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rx_macro_soft_clip_enable_get, ptr @rx_macro_soft_clip_enable_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @rx_macro_aux_hpf_mode_get, ptr @rx_macro_aux_hpf_mode_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @rx_macro_iir_filter_info, ptr @rx_macro_get_iir_band_audio_mixer, ptr @rx_macro_put_iir_band_audio_mixer, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }], [496 x i8] zeroinitializer }, align 32
@rx_audio_map = internal constant { [288 x %struct.snd_soc_dapm_route], [3744 x i8] } { [288 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.186, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.186, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.186, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.186, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.186, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.186, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.187, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.187, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.187, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.187, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.187, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.187, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.188, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.188, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.188, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.188, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.188, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.188, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.189, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr @.str.189, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr @.str.189, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.189, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.189, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.189, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.131, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.132, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.216, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.217, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr @.str.218, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.216, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.217, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr @.str.218, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.216, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.217, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr @.str.218, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.223, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.223, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.198, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.199, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.198, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.199, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.198, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.199, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.198, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.199, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.198, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.199, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.198, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.199, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.198, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.199, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.196, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.197, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.198, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.199, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.200, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.201, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.202, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.203, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.204, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr @.str.205, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.133, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.134, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.133, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.134, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.133, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.134, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }], [3744 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX_RX0 Digital Volume\00", [42 x i8] zeroinitializer }, align 32
@digital_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8400, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1044, i32 1044, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX_RX1 Digital Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1172, i32 1172, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RX_RX2 Digital Volume\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1300, i32 1300, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX_RX0 Mix Digital Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1056, i32 1056, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX_RX1 Mix Digital Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1184, i32 1184, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RX_RX2 Mix Digital Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1312, i32 1312, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX_COMP1 Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX_COMP2 Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX_EAR Mode Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX_HPH HD2 Mode Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX_HPH PWR Mode\00", [16 x i8] zeroinitializer }, align 32
@rx_macro_hph_pwr_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @rx_macro_hph_pwr_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX_Softclip Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AUX_HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IIR0 INP0 Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 2564, i32 2564, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IIR0 INP1 Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 2568, i32 2568, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IIR0 INP2 Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 2572, i32 2572, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IIR0 INP3 Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 2576, i32 2576, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IIR1 INP0 Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 2692, i32 2692, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IIR1 INP1 Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 2696, i32 2696, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IIR1 INP2 Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 2700, i32 2700, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IIR1 INP3 Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 2704, i32 2704, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR1 Band1 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2596, i32 2596, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR1 Band2 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2596, i32 2596, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR1 Band3 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2596, i32 2596, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR1 Band4 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2596, i32 2596, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR1 Band5 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2596, i32 2596, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR2 Band1 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2724, i32 2724, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR2 Band2 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2724, i32 2724, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR2 Band3 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2724, i32 2724, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR2 Band4 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2724, i32 2724, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR2 Band5 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2724, i32 2724, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR0 Band1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 0, i32 0, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR0 Band2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 0, i32 1, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR0 Band3\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 0, i32 2, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR0 Band4\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 0, i32 3, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR0 Band5\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 0, i32 4, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR1 Band1\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 1, i32 0, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR1 Band2\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 1, i32 1, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR1 Band3\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 1, i32 2, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR1 Band4\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 1, i32 3, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IIR1 Band5\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.wcd_iir_filter_ctl, [40 x i8] } { %struct.wcd_iir_filter_ctl { i32 1, i32 4, %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@rx_macro_hph_pwr_mode_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.96, ptr @.str.97], [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ULP\00", [28 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOHIFI\00", [25 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX AIF1 PB\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX_MACRO_AIF1 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX AIF2 PB\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX_MACRO_AIF2 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX AIF3 PB\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX_MACRO_AIF3 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX AIF4 PB\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX_MACRO_AIF4 Playback\00", [41 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX AIF_ECHO\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX_AIF_ECHO Capture\00", [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX_MACRO RX0 MUX\00", [47 x i8] zeroinitializer }, align 32
@rx_macro_rx0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rx_macro_mux_get, ptr @rx_macro_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_macro_rx0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX_MACRO RX1 MUX\00", [47 x i8] zeroinitializer }, align 32
@rx_macro_rx1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rx_macro_mux_get, ptr @rx_macro_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_macro_rx1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX_MACRO RX2 MUX\00", [47 x i8] zeroinitializer }, align 32
@rx_macro_rx2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rx_macro_mux_get, ptr @rx_macro_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_macro_rx2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX_MACRO RX3 MUX\00", [47 x i8] zeroinitializer }, align 32
@rx_macro_rx3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rx_macro_mux_get, ptr @rx_macro_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_macro_rx3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX_MACRO RX4 MUX\00", [47 x i8] zeroinitializer }, align 32
@rx_macro_rx4_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rx_macro_mux_get, ptr @rx_macro_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_macro_rx4_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX_MACRO RX5 MUX\00", [47 x i8] zeroinitializer }, align 32
@rx_macro_rx5_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @rx_macro_mux_get, ptr @rx_macro_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_macro_rx5_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX_RX0\00", [25 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX_RX1\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX_RX2\00", [25 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX_RX3\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX_RX4\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RX_RX5\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IIR0 INP0 MUX\00", [18 x i8] zeroinitializer }, align 32
@iir0_inp0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @iir0_inp0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IIR0 INP1 MUX\00", [18 x i8] zeroinitializer }, align 32
@iir0_inp1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @iir0_inp1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IIR0 INP2 MUX\00", [18 x i8] zeroinitializer }, align 32
@iir0_inp2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.207, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @iir0_inp2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IIR0 INP3 MUX\00", [18 x i8] zeroinitializer }, align 32
@iir0_inp3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @iir0_inp3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IIR1 INP0 MUX\00", [18 x i8] zeroinitializer }, align 32
@iir1_inp0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.209, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @iir1_inp0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IIR1 INP1 MUX\00", [18 x i8] zeroinitializer }, align 32
@iir1_inp1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @iir1_inp1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IIR1 INP2 MUX\00", [18 x i8] zeroinitializer }, align 32
@iir1_inp2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.211, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @iir1_inp2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IIR1 INP3 MUX\00", [18 x i8] zeroinitializer }, align 32
@iir1_inp3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @iir1_inp3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX MIX TX0 MUX\00", [17 x i8] zeroinitializer }, align 32
@rx_mix_tx0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.215, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_mix_tx0_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX MIX TX1 MUX\00", [17 x i8] zeroinitializer }, align 32
@rx_mix_tx1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_mix_tx1_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX MIX TX2 MUX\00", [17 x i8] zeroinitializer }, align 32
@rx_mix_tx2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_mix_tx2_mux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IIR0\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IIR1\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SRC0\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SRC1\00", [27 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX INT0 DEM MUX\00", [16 x i8] zeroinitializer }, align 32
@rx_int0_dem_inp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @rx_macro_int_dem_inp_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int0_dem_inp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX INT1 DEM MUX\00", [16 x i8] zeroinitializer }, align 32
@rx_int1_dem_inp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.224, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @rx_macro_int_dem_inp_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int1_dem_inp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RX INT0_2 MUX\00", [18 x i8] zeroinitializer }, align 32
@rx_int0_2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.225, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int0_2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RX INT1_2 MUX\00", [18 x i8] zeroinitializer }, align 32
@rx_int1_2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int1_2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RX INT2_2 MUX\00", [18 x i8] zeroinitializer }, align 32
@rx_int2_2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.227, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int2_2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX INT0_1 MIX1 INP0\00", [44 x i8] zeroinitializer }, align 32
@rx_int0_1_mix_inp0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int0_1_mix_inp0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX INT0_1 MIX1 INP1\00", [44 x i8] zeroinitializer }, align 32
@rx_int0_1_mix_inp1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.229, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int0_1_mix_inp1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX INT0_1 MIX1 INP2\00", [44 x i8] zeroinitializer }, align 32
@rx_int0_1_mix_inp2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int0_1_mix_inp2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX INT1_1 MIX1 INP0\00", [44 x i8] zeroinitializer }, align 32
@rx_int1_1_mix_inp0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.231, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int1_1_mix_inp0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX INT1_1 MIX1 INP1\00", [44 x i8] zeroinitializer }, align 32
@rx_int1_1_mix_inp1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int1_1_mix_inp1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX INT1_1 MIX1 INP2\00", [44 x i8] zeroinitializer }, align 32
@rx_int1_1_mix_inp2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.233, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int1_1_mix_inp2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX INT2_1 MIX1 INP0\00", [44 x i8] zeroinitializer }, align 32
@rx_int2_1_mix_inp0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int2_1_mix_inp0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX INT2_1 MIX1 INP1\00", [44 x i8] zeroinitializer }, align 32
@rx_int2_1_mix_inp1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.235, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int2_1_mix_inp1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX INT2_1 MIX1 INP2\00", [44 x i8] zeroinitializer }, align 32
@rx_int2_1_mix_inp2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.236, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int2_1_mix_inp2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX INT0_1 INTERP\00", [47 x i8] zeroinitializer }, align 32
@rx_int0_1_interp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.237, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int0_1_interp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX INT1_1 INTERP\00", [47 x i8] zeroinitializer }, align 32
@rx_int1_1_interp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int1_1_interp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX INT2_1 INTERP\00", [47 x i8] zeroinitializer }, align 32
@rx_int2_1_interp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int2_1_interp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX INT0_2 INTERP\00", [47 x i8] zeroinitializer }, align 32
@rx_int0_2_interp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int0_2_interp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX INT1_2 INTERP\00", [47 x i8] zeroinitializer }, align 32
@rx_int1_2_interp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int1_2_interp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX INT2_2 INTERP\00", [47 x i8] zeroinitializer }, align 32
@rx_int2_2_interp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int2_2_interp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX INT0_1 MIX1\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX INT0 SEC MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX INT1_1 MIX1\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX INT1 SEC MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX INT2_1 MIX1\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX INT2 SEC MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX INT0 MIX2 INP\00", [47 x i8] zeroinitializer }, align 32
@rx_int0_mix2_inp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int0_mix2_inp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX INT1 MIX2 INP\00", [47 x i8] zeroinitializer }, align 32
@rx_int1_mix2_inp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int1_mix2_inp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RX INT2 MIX2 INP\00", [47 x i8] zeroinitializer }, align 32
@rx_int2_mix2_inp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.246, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_int2_mix2_inp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RX INT0 MIX2\00", [19 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RX INT1 MIX2\00", [19 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RX INT2 MIX2\00", [19 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPHL_OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPHR_OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AUX_OUT\00", [24 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX_TX DEC0_INP\00", [17 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX_TX DEC1_INP\00", [17 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX_TX DEC2_INP\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX_TX DEC3_INP\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX_MCLK\00", [24 x i8] zeroinitializer }, align 32
@rx_macro_dapm_widgets = internal constant { [72 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [3232 x i8] } { [72 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.98, ptr @.str.99, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.100, ptr @.str.101, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.102, ptr @.str.103, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.104, ptr @.str.105, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.106, ptr @.str.107, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_macro_rx0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_macro_rx1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_macro_rx2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_macro_rx3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_macro_rx4_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_macro_rx5_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @iir0_inp0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @iir0_inp1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @iir0_inp2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @iir0_inp3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @iir1_inp0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @iir1_inp1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @iir1_inp2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @iir1_inp3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rx_macro_enable_echo, i32 1, ptr @rx_mix_tx0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rx_macro_enable_echo, i32 1, ptr @rx_mix_tx1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rx_macro_enable_echo, i32 1, ptr @rx_mix_tx2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2560, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rx_macro_set_iir_gain, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2688, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @rx_macro_set_iir_gain, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2880, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2896, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int0_dem_inp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int1_dem_inp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @rx_macro_enable_mix_path, i32 1, ptr @rx_int0_2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @rx_macro_enable_mix_path, i32 1, ptr @rx_int1_2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @rx_macro_enable_mix_path, i32 1, ptr @rx_int2_2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int0_1_mix_inp0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int0_1_mix_inp1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int0_1_mix_inp2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int1_1_mix_inp0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int1_1_mix_inp1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int1_1_mix_inp2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int2_1_mix_inp0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int2_1_mix_inp1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int2_1_mix_inp2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @rx_macro_enable_main_path, i32 1, ptr @rx_int0_1_interp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @rx_macro_enable_main_path, i32 1, ptr @rx_int1_1_interp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @rx_macro_enable_main_path, i32 1, ptr @rx_int2_1_interp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int0_2_interp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int1_2_interp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_int2_2_interp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rx_macro_enable_rx_path_clk, i32 1, ptr @rx_int0_mix2_inp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rx_macro_enable_rx_path_clk, i32 1, ptr @rx_int1_mix2_inp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rx_macro_enable_rx_path_clk, i32 1, ptr @rx_int2_mix2_inp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @rx_macro_mclk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [3232 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_macro_rx0\00", [19 x i8] zeroinitializer }, align 32
@rx_macro_rx0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 7, ptr @rx_macro_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_macro_mux_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.178, ptr @.str.8, i32 2290, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s:AIF reset already\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_macro_mux_put\00", [47 x i8] zeroinitializer }, align 32
@rx_macro_mux_put._entry_ptr = internal global ptr @rx_macro_mux_put._entry, section ".printk_index", align 4
@rx_macro_mux_put._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.178, ptr @.str.8, i32 2294, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid AIF reset\0A\00", [41 x i8] zeroinitializer }, align 32
@rx_macro_mux_put._entry_ptr.181 = internal global ptr @rx_macro_mux_put._entry.179, section ".printk_index", align 4
@rx_macro_mux_put._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.178, ptr @.str.8, i32 2319, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s:Invalid AIF_ID for RX_MACRO MUX %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rx_macro_mux_put._entry_ptr.184 = internal global ptr @rx_macro_mux_put._entry.182, section ".printk_index", align 4
@rx_macro_mux_text = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189], [44 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZERO\00", [27 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1_PB\00", [24 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF2_PB\00", [24 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF3_PB\00", [24 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF4_PB\00", [24 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_macro_rx1\00", [19 x i8] zeroinitializer }, align 32
@rx_macro_rx1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 7, ptr @rx_macro_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_macro_rx2\00", [19 x i8] zeroinitializer }, align 32
@rx_macro_rx2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 7, ptr @rx_macro_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_macro_rx3\00", [19 x i8] zeroinitializer }, align 32
@rx_macro_rx3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 7, ptr @rx_macro_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_macro_rx4\00", [19 x i8] zeroinitializer }, align 32
@rx_macro_rx4_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 7, ptr @rx_macro_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx_macro_rx5\00", [19 x i8] zeroinitializer }, align 32
@rx_macro_rx5_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 7, ptr @rx_macro_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iir0_inp0\00", [22 x i8] zeroinitializer }, align 32
@iir0_inp0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2816, i8 0, i8 0, i32 11, i32 15, ptr @iir_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@iir_inp_mux_text = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.185, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205], [52 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC0\00", [27 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC1\00", [27 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC2\00", [27 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC3\00", [27 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX0\00", [28 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX1\00", [28 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX2\00", [28 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX3\00", [28 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX4\00", [28 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX5\00", [28 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iir0_inp1\00", [22 x i8] zeroinitializer }, align 32
@iir0_inp1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2820, i8 0, i8 0, i32 11, i32 15, ptr @iir_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iir0_inp2\00", [22 x i8] zeroinitializer }, align 32
@iir0_inp2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2824, i8 0, i8 0, i32 11, i32 15, ptr @iir_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iir0_inp3\00", [22 x i8] zeroinitializer }, align 32
@iir0_inp3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2828, i8 0, i8 0, i32 11, i32 15, ptr @iir_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iir1_inp0\00", [22 x i8] zeroinitializer }, align 32
@iir1_inp0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2832, i8 0, i8 0, i32 11, i32 15, ptr @iir_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iir1_inp1\00", [22 x i8] zeroinitializer }, align 32
@iir1_inp1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2836, i8 0, i8 0, i32 11, i32 15, ptr @iir_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iir1_inp2\00", [22 x i8] zeroinitializer }, align 32
@iir1_inp2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2840, i8 0, i8 0, i32 11, i32 15, ptr @iir_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iir1_inp3\00", [22 x i8] zeroinitializer }, align 32
@iir1_inp3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2844, i8 0, i8 0, i32 11, i32 15, ptr @iir_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_macro_enable_echo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.8, i32 2913, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: EC mix control not set correctly\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx_macro_enable_echo\00", [43 x i8] zeroinitializer }, align 32
@rx_macro_enable_echo._entry_ptr = internal global ptr @rx_macro_enable_echo._entry, section ".printk_index", align 4
@.str.215 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX MIX TX0_MUX Mux\00", [45 x i8] zeroinitializer }, align 32
@rx_mix_tx0_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 408, i8 4, i8 4, i32 4, i32 3, ptr @rx_echo_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_echo_mux_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.185, ptr @.str.216, ptr @.str.217, ptr @.str.218], [16 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX_MIX0\00", [24 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX_MIX1\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX_MIX2\00", [24 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX MIX TX1_MUX Mux\00", [45 x i8] zeroinitializer }, align 32
@rx_mix_tx1_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 408, i8 0, i8 0, i32 4, i32 3, ptr @rx_echo_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX MIX TX2_MUX Mux\00", [45 x i8] zeroinitializer }, align 32
@rx_mix_tx2_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 412, i8 0, i8 0, i32 4, i32 3, ptr @rx_echo_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_int0_dem_inp\00", [16 x i8] zeroinitializer }, align 32
@rx_int0_dem_inp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1032, i8 0, i8 0, i32 2, i32 1, ptr @rx_int_dem_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_int_dem_inp_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.222, ptr @.str.223], [24 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"NORMAL_DSM_OUT\00", [17 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CLSH_DSM_OUT\00", [19 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rx_int1_dem_inp\00", [16 x i8] zeroinitializer }, align 32
@rx_int1_dem_inp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1160, i8 0, i8 0, i32 2, i32 1, ptr @rx_int_dem_inp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@comp_coeff_table = internal constant { [2 x [25 x %struct.comp_coeff_val]], [60 x i8] } { [2 x [25 x %struct.comp_coeff_val]] [[25 x %struct.comp_coeff_val] [%struct.comp_coeff_val { i8 64, i8 0 }, %struct.comp_coeff_val { i8 76, i8 0 }, %struct.comp_coeff_val { i8 90, i8 0 }, %struct.comp_coeff_val { i8 107, i8 0 }, %struct.comp_coeff_val { i8 127, i8 0 }, %struct.comp_coeff_val { i8 -105, i8 0 }, %struct.comp_coeff_val { i8 -77, i8 0 }, %struct.comp_coeff_val { i8 -43, i8 0 }, %struct.comp_coeff_val { i8 -3, i8 0 }, %struct.comp_coeff_val { i8 45, i8 1 }, %struct.comp_coeff_val { i8 102, i8 1 }, %struct.comp_coeff_val { i8 -89, i8 1 }, %struct.comp_coeff_val { i8 -8, i8 1 }, %struct.comp_coeff_val { i8 87, i8 2 }, %struct.comp_coeff_val { i8 -57, i8 2 }, %struct.comp_coeff_val { i8 75, i8 3 }, %struct.comp_coeff_val { i8 -23, i8 3 }, %struct.comp_coeff_val { i8 -93, i8 4 }, %struct.comp_coeff_val { i8 125, i8 5 }, %struct.comp_coeff_val { i8 -112, i8 6 }, %struct.comp_coeff_val { i8 -47, i8 7 }, %struct.comp_coeff_val { i8 73, i8 9 }, %struct.comp_coeff_val { i8 0, i8 11 }, %struct.comp_coeff_val { i8 1, i8 13 }, %struct.comp_coeff_val { i8 89, i8 15 }], [25 x %struct.comp_coeff_val] [%struct.comp_coeff_val { i8 64, i8 0 }, %struct.comp_coeff_val { i8 76, i8 0 }, %struct.comp_coeff_val { i8 90, i8 0 }, %struct.comp_coeff_val { i8 107, i8 0 }, %struct.comp_coeff_val { i8 -128, i8 0 }, %struct.comp_coeff_val { i8 -104, i8 0 }, %struct.comp_coeff_val { i8 -76, i8 0 }, %struct.comp_coeff_val { i8 -43, i8 0 }, %struct.comp_coeff_val { i8 -2, i8 0 }, %struct.comp_coeff_val { i8 46, i8 1 }, %struct.comp_coeff_val { i8 102, i8 1 }, %struct.comp_coeff_val { i8 -87, i8 1 }, %struct.comp_coeff_val { i8 -8, i8 1 }, %struct.comp_coeff_val { i8 86, i8 2 }, %struct.comp_coeff_val { i8 -60, i8 2 }, %struct.comp_coeff_val { i8 79, i8 3 }, %struct.comp_coeff_val { i8 -16, i8 3 }, %struct.comp_coeff_val { i8 -82, i8 4 }, %struct.comp_coeff_val { i8 -117, i8 5 }, %struct.comp_coeff_val { i8 -114, i8 6 }, %struct.comp_coeff_val { i8 -68, i8 7 }, %struct.comp_coeff_val { i8 86, i8 9 }, %struct.comp_coeff_val { i8 15, i8 11 }, %struct.comp_coeff_val { i8 19, i8 13 }, %struct.comp_coeff_val { i8 111, i8 15 }]], [60 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_int0_2\00", [22 x i8] zeroinitializer }, align 32
@rx_int0_2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 388, i8 0, i8 0, i32 7, i32 7, ptr @rx_int_mix_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_int_mix_mux_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.185, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205], [36 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_int1_2\00", [22 x i8] zeroinitializer }, align 32
@rx_int1_2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 396, i8 0, i8 0, i32 7, i32 7, ptr @rx_int_mix_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_int2_2\00", [22 x i8] zeroinitializer }, align 32
@rx_int2_2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 404, i8 0, i8 0, i32 7, i32 7, ptr @rx_int_mix_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_int0_1_mix_inp0\00", [45 x i8] zeroinitializer }, align 32
@rx_int0_1_mix_inp0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 384, i8 0, i8 0, i32 11, i32 15, ptr @rx_prim_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_prim_mix_text = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.185, ptr @.str.196, ptr @.str.197, ptr @.str.131, ptr @.str.132, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205], [52 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_int0_1_mix_inp1\00", [45 x i8] zeroinitializer }, align 32
@rx_int0_1_mix_inp1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 384, i8 4, i8 4, i32 11, i32 15, ptr @rx_prim_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_int0_1_mix_inp2\00", [45 x i8] zeroinitializer }, align 32
@rx_int0_1_mix_inp2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 388, i8 4, i8 4, i32 11, i32 15, ptr @rx_prim_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_int1_1_mix_inp0\00", [45 x i8] zeroinitializer }, align 32
@rx_int1_1_mix_inp0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 392, i8 0, i8 0, i32 11, i32 15, ptr @rx_prim_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_int1_1_mix_inp1\00", [45 x i8] zeroinitializer }, align 32
@rx_int1_1_mix_inp1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 392, i8 4, i8 4, i32 11, i32 15, ptr @rx_prim_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_int1_1_mix_inp2\00", [45 x i8] zeroinitializer }, align 32
@rx_int1_1_mix_inp2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 396, i8 4, i8 4, i32 11, i32 15, ptr @rx_prim_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_int2_1_mix_inp0\00", [45 x i8] zeroinitializer }, align 32
@rx_int2_1_mix_inp0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 400, i8 0, i8 0, i32 11, i32 15, ptr @rx_prim_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_int2_1_mix_inp1\00", [45 x i8] zeroinitializer }, align 32
@rx_int2_1_mix_inp1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 400, i8 4, i8 4, i32 11, i32 15, ptr @rx_prim_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_int2_1_mix_inp2\00", [45 x i8] zeroinitializer }, align 32
@rx_int2_1_mix_inp2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 404, i8 4, i8 4, i32 11, i32 15, ptr @rx_prim_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_int0_1_interp\00", [47 x i8] zeroinitializer }, align 32
@rx_int0_1_interp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @rx_int0_1_interp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_int0_1_interp_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.185, ptr @.str.155], [24 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_int1_1_interp\00", [47 x i8] zeroinitializer }, align 32
@rx_int1_1_interp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @rx_int1_1_interp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_int1_1_interp_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.185, ptr @.str.157], [24 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_int2_1_interp\00", [47 x i8] zeroinitializer }, align 32
@rx_int2_1_interp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @rx_int2_1_interp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_int2_1_interp_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.185, ptr @.str.159], [24 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_int0_2_interp\00", [47 x i8] zeroinitializer }, align 32
@rx_int0_2_interp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @rx_int0_2_interp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_int0_2_interp_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.185, ptr @.str.137], [24 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_int1_2_interp\00", [47 x i8] zeroinitializer }, align 32
@rx_int1_2_interp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @rx_int1_2_interp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_int1_2_interp_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.185, ptr @.str.138], [24 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_int2_2_interp\00", [47 x i8] zeroinitializer }, align 32
@rx_int2_2_interp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @rx_int2_2_interp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_int2_2_interp_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.185, ptr @.str.139], [24 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_int0_mix2_inp\00", [47 x i8] zeroinitializer }, align 32
@rx_int0_mix2_inp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 416, i8 2, i8 2, i32 4, i32 3, ptr @rx_sidetone_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_sidetone_mix_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.185, ptr @.str.133, ptr @.str.134, ptr @.str.244], [16 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SRC_SUM\00", [24 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_int1_mix2_inp\00", [47 x i8] zeroinitializer }, align 32
@rx_int1_mix2_inp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 416, i8 4, i8 4, i32 4, i32 3, ptr @rx_sidetone_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_int2_mix2_inp\00", [47 x i8] zeroinitializer }, align 32
@rx_int2_mix2_inp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 416, i8 6, i8 6, i32 4, i32 3, ptr @rx_sidetone_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_macro_mclk_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str.8, i32 1903, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: invalid DAPM event %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx_macro_mclk_event\00", [44 x i8] zeroinitializer }, align 32
@rx_macro_mclk_event._entry_ptr = internal global ptr @rx_macro_mclk_event._entry, section ".printk_index", align 4
@rx_macro_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rx_macro_get_channel_map, ptr null, ptr null, ptr null, ptr @rx_macro_digital_mute, ptr null, ptr null, ptr @rx_macro_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rx_macro_echo\00", [18 x i8] zeroinitializer }, align 32
@rx_macro_get_channel_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.8, i32 1707, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Invalid AIF\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rx_macro_get_channel_map\00", [39 x i8] zeroinitializer }, align 32
@rx_macro_get_channel_map._entry_ptr = internal global ptr @rx_macro_get_channel_map._entry, section ".printk_index", align 4
@rx_macro_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.253, ptr @.str.8, i32 1640, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: cannot set sample rate: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx_macro_hw_params\00", [45 x i8] zeroinitializer }, align 32
@rx_macro_hw_params._entry_ptr = internal global ptr @rx_macro_hw_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 720, i64 836, i64 880, i64 912]
@__sancov_gen_cov_switch_values.254 = internal global [29 x i64] [i64 27, i64 32, i64 44, i64 48, i64 64, i64 68, i64 120, i64 136, i64 724, i64 804, i64 872, i64 904, i64 2072, i64 2136, i64 3344, i64 3348, i64 3352, i64 3356, i64 3360, i64 3408, i64 3412, i64 3416, i64 3420, i64 3424, i64 3472, i64 3476, i64 3480, i64 3484, i64 3488]
@__sancov_gen_cov_switch_values.255 = internal global [33 x i64] [i64 31, i64 32, i64 32, i64 36, i64 44, i64 48, i64 52, i64 56, i64 64, i64 68, i64 120, i64 136, i64 724, i64 804, i64 872, i64 904, i64 2072, i64 2136, i64 3344, i64 3348, i64 3352, i64 3356, i64 3360, i64 3408, i64 3412, i64 3416, i64 3420, i64 3424, i64 3472, i64 3476, i64 3480, i64 3484, i64 3488]
@__sancov_gen_cov_switch_values.256 = internal global [256 x i64] [i64 254, i64 32, i64 0, i64 8, i64 12, i64 16, i64 20, i64 24, i64 28, i64 32, i64 36, i64 40, i64 52, i64 56, i64 60, i64 112, i64 116, i64 124, i64 128, i64 132, i64 140, i64 144, i64 148, i64 152, i64 156, i64 160, i64 256, i64 260, i64 264, i64 268, i64 272, i64 320, i64 324, i64 384, i64 388, i64 392, i64 396, i64 400, i64 404, i64 408, i64 412, i64 416, i64 512, i64 516, i64 520, i64 524, i64 528, i64 532, i64 536, i64 540, i64 544, i64 548, i64 552, i64 556, i64 560, i64 564, i64 568, i64 572, i64 576, i64 580, i64 584, i64 588, i64 640, i64 644, i64 648, i64 652, i64 656, i64 660, i64 664, i64 668, i64 672, i64 676, i64 680, i64 684, i64 688, i64 692, i64 696, i64 700, i64 704, i64 708, i64 712, i64 716, i64 728, i64 732, i64 736, i64 740, i64 744, i64 748, i64 752, i64 756, i64 760, i64 764, i64 768, i64 772, i64 776, i64 780, i64 784, i64 788, i64 792, i64 796, i64 800, i64 832, i64 864, i64 896, i64 960, i64 968, i64 976, i64 1024, i64 1028, i64 1032, i64 1036, i64 1040, i64 1044, i64 1048, i64 1052, i64 1056, i64 1060, i64 1064, i64 1068, i64 1072, i64 1076, i64 1080, i64 1084, i64 1088, i64 1092, i64 1096, i64 1100, i64 1104, i64 1108, i64 1112, i64 1152, i64 1156, i64 1160, i64 1164, i64 1168, i64 1172, i64 1176, i64 1180, i64 1184, i64 1188, i64 1192, i64 1196, i64 1200, i64 1204, i64 1208, i64 1212, i64 1216, i64 1220, i64 1224, i64 1228, i64 1232, i64 1236, i64 1240, i64 1280, i64 1284, i64 1288, i64 1292, i64 1296, i64 1300, i64 1304, i64 1308, i64 1312, i64 1316, i64 1320, i64 1324, i64 1328, i64 1332, i64 1336, i64 1340, i64 1344, i64 1348, i64 1352, i64 1356, i64 1920, i64 1924, i64 1928, i64 1932, i64 1936, i64 2048, i64 2052, i64 2056, i64 2060, i64 2064, i64 2068, i64 2076, i64 2112, i64 2116, i64 2120, i64 2124, i64 2128, i64 2132, i64 2140, i64 2560, i64 2564, i64 2568, i64 2572, i64 2576, i64 2580, i64 2584, i64 2588, i64 2592, i64 2596, i64 2600, i64 2604, i64 2608, i64 2688, i64 2692, i64 2696, i64 2700, i64 2704, i64 2708, i64 2712, i64 2716, i64 2720, i64 2724, i64 2728, i64 2732, i64 2736, i64 2816, i64 2820, i64 2824, i64 2828, i64 2832, i64 2836, i64 2840, i64 2844, i64 2880, i64 2884, i64 2896, i64 2900, i64 3072, i64 3076, i64 3136, i64 3140, i64 3200, i64 3204, i64 3328, i64 3332, i64 3336, i64 3340, i64 3392, i64 3396, i64 3400, i64 3404, i64 3456, i64 3460, i64 3464, i64 3468, i64 3840, i64 3844, i64 3848, i64 3852, i64 3968, i64 3972, i64 3976, i64 3980]
@__sancov_gen_cov_switch_values.257 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.258 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.259 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.260 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.264 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.265 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.266 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.267 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.268 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.269 = internal global [12 x i64] [i64 10, i64 32, i64 16000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000, i64 352800, i64 384000]
@___asan_gen_.270 = private unnamed_addr constant [16 x i8] c"rx_macro_driver\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3586, i32 31 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3588, i32 11 }
@___asan_gen_.276 = private unnamed_addr constant [18 x i8] c"rx_macro_dt_match\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3579, i32 34 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3528, i32 19 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3529, i32 19 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3530, i32 19 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3531, i32 19 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3532, i32 19 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3536, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [17 x i8] c"rx_regmap_config\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1482, i32 35 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3544, i32 15 }
@___asan_gen_.321 = private unnamed_addr constant [23 x i8] c"rx_macro_component_drv\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3506, i32 46 }
@___asan_gen_.324 = private unnamed_addr constant [13 x i8] c"rx_macro_dai\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1775, i32 34 }
@___asan_gen_.327 = private unnamed_addr constant [12 x i8] c"rx_defaults\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 829, i32 33 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3483, i32 25 }
@___asan_gen_.333 = private unnamed_addr constant [15 x i8] c"swclk_gate_ops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3470, i32 29 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1870, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3507, i32 10 }
@___asan_gen_.348 = private unnamed_addr constant [22 x i8] c"rx_macro_snd_controls\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2796, i32 38 }
@___asan_gen_.351 = private unnamed_addr constant [13 x i8] c"rx_audio_map\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3078, i32 40 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2797, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [13 x i8] c"digital_gain\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 622, i32 14 }
@___asan_gen_.360 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2799, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2801, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2803, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2805, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2807, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2810, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2812, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2815, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2818, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2821, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [27 x i8] c"rx_macro_hph_pwr_mode_enum\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 682, i32 30 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2824, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2827, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2831, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2834, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2837, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2840, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2843, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2846, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2849, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2852, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2856, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2858, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2860, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2862, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2864, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2866, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2868, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2870, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2872, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2874, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2877, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2878, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2879, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2880, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2881, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2883, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2884, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2885, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2886, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2887, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [27 x i8] c"rx_macro_hph_pwr_mode_text\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 674, i32 26 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 675, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 675, i32 9 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2928, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2931, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2934, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2937, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2940, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2943, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant [17 x i8] c"rx_macro_rx0_mux\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2330, i32 38 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2945, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [17 x i8] c"rx_macro_rx1_mux\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2333, i32 38 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2947, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant [17 x i8] c"rx_macro_rx2_mux\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2336, i32 38 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2949, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [17 x i8] c"rx_macro_rx3_mux\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2339, i32 38 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2951, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [17 x i8] c"rx_macro_rx4_mux\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2342, i32 38 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2953, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [17 x i8] c"rx_macro_rx5_mux\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2345, i32 38 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2956, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2957, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2958, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2959, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2960, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2961, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2963, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [14 x i8] c"iir0_inp0_mux\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 798, i32 38 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2964, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant [14 x i8] c"iir0_inp1_mux\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 800, i32 38 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2965, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant [14 x i8] c"iir0_inp2_mux\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 802, i32 38 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2966, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant [14 x i8] c"iir0_inp3_mux\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 804, i32 38 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2967, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant [14 x i8] c"iir1_inp0_mux\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 806, i32 38 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2968, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [14 x i8] c"iir1_inp1_mux\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 808, i32 38 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2969, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [14 x i8] c"iir1_inp2_mux\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 810, i32 38 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2970, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [14 x i8] c"iir1_inp3_mux\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 812, i32 38 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2972, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant [15 x i8] c"rx_mix_tx0_mux\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 826, i32 38 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2976, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant [15 x i8] c"rx_mix_tx1_mux\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 764, i32 38 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2980, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant [15 x i8] c"rx_mix_tx2_mux\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 766, i32 38 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2985, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2988, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2991, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2993, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2996, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [20 x i8] c"rx_int0_dem_inp_mux\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1524, i32 38 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2998, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [20 x i8] c"rx_int1_dem_inp_mux\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1527, i32 38 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3001, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant [14 x i8] c"rx_int0_2_mux\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 768, i32 38 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3005, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [14 x i8] c"rx_int1_2_mux\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 770, i32 38 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3009, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [14 x i8] c"rx_int2_2_mux\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 772, i32 38 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3014, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [23 x i8] c"rx_int0_1_mix_inp0_mux\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 774, i32 38 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3015, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [23 x i8] c"rx_int0_1_mix_inp1_mux\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 776, i32 38 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3016, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [23 x i8] c"rx_int0_1_mix_inp2_mux\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 778, i32 38 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3017, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [23 x i8] c"rx_int1_1_mix_inp0_mux\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 780, i32 38 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3018, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [23 x i8] c"rx_int1_1_mix_inp1_mux\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 782, i32 38 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3019, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant [23 x i8] c"rx_int1_1_mix_inp2_mux\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 784, i32 38 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3020, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [23 x i8] c"rx_int2_1_mix_inp0_mux\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 786, i32 38 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3021, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [23 x i8] c"rx_int2_1_mix_inp1_mux\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 788, i32 38 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3022, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [23 x i8] c"rx_int2_1_mix_inp2_mux\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 790, i32 38 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3024, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant [21 x i8] c"rx_int0_1_interp_mux\00", align 1
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 814, i32 38 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3028, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [21 x i8] c"rx_int1_1_interp_mux\00", align 1
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 816, i32 38 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3032, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [21 x i8] c"rx_int2_1_interp_mux\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 818, i32 38 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3037, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant [21 x i8] c"rx_int0_2_interp_mux\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 820, i32 38 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3039, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant [21 x i8] c"rx_int1_2_interp_mux\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 822, i32 38 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3041, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant [21 x i8] c"rx_int2_2_interp_mux\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 824, i32 38 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3044, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3045, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3046, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3047, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3048, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3049, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3051, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [21 x i8] c"rx_int0_mix2_inp_mux\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 792, i32 38 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3054, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant [21 x i8] c"rx_int1_mix2_inp_mux\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 794, i32 38 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3057, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [21 x i8] c"rx_int2_mix2_inp_mux\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 796, i32 38 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3061, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3062, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3063, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3065, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3066, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3067, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3069, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3070, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3071, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3072, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 3074, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant [22 x i8] c"rx_macro_dapm_widgets\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2927, i32 41 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2331, i32 3 }
@___asan_gen_.889 = private unnamed_addr constant [18 x i8] c"rx_macro_rx0_enum\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 757, i32 8 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2290, i32 4 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2294, i32 4 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2317, i32 3 }
@___asan_gen_.913 = private unnamed_addr constant [18 x i8] c"rx_macro_mux_text\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 670, i32 26 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 671, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 671, i32 10 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 671, i32 21 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 671, i32 32 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 671, i32 43 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2334, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant [18 x i8] c"rx_macro_rx1_enum\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 758, i32 8 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2337, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant [18 x i8] c"rx_macro_rx2_enum\00", align 1
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 759, i32 8 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2340, i32 3 }
@___asan_gen_.946 = private unnamed_addr constant [18 x i8] c"rx_macro_rx3_enum\00", align 1
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 760, i32 8 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2343, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant [18 x i8] c"rx_macro_rx4_enum\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 761, i32 8 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2346, i32 3 }
@___asan_gen_.958 = private unnamed_addr constant [18 x i8] c"rx_macro_rx5_enum\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 762, i32 8 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 799, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant [15 x i8] c"iir0_inp0_enum\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 723, i32 8 }
@___asan_gen_.967 = private unnamed_addr constant [17 x i8] c"iir_inp_mux_text\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 637, i32 27 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 638, i32 10 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 638, i32 18 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 638, i32 26 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 638, i32 34 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 639, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 639, i32 9 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 639, i32 16 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 639, i32 23 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 639, i32 30 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 639, i32 37 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 801, i32 3 }
@___asan_gen_.1003 = private unnamed_addr constant [15 x i8] c"iir0_inp1_enum\00", align 1
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 725, i32 8 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 803, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant [15 x i8] c"iir0_inp2_enum\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 727, i32 8 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 805, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant [15 x i8] c"iir0_inp3_enum\00", align 1
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 729, i32 8 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 807, i32 3 }
@___asan_gen_.1021 = private unnamed_addr constant [15 x i8] c"iir1_inp0_enum\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 731, i32 8 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 809, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant [15 x i8] c"iir1_inp1_enum\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 733, i32 8 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 811, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant [15 x i8] c"iir1_inp2_enum\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 735, i32 8 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 813, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant [15 x i8] c"iir1_inp3_enum\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 737, i32 8 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 2912, i32 3 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 827, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant [20 x i8] c"rx_mix_tx0_mux_enum\00", align 1
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 688, i32 30 }
@___asan_gen_.1057 = private unnamed_addr constant [17 x i8] c"rx_echo_mux_text\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 678, i32 27 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 679, i32 10 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 679, i32 21 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 679, i32 32 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 765, i32 3 }
@___asan_gen_.1072 = private unnamed_addr constant [20 x i8] c"rx_mix_tx1_mux_enum\00", align 1
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 686, i32 30 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 767, i32 3 }
@___asan_gen_.1078 = private unnamed_addr constant [20 x i8] c"rx_mix_tx2_mux_enum\00", align 1
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 684, i32 30 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1525, i32 3 }
@___asan_gen_.1084 = private unnamed_addr constant [21 x i8] c"rx_int0_dem_inp_enum\00", align 1
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 752, i32 8 }
@___asan_gen_.1087 = private unnamed_addr constant [24 x i8] c"rx_int_dem_inp_mux_text\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 642, i32 27 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 643, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 643, i32 20 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1528, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant [21 x i8] c"rx_int1_dem_inp_enum\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 754, i32 8 }
@___asan_gen_.1102 = private unnamed_addr constant [17 x i8] c"comp_coeff_table\00", align 1
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 406, i32 36 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 769, i32 3 }
@___asan_gen_.1108 = private unnamed_addr constant [15 x i8] c"rx_int0_2_enum\00", align 1
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 691, i32 8 }
@___asan_gen_.1111 = private unnamed_addr constant [20 x i8] c"rx_int_mix_mux_text\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 624, i32 27 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 771, i32 3 }
@___asan_gen_.1117 = private unnamed_addr constant [15 x i8] c"rx_int1_2_enum\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 693, i32 8 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 773, i32 3 }
@___asan_gen_.1123 = private unnamed_addr constant [15 x i8] c"rx_int2_2_enum\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 695, i32 8 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 775, i32 3 }
@___asan_gen_.1129 = private unnamed_addr constant [24 x i8] c"rx_int0_1_mix_inp0_enum\00", align 1
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 698, i32 8 }
@___asan_gen_.1132 = private unnamed_addr constant [17 x i8] c"rx_prim_mix_text\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 628, i32 27 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 777, i32 3 }
@___asan_gen_.1138 = private unnamed_addr constant [24 x i8] c"rx_int0_1_mix_inp1_enum\00", align 1
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 700, i32 8 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 779, i32 3 }
@___asan_gen_.1144 = private unnamed_addr constant [24 x i8] c"rx_int0_1_mix_inp2_enum\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 702, i32 8 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 781, i32 3 }
@___asan_gen_.1150 = private unnamed_addr constant [24 x i8] c"rx_int1_1_mix_inp0_enum\00", align 1
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 704, i32 8 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 783, i32 3 }
@___asan_gen_.1156 = private unnamed_addr constant [24 x i8] c"rx_int1_1_mix_inp1_enum\00", align 1
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 706, i32 8 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 785, i32 3 }
@___asan_gen_.1162 = private unnamed_addr constant [24 x i8] c"rx_int1_1_mix_inp2_enum\00", align 1
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 708, i32 8 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 787, i32 3 }
@___asan_gen_.1168 = private unnamed_addr constant [24 x i8] c"rx_int2_1_mix_inp0_enum\00", align 1
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 710, i32 8 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 789, i32 3 }
@___asan_gen_.1174 = private unnamed_addr constant [24 x i8] c"rx_int2_1_mix_inp1_enum\00", align 1
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 712, i32 8 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 791, i32 3 }
@___asan_gen_.1180 = private unnamed_addr constant [24 x i8] c"rx_int2_1_mix_inp2_enum\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 714, i32 8 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 815, i32 3 }
@___asan_gen_.1186 = private unnamed_addr constant [22 x i8] c"rx_int0_1_interp_enum\00", align 1
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 740, i32 8 }
@___asan_gen_.1189 = private unnamed_addr constant [26 x i8] c"rx_int0_1_interp_mux_text\00", align 1
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 646, i32 27 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 817, i32 3 }
@___asan_gen_.1195 = private unnamed_addr constant [22 x i8] c"rx_int1_1_interp_enum\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 742, i32 8 }
@___asan_gen_.1198 = private unnamed_addr constant [26 x i8] c"rx_int1_1_interp_mux_text\00", align 1
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 650, i32 27 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 819, i32 3 }
@___asan_gen_.1204 = private unnamed_addr constant [22 x i8] c"rx_int2_1_interp_enum\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 744, i32 8 }
@___asan_gen_.1207 = private unnamed_addr constant [26 x i8] c"rx_int2_1_interp_mux_text\00", align 1
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 654, i32 27 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 821, i32 3 }
@___asan_gen_.1213 = private unnamed_addr constant [22 x i8] c"rx_int0_2_interp_enum\00", align 1
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 746, i32 8 }
@___asan_gen_.1216 = private unnamed_addr constant [26 x i8] c"rx_int0_2_interp_mux_text\00", align 1
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 658, i32 27 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 823, i32 3 }
@___asan_gen_.1222 = private unnamed_addr constant [22 x i8] c"rx_int1_2_interp_enum\00", align 1
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 748, i32 8 }
@___asan_gen_.1225 = private unnamed_addr constant [26 x i8] c"rx_int1_2_interp_mux_text\00", align 1
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 662, i32 27 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 825, i32 3 }
@___asan_gen_.1231 = private unnamed_addr constant [22 x i8] c"rx_int2_2_interp_enum\00", align 1
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 750, i32 8 }
@___asan_gen_.1234 = private unnamed_addr constant [26 x i8] c"rx_int2_2_interp_mux_text\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 666, i32 27 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 793, i32 3 }
@___asan_gen_.1240 = private unnamed_addr constant [22 x i8] c"rx_int0_mix2_inp_enum\00", align 1
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 717, i32 8 }
@___asan_gen_.1243 = private unnamed_addr constant [21 x i8] c"rx_sidetone_mix_text\00", align 1
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 633, i32 27 }
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 634, i32 26 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 795, i32 3 }
@___asan_gen_.1252 = private unnamed_addr constant [22 x i8] c"rx_int1_mix2_inp_enum\00", align 1
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 719, i32 8 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 797, i32 3 }
@___asan_gen_.1258 = private unnamed_addr constant [22 x i8] c"rx_int2_mix2_inp_enum\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 721, i32 8 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1903, i32 3 }
@___asan_gen_.1270 = private unnamed_addr constant [17 x i8] c"rx_macro_dai_ops\00", align 1
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1769, i32 37 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1833, i32 11 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1707, i32 3 }
@___asan_gen_.1285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1291 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1292 = private constant [37 x i8] c"../sound/soc/codecs/lpass-rx-macro.c\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1292, i32 1639, i32 4 }
@llvm.compiler.used = appending global [383 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_rx_macro_driver_exit, ptr @__initcall__kmod_snd_soc_lpass_rx_macro__238_3596_rx_macro_driver_init6, ptr @rx_macro_driver_exit, ptr @rx_macro_enable_echo._entry, ptr @rx_macro_enable_echo._entry_ptr, ptr @rx_macro_get_channel_map._entry, ptr @rx_macro_get_channel_map._entry_ptr, ptr @rx_macro_hw_params._entry, ptr @rx_macro_hw_params._entry_ptr, ptr @rx_macro_mclk_enable._entry, ptr @rx_macro_mclk_enable._entry_ptr, ptr @rx_macro_mclk_event._entry, ptr @rx_macro_mclk_event._entry_ptr, ptr @rx_macro_mux_put._entry, ptr @rx_macro_mux_put._entry.179, ptr @rx_macro_mux_put._entry.182, ptr @rx_macro_mux_put._entry_ptr, ptr @rx_macro_mux_put._entry_ptr.181, ptr @rx_macro_mux_put._entry_ptr.184, ptr @rx_macro_probe._entry, ptr @rx_macro_probe._entry_ptr, ptr @rx_macro_driver, ptr @.str, ptr @rx_macro_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rx_macro_probe._key, ptr @rx_regmap_config, ptr @.str.11, ptr @rx_macro_component_drv, ptr @rx_macro_dai, ptr @rx_defaults, ptr @.str.12, ptr @swclk_gate_ops, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @rx_macro_snd_controls, ptr @rx_audio_map, ptr @.str.16, ptr @digital_gain, ptr @.compoundliteral, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @rx_macro_hph_pwr_mode_enum, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @rx_macro_hph_pwr_mode_text, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @rx_macro_rx0_mux, ptr @.str.109, ptr @rx_macro_rx1_mux, ptr @.str.110, ptr @rx_macro_rx2_mux, ptr @.str.111, ptr @rx_macro_rx3_mux, ptr @.str.112, ptr @rx_macro_rx4_mux, ptr @.str.113, ptr @rx_macro_rx5_mux, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @iir0_inp0_mux, ptr @.str.121, ptr @iir0_inp1_mux, ptr @.str.122, ptr @iir0_inp2_mux, ptr @.str.123, ptr @iir0_inp3_mux, ptr @.str.124, ptr @iir1_inp0_mux, ptr @.str.125, ptr @iir1_inp1_mux, ptr @.str.126, ptr @iir1_inp2_mux, ptr @.str.127, ptr @iir1_inp3_mux, ptr @.str.128, ptr @rx_mix_tx0_mux, ptr @.str.129, ptr @rx_mix_tx1_mux, ptr @.str.130, ptr @rx_mix_tx2_mux, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @rx_int0_dem_inp_mux, ptr @.str.136, ptr @rx_int1_dem_inp_mux, ptr @.str.137, ptr @rx_int0_2_mux, ptr @.str.138, ptr @rx_int1_2_mux, ptr @.str.139, ptr @rx_int2_2_mux, ptr @.str.140, ptr @rx_int0_1_mix_inp0_mux, ptr @.str.141, ptr @rx_int0_1_mix_inp1_mux, ptr @.str.142, ptr @rx_int0_1_mix_inp2_mux, ptr @.str.143, ptr @rx_int1_1_mix_inp0_mux, ptr @.str.144, ptr @rx_int1_1_mix_inp1_mux, ptr @.str.145, ptr @rx_int1_1_mix_inp2_mux, ptr @.str.146, ptr @rx_int2_1_mix_inp0_mux, ptr @.str.147, ptr @rx_int2_1_mix_inp1_mux, ptr @.str.148, ptr @rx_int2_1_mix_inp2_mux, ptr @.str.149, ptr @rx_int0_1_interp_mux, ptr @.str.150, ptr @rx_int1_1_interp_mux, ptr @.str.151, ptr @rx_int2_1_interp_mux, ptr @.str.152, ptr @rx_int0_2_interp_mux, ptr @.str.153, ptr @rx_int1_2_interp_mux, ptr @.str.154, ptr @rx_int2_2_interp_mux, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @rx_int0_mix2_inp_mux, ptr @.str.162, ptr @rx_int1_mix2_inp_mux, ptr @.str.163, ptr @rx_int2_mix2_inp_mux, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @rx_macro_dapm_widgets, ptr @.str.176, ptr @rx_macro_rx0_enum, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.183, ptr @rx_macro_mux_text, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @rx_macro_rx1_enum, ptr @.str.191, ptr @rx_macro_rx2_enum, ptr @.str.192, ptr @rx_macro_rx3_enum, ptr @.str.193, ptr @rx_macro_rx4_enum, ptr @.str.194, ptr @rx_macro_rx5_enum, ptr @.str.195, ptr @iir0_inp0_enum, ptr @iir_inp_mux_text, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @iir0_inp1_enum, ptr @.str.207, ptr @iir0_inp2_enum, ptr @.str.208, ptr @iir0_inp3_enum, ptr @.str.209, ptr @iir1_inp0_enum, ptr @.str.210, ptr @iir1_inp1_enum, ptr @.str.211, ptr @iir1_inp2_enum, ptr @.str.212, ptr @iir1_inp3_enum, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @rx_mix_tx0_mux_enum, ptr @rx_echo_mux_text, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @rx_mix_tx1_mux_enum, ptr @.str.220, ptr @rx_mix_tx2_mux_enum, ptr @.str.221, ptr @rx_int0_dem_inp_enum, ptr @rx_int_dem_inp_mux_text, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @rx_int1_dem_inp_enum, ptr @comp_coeff_table, ptr @.str.225, ptr @rx_int0_2_enum, ptr @rx_int_mix_mux_text, ptr @.str.226, ptr @rx_int1_2_enum, ptr @.str.227, ptr @rx_int2_2_enum, ptr @.str.228, ptr @rx_int0_1_mix_inp0_enum, ptr @rx_prim_mix_text, ptr @.str.229, ptr @rx_int0_1_mix_inp1_enum, ptr @.str.230, ptr @rx_int0_1_mix_inp2_enum, ptr @.str.231, ptr @rx_int1_1_mix_inp0_enum, ptr @.str.232, ptr @rx_int1_1_mix_inp1_enum, ptr @.str.233, ptr @rx_int1_1_mix_inp2_enum, ptr @.str.234, ptr @rx_int2_1_mix_inp0_enum, ptr @.str.235, ptr @rx_int2_1_mix_inp1_enum, ptr @.str.236, ptr @rx_int2_1_mix_inp2_enum, ptr @.str.237, ptr @rx_int0_1_interp_enum, ptr @rx_int0_1_interp_mux_text, ptr @.str.238, ptr @rx_int1_1_interp_enum, ptr @rx_int1_1_interp_mux_text, ptr @.str.239, ptr @rx_int2_1_interp_enum, ptr @rx_int2_1_interp_mux_text, ptr @.str.240, ptr @rx_int0_2_interp_enum, ptr @rx_int0_2_interp_mux_text, ptr @.str.241, ptr @rx_int1_2_interp_enum, ptr @rx_int1_2_interp_mux_text, ptr @.str.242, ptr @rx_int2_2_interp_enum, ptr @rx_int2_2_interp_mux_text, ptr @.str.243, ptr @rx_int0_mix2_inp_enum, ptr @rx_sidetone_mix_text, ptr @.str.244, ptr @.str.245, ptr @rx_int1_mix2_inp_enum, ptr @.str.246, ptr @rx_int2_mix2_inp_enum, ptr @.str.247, ptr @.str.248, ptr @rx_macro_dai_ops, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253], section "llvm.metadata"
@0 = internal global [368 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_dai to i32), i32 840, i32 1056, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_defaults to i32), i32 2280, i32 2848, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swclk_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_mclk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_snd_controls to i32), i32 1968, i32 2464, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_audio_map to i32), i32 14976, i32 18720, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_hph_pwr_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_hph_pwr_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx4_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx5_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir0_inp0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir0_inp1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir0_inp2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir0_inp3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir1_inp0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir1_inp1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir1_inp2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir1_inp3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_tx0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_tx1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_tx2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_dem_inp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_dem_inp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_1_mix_inp0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_1_mix_inp1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_1_mix_inp2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_1_mix_inp0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_1_mix_inp1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_1_mix_inp2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_1_mix_inp0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_1_mix_inp1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_1_mix_inp2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_1_interp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_1_interp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_1_interp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_2_interp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_2_interp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_2_interp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_mix2_inp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_mix2_inp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_mix2_inp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_dapm_widgets to i32), i32 12960, i32 16192, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_mux_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_mux_put._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_mux_put._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_mux_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx4_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_rx5_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir0_inp0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir_inp_mux_text to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir0_inp1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir0_inp2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir0_inp3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir1_inp0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir1_inp1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir1_inp2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iir1_inp3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_enable_echo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_tx0_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_echo_mux_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_tx1_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_tx2_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_dem_inp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int_dem_inp_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_dem_inp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comp_coeff_table to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int_mix_mux_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_1_mix_inp0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_prim_mix_text to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_1_mix_inp1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_1_mix_inp2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_1_mix_inp0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_1_mix_inp1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_1_mix_inp2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_1_mix_inp0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_1_mix_inp1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_1_mix_inp2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_1_interp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_1_interp_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_1_interp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_1_interp_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_1_interp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_1_interp_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_2_interp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_2_interp_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_2_interp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_2_interp_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_2_interp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_2_interp_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int0_mix2_inp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_sidetone_mix_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int1_mix2_inp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int2_mix2_inp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_mclk_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_get_channel_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_macro_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rx_macro_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rx_macro_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @rx_macro_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %parent_clk_name.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 208, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = getelementptr inbounds %struct.rx_macro, ptr %call.i, i32 0, i32 20
  %0 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %clks, align 4
  %arrayidx3 = getelementptr %struct.rx_macro, ptr %call.i, i32 0, i32 20, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.2, ptr %arrayidx3, align 4
  %arrayidx6 = getelementptr %struct.rx_macro, ptr %call.i, i32 0, i32 20, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.3, ptr %arrayidx6, align 4
  %arrayidx9 = getelementptr %struct.rx_macro, ptr %call.i, i32 0, i32 20, i32 3
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.4, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr %struct.rx_macro, ptr %call.i, i32 0, i32 20, i32 4
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.5, ptr %arrayidx12, align 4
  %call15 = tail call i32 @devm_clk_bulk_get_optional(ptr noundef %dev1, i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %call15) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call19, ptr noundef nonnull @rx_regmap_config, ptr noundef nonnull @rx_macro_probe._key, ptr noundef nonnull @.str.11) #9
  %regmap = getelementptr inbounds %struct.rx_macro, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call24, ptr %regmap, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %reset_swr = getelementptr inbounds %struct.rx_macro, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %reset_swr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reset_swr, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %call.i, align 4
  %clk = getelementptr %struct.rx_macro, ptr %call.i, i32 0, i32 20, i32 2, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call28 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 9600000) #9
  %clk31 = getelementptr %struct.rx_macro, ptr %call.i, i32 0, i32 20, i32 3, i32 1
  %12 = ptrtoint ptr %clk31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk31, align 4
  %call32 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef 19200000) #9
  %call.i79 = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %clks) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_clk_name.i) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %18 = getelementptr inbounds i8, ptr %init.i, i32 12
  %19 = call ptr @memset(ptr %18, i32 255, i32 12)
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 4
  %call.i80 = tail call ptr @__clk_get_name(ptr noundef %21) #9
  %22 = ptrtoint ptr %parent_clk_name.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i80, ptr %parent_clk_name.i, align 4
  %23 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.12, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %24 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @swclk_gate_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %26 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %parent_clk_name.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %27 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %num_parents.i, align 4
  %hw2.i = getelementptr inbounds %struct.rx_macro, ptr %call.i, i32 0, i32 21
  %init3.i = getelementptr inbounds %struct.rx_macro, ptr %call.i, i32 0, i32 21, i32 2
  %28 = ptrtoint ptr %init3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %init.i, ptr %init3.i, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %call6.i = call i32 @clk_hw_register(ptr noundef %30, ptr noundef %hw2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i81 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i81, label %if.end.i82, label %if.end38.rx_macro_register_mclk_output.exit_crit_edge

if.end38.rx_macro_register_mclk_output.exit_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_register_mclk_output.exit

if.end.i82:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %clk8.i = getelementptr inbounds %struct.rx_macro, ptr %call.i, i32 0, i32 21, i32 1
  %31 = ptrtoint ptr %clk8.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk8.i, align 4
  %call9.i = call i32 @of_clk_add_provider(ptr noundef %17, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %32) #9
  br label %rx_macro_register_mclk_output.exit

rx_macro_register_mclk_output.exit:               ; preds = %if.end.i82, %if.end38.rx_macro_register_mclk_output.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i) #9
  %call40 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @rx_macro_component_drv, ptr noundef nonnull @rx_macro_dai, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %rx_macro_register_mclk_output.exit.cleanup_crit_edge, label %if.then42

rx_macro_register_mclk_output.exit.cleanup_crit_edge: ; preds = %rx_macro_register_mclk_output.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %rx_macro_register_mclk_output.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #9
  call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %rx_macro_register_mclk_output.exit.cleanup_crit_edge, %if.then3.i, %if.end23.cleanup_crit_edge, %if.then21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end ], [ %5, %if.then21 ], [ -12, %entry.cleanup_crit_edge ], [ %call40, %if.then42 ], [ 0, %rx_macro_register_mclk_output.exit.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i79, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #9
  %clks = getelementptr inbounds %struct.rx_macro, ptr %1, i32 0, i32 20
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rx_is_writeable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @rx_is_rw_register(i32 noundef %reg)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog.i [
    i32 720, label %if.then.cleanup_crit_edge
    i32 836, label %if.then.cleanup_crit_edge6
    i32 880, label %if.then.cleanup_crit_edge7
    i32 912, label %if.then.cleanup_crit_edge8
  ]

if.then.cleanup_crit_edge8:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge7:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge6:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge6, %if.then.cleanup_crit_edge7, %if.then.cleanup_crit_edge8, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %sw.epilog.i ], [ true, %if.then.cleanup_crit_edge ], [ true, %if.then.cleanup_crit_edge6 ], [ true, %if.then.cleanup_crit_edge7 ], [ true, %if.then.cleanup_crit_edge8 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rx_is_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %reg, label %sw.epilog [
    i32 44, label %entry.return_crit_edge
    i32 48, label %entry.return_crit_edge2
    i32 64, label %entry.return_crit_edge3
    i32 68, label %entry.return_crit_edge4
    i32 120, label %entry.return_crit_edge5
    i32 136, label %entry.return_crit_edge6
    i32 724, label %entry.return_crit_edge7
    i32 804, label %entry.return_crit_edge8
    i32 872, label %entry.return_crit_edge9
    i32 904, label %entry.return_crit_edge10
    i32 2072, label %entry.return_crit_edge11
    i32 2136, label %entry.return_crit_edge12
    i32 3344, label %entry.return_crit_edge13
    i32 3348, label %entry.return_crit_edge14
    i32 3352, label %entry.return_crit_edge15
    i32 3356, label %entry.return_crit_edge16
    i32 3360, label %entry.return_crit_edge17
    i32 3408, label %entry.return_crit_edge18
    i32 3412, label %entry.return_crit_edge19
    i32 3416, label %entry.return_crit_edge20
    i32 3420, label %entry.return_crit_edge21
    i32 3424, label %entry.return_crit_edge22
    i32 3472, label %entry.return_crit_edge23
    i32 3476, label %entry.return_crit_edge24
    i32 3480, label %entry.return_crit_edge25
    i32 3484, label %entry.return_crit_edge26
    i32 3488, label %entry.return_crit_edge27
  ]

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc zeroext i1 @rx_is_rw_register(i32 noundef %reg)
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rx_is_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %reg, label %sw.epilog [
    i32 44, label %entry.return_crit_edge
    i32 32, label %entry.return_crit_edge1
    i32 48, label %entry.return_crit_edge2
    i32 36, label %entry.return_crit_edge3
    i32 64, label %entry.return_crit_edge4
    i32 52, label %entry.return_crit_edge5
    i32 68, label %entry.return_crit_edge6
    i32 56, label %entry.return_crit_edge7
    i32 120, label %entry.return_crit_edge8
    i32 136, label %entry.return_crit_edge9
    i32 724, label %entry.return_crit_edge10
    i32 804, label %entry.return_crit_edge11
    i32 872, label %entry.return_crit_edge12
    i32 904, label %entry.return_crit_edge13
    i32 2072, label %entry.return_crit_edge14
    i32 2136, label %entry.return_crit_edge15
    i32 3344, label %entry.return_crit_edge16
    i32 3348, label %entry.return_crit_edge17
    i32 3352, label %entry.return_crit_edge18
    i32 3356, label %entry.return_crit_edge19
    i32 3360, label %entry.return_crit_edge20
    i32 3408, label %entry.return_crit_edge21
    i32 3412, label %entry.return_crit_edge22
    i32 3416, label %entry.return_crit_edge23
    i32 3420, label %entry.return_crit_edge24
    i32 3424, label %entry.return_crit_edge25
    i32 3472, label %entry.return_crit_edge26
    i32 3476, label %entry.return_crit_edge27
    i32 3480, label %entry.return_crit_edge28
    i32 3484, label %entry.return_crit_edge29
    i32 3488, label %entry.return_crit_edge30
  ]

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @rx_is_rw_register(i32 noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %reg, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 8, label %entry.return_crit_edge1
    i32 12, label %entry.return_crit_edge2
    i32 16, label %entry.return_crit_edge3
    i32 20, label %entry.return_crit_edge4
    i32 24, label %entry.return_crit_edge5
    i32 28, label %entry.return_crit_edge6
    i32 32, label %entry.return_crit_edge7
    i32 36, label %entry.return_crit_edge8
    i32 40, label %entry.return_crit_edge9
    i32 52, label %entry.return_crit_edge10
    i32 56, label %entry.return_crit_edge11
    i32 60, label %entry.return_crit_edge12
    i32 112, label %entry.return_crit_edge13
    i32 116, label %entry.return_crit_edge14
    i32 124, label %entry.return_crit_edge15
    i32 128, label %entry.return_crit_edge16
    i32 132, label %entry.return_crit_edge17
    i32 140, label %entry.return_crit_edge18
    i32 144, label %entry.return_crit_edge19
    i32 148, label %entry.return_crit_edge20
    i32 152, label %entry.return_crit_edge21
    i32 156, label %entry.return_crit_edge22
    i32 160, label %entry.return_crit_edge23
    i32 256, label %entry.return_crit_edge24
    i32 260, label %entry.return_crit_edge25
    i32 264, label %entry.return_crit_edge26
    i32 268, label %entry.return_crit_edge27
    i32 272, label %entry.return_crit_edge28
    i32 320, label %entry.return_crit_edge29
    i32 324, label %entry.return_crit_edge30
    i32 384, label %entry.return_crit_edge31
    i32 388, label %entry.return_crit_edge32
    i32 392, label %entry.return_crit_edge33
    i32 396, label %entry.return_crit_edge34
    i32 400, label %entry.return_crit_edge35
    i32 404, label %entry.return_crit_edge36
    i32 408, label %entry.return_crit_edge37
    i32 412, label %entry.return_crit_edge38
    i32 416, label %entry.return_crit_edge39
    i32 512, label %entry.return_crit_edge40
    i32 516, label %entry.return_crit_edge41
    i32 520, label %entry.return_crit_edge42
    i32 524, label %entry.return_crit_edge43
    i32 528, label %entry.return_crit_edge44
    i32 532, label %entry.return_crit_edge45
    i32 536, label %entry.return_crit_edge46
    i32 540, label %entry.return_crit_edge47
    i32 544, label %entry.return_crit_edge48
    i32 548, label %entry.return_crit_edge49
    i32 552, label %entry.return_crit_edge50
    i32 556, label %entry.return_crit_edge51
    i32 560, label %entry.return_crit_edge52
    i32 564, label %entry.return_crit_edge53
    i32 568, label %entry.return_crit_edge54
    i32 572, label %entry.return_crit_edge55
    i32 576, label %entry.return_crit_edge56
    i32 580, label %entry.return_crit_edge57
    i32 584, label %entry.return_crit_edge58
    i32 588, label %entry.return_crit_edge59
    i32 640, label %entry.return_crit_edge60
    i32 644, label %entry.return_crit_edge61
    i32 648, label %entry.return_crit_edge62
    i32 652, label %entry.return_crit_edge63
    i32 656, label %entry.return_crit_edge64
    i32 660, label %entry.return_crit_edge65
    i32 664, label %entry.return_crit_edge66
    i32 668, label %entry.return_crit_edge67
    i32 672, label %entry.return_crit_edge68
    i32 676, label %entry.return_crit_edge69
    i32 680, label %entry.return_crit_edge70
    i32 684, label %entry.return_crit_edge71
    i32 688, label %entry.return_crit_edge72
    i32 692, label %entry.return_crit_edge73
    i32 696, label %entry.return_crit_edge74
    i32 700, label %entry.return_crit_edge75
    i32 704, label %entry.return_crit_edge76
    i32 708, label %entry.return_crit_edge77
    i32 712, label %entry.return_crit_edge78
    i32 716, label %entry.return_crit_edge79
    i32 728, label %entry.return_crit_edge80
    i32 732, label %entry.return_crit_edge81
    i32 736, label %entry.return_crit_edge82
    i32 740, label %entry.return_crit_edge83
    i32 744, label %entry.return_crit_edge84
    i32 748, label %entry.return_crit_edge85
    i32 752, label %entry.return_crit_edge86
    i32 756, label %entry.return_crit_edge87
    i32 760, label %entry.return_crit_edge88
    i32 764, label %entry.return_crit_edge89
    i32 768, label %entry.return_crit_edge90
    i32 772, label %entry.return_crit_edge91
    i32 776, label %entry.return_crit_edge92
    i32 780, label %entry.return_crit_edge93
    i32 784, label %entry.return_crit_edge94
    i32 788, label %entry.return_crit_edge95
    i32 792, label %entry.return_crit_edge96
    i32 796, label %entry.return_crit_edge97
    i32 800, label %entry.return_crit_edge98
    i32 832, label %entry.return_crit_edge99
    i32 864, label %entry.return_crit_edge100
    i32 896, label %entry.return_crit_edge101
    i32 960, label %entry.return_crit_edge102
    i32 968, label %entry.return_crit_edge103
    i32 976, label %entry.return_crit_edge104
    i32 1024, label %entry.return_crit_edge105
    i32 1028, label %entry.return_crit_edge106
    i32 1032, label %entry.return_crit_edge107
    i32 1036, label %entry.return_crit_edge108
    i32 1040, label %entry.return_crit_edge109
    i32 1044, label %entry.return_crit_edge110
    i32 1048, label %entry.return_crit_edge111
    i32 1052, label %entry.return_crit_edge112
    i32 1056, label %entry.return_crit_edge113
    i32 1060, label %entry.return_crit_edge114
    i32 1064, label %entry.return_crit_edge115
    i32 1068, label %entry.return_crit_edge116
    i32 1072, label %entry.return_crit_edge117
    i32 1076, label %entry.return_crit_edge118
    i32 1080, label %entry.return_crit_edge119
    i32 1084, label %entry.return_crit_edge120
    i32 1088, label %entry.return_crit_edge121
    i32 1092, label %entry.return_crit_edge122
    i32 1096, label %entry.return_crit_edge123
    i32 1100, label %entry.return_crit_edge124
    i32 1104, label %entry.return_crit_edge125
    i32 1108, label %entry.return_crit_edge126
    i32 1112, label %entry.return_crit_edge127
    i32 1152, label %entry.return_crit_edge128
    i32 1156, label %entry.return_crit_edge129
    i32 1160, label %entry.return_crit_edge130
    i32 1164, label %entry.return_crit_edge131
    i32 1168, label %entry.return_crit_edge132
    i32 1172, label %entry.return_crit_edge133
    i32 1176, label %entry.return_crit_edge134
    i32 1180, label %entry.return_crit_edge135
    i32 1184, label %entry.return_crit_edge136
    i32 1188, label %entry.return_crit_edge137
    i32 1192, label %entry.return_crit_edge138
    i32 1196, label %entry.return_crit_edge139
    i32 1200, label %entry.return_crit_edge140
    i32 1204, label %entry.return_crit_edge141
    i32 1208, label %entry.return_crit_edge142
    i32 1212, label %entry.return_crit_edge143
    i32 1216, label %entry.return_crit_edge144
    i32 1220, label %entry.return_crit_edge145
    i32 1224, label %entry.return_crit_edge146
    i32 1228, label %entry.return_crit_edge147
    i32 1232, label %entry.return_crit_edge148
    i32 1236, label %entry.return_crit_edge149
    i32 1240, label %entry.return_crit_edge150
    i32 1280, label %entry.return_crit_edge151
    i32 1284, label %entry.return_crit_edge152
    i32 1288, label %entry.return_crit_edge153
    i32 1292, label %entry.return_crit_edge154
    i32 1296, label %entry.return_crit_edge155
    i32 1300, label %entry.return_crit_edge156
    i32 1304, label %entry.return_crit_edge157
    i32 1308, label %entry.return_crit_edge158
    i32 1312, label %entry.return_crit_edge159
    i32 1316, label %entry.return_crit_edge160
    i32 1320, label %entry.return_crit_edge161
    i32 1324, label %entry.return_crit_edge162
    i32 1328, label %entry.return_crit_edge163
    i32 1332, label %entry.return_crit_edge164
    i32 1336, label %entry.return_crit_edge165
    i32 1340, label %entry.return_crit_edge166
    i32 1344, label %entry.return_crit_edge167
    i32 1348, label %entry.return_crit_edge168
    i32 1352, label %entry.return_crit_edge169
    i32 1356, label %entry.return_crit_edge170
    i32 1920, label %entry.return_crit_edge171
    i32 1924, label %entry.return_crit_edge172
    i32 1928, label %entry.return_crit_edge173
    i32 1932, label %entry.return_crit_edge174
    i32 1936, label %entry.return_crit_edge175
    i32 2048, label %entry.return_crit_edge176
    i32 2052, label %entry.return_crit_edge177
    i32 2056, label %entry.return_crit_edge178
    i32 2060, label %entry.return_crit_edge179
    i32 2064, label %entry.return_crit_edge180
    i32 2068, label %entry.return_crit_edge181
    i32 2076, label %entry.return_crit_edge182
    i32 2112, label %entry.return_crit_edge183
    i32 2116, label %entry.return_crit_edge184
    i32 2120, label %entry.return_crit_edge185
    i32 2124, label %entry.return_crit_edge186
    i32 2128, label %entry.return_crit_edge187
    i32 2132, label %entry.return_crit_edge188
    i32 2140, label %entry.return_crit_edge189
    i32 2560, label %entry.return_crit_edge190
    i32 2564, label %entry.return_crit_edge191
    i32 2568, label %entry.return_crit_edge192
    i32 2572, label %entry.return_crit_edge193
    i32 2576, label %entry.return_crit_edge194
    i32 2580, label %entry.return_crit_edge195
    i32 2584, label %entry.return_crit_edge196
    i32 2588, label %entry.return_crit_edge197
    i32 2592, label %entry.return_crit_edge198
    i32 2596, label %entry.return_crit_edge199
    i32 2600, label %entry.return_crit_edge200
    i32 2604, label %entry.return_crit_edge201
    i32 2608, label %entry.return_crit_edge202
    i32 2688, label %entry.return_crit_edge203
    i32 2692, label %entry.return_crit_edge204
    i32 2696, label %entry.return_crit_edge205
    i32 2700, label %entry.return_crit_edge206
    i32 2704, label %entry.return_crit_edge207
    i32 2708, label %entry.return_crit_edge208
    i32 2712, label %entry.return_crit_edge209
    i32 2716, label %entry.return_crit_edge210
    i32 2720, label %entry.return_crit_edge211
    i32 2724, label %entry.return_crit_edge212
    i32 2728, label %entry.return_crit_edge213
    i32 2732, label %entry.return_crit_edge214
    i32 2736, label %entry.return_crit_edge215
    i32 2816, label %entry.return_crit_edge216
    i32 2820, label %entry.return_crit_edge217
    i32 2824, label %entry.return_crit_edge218
    i32 2828, label %entry.return_crit_edge219
    i32 2832, label %entry.return_crit_edge220
    i32 2836, label %entry.return_crit_edge221
    i32 2840, label %entry.return_crit_edge222
    i32 2844, label %entry.return_crit_edge223
    i32 2880, label %entry.return_crit_edge224
    i32 2884, label %entry.return_crit_edge225
    i32 2896, label %entry.return_crit_edge226
    i32 2900, label %entry.return_crit_edge227
    i32 3072, label %entry.return_crit_edge228
    i32 3076, label %entry.return_crit_edge229
    i32 3136, label %entry.return_crit_edge230
    i32 3140, label %entry.return_crit_edge231
    i32 3200, label %entry.return_crit_edge232
    i32 3204, label %entry.return_crit_edge233
    i32 3328, label %entry.return_crit_edge234
    i32 3332, label %entry.return_crit_edge235
    i32 3336, label %entry.return_crit_edge236
    i32 3340, label %entry.return_crit_edge237
    i32 3392, label %entry.return_crit_edge238
    i32 3396, label %entry.return_crit_edge239
    i32 3400, label %entry.return_crit_edge240
    i32 3404, label %entry.return_crit_edge241
    i32 3456, label %entry.return_crit_edge242
    i32 3460, label %entry.return_crit_edge243
    i32 3464, label %entry.return_crit_edge244
    i32 3468, label %entry.return_crit_edge245
    i32 3840, label %entry.return_crit_edge246
    i32 3844, label %entry.return_crit_edge247
    i32 3848, label %entry.return_crit_edge248
    i32 3852, label %entry.return_crit_edge249
    i32 3968, label %entry.return_crit_edge250
    i32 3972, label %entry.return_crit_edge251
    i32 3976, label %entry.return_crit_edge252
    i32 3980, label %entry.return_crit_edge253
  ]

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swclk_gate_enable(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -196
  tail call fastcc void @rx_macro_mclk_enable(ptr noundef %add.ptr, i1 noundef zeroext true)
  %reset_swr = getelementptr i8, ptr %hw, i32 -136
  %0 = ptrtoint ptr %reset_swr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reset_swr, align 4, !range !659
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr i8, ptr %hw, i32 -44
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 264, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regmap1 = getelementptr i8, ptr %hw, i32 -44
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 264, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %6 = ptrtoint ptr %reset_swr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reset_swr, align 4, !range !659
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap1, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 264, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %10 = ptrtoint ptr %reset_swr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %reset_swr, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @swclk_gate_disable(ptr nocapture noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -196
  %regmap = getelementptr i8, ptr %hw, i32 -44
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 264, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call fastcc void @rx_macro_mclk_enable(ptr noundef %add.ptr, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swclk_gate_is_enabled(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !660
  %regmap = getelementptr i8, ptr %hw, i32 -44
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 264, ptr noundef nonnull %val) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @swclk_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = lshr i32 %parent_rate, 1
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_macro_mclk_enable(ptr nocapture noundef %rx, i1 noundef zeroext %mclk_enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 19
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %rx_mclk_users = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 5
  %2 = ptrtoint ptr %rx_mclk_users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mclk_users, align 4
  br i1 %mclk_enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 256, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 260, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 260, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @regcache_mark_dirty(ptr noundef %1) #9
  %call5 = tail call i32 @regcache_sync(ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %rx_mclk_users to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_mclk_users, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_mclk_users, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp8 = icmp slt i32 %3, 1
  br i1 %cmp8, label %do.end, label %if.end11

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #12
  %8 = ptrtoint ptr %rx_mclk_users to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %rx_mclk_users, align 4
  br label %cleanup

if.end11:                                         ; preds = %if.else
  %dec = add nsw i32 %3, -1
  %9 = ptrtoint ptr %rx_mclk_users to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dec, ptr %rx_mclk_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp14 = icmp eq i32 %dec, 0
  br i1 %cmp14, label %if.then15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 260, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 260, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 256, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end11.cleanup_crit_edge, %do.end, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_component_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.rx_macro, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %5) #9
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1076, i32 noundef 7, i32 noundef 2) #9
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1204, i32 noundef 7, i32 noundef 2) #9
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1344, i32 noundef 7, i32 noundef 2) #9
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1040, i32 noundef 3, i32 noundef 2) #9
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1168, i32 noundef 3, i32 noundef 2) #9
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1296, i32 noundef 3, i32 noundef 2) #9
  %component7 = getelementptr inbounds %struct.rx_macro, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %component7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %component, ptr %component7, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_get_compander(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.rx_macro, ptr %10, i32 0, i32 1, i32 %6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_set_compander(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift, align 4
  %value1 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value1, align 8
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx3 = getelementptr %struct.rx_macro, ptr %12, i32 0, i32 1, i32 %6
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_get_ear_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %is_ear_mode_on = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %is_ear_mode_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_ear_mode_on, align 4, !range !659
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_put_ear_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %is_ear_mode_on = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 9
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %is_ear_mode_on to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %is_ear_mode_on, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_get_hph_hd2_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %hph_hd2_mode = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %hph_hd2_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hph_hd2_mode, align 2, !range !659
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_put_hph_hd2_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %hph_hd2_mode = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 11
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %hph_hd2_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %hph_hd2_mode, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_get_hph_pwr_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %hph_pwr_mode = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %hph_pwr_mode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hph_pwr_mode, align 1, !range !659
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_put_hph_pwr_mode(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %hph_pwr_mode = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 10
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %hph_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %hph_pwr_mode, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_soft_clip_enable_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %is_softclip_on = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %is_softclip_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_softclip_on, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_soft_clip_enable_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %is_softclip_on = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %is_softclip_on to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %is_softclip_on, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_aux_hpf_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %is_aux_hpf_on = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %is_aux_hpf_on to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_aux_hpf_on, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_aux_hpf_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %is_aux_hpf_on = getelementptr inbounds %struct.rx_macro, ptr %5, i32 0, i32 17
  %8 = ptrtoint ptr %is_aux_hpf_on to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %is_aux_hpf_on, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rx_macro_iir_filter_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %bytes_ext = getelementptr inbounds %struct.wcd_iir_filter_ctl, ptr %2, i32 0, i32 2
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %ucontrol, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %type, align 8
  %4 = ptrtoint ptr %bytes_ext to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytes_ext, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %ucontrol, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_get_iir_band_audio_mixer(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %coeff = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %bytes_ext = getelementptr inbounds %struct.wcd_iir_filter_ctl, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %band_idx2 = getelementptr inbounds %struct.wcd_iir_filter_ctl, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %band_idx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %band_idx2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %coeff)
  %coeff.4.coeff.4.coeff.4..sroa_idx = getelementptr inbounds i8, ptr %coeff, i32 4
  %coeff.8.coeff.8.coeff.8..sroa_idx = getelementptr inbounds i8, ptr %coeff, i32 8
  %coeff.12.coeff.12.coeff.12..sroa_idx = getelementptr inbounds i8, ptr %coeff, i32 12
  %coeff.16.coeff.16.coeff.16..sroa_idx = getelementptr inbounds i8, ptr %coeff, i32 16
  %call3 = tail call fastcc i32 @get_iir_band_coeff(ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef 0)
  %9 = ptrtoint ptr %coeff to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3, ptr %coeff, align 4
  %call4 = tail call fastcc i32 @get_iir_band_coeff(ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef 1)
  %10 = ptrtoint ptr %coeff.4.coeff.4.coeff.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %coeff.4.coeff.4.coeff.4..sroa_idx, align 4
  %call6 = tail call fastcc i32 @get_iir_band_coeff(ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef 2)
  %11 = ptrtoint ptr %coeff.8.coeff.8.coeff.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call6, ptr %coeff.8.coeff.8.coeff.8..sroa_idx, align 4
  %call8 = tail call fastcc i32 @get_iir_band_coeff(ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef 3)
  %12 = ptrtoint ptr %coeff.12.coeff.12.coeff.12..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call8, ptr %coeff.12.coeff.12.coeff.12..sroa_idx, align 4
  %call10 = tail call fastcc i32 @get_iir_band_coeff(ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef 4)
  %13 = ptrtoint ptr %coeff.16.coeff.16.coeff.16..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call10, ptr %coeff.16.coeff.16.coeff.16..sroa_idx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %bytes_ext to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes_ext, align 4
  %16 = call ptr @memcpy(ptr %value, ptr %coeff, i32 %15)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %coeff)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_put_iir_band_audio_mixer(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %coeff = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %bytes_ext = getelementptr inbounds %struct.wcd_iir_filter_ctl, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %band_idx2 = getelementptr inbounds %struct.wcd_iir_filter_ctl, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %band_idx2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %band_idx2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %coeff)
  %coeff.4.coeff.4.coeff.4..sroa_idx = getelementptr inbounds i8, ptr %coeff, i32 4
  %coeff.8.coeff.8.coeff.8..sroa_idx = getelementptr inbounds i8, ptr %coeff, i32 8
  %coeff.12.coeff.12.coeff.12..sroa_idx = getelementptr inbounds i8, ptr %coeff, i32 12
  %coeff.16.coeff.16.coeff.16..sroa_idx = getelementptr inbounds i8, ptr %coeff, i32 16
  %mul = shl i32 %6, 7
  %add = add i32 %mul, 2604
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %bytes_ext to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_ext, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %10)
  %12 = icmp ugt i32 %10, 19
  %13 = sub nsw i64 20, %11
  %14 = select i1 %12, i64 0, i64 %13
  %15 = getelementptr i8, ptr %coeff, i32 %10
  %16 = trunc i64 %14 to i32
  %17 = call ptr @memset(ptr %15, i32 255, i32 %16)
  %18 = call ptr @memcpy(ptr %coeff, ptr %value, i32 %10)
  %mul4 = mul i32 %8, 20
  %and = and i32 %mul4, 124
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add, i32 noundef %and) #9
  %19 = ptrtoint ptr %coeff to i32
  call void @__asan_load4_noabort(i32 %19)
  %coeff.0.coeff.0.coeff.0. = load i32, ptr %coeff, align 4
  %add.i = add i32 %mul, 2608
  %and.i = and i32 %coeff.0.coeff.0.coeff.0., 255
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and.i) #9
  %shr.i = lshr i32 %coeff.0.coeff.0.coeff.0., 8
  %and1.i = and i32 %shr.i, 255
  %call2.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and1.i) #9
  %shr3.i = lshr i32 %coeff.0.coeff.0.coeff.0., 16
  %and4.i = and i32 %shr3.i, 255
  %call5.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and4.i) #9
  %shr6.i = lshr i32 %coeff.0.coeff.0.coeff.0., 24
  %and7.i = and i32 %shr6.i, 63
  %call8.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and7.i) #9
  %20 = ptrtoint ptr %coeff.4.coeff.4.coeff.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %coeff.4.coeff.4.coeff.4. = load i32, ptr %coeff.4.coeff.4.coeff.4..sroa_idx, align 4
  %and.i31 = and i32 %coeff.4.coeff.4.coeff.4., 255
  %call.i32 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and.i31) #9
  %shr.i33 = lshr i32 %coeff.4.coeff.4.coeff.4., 8
  %and1.i34 = and i32 %shr.i33, 255
  %call2.i35 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and1.i34) #9
  %shr3.i36 = lshr i32 %coeff.4.coeff.4.coeff.4., 16
  %and4.i37 = and i32 %shr3.i36, 255
  %call5.i38 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and4.i37) #9
  %shr6.i39 = lshr i32 %coeff.4.coeff.4.coeff.4., 24
  %and7.i40 = and i32 %shr6.i39, 63
  %call8.i41 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and7.i40) #9
  %21 = ptrtoint ptr %coeff.8.coeff.8.coeff.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %coeff.8.coeff.8.coeff.8. = load i32, ptr %coeff.8.coeff.8.coeff.8..sroa_idx, align 4
  %and.i44 = and i32 %coeff.8.coeff.8.coeff.8., 255
  %call.i45 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and.i44) #9
  %shr.i46 = lshr i32 %coeff.8.coeff.8.coeff.8., 8
  %and1.i47 = and i32 %shr.i46, 255
  %call2.i48 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and1.i47) #9
  %shr3.i49 = lshr i32 %coeff.8.coeff.8.coeff.8., 16
  %and4.i50 = and i32 %shr3.i49, 255
  %call5.i51 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and4.i50) #9
  %shr6.i52 = lshr i32 %coeff.8.coeff.8.coeff.8., 24
  %and7.i53 = and i32 %shr6.i52, 63
  %call8.i54 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and7.i53) #9
  %22 = ptrtoint ptr %coeff.12.coeff.12.coeff.12..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %coeff.12.coeff.12.coeff.12. = load i32, ptr %coeff.12.coeff.12.coeff.12..sroa_idx, align 4
  %and.i57 = and i32 %coeff.12.coeff.12.coeff.12., 255
  %call.i58 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and.i57) #9
  %shr.i59 = lshr i32 %coeff.12.coeff.12.coeff.12., 8
  %and1.i60 = and i32 %shr.i59, 255
  %call2.i61 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and1.i60) #9
  %shr3.i62 = lshr i32 %coeff.12.coeff.12.coeff.12., 16
  %and4.i63 = and i32 %shr3.i62, 255
  %call5.i64 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and4.i63) #9
  %shr6.i65 = lshr i32 %coeff.12.coeff.12.coeff.12., 24
  %and7.i66 = and i32 %shr6.i65, 63
  %call8.i67 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and7.i66) #9
  %23 = ptrtoint ptr %coeff.16.coeff.16.coeff.16..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %coeff.16.coeff.16.coeff.16. = load i32, ptr %coeff.16.coeff.16.coeff.16..sroa_idx, align 4
  %and.i70 = and i32 %coeff.16.coeff.16.coeff.16., 255
  %call.i71 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and.i70) #9
  %shr.i72 = lshr i32 %coeff.16.coeff.16.coeff.16., 8
  %and1.i73 = and i32 %shr.i72, 255
  %call2.i74 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and1.i73) #9
  %shr3.i75 = lshr i32 %coeff.16.coeff.16.coeff.16., 16
  %and4.i76 = and i32 %shr3.i75, 255
  %call5.i77 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and4.i76) #9
  %shr6.i78 = lshr i32 %coeff.16.coeff.16.coeff.16., 24
  %and7.i79 = and i32 %shr6.i78, 63
  %call8.i80 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %add.i, i32 noundef %and7.i79) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %coeff)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_iir_band_coeff(ptr noundef %component, i32 noundef %iir_idx, i32 noundef %band_idx, i32 noundef %coeff_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %iir_idx, 7
  %add = add i32 %mul, 2604
  %add2 = add i32 %mul, 2608
  %mul3 = mul i32 %band_idx, 5
  %add4 = add i32 %mul3, %coeff_idx
  %mul5 = shl i32 %add4, 2
  %and = and i32 %mul5, 124
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add, i32 noundef %and) #9
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %add2) #9
  %and11 = or i32 %and, 1
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add, i32 noundef %and11) #9
  %call13 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %add2) #9
  %shl = shl i32 %call13, 8
  %or = or i32 %shl, %call6
  %and18 = or i32 %and, 2
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add, i32 noundef %and18) #9
  %call20 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %add2) #9
  %shl21 = shl i32 %call20, 16
  %or22 = or i32 %or, %shl21
  %and27 = or i32 %and, 3
  %call28 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %add, i32 noundef %and27) #9
  %call29 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %add2) #9
  %shl30 = shl i32 %call29, 24
  %or31 = or i32 %or22, %shl30
  ret i32 %or31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_enable_echo(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 408) #9
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(15) @.str.128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and = lshr i32 %call1, 4
  %4 = and i32 %and, 15
  %sub = add nsw i32 %4, -1
  br label %if.end11

if.else:                                          ; preds = %entry
  %call5 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(15) @.str.129) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and9 = and i32 %call1, 15
  %sub10 = add nsw i32 %and9, -1
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.else.if.end11_crit_edge, %if.then
  %ec_tx.0 = phi i32 [ -1, %if.else.if.end11_crit_edge ], [ %sub10, %if.then7 ], [ %sub, %if.then ]
  %call12 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 412) #9
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call15 = tail call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(15) @.str.130) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  %and19 = and i32 %call12, 15
  %sub20 = add nsw i32 %and19, -1
  %ec_tx.1 = select i1 %tobool16.not, i32 %sub20, i32 %ec_tx.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ec_tx.1)
  %7 = icmp ugt i32 %ec_tx.1, 2
  br i1 %7, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %1, i32 -164
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.214) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl nuw nsw i32 %ec_tx.1, 6
  %conv27 = add nuw nsw i32 %mul, 3072
  %conv28 = and i32 %conv27, 65472
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv28, i32 noundef 1, i32 noundef 1) #9
  %conv32 = add nuw nsw i32 %mul, 3076
  %conv33 = and i32 %conv32, 65476
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv33, i32 noundef 30, i32 noundef 8) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_set_iir_gain(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.bb_crit_edge
    i32 4, label %entry.sw.bb_crit_edge44
  ]

entry.sw.bb_crit_edge44:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge44
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %1 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -176
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call1 = tail call ptr @strnstr(ptr noundef %4, ptr noundef nonnull @.str.131, i32 noundef 5) #9
  %tobool.not = icmp eq ptr %call1, null
  %. = select i1 %tobool.not, i32 2692, i32 2564
  %.41 = select i1 %tobool.not, i32 2696, i32 2568
  %.42 = select i1 %tobool.not, i32 2700, i32 2572
  %.43 = select i1 %tobool.not, i32 2704, i32 2576
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %.) #9
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %., i32 noundef %call2) #9
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %.41) #9
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %.41, i32 noundef %call4) #9
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %.42) #9
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %.42, i32 noundef %call6) #9
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %.43) #9
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %.43, i32 noundef %call8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_enable_mix_path(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 7
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 8, label %sw.bb15
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rx_macro_enable_interp_clk(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %conv)
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv1 = add nuw nsw i32 %mul, 1056
  %call13 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv1) #9
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %conv1, i32 noundef %call13) #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = add nuw nsw i32 %mul, 1048
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv6, i32 noundef 32, i32 noundef 0) #9
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv19 = zext i8 %6 to i32
  tail call fastcc void @rx_macro_enable_interp_clk(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef %conv19)
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv6, i32 noundef 64, i32 noundef 64) #9
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv6, i32 noundef 64, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb10, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_enable_main_path(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 4
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 7
  %conv1 = add nuw nsw i32 %mul, 1024
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 8, label %sw.bb20
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call fastcc void @rx_macro_enable_interp_clk(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %conv)
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv11 = zext i8 %6 to i32
  %7 = shl nuw nsw i32 %conv11, 3
  %conv.i = add nuw nsw i32 %7, 384
  %call.i = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv.i, i32 noundef 15) #9
  %call7.i = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv.i, i32 noundef 240) #9
  %conv9.i = or i32 %conv.i, 4
  %call10.i = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv9.i, i32 noundef 240) #9
  %conv12.i = and i32 %call.i, 255
  %conv12.off.i = add nsw i32 %conv12.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv12.off.i)
  %switch.i = icmp ult i32 %conv12.off.i, 4
  br i1 %switch.i, label %sw.bb.if.then_crit_edge, label %if.end.i

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %sw.bb
  %conv25.i = and i32 %call7.i, 255
  %conv25.off.i = add nsw i32 %conv25.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv25.off.i)
  %switch76.i = icmp ult i32 %conv25.off.i, 4
  br i1 %switch76.i, label %if.end.i.if.then_crit_edge, label %rx_macro_adie_lb.exit

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

rx_macro_adie_lb.exit:                            ; preds = %if.end.i
  %conv42.i = and i32 %call10.i, 255
  %conv42.off.i = add nsw i32 %conv42.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv42.off.i)
  %switch77.i = icmp ult i32 %conv42.off.i, 4
  br i1 %switch77.i, label %rx_macro_adie_lb.exit.if.then_crit_edge, label %rx_macro_adie_lb.exit.sw.epilog_crit_edge

rx_macro_adie_lb.exit.sw.epilog_crit_edge:        ; preds = %rx_macro_adie_lb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

rx_macro_adie_lb.exit.if.then_crit_edge:          ; preds = %rx_macro_adie_lb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %rx_macro_adie_lb.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv1, i32 noundef 32, i32 noundef 32) #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = add nuw nsw i32 %mul, 1044
  %call18 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %conv6) #9
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %conv6, i32 noundef %call18) #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rx_macro_enable_interp_clk(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef %conv)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb15, %if.then, %rx_macro_adie_lb.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_enable_rx_path_clk(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb10
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %3 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %shift, align 4
  %conv = zext i8 %4 to i32
  tail call fastcc void @rx_macro_enable_interp_clk(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef %conv)
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv3 = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv3, 7
  %add = add nuw nsw i32 %mul, 1032
  %call4 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %add, i32 noundef 16, i32 noundef 1) #9
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  %conv6 = zext i8 %8 to i32
  %mul7 = shl nuw nsw i32 %conv6, 7
  %add8 = add nuw nsw i32 %mul7, 1024
  %call9 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %add8, i32 noundef 32, i32 noundef 1) #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shift11 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %9 = ptrtoint ptr %shift11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift11, align 4
  %conv12 = zext i8 %10 to i32
  %mul13 = shl nuw nsw i32 %conv12, 7
  %add14 = add nuw nsw i32 %mul13, 1032
  %call15 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %add14, i32 noundef 16, i32 noundef 0) #9
  %11 = ptrtoint ptr %shift11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift11, align 4
  %conv17 = zext i8 %12 to i32
  tail call fastcc void @rx_macro_enable_interp_clk(ptr noundef %add.ptr.i, i32 noundef 8, i32 noundef %conv17)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_mclk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %event, label %do.end [
    i32 1, label %sw.bb
    i32 8, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rx_macro_mclk_enable(ptr noundef %5, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @rx_macro_mclk_enable(ptr noundef %5, i1 noundef zeroext false)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.248, i32 noundef %event) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb2, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_mux_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #9
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
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
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.rx_macro, ptr %5, i32 0, i32 3, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_mux_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #9
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 9
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift, align 4
  %idxprom = zext i8 %12 to i32
  %arrayidx4 = getelementptr %struct.rx_macro, ptr %10, i32 0, i32 3, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp6 = icmp ugt i32 %14, 4
  br i1 %cmp6, label %do.end10, label %if.end13.thread

if.end13.thread:                                  ; preds = %if.end
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx4, align 4
  %arrayidx18 = getelementptr %struct.rx_macro, ptr %10, i32 0, i32 14, i32 %14
  %16 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool19.not = icmp eq i32 %17, 0
  br i1 %tobool19.not, label %if.end13.thread.sw.epilog_crit_edge, label %if.then20

if.end13.thread.sw.epilog_crit_edge:              ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.178) #12
  br label %cleanup

if.end13:                                         ; preds = %entry
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %6, ptr %arrayidx4, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb26, label %do.end35

if.then20:                                        ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %shift, align 4
  %conv = zext i8 %20 to i32
  %arrayidx22 = getelementptr %struct.rx_macro, ptr %10, i32 0, i32 13, i32 %14
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %arrayidx22) #9
  br label %sw.epilog.sink.split

sw.bb26:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shift, align 4
  %conv28 = zext i8 %22 to i32
  %arrayidx30 = getelementptr %struct.rx_macro, ptr %10, i32 0, i32 13, i32 %6
  tail call void @_set_bit(i32 noundef %conv28, ptr noundef %arrayidx30) #9
  %arrayidx32 = getelementptr %struct.rx_macro, ptr %10, i32 0, i32 14, i32 %6
  br label %sw.epilog.sink.split

do.end35:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.178, i32 noundef %6) #12
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb26, %if.then20
  %arrayidx18.sink72 = phi ptr [ %arrayidx18, %if.then20 ], [ %arrayidx32, %sw.bb26 ]
  %.sink71 = phi i32 [ -1, %if.then20 ], [ 1, %sw.bb26 ]
  %25 = ptrtoint ptr %arrayidx18.sink72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx18.sink72, align 4
  %dec = add i32 %26, %.sink71
  store i32 %dec, ptr %arrayidx18.sink72, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end13.thread.sw.epilog_crit_edge
  %27 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dapm, align 4
  %call38 = tail call i32 @snd_soc_dapm_mux_update_power(ptr noundef %28, ptr noundef %kcontrol, i32 noundef %6, ptr noundef %4, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end35, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end35 ], [ 0, %sw.epilog ], [ 0, %do.end ], [ 0, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_widget(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_int_dem_inp_mux_put(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #9
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1160, i32 %8)
  %switch.selectcmp = icmp eq i32 %8, 1160
  %switch.select = select i1 %switch.selectcmp, i32 1156, i32 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1032, i32 %8)
  %switch.selectcmp19 = icmp eq i32 %8, 1032
  %switch.select20 = select i1 %switch.selectcmp19, i32 1028, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %. = select i1 %tobool.not, i32 0, i32 8
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %switch.select20, i32 noundef 8, i32 noundef %.) #9
  %call12 = tail call i32 @snd_soc_dapm_put_enum_double(ptr noundef %kcontrol, ptr noundef %ucontrol) #9
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_macro_enable_interp_clk(ptr noundef %component, i32 noundef %event, i32 noundef %interp_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %interp_idx.tr = trunc i32 %interp_idx to i16
  %4 = shl i16 %interp_idx.tr, 7
  %conv = add i16 %4, 1024
  %conv3 = add i16 %4, 1088
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %interp_idx)
  %cmp = icmp eq i32 %interp_idx, 2
  %spec.store.select = select i1 %cmp, i16 1356, i16 %conv3
  %conv7 = add i16 %4, 1036
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end36_crit_edge, label %if.then8

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then8:                                         ; preds = %entry
  %arrayidx = getelementptr %struct.rx_macro, ptr %3, i32 0, i32 2, i32 %interp_idx
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %if.then11, label %if.then8.if.end33_crit_edge

if.then8.if.end33_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then11:                                        ; preds = %if.then8
  %conv12 = zext i16 %conv to i32
  %call13 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %conv12, i32 noundef 16, i32 noundef 1) #9
  %conv14 = zext i16 %spec.store.select to i32
  %call15 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %conv14, i32 noundef 1, i32 noundef 1) #9
  %conv16 = zext i16 %conv7 to i32
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %conv16, i32 noundef 3, i32 noundef 3) #9
  %arrayidx.i = getelementptr %struct.rx_macro, ptr %3, i32 0, i32 1, i32 %interp_idx
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then11.rx_macro_load_compander_coeff.exit_crit_edge, label %if.end.i

if.then11.rx_macro_load_compander_coeff.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_load_compander_coeff.exit

if.end.i:                                         ; preds = %if.then11
  %9 = zext i32 %interp_idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %interp_idx, label %if.end.i.rx_macro_load_compander_coeff.exit_crit_edge [
    i32 0, label %if.end.i.if.end6.i_crit_edge
    i32 1, label %if.then3.i
  ]

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end.i.rx_macro_load_compander_coeff.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_load_compander_coeff.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %comp_coeff_lsb_reg.0.i = phi i32 [ 52, %if.then3.i ], [ 32, %if.end.i.if.end6.i_crit_edge ]
  %comp_coeff_msb_reg.0.i = phi i32 [ 56, %if.then3.i ], [ 36, %if.end.i.if.end6.i_crit_edge ]
  %hph_pwr_mode7.i = getelementptr inbounds %struct.rx_macro, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %hph_pwr_mode7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hph_pwr_mode7.i, align 1, !range !659
  %12 = zext i8 %11 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end6.i
  %i.01.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end6.i ]
  %arrayidx15.i = getelementptr [2 x [25 x %struct.comp_coeff_val]], ptr @comp_coeff_table, i32 0, i32 %12, i32 %i.01.i
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15.i, align 1
  %conv16.i = zext i8 %14 to i32
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %comp_coeff_lsb_reg.0.i, i32 noundef %conv16.i) #9
  %msb.i = getelementptr [2 x [25 x %struct.comp_coeff_val]], ptr @comp_coeff_table, i32 0, i32 %12, i32 %i.01.i, i32 1
  %15 = ptrtoint ptr %msb.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %msb.i, align 1
  %conv20.i = zext i8 %16 to i32
  %call21.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef %comp_coeff_msb_reg.0.i, i32 noundef %conv20.i) #9
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 25
  br i1 %exitcond.not.i, label %for.body.i.rx_macro_load_compander_coeff.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.rx_macro_load_compander_coeff.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_load_compander_coeff.exit

rx_macro_load_compander_coeff.exit:               ; preds = %for.body.i.rx_macro_load_compander_coeff.exit_crit_edge, %if.end.i.rx_macro_load_compander_coeff.exit_crit_edge, %if.then11.rx_macro_load_compander_coeff.exit_crit_edge
  %hph_hd2_mode = getelementptr inbounds %struct.rx_macro, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %hph_hd2_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hph_hd2_mode, align 2, !range !659
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool19.not = icmp eq i8 %18, 0
  br i1 %tobool19.not, label %rx_macro_load_compander_coeff.exit.if.end22_crit_edge, label %if.then20

rx_macro_load_compander_coeff.exit.if.end22_crit_edge: ; preds = %rx_macro_load_compander_coeff.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %rx_macro_load_compander_coeff.exit
  %19 = zext i16 %interp_idx.tr to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.263)
  switch i16 %interp_idx.tr, label %if.then20.land.lhs.true9.i_crit_edge [
    i16 0, label %sw.bb.i
    i16 1, label %sw.bb1.i
  ]

if.then20.land.lhs.true9.i_crit_edge:             ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true9.i

sw.bb.i:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true9.i

sw.bb1.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true9.i

land.lhs.true9.i:                                 ; preds = %sw.bb1.i, %sw.bb.i, %if.then20.land.lhs.true9.i_crit_edge
  %hd2_scale_reg.0.i = phi i32 [ 65535, %if.then20.land.lhs.true9.i_crit_edge ], [ 1196, %sw.bb1.i ], [ 1068, %sw.bb.i ]
  %hd2_enable_reg.0.i = phi i32 [ 65535, %if.then20.land.lhs.true9.i_crit_edge ], [ 1156, %sw.bb1.i ], [ 1028, %sw.bb.i ]
  %call.i2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_scale_reg.0.i, i32 noundef 60, i32 noundef 20) #9
  %call6.i = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %hd2_enable_reg.0.i, i32 noundef 4, i32 noundef 1) #9
  %and10.i = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.end22_crit_edge, label %if.then12.i

land.lhs.true9.i.if.end22_crit_edge:              ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then12.i:                                      ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.i = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %hd2_enable_reg.0.i, i32 noundef 4, i32 noundef 0) #9
  %call16.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_scale_reg.0.i, i32 noundef 60, i32 noundef 0) #9
  br label %if.end22

if.end22:                                         ; preds = %if.then12.i, %land.lhs.true9.i.if.end22_crit_edge, %rx_macro_load_compander_coeff.exit.if.end22_crit_edge
  tail call fastcc void @rx_macro_hphdelay_lutbypass(ptr noundef %component, ptr noundef %3, i16 noundef zeroext %interp_idx.tr, i32 noundef %event)
  tail call fastcc void @rx_macro_config_compander(ptr noundef %component, ptr noundef %3, i32 noundef %interp_idx, i32 noundef %event)
  br i1 %cmp, label %if.then.i5, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then.i5:                                       ; preds = %if.end22
  tail call fastcc void @rx_macro_config_softclip(ptr noundef %component, ptr noundef %3, i32 noundef %event)
  %is_aux_hpf_on.i = getelementptr inbounds %struct.rx_macro, ptr %3, i32 0, i32 17
  %20 = ptrtoint ptr %is_aux_hpf_on.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %is_aux_hpf_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not.i = icmp eq i32 %21, 0
  br i1 %tobool1.not.i, label %if.then2.i, label %if.then.i5.if.end3.i_crit_edge

if.then.i5.if.end3.i_crit_edge:                   ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #11
  %call.i6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1288, i32 noundef 4, i32 noundef 0) #9
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.then.i5.if.end3.i_crit_edge
  %and4.i = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end31_crit_edge, label %if.then6.i

if.end3.i.if.end31_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1288, i32 noundef 4, i32 noundef 4) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then6.i, %if.end3.i.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  tail call fastcc void @rx_macro_config_classh(ptr noundef %component, ptr noundef %3, i32 noundef %interp_idx, i32 noundef %event)
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.then8.if.end33_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %arrayidx, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end33, %entry.if.end36_crit_edge
  %and37 = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end79_crit_edge, label %if.then39

if.end36.if.end79_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then39:                                        ; preds = %if.end36
  %arrayidx41 = getelementptr %struct.rx_macro, ptr %3, i32 0, i32 2, i32 %interp_idx
  %24 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx41, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp44 = icmp slt i32 %dec, 1
  br i1 %cmp44, label %if.then46, label %if.then39.if.end79_crit_edge

if.then39.if.end79_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then46:                                        ; preds = %if.then39
  %26 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arrayidx41, align 4
  %conv49 = zext i16 %conv to i32
  %call50 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %conv49, i32 noundef 16, i32 noundef 1) #9
  %conv51 = zext i16 %spec.store.select to i32
  %call52 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %conv51, i32 noundef 1, i32 noundef 0) #9
  %call54 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %conv49, i32 noundef 32, i32 noundef 0) #9
  %call56 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %conv49, i32 noundef 64, i32 noundef 1) #9
  %call58 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %conv49, i32 noundef 64, i32 noundef 0) #9
  %call60 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %conv49, i32 noundef 15, i32 noundef 4) #9
  %conv61 = zext i16 %conv7 to i32
  %call62 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %conv61, i32 noundef 3, i32 noundef 0) #9
  tail call fastcc void @rx_macro_config_classh(ptr noundef %component, ptr noundef %3, i32 noundef %interp_idx, i32 noundef %event)
  tail call fastcc void @rx_macro_config_compander(ptr noundef %component, ptr noundef %3, i32 noundef %interp_idx, i32 noundef %event)
  br i1 %cmp, label %if.then67, label %if.then46.if.end70_crit_edge

if.then46.if.end70_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then67:                                        ; preds = %if.then46
  tail call fastcc void @rx_macro_config_softclip(ptr noundef %component, ptr noundef %3, i32 noundef %event)
  br i1 %tobool.not, label %if.then67.rx_macro_config_aux_hpf.exit19_crit_edge, label %if.then.i11

if.then67.rx_macro_config_aux_hpf.exit19_crit_edge: ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_config_aux_hpf.exit19

if.then.i11:                                      ; preds = %if.then67
  %is_aux_hpf_on.i9 = getelementptr inbounds %struct.rx_macro, ptr %3, i32 0, i32 17
  %27 = ptrtoint ptr %is_aux_hpf_on.i9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %is_aux_hpf_on.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool1.not.i10 = icmp eq i32 %28, 0
  br i1 %tobool1.not.i10, label %if.then2.i13, label %if.then.i11.rx_macro_config_aux_hpf.exit19_crit_edge

if.then.i11.rx_macro_config_aux_hpf.exit19_crit_edge: ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_config_aux_hpf.exit19

if.then2.i13:                                     ; preds = %if.then.i11
  call void @__sanitizer_cov_trace_pc() #11
  %call.i12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1288, i32 noundef 4, i32 noundef 0) #9
  br label %rx_macro_config_aux_hpf.exit19

rx_macro_config_aux_hpf.exit19:                   ; preds = %if.then2.i13, %if.then.i11.rx_macro_config_aux_hpf.exit19_crit_edge, %if.then67.rx_macro_config_aux_hpf.exit19_crit_edge
  %call7.i17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1288, i32 noundef 4, i32 noundef 4) #9
  br label %if.end70

if.end70:                                         ; preds = %rx_macro_config_aux_hpf.exit19, %if.then46.if.end70_crit_edge
  tail call fastcc void @rx_macro_hphdelay_lutbypass(ptr noundef %component, ptr noundef %3, i16 noundef zeroext %interp_idx.tr, i32 noundef %event)
  %hph_hd2_mode73 = getelementptr inbounds %struct.rx_macro, ptr %3, i32 0, i32 11
  %29 = ptrtoint ptr %hph_hd2_mode73 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hph_hd2_mode73, align 2, !range !659
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool74.not = icmp eq i8 %30, 0
  br i1 %tobool74.not, label %if.end70.if.end79_crit_edge, label %if.then75

if.end70.if.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then75:                                        ; preds = %if.end70
  %31 = zext i16 %interp_idx.tr to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.264)
  switch i16 %interp_idx.tr, label %if.then75.land.lhs.true.i26_crit_edge [
    i16 0, label %sw.bb.i20
    i16 1, label %sw.bb1.i21
  ]

if.then75.land.lhs.true.i26_crit_edge:            ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i26

sw.bb.i20:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i26

sw.bb1.i21:                                       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i26

land.lhs.true.i26:                                ; preds = %sw.bb1.i21, %sw.bb.i20, %if.then75.land.lhs.true.i26_crit_edge
  %hd2_scale_reg.0.i22 = phi i32 [ 65535, %if.then75.land.lhs.true.i26_crit_edge ], [ 1196, %sw.bb1.i21 ], [ 1068, %sw.bb.i20 ]
  %hd2_enable_reg.0.i23 = phi i32 [ 65535, %if.then75.land.lhs.true.i26_crit_edge ], [ 1156, %sw.bb1.i21 ], [ 1028, %sw.bb.i20 ]
  br i1 %tobool.not, label %land.lhs.true.i26.rx_macro_hd2_control.exit36_crit_edge, label %if.then.i29

land.lhs.true.i26.rx_macro_hd2_control.exit36_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_hd2_control.exit36

if.then.i29:                                      ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  %call.i27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_scale_reg.0.i22, i32 noundef 60, i32 noundef 20) #9
  %call6.i28 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %hd2_enable_reg.0.i23, i32 noundef 4, i32 noundef 1) #9
  br label %rx_macro_hd2_control.exit36

rx_macro_hd2_control.exit36:                      ; preds = %if.then.i29, %land.lhs.true.i26.rx_macro_hd2_control.exit36_crit_edge
  %call14.i33 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %hd2_enable_reg.0.i23, i32 noundef 4, i32 noundef 0) #9
  %call16.i34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_scale_reg.0.i22, i32 noundef 60, i32 noundef 0) #9
  br label %if.end79

if.end79:                                         ; preds = %rx_macro_hd2_control.exit36, %if.end70.if.end79_crit_edge, %if.then39.if.end79_crit_edge, %if.end36.if.end79_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_macro_hphdelay_lutbypass(ptr noundef %component, ptr nocapture noundef readonly %rx, i16 noundef zeroext %interp_idx, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i16 %interp_idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.265)
  switch i16 %interp_idx, label %entry.cleanup_crit_edge [
    i16 0, label %land.lhs.true
    i16 1, label %land.lhs.true.thread
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.land.lhs.true23_crit_edge, label %if.then6

land.lhs.true.land.lhs.true23_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true23

land.lhs.true.thread:                             ; preds = %entry
  %and3 = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool3.not4 = icmp eq i32 %and3, 0
  br i1 %tobool3.not4, label %land.lhs.true.thread.land.lhs.true23_crit_edge, label %if.else11

land.lhs.true.thread.land.lhs.true23_crit_edge:   ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true23

if.then6:                                         ; preds = %land.lhs.true
  %is_ear_mode_on = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 9
  %1 = ptrtoint ptr %is_ear_mode_on to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_ear_mode_on, align 4, !range !659
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool7.not = icmp eq i8 %2, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 1032, i32 noundef 2, i32 noundef 1) #9
  br label %if.end14

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 40, i32 noundef 128, i32 noundef 1) #9
  br label %if.end14

if.else11:                                        ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 60, i32 noundef 128, i32 noundef 1) #9
  br label %if.end14

if.end14:                                         ; preds = %if.else11, %if.else, %if.then8
  %hph_lut_bypass_reg.0514 = phi i32 [ 40, %if.then8 ], [ 40, %if.else ], [ 60, %if.else11 ]
  %hph_comp_ctrl7.0712 = phi i32 [ 2076, %if.then8 ], [ 2076, %if.else ], [ 2140, %if.else11 ]
  %hph_pwr_mode = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 10
  %3 = ptrtoint ptr %hph_pwr_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hph_pwr_mode, align 1, !range !659
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool15.not = icmp eq i8 %4, 0
  br i1 %tobool15.not, label %if.end14.land.lhs.true23_crit_edge, label %if.then16

if.end14.land.lhs.true23_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true23

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %hph_comp_ctrl7.0712, i32 noundef 32, i32 noundef 0) #9
  br label %land.lhs.true23

land.lhs.true23:                                  ; preds = %if.then16, %if.end14.land.lhs.true23_crit_edge, %land.lhs.true.thread.land.lhs.true23_crit_edge, %land.lhs.true.land.lhs.true23_crit_edge
  %hph_comp_ctrl7.08 = phi i32 [ 2140, %land.lhs.true.thread.land.lhs.true23_crit_edge ], [ 2076, %land.lhs.true.land.lhs.true23_crit_edge ], [ %hph_comp_ctrl7.0712, %if.then16 ], [ %hph_comp_ctrl7.0712, %if.end14.land.lhs.true23_crit_edge ]
  %hph_lut_bypass_reg.06 = phi i32 [ 60, %land.lhs.true.thread.land.lhs.true23_crit_edge ], [ 40, %land.lhs.true.land.lhs.true23_crit_edge ], [ %hph_lut_bypass_reg.0514, %if.then16 ], [ %hph_lut_bypass_reg.0514, %if.end14.land.lhs.true23_crit_edge ]
  %and24 = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %land.lhs.true23.cleanup_crit_edge, label %if.then26

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 1032, i32 noundef 2, i32 noundef 0) #9
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hph_lut_bypass_reg.06, i32 noundef 128, i32 noundef 0) #9
  %call31 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %hph_comp_ctrl7.08, i32 noundef 32, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true23.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_macro_config_compander(ptr noundef %component, ptr nocapture noundef readonly %rx, i32 noundef %comp, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %comp)
  %cmp = icmp eq i32 %comp, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %comp, 7
  %add = add i32 %mul, 1024
  %call = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %add) #9
  %conv = and i32 %call, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv)
  %cmp2 = icmp ult i32 %conv, 6
  br i1 %cmp2, label %if.end.if.end17_crit_edge, label %if.else

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv)
  %cmp6 = icmp ult i32 %conv, 8
  br i1 %cmp6, label %if.else.if.end17_crit_edge, label %if.else9

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %conv)
  %cmp11 = icmp ult i32 %conv, 11
  %. = select i1 %cmp11, i32 2, i32 0
  br label %if.end17

if.end17:                                         ; preds = %if.else9, %if.else.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %val.0 = phi i32 [ 3, %if.end.if.end17_crit_edge ], [ 1, %if.else.if.end17_crit_edge ], [ %., %if.else9 ]
  %and18 = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool.not = icmp eq i32 %and18, 0
  br i1 %tobool.not, label %if.end17.if.end24_crit_edge, label %if.then19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %add21 = add i32 %mul, 1040
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %add21, i32 noundef 3, i32 noundef %val.0) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17.if.end24_crit_edge
  %and25 = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end31_crit_edge, label %if.then27

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %add29 = add i32 %mul, 1040
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %add29, i32 noundef 3, i32 noundef 3) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end24.if.end31_crit_edge
  %arrayidx = getelementptr %struct.rx_macro, ptr %rx, i32 0, i32 1, i32 %comp
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool32.not = icmp eq i32 %1, 0
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.end34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  br i1 %tobool.not, label %if.end34.if.end50_crit_edge, label %if.then37

if.end34.if.end50_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %mul38 = shl i32 %comp, 6
  %add39 = add i32 %mul38, 2048
  %call40 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %add39, i32 noundef 1, i32 noundef 1) #9
  %call43 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %add39, i32 noundef 2, i32 noundef 1) #9
  %call46 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %add39, i32 noundef 2, i32 noundef 0) #9
  %add48 = add i32 %mul, 1028
  %call49 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %add48, i32 noundef 2, i32 noundef 1) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then37, %if.end34.if.end50_crit_edge
  br i1 %tobool26.not, label %if.end50.cleanup_crit_edge, label %if.then53

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %mul54 = shl i32 %comp, 6
  %add55 = add i32 %mul54, 2048
  %call56 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %add55, i32 noundef 4, i32 noundef 1) #9
  %add58 = add i32 %mul, 1028
  %call59 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %add58, i32 noundef 2, i32 noundef 0) #9
  %call62 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %add55, i32 noundef 1, i32 noundef 0) #9
  %call65 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %add55, i32 noundef 4, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %if.end50.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_macro_config_softclip(ptr noundef %component, ptr nocapture noundef %rx, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %is_softclip_on = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 16
  %0 = ptrtoint ptr %is_softclip_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_softclip_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %softclip_clk_users.i = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 18
  %2 = ptrtoint ptr %softclip_clk_users.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %softclip_clk_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.then1.i, label %if.then2.rx_macro_enable_softclip_clk.exit_crit_edge

if.then2.rx_macro_enable_softclip_clk.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_enable_softclip_clk.exit

if.then1.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 320, i32 noundef 1, i32 noundef 1) #9
  br label %rx_macro_enable_softclip_clk.exit

rx_macro_enable_softclip_clk.exit:                ; preds = %if.then1.i, %if.then2.rx_macro_enable_softclip_clk.exit_crit_edge
  %4 = ptrtoint ptr %softclip_clk_users.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %softclip_clk_users.i, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %softclip_clk_users.i, align 4
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 324, i32 noundef 1, i32 noundef 1) #9
  br label %if.end3

if.end3:                                          ; preds = %rx_macro_enable_softclip_clk.exit, %if.end.if.end3_crit_edge
  %and4 = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.return_crit_edge, label %if.then6

if.end3.return_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then6:                                         ; preds = %if.end3
  %call7 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 324, i32 noundef 1, i32 noundef 0) #9
  %softclip_clk_users.i1 = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 18
  %6 = ptrtoint ptr %softclip_clk_users.i1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %softclip_clk_users.i1, align 4
  %dec.i = add i32 %7, -1
  store i32 %dec.i, ptr %softclip_clk_users.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp5.i = icmp eq i32 %dec.i, 0
  br i1 %cmp5.i, label %if.then6.i, label %if.then6.return_crit_edge

if.then6.return_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then6.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 320, i32 noundef 1, i32 noundef 0) #9
  br label %return

return:                                           ; preds = %if.then6.i, %if.then6.return_crit_edge, %if.end3.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rx_macro_config_classh(ptr noundef %component, ptr nocapture noundef %rx, i32 noundef %interp_n, i32 noundef %event) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %clsh_users.i = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 7
  %0 = ptrtoint ptr %clsh_users.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clsh_users.i, align 4
  %dec.i = add i32 %1, -1
  store i32 %dec.i, ptr %clsh_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp4.i = icmp eq i32 %dec.i, 0
  br i1 %cmp4.i, label %if.then.i, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %component.i = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 12
  %2 = ptrtoint ptr %component.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component.i, align 4
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 512, i32 noundef 1, i32 noundef 0) #9
  %4 = ptrtoint ptr %clsh_users.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load i32, ptr %clsh_users.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %5 = phi i32 [ %.pr, %if.then.i ], [ %dec.i, %if.then.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.i = icmp slt i32 %5, 0
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %clsh_users.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %clsh_users.i, align 4
  br label %return

if.end:                                           ; preds = %entry
  %and1 = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end4:                                          ; preds = %if.end
  %clsh_users.i1 = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 7
  %7 = ptrtoint ptr %clsh_users.i1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clsh_users.i1, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %clsh_users.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.then.i4, label %if.end4.if.end.i7_crit_edge

if.end4.if.end.i7_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i7

if.then.i4:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %component.i2 = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 12
  %9 = ptrtoint ptr %component.i2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %component.i2, align 4
  %call.i3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %10, i32 noundef 512, i32 noundef 1, i32 noundef 1) #9
  %11 = ptrtoint ptr %clsh_users.i1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr10 = load i32, ptr %clsh_users.i1, align 4
  br label %if.end.i7

if.end.i7:                                        ; preds = %if.then.i4, %if.end4.if.end.i7_crit_edge
  %12 = phi i32 [ %.pr10, %if.then.i4 ], [ %inc.i, %if.end4.if.end.i7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.i6 = icmp slt i32 %12, 0
  br i1 %cmp7.i6, label %if.then9.i8, label %if.end.i7.rx_macro_enable_clsh_block.exit9_crit_edge

if.end.i7.rx_macro_enable_clsh_block.exit9_crit_edge: ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_enable_clsh_block.exit9

if.then9.i8:                                      ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %clsh_users.i1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %clsh_users.i1, align 4
  br label %rx_macro_enable_clsh_block.exit9

rx_macro_enable_clsh_block.exit9:                 ; preds = %if.then9.i8, %if.end.i7.rx_macro_enable_clsh_block.exit9_crit_edge
  %14 = zext i32 %interp_n to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %interp_n, label %rx_macro_enable_clsh_block.exit9.return_crit_edge [
    i32 0, label %rx_macro_enable_clsh_block.exit9.if.then6_crit_edge
    i32 1, label %rx_macro_enable_clsh_block.exit9.if.then6_crit_edge13
    i32 2, label %sw.bb26
  ]

rx_macro_enable_clsh_block.exit9.if.then6_crit_edge13: ; preds = %rx_macro_enable_clsh_block.exit9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

rx_macro_enable_clsh_block.exit9.if.then6_crit_edge: ; preds = %rx_macro_enable_clsh_block.exit9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

rx_macro_enable_clsh_block.exit9.return_crit_edge: ; preds = %rx_macro_enable_clsh_block.exit9
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then6:                                         ; preds = %rx_macro_enable_clsh_block.exit9.if.then6_crit_edge, %rx_macro_enable_clsh_block.exit9.if.then6_crit_edge13
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 544, i32 noundef 192) #9
  %call7 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 540, i32 noundef 15, i32 noundef 0) #9
  %15 = zext i32 %interp_n to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %interp_n, label %if.then6.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
  ]

if.then6.return_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %is_ear_mode_on = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 9
  %16 = ptrtoint ptr %is_ear_mode_on to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_ear_mode_on, align 4, !range !659
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool9.not = icmp eq i8 %17, 0
  %. = select i1 %tobool9.not, i32 28, i32 57
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 524, i32 noundef 63, i32 noundef %.) #9
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 520, i32 noundef 7, i32 noundef 0) #9
  %call15 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 1028, i32 noundef 64, i32 noundef 1) #9
  br label %return

sw.bb16:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %is_ear_mode_on17 = getelementptr inbounds %struct.rx_macro, ptr %rx, i32 0, i32 9
  %18 = ptrtoint ptr %is_ear_mode_on17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_ear_mode_on17, align 4, !range !659
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  %.12 = select i1 %tobool18.not, i32 28, i32 57
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 524, i32 noundef 63, i32 noundef %.12) #9
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 520, i32 noundef 7, i32 noundef 0) #9
  %call25 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 1156, i32 noundef 64, i32 noundef 1) #9
  br label %return

sw.bb26:                                          ; preds = %rx_macro_enable_clsh_block.exit9
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1284, i32 noundef 8, i32 noundef 1) #9
  %call28 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 1284, i32 noundef 16, i32 noundef 1) #9
  br label %return

return:                                           ; preds = %sw.bb26, %sw.bb16, %sw.bb, %if.then6.return_crit_edge, %rx_macro_enable_clsh_block.exit9.return_crit_edge, %if.end.return_crit_edge, %if.then9.i, %if.end.i.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_get_channel_map(ptr nocapture noundef readonly %dai, ptr nocapture noundef writeonly %tx_num, ptr nocapture noundef writeonly %tx_slot, ptr nocapture noundef writeonly %rx_num, ptr nocapture noundef writeonly %rx_slot) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %7, label %do.end [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge102
    i32 3, label %entry.sw.bb_crit_edge103
    i32 4, label %entry.sw.bb_crit_edge104
    i32 5, label %sw.bb34
  ]

entry.sw.bb_crit_edge104:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge103:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge102:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge102, %entry.sw.bb_crit_edge103, %entry.sw.bb_crit_edge104
  %arrayidx = getelementptr %struct.rx_macro, ptr %5, i32 0, i32 13, i32 %7
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx, i32 noundef 6, i32 noundef 0) #9
  %conv495 = and i32 %call3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv495)
  %cmp96 = icmp ult i32 %conv495, 6
  br i1 %cmp96, label %for.body.preheader, label %sw.bb.for.end_crit_edge

sw.bb.for.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %sw.bb
  %shl = shl nuw nsw i32 1, %conv495
  %9 = trunc i32 %shl to i16
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %arrayidx14 = getelementptr %struct.rx_macro, ptr %5, i32 0, i32 13, i32 %11
  %add = add nuw nsw i32 %conv495, 1
  %call16 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx14, i32 noundef 6, i32 noundef %add) #9
  %conv4 = and i32 %call16, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv4)
  %cmp = icmp ult i32 %conv4, 6
  br i1 %cmp, label %for.body.1, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %shl.1 = shl nuw nsw i32 1, %conv4
  %conv8.1101 = or i32 %shl, %shl.1
  %conv8.1 = trunc i32 %conv8.1101 to i16
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.preheader.for.end_crit_edge, %sw.bb.for.end_crit_edge
  %mask.1 = phi i16 [ 0, %sw.bb.for.end_crit_edge ], [ %9, %for.body.preheader.for.end_crit_edge ], [ %conv8.1, %for.body.1 ]
  %12 = and i16 %mask.1, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  %13 = lshr i16 %mask.1, 2
  %spec.select = select i1 %tobool.not, i16 %mask.1, i16 %13
  %14 = and i16 %spec.select, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %15 = icmp eq i16 %14, 0
  %mask.3 = select i1 %15, i16 %spec.select, i16 1
  %conv31 = zext i16 %mask.3 to i32
  %16 = ptrtoint ptr %rx_slot to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv31, ptr %rx_slot, align 4
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id, align 4
  %arrayidx33 = getelementptr %struct.rx_macro, ptr %5, i32 0, i32 14, i32 %18
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx33, align 4
  %21 = ptrtoint ptr %rx_num to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %rx_num, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 408) #9
  %and38 = and i32 %call35, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp ne i32 %and38, 0
  %spec.select94 = zext i1 %tobool39.not to i16
  %and47 = and i32 %call35, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  %22 = or i16 %spec.select94, 2
  %inc53 = select i1 %tobool39.not, i16 2, i16 1
  %mask.5 = select i1 %tobool48.not, i16 %spec.select94, i16 %22
  %cnt.2 = select i1 %tobool48.not, i16 %spec.select94, i16 %inc53
  %call55 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 412) #9
  %and58 = and i32 %call55, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  %23 = or i16 %mask.5, 4
  %mask.6 = select i1 %tobool59.not, i16 %mask.5, i16 %23
  %not.tobool59.not = xor i1 %tobool59.not, true
  %inc64 = zext i1 %not.tobool59.not to i16
  %cnt.3 = add nuw nsw i16 %cnt.2, %inc64
  %conv66 = zext i16 %mask.6 to i32
  %24 = ptrtoint ptr %tx_slot to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv66, ptr %tx_slot, align 4
  %conv67 = zext i16 %cnt.3 to i32
  %25 = ptrtoint ptr %tx_num to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv67, ptr %tx_num, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.251) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb34, %for.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_digital_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %for.cond.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %indvars.iv, 7
  %4 = trunc i32 %mul to i16
  %conv4 = add nuw nsw i16 %4, 1024
  %conv8 = add nuw nsw i16 %4, 1048
  %conv12 = add nuw nsw i32 %mul, 1088
  %conv16 = zext i16 %conv4 to i32
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %conv16, i32 noundef 16, i32 noundef %.) #9
  %conv18 = zext i16 %conv8 to i32
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %conv18, i32 noundef 16, i32 noundef %.) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %indvars.iv)
  %cmp21 = icmp eq i32 %indvars.iv, 2
  %spec.select = select i1 %cmp21, i32 1356, i32 %conv12
  %5 = shl nuw nsw i32 %indvars.iv, 3
  %6 = add nuw nsw i32 %5, 384
  %7 = or i32 %6, 4
  %call33 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %6) #9
  %call36 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %7) #9
  %call39 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %spec.select) #9
  %and = and i32 %call39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %for.body.for.inc_crit_edge, label %if.then41

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then41:                                        ; preds = %for.body
  %conv42 = and i32 %call33, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv42)
  %tobool43.not = icmp eq i32 %conv42, 0
  %and45 = and i32 %call36, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %or.cond = select i1 %tobool43.not, i1 %tobool46.not, i1 false
  br i1 %or.cond, label %if.then41.if.end50_crit_edge, label %if.then47

if.then41.if.end50_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %conv48 = zext i16 %conv4 to i32
  %call49 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %conv48, i32 noundef 32, i32 noundef 32) #9
  br label %if.end50

if.end50:                                         ; preds = %if.then47, %if.then41.if.end50_crit_edge
  %and52 = and i32 %call36, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.for.inc_crit_edge, label %if.then54

if.end50.for.inc_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %conv55 = zext i16 %conv4 to i32
  %call56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %conv55, i32 noundef 32, i32 noundef 32) #9
  %conv57 = zext i16 %conv8 to i32
  %call58 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %conv57, i32 noundef 32, i32 noundef 32) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then54, %if.end50.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 3
  br i1 %exitcond.not, label %for.inc.sw.epilog_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.sw.epilog_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.inc.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_macro_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cond = icmp eq i32 %7, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %9, label %for.inc.10.fold.split66.i [
    i32 16000, label %sw.bb.for.inc.10.i_crit_edge
    i32 32000, label %for.inc.10.fold.split.i
    i32 48000, label %for.inc.10.fold.split59.i
    i32 96000, label %for.inc.10.fold.split60.i
    i32 192000, label %for.inc.10.fold.split61.i
    i32 384000, label %for.inc.10.fold.split62.i
    i32 44100, label %for.inc.10.fold.split63.i
    i32 88200, label %for.inc.10.fold.split64.i
    i32 176400, label %for.inc.10.fold.split65.i
    i32 352800, label %if.then.10.i
  ]

sw.bb.for.inc.10.i_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

if.then.10.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.fold.split.i:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.fold.split59.i:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.fold.split60.i:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.fold.split61.i:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.fold.split62.i:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.fold.split63.i:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.fold.split64.i:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.fold.split65.i:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.fold.split66.i:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.10.i

for.inc.10.i:                                     ; preds = %for.inc.10.fold.split66.i, %for.inc.10.fold.split65.i, %for.inc.10.fold.split64.i, %for.inc.10.fold.split63.i, %for.inc.10.fold.split62.i, %for.inc.10.fold.split61.i, %for.inc.10.fold.split60.i, %for.inc.10.fold.split59.i, %for.inc.10.fold.split.i, %if.then.10.i, %sw.bb.for.inc.10.i_crit_edge
  %rate_val.1.10.i = phi i32 [ 12, %if.then.10.i ], [ 1, %sw.bb.for.inc.10.i_crit_edge ], [ 3, %for.inc.10.fold.split.i ], [ 4, %for.inc.10.fold.split59.i ], [ 5, %for.inc.10.fold.split60.i ], [ 6, %for.inc.10.fold.split61.i ], [ 7, %for.inc.10.fold.split62.i ], [ 9, %for.inc.10.fold.split63.i ], [ 10, %for.inc.10.fold.split64.i ], [ 11, %for.inc.10.fold.split65.i ], [ 0, %for.inc.10.fold.split66.i ]
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %11 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %id.i.i, align 4
  %arrayidx.i.i14 = getelementptr %struct.rx_macro, ptr %5, i32 0, i32 13, i32 %12
  %call2.i.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx.i.i14, i32 noundef 6, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call2.i.i)
  %cmp5.i.i = icmp ult i32 %call2.i.i, 6
  br i1 %cmp5.i.i, label %for.inc.10.i.for.cond3.preheader.i.i_crit_edge, label %for.inc.10.i.rx_macro_set_prim_interpolator_rate.exit.i_crit_edge

for.inc.10.i.rx_macro_set_prim_interpolator_rate.exit.i_crit_edge: ; preds = %for.inc.10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_set_prim_interpolator_rate.exit.i

for.inc.10.i.for.cond3.preheader.i.i_crit_edge:   ; preds = %for.inc.10.i
  br label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %if.end.2.i.i.for.cond3.preheader.i.i_crit_edge, %for.inc.10.i.for.cond3.preheader.i.i_crit_edge
  %port.06.i.i = phi i32 [ %call46.i.i, %if.end.2.i.i.for.cond3.preheader.i.i_crit_edge ], [ %call2.i.i, %for.inc.10.i.for.cond3.preheader.i.i_crit_edge ]
  %add20.i.i = add nuw nsw i32 %port.06.i.i, 5
  %call10.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 384, i32 noundef 15) #9
  %call13.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 384, i32 noundef 240) #9
  %call16.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 388, i32 noundef 240) #9
  %conv18.i.i = and i32 %call10.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18.i.i, i32 %add20.i.i)
  %cmp21.i.i = icmp eq i32 %conv18.i.i, %add20.i.i
  %conv23.i.i = and i32 %call13.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23.i.i, i32 %add20.i.i)
  %cmp26.i.i = icmp eq i32 %conv23.i.i, %add20.i.i
  %or.cond.i.i = select i1 %cmp21.i.i, i1 true, i1 %cmp26.i.i
  %conv29.i.i = and i32 %call16.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29.i.i, i32 %add20.i.i)
  %cmp32.i.i = icmp eq i32 %conv29.i.i, %add20.i.i
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp32.i.i
  br i1 %or.cond1.i.i, label %if.then.i.i, label %for.cond3.preheader.i.i.if.end.i.i_crit_edge

for.cond3.preheader.i.i.if.end.i.i_crit_edge:     ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call37.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1024, i32 noundef 15, i32 noundef %rate_val.1.10.i) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.cond3.preheader.i.i.if.end.i.i_crit_edge
  %call10.1.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 392, i32 noundef 15) #9
  %call13.1.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 392, i32 noundef 240) #9
  %call16.1.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 396, i32 noundef 240) #9
  %conv18.1.i.i = and i32 %call10.1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18.1.i.i, i32 %add20.i.i)
  %cmp21.1.i.i = icmp eq i32 %conv18.1.i.i, %add20.i.i
  %conv23.1.i.i = and i32 %call13.1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23.1.i.i, i32 %add20.i.i)
  %cmp26.1.i.i = icmp eq i32 %conv23.1.i.i, %add20.i.i
  %or.cond.1.i.i = select i1 %cmp21.1.i.i, i1 true, i1 %cmp26.1.i.i
  %conv29.1.i.i = and i32 %call16.1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29.1.i.i, i32 %add20.i.i)
  %cmp32.1.i.i = icmp eq i32 %conv29.1.i.i, %add20.i.i
  %or.cond1.1.i.i = select i1 %or.cond.1.i.i, i1 true, i1 %cmp32.1.i.i
  br i1 %or.cond1.1.i.i, label %if.then.1.i.i, label %if.end.i.i.if.end.1.i.i_crit_edge

if.end.i.i.if.end.1.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i.i

if.then.1.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call37.1.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1152, i32 noundef 15, i32 noundef %rate_val.1.10.i) #9
  br label %if.end.1.i.i

if.end.1.i.i:                                     ; preds = %if.then.1.i.i, %if.end.i.i.if.end.1.i.i_crit_edge
  %call10.2.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 400, i32 noundef 15) #9
  %call13.2.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 400, i32 noundef 240) #9
  %call16.2.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 404, i32 noundef 240) #9
  %conv18.2.i.i = and i32 %call10.2.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv18.2.i.i, i32 %add20.i.i)
  %cmp21.2.i.i = icmp eq i32 %conv18.2.i.i, %add20.i.i
  %conv23.2.i.i = and i32 %call13.2.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23.2.i.i, i32 %add20.i.i)
  %cmp26.2.i.i = icmp eq i32 %conv23.2.i.i, %add20.i.i
  %or.cond.2.i.i = select i1 %cmp21.2.i.i, i1 true, i1 %cmp26.2.i.i
  %conv29.2.i.i = and i32 %call16.2.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv29.2.i.i, i32 %add20.i.i)
  %cmp32.2.i.i = icmp eq i32 %conv29.2.i.i, %add20.i.i
  %or.cond1.2.i.i = select i1 %or.cond.2.i.i, i1 true, i1 %cmp32.2.i.i
  br i1 %or.cond1.2.i.i, label %if.then.2.i.i, label %if.end.1.i.i.if.end.2.i.i_crit_edge

if.end.1.i.i.if.end.2.i.i_crit_edge:              ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i.i

if.then.2.i.i:                                    ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call37.2.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1280, i32 noundef 15, i32 noundef %rate_val.1.10.i) #9
  br label %if.end.2.i.i

if.end.2.i.i:                                     ; preds = %if.then.2.i.i, %if.end.1.i.i.if.end.2.i.i_crit_edge
  %13 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i.i, align 4
  %arrayidx44.i.i = getelementptr %struct.rx_macro, ptr %5, i32 0, i32 13, i32 %14
  %add45.i.i = add nuw nsw i32 %port.06.i.i, 1
  %call46.i.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx44.i.i, i32 noundef 6, i32 noundef %add45.i.i) #9
  %cmp.i.i = icmp ult i32 %call46.i.i, 6
  br i1 %cmp.i.i, label %if.end.2.i.i.for.cond3.preheader.i.i_crit_edge, label %if.end.2.i.i.rx_macro_set_prim_interpolator_rate.exit.i_crit_edge

if.end.2.i.i.rx_macro_set_prim_interpolator_rate.exit.i_crit_edge: ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_set_prim_interpolator_rate.exit.i

if.end.2.i.i.for.cond3.preheader.i.i_crit_edge:   ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i.i

rx_macro_set_prim_interpolator_rate.exit.i:       ; preds = %if.end.2.i.i.rx_macro_set_prim_interpolator_rate.exit.i_crit_edge, %for.inc.10.i.rx_macro_set_prim_interpolator_rate.exit.i_crit_edge
  %15 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %component1, align 4
  %dev.i.i2.i = getelementptr inbounds %struct.snd_soc_component, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i2.i, align 4
  %driver_data.i.i.i3.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i3.i, align 4
  %21 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id.i.i, align 4
  %arrayidx.i5.i = getelementptr %struct.rx_macro, ptr %20, i32 0, i32 13, i32 %22
  %call2.i6.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx.i5.i, i32 noundef 6, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call2.i6.i)
  %cmp5.i7.i = icmp ult i32 %call2.i6.i, 6
  br i1 %cmp5.i7.i, label %rx_macro_set_prim_interpolator_rate.exit.i.for.cond3.preheader.i9.i_crit_edge, label %rx_macro_set_prim_interpolator_rate.exit.i.rx_macro_set_interpolator_rate.exit_crit_edge

rx_macro_set_prim_interpolator_rate.exit.i.rx_macro_set_interpolator_rate.exit_crit_edge: ; preds = %rx_macro_set_prim_interpolator_rate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_set_interpolator_rate.exit

rx_macro_set_prim_interpolator_rate.exit.i.for.cond3.preheader.i9.i_crit_edge: ; preds = %rx_macro_set_prim_interpolator_rate.exit.i
  br label %for.cond3.preheader.i9.i

for.cond3.preheader.i9.i:                         ; preds = %if.end.2.i16.i.for.cond3.preheader.i9.i_crit_edge, %rx_macro_set_prim_interpolator_rate.exit.i.for.cond3.preheader.i9.i_crit_edge
  %port.06.i8.i = phi i32 [ %call26.i.i, %if.end.2.i16.i.for.cond3.preheader.i9.i_crit_edge ], [ %call2.i6.i, %rx_macro_set_prim_interpolator_rate.exit.i.for.cond3.preheader.i9.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %port.06.i8.i, 1
  %call8.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %16, i32 noundef 388, i32 noundef 15) #9
  %conv10.i.i = and i32 %call8.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.i.i, i32 %add.i.i)
  %cmp12.i.i = icmp eq i32 %conv10.i.i, %add.i.i
  br i1 %cmp12.i.i, label %if.then.i10.i, label %for.cond3.preheader.i9.i.if.end.i11.i_crit_edge

for.cond3.preheader.i9.i.if.end.i11.i_crit_edge:  ; preds = %for.cond3.preheader.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i11.i

if.then.i10.i:                                    ; preds = %for.cond3.preheader.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %16, i32 noundef 1048, i32 noundef 15, i32 noundef %rate_val.1.10.i) #9
  br label %if.end.i11.i

if.end.i11.i:                                     ; preds = %if.then.i10.i, %for.cond3.preheader.i9.i.if.end.i11.i_crit_edge
  %call8.1.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %16, i32 noundef 396, i32 noundef 15) #9
  %conv10.1.i.i = and i32 %call8.1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.1.i.i, i32 %add.i.i)
  %cmp12.1.i.i = icmp eq i32 %conv10.1.i.i, %add.i.i
  br i1 %cmp12.1.i.i, label %if.then.1.i12.i, label %if.end.i11.i.if.end.1.i13.i_crit_edge

if.end.i11.i.if.end.1.i13.i_crit_edge:            ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.1.i13.i

if.then.1.i12.i:                                  ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.1.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %16, i32 noundef 1176, i32 noundef 15, i32 noundef %rate_val.1.10.i) #9
  br label %if.end.1.i13.i

if.end.1.i13.i:                                   ; preds = %if.then.1.i12.i, %if.end.i11.i.if.end.1.i13.i_crit_edge
  %call8.2.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %16, i32 noundef 404, i32 noundef 15) #9
  %conv10.2.i.i = and i32 %call8.2.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv10.2.i.i, i32 %add.i.i)
  %cmp12.2.i.i = icmp eq i32 %conv10.2.i.i, %add.i.i
  br i1 %cmp12.2.i.i, label %if.then.2.i14.i, label %if.end.1.i13.i.if.end.2.i16.i_crit_edge

if.end.1.i13.i.if.end.2.i16.i_crit_edge:          ; preds = %if.end.1.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.2.i16.i

if.then.2.i14.i:                                  ; preds = %if.end.1.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.2.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %16, i32 noundef 1304, i32 noundef 15, i32 noundef %rate_val.1.10.i) #9
  br label %if.end.2.i16.i

if.end.2.i16.i:                                   ; preds = %if.then.2.i14.i, %if.end.1.i13.i.if.end.2.i16.i_crit_edge
  %23 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.rx_macro, ptr %20, i32 0, i32 13, i32 %24
  %call26.i.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx24.i.i, i32 noundef 6, i32 noundef %add.i.i) #9
  %cmp.i15.i = icmp ult i32 %call26.i.i, 6
  br i1 %cmp.i15.i, label %if.end.2.i16.i.for.cond3.preheader.i9.i_crit_edge, label %if.end.2.i16.i.rx_macro_set_interpolator_rate.exit_crit_edge

if.end.2.i16.i.rx_macro_set_interpolator_rate.exit_crit_edge: ; preds = %if.end.2.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rx_macro_set_interpolator_rate.exit

if.end.2.i16.i.for.cond3.preheader.i9.i_crit_edge: ; preds = %if.end.2.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond3.preheader.i9.i

rx_macro_set_interpolator_rate.exit:              ; preds = %if.end.2.i16.i.rx_macro_set_interpolator_rate.exit_crit_edge, %rx_macro_set_prim_interpolator_rate.exit.i.rx_macro_set_interpolator_rate.exit_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %rx_macro_set_interpolator_rate.exit.if.then.i.i.i_crit_edge

rx_macro_set_interpolator_rate.exit.if.then.i.i.i_crit_edge: ; preds = %rx_macro_set_interpolator_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %rx_macro_set_interpolator_rate.exit.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %rx_macro_set_interpolator_rate.exit.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %26, %rx_macro_set_interpolator_rate.exit.if.then.i.i.i_crit_edge ], [ %29, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !661
  %add.i.i.i = or i32 %27, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %rx_macro_set_interpolator_rate.exit
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #9
  %conv = trunc i32 %call1.i to i16
  %30 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i.i, align 4
  %arrayidx = getelementptr %struct.rx_macro, ptr %5, i32 0, i32 15, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %arrayidx, align 2
  br label %cleanup

cleanup:                                          ; preds = %params_width.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 368)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 368)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !302, !303, !304, !306, !307, !308, !310, !311, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !429, !430, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !626, !627, !628, !630, !632, !634, !636, !638, !639, !640, !641, !643, !644, !645, !646, !648}
!llvm.module.flags = !{!650, !651, !652, !653, !654, !655, !656, !657}
!llvm.ident = !{!658}

!0 = !{ptr @__initcall__kmod_snd_soc_lpass_rx_macro__238_3596_rx_macro_driver_init6, !1, !"__initcall__kmod_snd_soc_lpass_rx_macro__238_3596_rx_macro_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3596, i32 1}
!2 = !{ptr @__exitcall_rx_macro_driver_exit, !1, !"__exitcall_rx_macro_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description239, !4, !"__UNIQUE_ID_description239", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3598, i32 1}
!5 = !{ptr @__UNIQUE_ID_file240, !6, !"__UNIQUE_ID_file240", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3599, i32 1}
!7 = !{ptr @__UNIQUE_ID_license241, !6, !"__UNIQUE_ID_license241", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3588, i32 11}
!10 = !{ptr @rx_macro_driver, !11, !"rx_macro_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3586, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3528, i32 19}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3529, i32 19}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3530, i32 19}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3531, i32 19}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3532, i32 19}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3536, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rx_macro_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rx_macro_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @rx_macro_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3544, i32 15}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rx_regmap_config, !34, !"rx_regmap_config", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1482, i32 35}
!35 = !{ptr @rx_defaults, !36, !"rx_defaults", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 829, i32 33}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3483, i32 25}
!39 = !{ptr @swclk_gate_ops, !40, !"swclk_gate_ops", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3470, i32 29}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1870, i32 4}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rx_macro_mclk_enable._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @rx_macro_mclk_enable._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3507, i32 10}
!48 = !{ptr @rx_macro_component_drv, !49, !"rx_macro_component_drv", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3506, i32 46}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2797, i32 2}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2799, i32 2}
!54 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2801, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2803, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2805, i32 2}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2807, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2810, i32 2}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2812, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2815, i32 2}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2818, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2821, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2824, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2827, i32 2}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2831, i32 2}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2834, i32 2}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2837, i32 2}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2840, i32 2}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2843, i32 2}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2846, i32 2}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2849, i32 2}
!90 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2852, i32 2}
!92 = !{ptr @.str.56, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2856, i32 2}
!94 = !{ptr @.str.58, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2858, i32 2}
!96 = !{ptr @.str.60, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2860, i32 2}
!98 = !{ptr @.str.62, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2862, i32 2}
!100 = !{ptr @.str.64, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2864, i32 2}
!102 = !{ptr @.str.66, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2866, i32 2}
!104 = !{ptr @.str.68, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2868, i32 2}
!106 = !{ptr @.str.70, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2870, i32 2}
!108 = !{ptr @.str.72, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2872, i32 2}
!110 = !{ptr @.str.74, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2874, i32 2}
!112 = !{ptr @.str.76, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2877, i32 2}
!114 = !{ptr @.str.78, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2878, i32 2}
!116 = !{ptr @.str.80, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2879, i32 2}
!118 = !{ptr @.str.82, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2880, i32 2}
!120 = !{ptr @.str.84, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2881, i32 2}
!122 = !{ptr @.str.86, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2883, i32 2}
!124 = !{ptr @.str.88, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2884, i32 2}
!126 = !{ptr @.str.90, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2885, i32 2}
!128 = !{ptr @.str.92, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2886, i32 2}
!130 = !{ptr @.str.94, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2887, i32 2}
!132 = !{ptr @rx_macro_snd_controls, !133, !"rx_macro_snd_controls", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2796, i32 38}
!134 = !{ptr @digital_gain, !135, !"digital_gain", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 622, i32 14}
!136 = !{ptr @rx_macro_hph_pwr_mode_enum, !137, !"rx_macro_hph_pwr_mode_enum", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 682, i32 30}
!138 = !{ptr @.str.96, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 675, i32 2}
!140 = !{ptr @.str.97, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 675, i32 9}
!142 = !{ptr @rx_macro_hph_pwr_mode_text, !143, !"rx_macro_hph_pwr_mode_text", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 674, i32 26}
!144 = !{ptr @.str.98, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2928, i32 2}
!146 = !{ptr @.str.99, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.100, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2931, i32 2}
!149 = !{ptr @.str.101, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.102, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2934, i32 2}
!152 = !{ptr @.str.103, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.104, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2937, i32 2}
!155 = !{ptr @.str.105, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.106, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2940, i32 2}
!158 = !{ptr @.str.107, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.108, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2943, i32 2}
!161 = !{ptr @.str.109, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2945, i32 2}
!163 = !{ptr @.str.110, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2947, i32 2}
!165 = !{ptr @.str.111, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2949, i32 2}
!167 = !{ptr @.str.112, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2951, i32 2}
!169 = !{ptr @.str.113, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2953, i32 2}
!171 = !{ptr @.str.114, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2956, i32 2}
!173 = !{ptr @.str.115, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2957, i32 2}
!175 = !{ptr @.str.116, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2958, i32 2}
!177 = !{ptr @.str.117, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2959, i32 2}
!179 = !{ptr @.str.118, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2960, i32 2}
!181 = !{ptr @.str.119, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2961, i32 2}
!183 = !{ptr @.str.120, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2963, i32 2}
!185 = !{ptr @.str.121, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2964, i32 2}
!187 = !{ptr @.str.122, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2965, i32 2}
!189 = !{ptr @.str.123, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2966, i32 2}
!191 = !{ptr @.str.124, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2967, i32 2}
!193 = !{ptr @.str.125, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2968, i32 2}
!195 = !{ptr @.str.126, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2969, i32 2}
!197 = !{ptr @.str.127, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2970, i32 2}
!199 = !{ptr @.str.128, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2972, i32 2}
!201 = !{ptr @.str.129, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2976, i32 2}
!203 = !{ptr @.str.130, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2980, i32 2}
!205 = !{ptr @.str.131, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2985, i32 2}
!207 = !{ptr @.str.132, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2988, i32 2}
!209 = !{ptr @.str.133, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2991, i32 2}
!211 = !{ptr @.str.134, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2993, i32 2}
!213 = !{ptr @.str.135, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2996, i32 2}
!215 = !{ptr @.str.136, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2998, i32 2}
!217 = !{ptr @.str.137, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3001, i32 2}
!219 = !{ptr @.str.138, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3005, i32 2}
!221 = !{ptr @.str.139, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3009, i32 2}
!223 = !{ptr @.str.140, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3014, i32 2}
!225 = !{ptr @.str.141, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3015, i32 2}
!227 = !{ptr @.str.142, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3016, i32 2}
!229 = !{ptr @.str.143, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3017, i32 2}
!231 = !{ptr @.str.144, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3018, i32 2}
!233 = !{ptr @.str.145, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3019, i32 2}
!235 = !{ptr @.str.146, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3020, i32 2}
!237 = !{ptr @.str.147, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3021, i32 2}
!239 = !{ptr @.str.148, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3022, i32 2}
!241 = !{ptr @.str.149, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3024, i32 2}
!243 = !{ptr @.str.150, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3028, i32 2}
!245 = !{ptr @.str.151, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3032, i32 2}
!247 = !{ptr @.str.152, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3037, i32 2}
!249 = !{ptr @.str.153, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3039, i32 2}
!251 = !{ptr @.str.154, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3041, i32 2}
!253 = !{ptr @.str.155, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3044, i32 2}
!255 = !{ptr @.str.156, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3045, i32 2}
!257 = !{ptr @.str.157, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3046, i32 2}
!259 = !{ptr @.str.158, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3047, i32 2}
!261 = !{ptr @.str.159, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3048, i32 2}
!263 = !{ptr @.str.160, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3049, i32 2}
!265 = !{ptr @.str.161, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3051, i32 2}
!267 = !{ptr @.str.162, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3054, i32 2}
!269 = !{ptr @.str.163, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3057, i32 2}
!271 = !{ptr @.str.164, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3061, i32 2}
!273 = !{ptr @.str.165, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3062, i32 2}
!275 = !{ptr @.str.166, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3063, i32 2}
!277 = !{ptr @.str.167, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3065, i32 2}
!279 = !{ptr @.str.168, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3066, i32 2}
!281 = !{ptr @.str.169, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3067, i32 2}
!283 = !{ptr @.str.170, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3069, i32 2}
!285 = !{ptr @.str.171, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3070, i32 2}
!287 = !{ptr @.str.172, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3071, i32 2}
!289 = !{ptr @.str.173, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3072, i32 2}
!291 = !{ptr @.str.174, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3074, i32 2}
!293 = !{ptr @rx_macro_dapm_widgets, !294, !"rx_macro_dapm_widgets", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2927, i32 41}
!295 = !{ptr @.str.176, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2331, i32 3}
!297 = !{ptr @rx_macro_rx0_mux, !298, !"rx_macro_rx0_mux", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2330, i32 38}
!299 = !{ptr @.str.177, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2290, i32 4}
!301 = !{ptr @.str.178, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @rx_macro_mux_put._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @rx_macro_mux_put._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.180, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2294, i32 4}
!306 = !{ptr @rx_macro_mux_put._entry.179, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @rx_macro_mux_put._entry_ptr.181, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.183, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2317, i32 3}
!310 = !{ptr @rx_macro_mux_put._entry.182, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @rx_macro_mux_put._entry_ptr.184, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @rx_macro_rx0_enum, !313, !"rx_macro_rx0_enum", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 757, i32 8}
!314 = !{ptr @.str.185, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 671, i32 2}
!316 = !{ptr @.str.186, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 671, i32 10}
!318 = !{ptr @.str.187, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 671, i32 21}
!320 = !{ptr @.str.188, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 671, i32 32}
!322 = !{ptr @.str.189, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 671, i32 43}
!324 = !{ptr @rx_macro_mux_text, !325, !"rx_macro_mux_text", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 670, i32 26}
!326 = !{ptr @.str.190, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2334, i32 3}
!328 = !{ptr @rx_macro_rx1_mux, !329, !"rx_macro_rx1_mux", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2333, i32 38}
!330 = !{ptr @rx_macro_rx1_enum, !331, !"rx_macro_rx1_enum", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 758, i32 8}
!332 = !{ptr @.str.191, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2337, i32 3}
!334 = !{ptr @rx_macro_rx2_mux, !335, !"rx_macro_rx2_mux", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2336, i32 38}
!336 = !{ptr @rx_macro_rx2_enum, !337, !"rx_macro_rx2_enum", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 759, i32 8}
!338 = !{ptr @.str.192, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2340, i32 3}
!340 = !{ptr @rx_macro_rx3_mux, !341, !"rx_macro_rx3_mux", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2339, i32 38}
!342 = !{ptr @rx_macro_rx3_enum, !343, !"rx_macro_rx3_enum", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 760, i32 8}
!344 = !{ptr @.str.193, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2343, i32 3}
!346 = !{ptr @rx_macro_rx4_mux, !347, !"rx_macro_rx4_mux", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2342, i32 38}
!348 = !{ptr @rx_macro_rx4_enum, !349, !"rx_macro_rx4_enum", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 761, i32 8}
!350 = !{ptr @.str.194, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2346, i32 3}
!352 = !{ptr @rx_macro_rx5_mux, !353, !"rx_macro_rx5_mux", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2345, i32 38}
!354 = !{ptr @rx_macro_rx5_enum, !355, !"rx_macro_rx5_enum", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 762, i32 8}
!356 = !{ptr @.str.195, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 799, i32 3}
!358 = !{ptr @iir0_inp0_mux, !359, !"iir0_inp0_mux", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 798, i32 38}
!360 = !{ptr @iir0_inp0_enum, !361, !"iir0_inp0_enum", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 723, i32 8}
!362 = !{ptr @.str.196, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 638, i32 10}
!364 = !{ptr @.str.197, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 638, i32 18}
!366 = !{ptr @.str.198, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 638, i32 26}
!368 = !{ptr @.str.199, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 638, i32 34}
!370 = !{ptr @.str.200, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 639, i32 2}
!372 = !{ptr @.str.201, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 639, i32 9}
!374 = !{ptr @.str.202, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 639, i32 16}
!376 = !{ptr @.str.203, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 639, i32 23}
!378 = !{ptr @.str.204, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 639, i32 30}
!380 = !{ptr @.str.205, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 639, i32 37}
!382 = !{ptr @iir_inp_mux_text, !383, !"iir_inp_mux_text", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 637, i32 27}
!384 = !{ptr @.str.206, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 801, i32 3}
!386 = !{ptr @iir0_inp1_mux, !387, !"iir0_inp1_mux", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 800, i32 38}
!388 = !{ptr @iir0_inp1_enum, !389, !"iir0_inp1_enum", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 725, i32 8}
!390 = !{ptr @.str.207, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 803, i32 3}
!392 = !{ptr @iir0_inp2_mux, !393, !"iir0_inp2_mux", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 802, i32 38}
!394 = !{ptr @iir0_inp2_enum, !395, !"iir0_inp2_enum", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 727, i32 8}
!396 = !{ptr @.str.208, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 805, i32 3}
!398 = !{ptr @iir0_inp3_mux, !399, !"iir0_inp3_mux", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 804, i32 38}
!400 = !{ptr @iir0_inp3_enum, !401, !"iir0_inp3_enum", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 729, i32 8}
!402 = !{ptr @.str.209, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 807, i32 3}
!404 = !{ptr @iir1_inp0_mux, !405, !"iir1_inp0_mux", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 806, i32 38}
!406 = !{ptr @iir1_inp0_enum, !407, !"iir1_inp0_enum", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 731, i32 8}
!408 = !{ptr @.str.210, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 809, i32 3}
!410 = !{ptr @iir1_inp1_mux, !411, !"iir1_inp1_mux", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 808, i32 38}
!412 = !{ptr @iir1_inp1_enum, !413, !"iir1_inp1_enum", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 733, i32 8}
!414 = !{ptr @.str.211, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 811, i32 3}
!416 = !{ptr @iir1_inp2_mux, !417, !"iir1_inp2_mux", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 810, i32 38}
!418 = !{ptr @iir1_inp2_enum, !419, !"iir1_inp2_enum", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 735, i32 8}
!420 = !{ptr @.str.212, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 813, i32 3}
!422 = !{ptr @iir1_inp3_mux, !423, !"iir1_inp3_mux", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 812, i32 38}
!424 = !{ptr @iir1_inp3_enum, !425, !"iir1_inp3_enum", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 737, i32 8}
!426 = !{ptr @.str.213, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 2912, i32 3}
!428 = !{ptr @.str.214, !427, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @rx_macro_enable_echo._entry, !427, !"_entry", i1 false, i1 false}
!430 = !{ptr @rx_macro_enable_echo._entry_ptr, !427, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.215, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 827, i32 3}
!433 = !{ptr @rx_mix_tx0_mux, !434, !"rx_mix_tx0_mux", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 826, i32 38}
!435 = !{ptr @rx_mix_tx0_mux_enum, !436, !"rx_mix_tx0_mux_enum", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 688, i32 30}
!437 = !{ptr @.str.216, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 679, i32 10}
!439 = !{ptr @.str.217, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 679, i32 21}
!441 = !{ptr @.str.218, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 679, i32 32}
!443 = !{ptr @rx_echo_mux_text, !444, !"rx_echo_mux_text", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 678, i32 27}
!445 = !{ptr @.str.219, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 765, i32 3}
!447 = !{ptr @rx_mix_tx1_mux, !448, !"rx_mix_tx1_mux", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 764, i32 38}
!449 = !{ptr @rx_mix_tx1_mux_enum, !450, !"rx_mix_tx1_mux_enum", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 686, i32 30}
!451 = !{ptr @.str.220, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 767, i32 3}
!453 = !{ptr @rx_mix_tx2_mux, !454, !"rx_mix_tx2_mux", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 766, i32 38}
!455 = !{ptr @rx_mix_tx2_mux_enum, !456, !"rx_mix_tx2_mux_enum", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 684, i32 30}
!457 = !{ptr @.str.221, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1525, i32 3}
!459 = !{ptr @rx_int0_dem_inp_mux, !460, !"rx_int0_dem_inp_mux", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1524, i32 38}
!461 = !{ptr @rx_int0_dem_inp_enum, !462, !"rx_int0_dem_inp_enum", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 752, i32 8}
!463 = !{ptr @.str.222, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 643, i32 2}
!465 = !{ptr @.str.223, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 643, i32 20}
!467 = !{ptr @rx_int_dem_inp_mux_text, !468, !"rx_int_dem_inp_mux_text", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 642, i32 27}
!469 = !{ptr @.str.224, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1528, i32 3}
!471 = !{ptr @rx_int1_dem_inp_mux, !472, !"rx_int1_dem_inp_mux", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1527, i32 38}
!473 = !{ptr @rx_int1_dem_inp_enum, !474, !"rx_int1_dem_inp_enum", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 754, i32 8}
!475 = !{ptr @comp_coeff_table, !476, !"comp_coeff_table", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 406, i32 36}
!477 = !{ptr @.str.225, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 769, i32 3}
!479 = !{ptr @rx_int0_2_mux, !480, !"rx_int0_2_mux", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 768, i32 38}
!481 = !{ptr @rx_int0_2_enum, !482, !"rx_int0_2_enum", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 691, i32 8}
!483 = !{ptr @rx_int_mix_mux_text, !484, !"rx_int_mix_mux_text", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 624, i32 27}
!485 = !{ptr @.str.226, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 771, i32 3}
!487 = !{ptr @rx_int1_2_mux, !488, !"rx_int1_2_mux", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 770, i32 38}
!489 = !{ptr @rx_int1_2_enum, !490, !"rx_int1_2_enum", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 693, i32 8}
!491 = !{ptr @.str.227, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 773, i32 3}
!493 = !{ptr @rx_int2_2_mux, !494, !"rx_int2_2_mux", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 772, i32 38}
!495 = !{ptr @rx_int2_2_enum, !496, !"rx_int2_2_enum", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 695, i32 8}
!497 = !{ptr @.str.228, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 775, i32 3}
!499 = !{ptr @rx_int0_1_mix_inp0_mux, !500, !"rx_int0_1_mix_inp0_mux", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 774, i32 38}
!501 = !{ptr @rx_int0_1_mix_inp0_enum, !502, !"rx_int0_1_mix_inp0_enum", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 698, i32 8}
!503 = !{ptr @rx_prim_mix_text, !504, !"rx_prim_mix_text", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 628, i32 27}
!505 = !{ptr @.str.229, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 777, i32 3}
!507 = !{ptr @rx_int0_1_mix_inp1_mux, !508, !"rx_int0_1_mix_inp1_mux", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 776, i32 38}
!509 = !{ptr @rx_int0_1_mix_inp1_enum, !510, !"rx_int0_1_mix_inp1_enum", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 700, i32 8}
!511 = !{ptr @.str.230, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 779, i32 3}
!513 = !{ptr @rx_int0_1_mix_inp2_mux, !514, !"rx_int0_1_mix_inp2_mux", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 778, i32 38}
!515 = !{ptr @rx_int0_1_mix_inp2_enum, !516, !"rx_int0_1_mix_inp2_enum", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 702, i32 8}
!517 = !{ptr @.str.231, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 781, i32 3}
!519 = !{ptr @rx_int1_1_mix_inp0_mux, !520, !"rx_int1_1_mix_inp0_mux", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 780, i32 38}
!521 = !{ptr @rx_int1_1_mix_inp0_enum, !522, !"rx_int1_1_mix_inp0_enum", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 704, i32 8}
!523 = !{ptr @.str.232, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 783, i32 3}
!525 = !{ptr @rx_int1_1_mix_inp1_mux, !526, !"rx_int1_1_mix_inp1_mux", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 782, i32 38}
!527 = !{ptr @rx_int1_1_mix_inp1_enum, !528, !"rx_int1_1_mix_inp1_enum", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 706, i32 8}
!529 = !{ptr @.str.233, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 785, i32 3}
!531 = !{ptr @rx_int1_1_mix_inp2_mux, !532, !"rx_int1_1_mix_inp2_mux", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 784, i32 38}
!533 = !{ptr @rx_int1_1_mix_inp2_enum, !534, !"rx_int1_1_mix_inp2_enum", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 708, i32 8}
!535 = !{ptr @.str.234, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 787, i32 3}
!537 = !{ptr @rx_int2_1_mix_inp0_mux, !538, !"rx_int2_1_mix_inp0_mux", i1 false, i1 false}
!538 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 786, i32 38}
!539 = !{ptr @rx_int2_1_mix_inp0_enum, !540, !"rx_int2_1_mix_inp0_enum", i1 false, i1 false}
!540 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 710, i32 8}
!541 = !{ptr @.str.235, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 789, i32 3}
!543 = !{ptr @rx_int2_1_mix_inp1_mux, !544, !"rx_int2_1_mix_inp1_mux", i1 false, i1 false}
!544 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 788, i32 38}
!545 = !{ptr @rx_int2_1_mix_inp1_enum, !546, !"rx_int2_1_mix_inp1_enum", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 712, i32 8}
!547 = !{ptr @.str.236, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 791, i32 3}
!549 = !{ptr @rx_int2_1_mix_inp2_mux, !550, !"rx_int2_1_mix_inp2_mux", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 790, i32 38}
!551 = !{ptr @rx_int2_1_mix_inp2_enum, !552, !"rx_int2_1_mix_inp2_enum", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 714, i32 8}
!553 = !{ptr @.str.237, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 815, i32 3}
!555 = !{ptr @rx_int0_1_interp_mux, !556, !"rx_int0_1_interp_mux", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 814, i32 38}
!557 = !{ptr @rx_int0_1_interp_enum, !558, !"rx_int0_1_interp_enum", i1 false, i1 false}
!558 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 740, i32 8}
!559 = !{ptr @rx_int0_1_interp_mux_text, !560, !"rx_int0_1_interp_mux_text", i1 false, i1 false}
!560 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 646, i32 27}
!561 = !{ptr @.str.238, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 817, i32 3}
!563 = !{ptr @rx_int1_1_interp_mux, !564, !"rx_int1_1_interp_mux", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 816, i32 38}
!565 = !{ptr @rx_int1_1_interp_enum, !566, !"rx_int1_1_interp_enum", i1 false, i1 false}
!566 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 742, i32 8}
!567 = !{ptr @rx_int1_1_interp_mux_text, !568, !"rx_int1_1_interp_mux_text", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 650, i32 27}
!569 = !{ptr @.str.239, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 819, i32 3}
!571 = !{ptr @rx_int2_1_interp_mux, !572, !"rx_int2_1_interp_mux", i1 false, i1 false}
!572 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 818, i32 38}
!573 = !{ptr @rx_int2_1_interp_enum, !574, !"rx_int2_1_interp_enum", i1 false, i1 false}
!574 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 744, i32 8}
!575 = !{ptr @rx_int2_1_interp_mux_text, !576, !"rx_int2_1_interp_mux_text", i1 false, i1 false}
!576 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 654, i32 27}
!577 = !{ptr @.str.240, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 821, i32 3}
!579 = !{ptr @rx_int0_2_interp_mux, !580, !"rx_int0_2_interp_mux", i1 false, i1 false}
!580 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 820, i32 38}
!581 = !{ptr @rx_int0_2_interp_enum, !582, !"rx_int0_2_interp_enum", i1 false, i1 false}
!582 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 746, i32 8}
!583 = !{ptr @rx_int0_2_interp_mux_text, !584, !"rx_int0_2_interp_mux_text", i1 false, i1 false}
!584 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 658, i32 27}
!585 = !{ptr @.str.241, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 823, i32 3}
!587 = !{ptr @rx_int1_2_interp_mux, !588, !"rx_int1_2_interp_mux", i1 false, i1 false}
!588 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 822, i32 38}
!589 = !{ptr @rx_int1_2_interp_enum, !590, !"rx_int1_2_interp_enum", i1 false, i1 false}
!590 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 748, i32 8}
!591 = !{ptr @rx_int1_2_interp_mux_text, !592, !"rx_int1_2_interp_mux_text", i1 false, i1 false}
!592 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 662, i32 27}
!593 = !{ptr @.str.242, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 825, i32 3}
!595 = !{ptr @rx_int2_2_interp_mux, !596, !"rx_int2_2_interp_mux", i1 false, i1 false}
!596 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 824, i32 38}
!597 = !{ptr @rx_int2_2_interp_enum, !598, !"rx_int2_2_interp_enum", i1 false, i1 false}
!598 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 750, i32 8}
!599 = !{ptr @rx_int2_2_interp_mux_text, !600, !"rx_int2_2_interp_mux_text", i1 false, i1 false}
!600 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 666, i32 27}
!601 = !{ptr @.str.243, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 793, i32 3}
!603 = !{ptr @rx_int0_mix2_inp_mux, !604, !"rx_int0_mix2_inp_mux", i1 false, i1 false}
!604 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 792, i32 38}
!605 = !{ptr @rx_int0_mix2_inp_enum, !606, !"rx_int0_mix2_inp_enum", i1 false, i1 false}
!606 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 717, i32 8}
!607 = !{ptr @.str.244, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 634, i32 26}
!609 = !{ptr @rx_sidetone_mix_text, !610, !"rx_sidetone_mix_text", i1 false, i1 false}
!610 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 633, i32 27}
!611 = !{ptr @.str.245, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 795, i32 3}
!613 = !{ptr @rx_int1_mix2_inp_mux, !614, !"rx_int1_mix2_inp_mux", i1 false, i1 false}
!614 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 794, i32 38}
!615 = !{ptr @rx_int1_mix2_inp_enum, !616, !"rx_int1_mix2_inp_enum", i1 false, i1 false}
!616 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 719, i32 8}
!617 = !{ptr @.str.246, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 797, i32 3}
!619 = !{ptr @rx_int2_mix2_inp_mux, !620, !"rx_int2_mix2_inp_mux", i1 false, i1 false}
!620 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 796, i32 38}
!621 = !{ptr @rx_int2_mix2_inp_enum, !622, !"rx_int2_mix2_inp_enum", i1 false, i1 false}
!622 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 721, i32 8}
!623 = !{ptr @.str.247, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1903, i32 3}
!625 = !{ptr @.str.248, !624, !"<string literal>", i1 false, i1 false}
!626 = !{ptr @rx_macro_mclk_event._entry, !624, !"_entry", i1 false, i1 false}
!627 = !{ptr @rx_macro_mclk_event._entry_ptr, !624, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @rx_audio_map, !629, !"rx_audio_map", i1 false, i1 false}
!629 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3078, i32 40}
!630 = !{ptr @.str.249, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1833, i32 11}
!632 = !{ptr @rx_macro_dai, !633, !"rx_macro_dai", i1 false, i1 false}
!633 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1775, i32 34}
!634 = !{ptr @rx_macro_dai_ops, !635, !"rx_macro_dai_ops", i1 false, i1 false}
!635 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1769, i32 37}
!636 = !{ptr @.str.250, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1707, i32 3}
!638 = !{ptr @.str.251, !637, !"<string literal>", i1 false, i1 false}
!639 = !{ptr @rx_macro_get_channel_map._entry, !637, !"_entry", i1 false, i1 false}
!640 = !{ptr @rx_macro_get_channel_map._entry_ptr, !637, !"_entry_ptr", i1 false, i1 false}
!641 = !{ptr @.str.252, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 1639, i32 4}
!643 = !{ptr @.str.253, !642, !"<string literal>", i1 false, i1 false}
!644 = !{ptr @rx_macro_hw_params._entry, !642, !"_entry", i1 false, i1 false}
!645 = !{ptr @rx_macro_hw_params._entry_ptr, !642, !"_entry_ptr", i1 false, i1 false}
!646 = distinct !{null, !647, !"sr_val_tbl", i1 false, i1 false}
!647 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 565, i32 34}
!648 = !{ptr @rx_macro_dt_match, !649, !"rx_macro_dt_match", i1 false, i1 false}
!649 = !{!"../sound/soc/codecs/lpass-rx-macro.c", i32 3579, i32 34}
!650 = !{i32 1, !"wchar_size", i32 2}
!651 = !{i32 1, !"min_enum_size", i32 4}
!652 = !{i32 8, !"branch-target-enforcement", i32 0}
!653 = !{i32 8, !"sign-return-address", i32 0}
!654 = !{i32 8, !"sign-return-address-all", i32 0}
!655 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!656 = !{i32 7, !"uwtable", i32 1}
!657 = !{i32 7, !"frame-pointer", i32 2}
!658 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!659 = !{i8 0, i8 2}
!660 = !{!"auto-init"}
!661 = !{i32 0, i32 33}
