; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/lpass-wsa-macro.c_pt.bc'
source_filename = "../sound/soc/codecs/lpass-wsa-macro.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+wsa_macro_set_spkr_mode\22, \22a\22\09"
module asm "\09.weak\09__crc_wsa_macro_set_spkr_mode\09\09\09\09"
module asm "\09.long\09__crc_wsa_macro_set_spkr_mode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wsa_macro_set_spkr_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22wsa_macro_set_spkr_mode\22\09\09\09\09\09"
module asm "__kstrtabns_wsa_macro_set_spkr_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.interp_sample_rate = type { i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.wsa_macro = type { ptr, [2 x i32], [2 x i32], [2 x i16], i16, i8, [5 x i32], [5 x i32], [4 x i32], i32, i32, i32, [2 x i32], [2 x i32], ptr, [5 x %struct.clk_bulk_data], %struct.clk_hw }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.82, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.82 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.77, [128 x i8] }
%union.anon.77 = type { %union.anon.79 }
%union.anon.79 = type { [64 x i64] }
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

@__kstrtab_wsa_macro_set_spkr_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_wsa_macro_set_spkr_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_wsa_macro_set_spkr_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wsa_macro_set_spkr_mode to i32), ptr @__kstrtab_wsa_macro_set_spkr_mode, ptr @__kstrtabns_wsa_macro_set_spkr_mode }, section "___ksymtab+wsa_macro_set_spkr_mode", align 4
@__initcall__kmod_snd_soc_lpass_wsa_macro__238_2463_wsa_macro_driver_init6 = internal global ptr @wsa_macro_driver_init, section ".initcall6.init", align 4
@wsa_macro_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wsa_macro_probe, ptr @wsa_macro_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wsa_macro_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wsa_macro_driver_exit = internal global ptr @wsa_macro_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description239 = internal constant [53 x i8] c"snd_soc_lpass_wsa_macro.description=WSA macro driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [70 x i8] c"snd_soc_lpass_wsa_macro.file=sound/soc/codecs/snd-soc-lpass-wsa-macro\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [36 x i8] c"snd_soc_lpass_wsa_macro.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wsa_macro\00", [22 x i8] zeroinitializer }, align 32
@wsa_macro_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sc7280-lpass-wsa-macro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,sm8250-lpass-wsa-macro\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"macro\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dcodec\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"npl\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fsgen\00", [26 x i8] zeroinitializer }, align 32
@wsa_macro_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 2399, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Error getting WSA Clocks (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wsa_macro_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/soc/codecs/lpass-wsa-macro.c\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wsa_macro_probe._entry_ptr = internal global ptr @wsa_macro_probe._entry, section ".printk_index", align 4
@wsa_macro_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wsa_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str, i32 16, i32 4, i32 0, i32 32, ptr @wsa_is_writeable_register, ptr @wsa_is_readable_register, ptr @wsa_is_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1888, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wsa_defaults, i32 127, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"lpass_wsa_macro:2407:(&wsa_regmap_config)->lock\00", [48 x i8] zeroinitializer }, align 32
@wsa_macro_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str.14, ptr @wsa_macro_snd_controls, i32 13, ptr @wsa_macro_dapm_widgets, i32 43, ptr @wsa_audio_map, i32 93, ptr @wsa_macro_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wsa_macro_dai = internal global { [4 x %struct.snd_soc_dai_driver], [160 x i8] } { [4 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.136, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wsa_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.48, i64 4294968388, i32 5290, i32 8000, i32 384000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.137, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wsa_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.50, i64 4294968388, i32 5248, i32 48000, i32 192000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.138, i32 3, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wsa_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.52, i64 4294968388, i32 130, i32 8000, i32 48000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.139, i32 4, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wsa_macro_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.54, i64 4294967364, i32 138, i32 8000, i32 48000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [160 x i8] zeroinitializer }, align 32
@wsa_defaults = internal constant { [127 x %struct.reg_default], [232 x i8] } { [127 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 152, i32 136 }, %struct.reg_default { i32 156, i32 12 }, %struct.reg_default { i32 160, i32 12 }, %struct.reg_default { i32 164, i32 2 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 260, i32 0 }, %struct.reg_default { i32 264, i32 0 }, %struct.reg_default { i32 268, i32 0 }, %struct.reg_default { i32 272, i32 0 }, %struct.reg_default { i32 276, i32 0 }, %struct.reg_default { i32 280, i32 0 }, %struct.reg_default { i32 580, i32 2 }, %struct.reg_default { i32 584, i32 0 }, %struct.reg_default { i32 612, i32 2 }, %struct.reg_default { i32 616, i32 0 }, %struct.reg_default { i32 644, i32 2 }, %struct.reg_default { i32 648, i32 0 }, %struct.reg_default { i32 676, i32 2 }, %struct.reg_default { i32 680, i32 0 }, %struct.reg_default { i32 832, i32 0 }, %struct.reg_default { i32 836, i32 0 }, %struct.reg_default { i32 864, i32 255 }, %struct.reg_default { i32 872, i32 0 }, %struct.reg_default { i32 880, i32 0 }, %struct.reg_default { i32 896, i32 255 }, %struct.reg_default { i32 904, i32 0 }, %struct.reg_default { i32 912, i32 0 }, %struct.reg_default { i32 960, i32 0 }, %struct.reg_default { i32 968, i32 0 }, %struct.reg_default { i32 976, i32 0 }, %struct.reg_default { i32 1024, i32 4 }, %struct.reg_default { i32 1028, i32 0 }, %struct.reg_default { i32 1032, i32 100 }, %struct.reg_default { i32 1036, i32 143 }, %struct.reg_default { i32 1040, i32 0 }, %struct.reg_default { i32 1044, i32 0 }, %struct.reg_default { i32 1048, i32 4 }, %struct.reg_default { i32 1052, i32 126 }, %struct.reg_default { i32 1056, i32 0 }, %struct.reg_default { i32 1060, i32 4 }, %struct.reg_default { i32 1064, i32 8 }, %struct.reg_default { i32 1068, i32 0 }, %struct.reg_default { i32 1072, i32 0 }, %struct.reg_default { i32 1080, i32 0 }, %struct.reg_default { i32 1084, i32 0 }, %struct.reg_default { i32 1088, i32 0 }, %struct.reg_default { i32 1092, i32 8 }, %struct.reg_default { i32 1096, i32 0 }, %struct.reg_default { i32 1100, i32 0 }, %struct.reg_default { i32 1156, i32 0 }, %struct.reg_default { i32 1160, i32 100 }, %struct.reg_default { i32 1164, i32 143 }, %struct.reg_default { i32 1168, i32 0 }, %struct.reg_default { i32 1172, i32 0 }, %struct.reg_default { i32 1176, i32 4 }, %struct.reg_default { i32 1180, i32 126 }, %struct.reg_default { i32 1184, i32 0 }, %struct.reg_default { i32 1188, i32 4 }, %struct.reg_default { i32 1192, i32 8 }, %struct.reg_default { i32 1196, i32 0 }, %struct.reg_default { i32 1200, i32 0 }, %struct.reg_default { i32 1208, i32 0 }, %struct.reg_default { i32 1212, i32 0 }, %struct.reg_default { i32 1216, i32 0 }, %struct.reg_default { i32 1220, i32 8 }, %struct.reg_default { i32 1224, i32 0 }, %struct.reg_default { i32 1228, i32 0 }, %struct.reg_default { i32 1280, i32 0 }, %struct.reg_default { i32 1284, i32 208 }, %struct.reg_default { i32 1288, i32 137 }, %struct.reg_default { i32 1292, i32 4 }, %struct.reg_default { i32 1344, i32 0 }, %struct.reg_default { i32 1348, i32 208 }, %struct.reg_default { i32 1352, i32 137 }, %struct.reg_default { i32 1356, i32 4 }, %struct.reg_default { i32 1408, i32 96 }, %struct.reg_default { i32 1412, i32 219 }, %struct.reg_default { i32 1416, i32 255 }, %struct.reg_default { i32 1420, i32 53 }, %struct.reg_default { i32 1424, i32 255 }, %struct.reg_default { i32 1428, i32 0 }, %struct.reg_default { i32 1432, i32 1 }, %struct.reg_default { i32 1436, i32 40 }, %struct.reg_default { i32 1472, i32 96 }, %struct.reg_default { i32 1476, i32 219 }, %struct.reg_default { i32 1480, i32 255 }, %struct.reg_default { i32 1484, i32 53 }, %struct.reg_default { i32 1488, i32 255 }, %struct.reg_default { i32 1492, i32 0 }, %struct.reg_default { i32 1496, i32 1 }, %struct.reg_default { i32 1500, i32 40 }, %struct.reg_default { i32 1536, i32 0 }, %struct.reg_default { i32 1540, i32 56 }, %struct.reg_default { i32 1600, i32 0 }, %struct.reg_default { i32 1604, i32 56 }, %struct.reg_default { i32 1664, i32 0 }, %struct.reg_default { i32 1668, i32 1 }, %struct.reg_default { i32 1728, i32 0 }, %struct.reg_default { i32 1732, i32 1 }, %struct.reg_default { i32 1792, i32 0 }, %struct.reg_default { i32 1796, i32 0 }, %struct.reg_default { i32 1800, i32 0 }, %struct.reg_default { i32 1804, i32 168 }, %struct.reg_default { i32 1808, i32 0 }, %struct.reg_default { i32 1812, i32 0 }, %struct.reg_default { i32 1816, i32 0 }, %struct.reg_default { i32 1820, i32 0 }, %struct.reg_default { i32 1824, i32 0 }, %struct.reg_default { i32 1856, i32 0 }, %struct.reg_default { i32 1860, i32 0 }, %struct.reg_default { i32 1864, i32 0 }, %struct.reg_default { i32 1868, i32 168 }, %struct.reg_default { i32 1872, i32 0 }, %struct.reg_default { i32 1876, i32 0 }, %struct.reg_default { i32 1880, i32 0 }, %struct.reg_default { i32 1884, i32 0 }, %struct.reg_default { i32 1888, i32 0 }], [232 x i8] zeroinitializer }, align 32
@swclk_gate_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @swclk_gate_enable, ptr @swclk_gate_disable, ptr null, ptr null, ptr null, ptr null, ptr @swclk_gate_is_enabled, ptr null, ptr null, ptr null, ptr @swclk_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wsa_macro_mclk_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.8, i32 1120, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clock already disabled\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wsa_macro_mclk_enable\00", [42 x i8] zeroinitializer }, align 32
@wsa_macro_mclk_enable._entry_ptr = internal global ptr @wsa_macro_mclk_enable._entry, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WSA MACRO\00", [22 x i8] zeroinitializer }, align 32
@wsa_macro_snd_controls = internal constant { [13 x %struct.snd_kcontrol_new], [144 x i8] } { [13 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wsa_macro_ear_spkr_pa_gain_get, ptr @wsa_macro_ear_spkr_pa_gain_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @wsa_macro_ear_spkr_pa_gain_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa_macro_soft_clip_enable_get, ptr @wsa_macro_soft_clip_enable_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa_macro_soft_clip_enable_get, ptr @wsa_macro_soft_clip_enable_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 { ptr @digital_gain }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa_macro_get_compander, ptr @wsa_macro_set_compander, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa_macro_get_compander, ptr @wsa_macro_set_compander, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa_macro_get_ec_hq, ptr @wsa_macro_set_ec_hq, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa_macro_get_ec_hq, ptr @wsa_macro_set_ec_hq, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }], [144 x i8] zeroinitializer }, align 32
@wsa_audio_map = internal constant { [93 x %struct.snd_soc_dapm_route], [1212 x i8] } { [93 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.95, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.97, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.103, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.103, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr @.str.104, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr @.str.104, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr null, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr null, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.118, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.118, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.118, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.118, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.119, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.119, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr @.str.119, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.119, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.89, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.121, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.123, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.124, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.125, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.126, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.121, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.123, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.124, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.125, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.126, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.121, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.123, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.124, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.125, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.126, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.121, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.123, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.124, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr @.str.135, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.121, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.123, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.124, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.125, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr @.str.126, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr @.str.121, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr @.str.123, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr @.str.124, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr @.str.125, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.71, ptr @.str.126, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr @.str.121, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr @.str.123, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr @.str.124, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr @.str.125, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr @.str.126, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.121, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.122, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.123, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr @.str.124, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr null, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1212 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EAR SPKR PA Gain\00", [47 x i8] zeroinitializer }, align 32
@wsa_macro_ear_spkr_pa_gain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 8, i32 0, ptr @wsa_macro_ear_spkr_pa_gain_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WSA_Softclip0 Enable\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WSA_Softclip1 Enable\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WSA_RX0 Digital Volume\00", [41 x i8] zeroinitializer }, align 32
@digital_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8400, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1044, i32 1044, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WSA_RX1 Digital Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -84, i32 40, i32 40, i32 1172, i32 1172, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WSA_RX0 Digital Mute\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1024, i32 1024, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WSA_RX1 Digital Mute\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1152, i32 1152, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WSA_RX0_MIX Digital Mute\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1048, i32 1048, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WSA_RX1_MIX Digital Mute\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1176, i32 1176, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WSA_COMP1 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WSA_COMP2 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WSA_RX0 EC_HQ Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WSA_RX1 EC_HQ Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wsa_macro_ear_spkr_pa_gain_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"G_DEFAULT\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"G_0_DB\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"G_1_DB\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"G_2_DB\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"G_3_DB\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"G_4_DB\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"G_5_DB\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"G_6_DB\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WSA AIF1 PB\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WSA_AIF1 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA AIF_MIX1 PB\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WSA_AIF_MIX1 Playback\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WSA AIF_VI\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA_AIF_VI Capture\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA AIF_ECHO\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WSA_AIF_ECHO Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WSA_AIF_VI Mixer\00", [47 x i8] zeroinitializer }, align 32
@aif_vi_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa_macro_vi_feed_mixer_get, ptr @wsa_macro_vi_feed_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wsa_macro_vi_feed_mixer_get, ptr @wsa_macro_vi_feed_mixer_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA RX_MIX EC0_MUX\00", [45 x i8] zeroinitializer }, align 32
@rx_mix_ec0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_mix_ec0_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA RX_MIX EC1_MUX\00", [45 x i8] zeroinitializer }, align 32
@rx_mix_ec1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_mix_ec1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WSA RX0 MUX\00", [20 x i8] zeroinitializer }, align 32
@rx_mux = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wsa_macro_rx_mux_get, ptr @wsa_macro_rx_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wsa_macro_rx_mux_get, ptr @wsa_macro_rx_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wsa_macro_rx_mux_get, ptr @wsa_macro_rx_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wsa_macro_rx_mux_get, ptr @wsa_macro_rx_mux_put, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx_mux_enum to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WSA RX1 MUX\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA RX_MIX0 MUX\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA RX_MIX1 MUX\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WSA RX0\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WSA RX1\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WSA RX_MIX0\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WSA RX_MIX1\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA_RX0 INP0\00", [19 x i8] zeroinitializer }, align 32
@rx0_prim_inp0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx0_prim_inp0_chain_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA_RX0 INP1\00", [19 x i8] zeroinitializer }, align 32
@rx0_prim_inp1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx0_prim_inp1_chain_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA_RX0 INP2\00", [19 x i8] zeroinitializer }, align 32
@rx0_prim_inp2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx0_prim_inp2_chain_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_RX0 MIX INP\00", [16 x i8] zeroinitializer }, align 32
@rx0_mix_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx0_mix_chain_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA_RX1 INP0\00", [19 x i8] zeroinitializer }, align 32
@rx1_prim_inp0_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx1_prim_inp0_chain_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA_RX1 INP1\00", [19 x i8] zeroinitializer }, align 32
@rx1_prim_inp1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx1_prim_inp1_chain_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA_RX1 INP2\00", [19 x i8] zeroinitializer }, align 32
@rx1_prim_inp2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx1_prim_inp2_chain_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_RX1 MIX INP\00", [16 x i8] zeroinitializer }, align 32
@rx1_mix_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx1_mix_chain_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_RX INT0 MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_RX INT1 MIX\00", [16 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WSA_RX INT0 SEC MIX\00", [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WSA_RX INT1 SEC MIX\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WSA_RX0 INT0 SIDETONE MIX\00", [38 x i8] zeroinitializer }, align 32
@rx0_sidetone_mix_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.83 zeroinitializer, i32 ptrtoint (ptr @rx0_sidetone_mix_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA SRC0_INP\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_TX DEC0_INP\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_TX DEC1_INP\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA_RX INT0 INTERP\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA_RX INT1 INTERP\00", [45 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WSA_RX INT0 CHAIN\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WSA_RX INT1 CHAIN\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VIINPUT_WSA\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA_SPK1 OUT\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WSA_SPK2 OUT\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WSA_RX0_CLK\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WSA_RX1_CLK\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_RX_MIX0_CLK\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_RX_MIX1_CLK\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"WSA_MCLK\00", [23 x i8] zeroinitializer }, align 32
@wsa_macro_dapm_widgets = internal constant { [43 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1924 x i8] } { [43 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.47, ptr @.str.48, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.49, ptr @.str.50, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.51, ptr @.str.52, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @wsa_macro_enable_vi_feedback, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.53, ptr @.str.54, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aif_vi_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wsa_macro_enable_echo, i32 1, ptr @rx_mix_ec0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wsa_macro_enable_echo, i32 1, ptr @rx_mix_ec1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @rx_mux, i64 48), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @rx_mux, i64 96), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @rx_mux, i64 144), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx0_prim_inp0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx0_prim_inp1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx0_prim_inp2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wsa_macro_enable_mix_path, i32 1, ptr @rx0_mix_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx1_prim_inp0_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx1_prim_inp1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx1_prim_inp2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wsa_macro_enable_mix_path, i32 1, ptr @rx1_mix_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @wsa_macro_enable_main_path, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 1, ptr @wsa_macro_enable_main_path, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1032, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx0_sidetone_mix_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wsa_macro_enable_interpolator, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wsa_macro_enable_interpolator, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wsa_macro_spk_boost_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wsa_macro_spk_boost_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1024, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1152, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1048, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1176, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wsa_macro_mclk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1924 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WSA_SPKR_VI_1\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WSA_SPKR_VI_2\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wsa_macro_enable_echo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.8, i32 1732, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Invalid shift %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wsa_macro_enable_echo\00", [42 x i8] zeroinitializer }, align 32
@wsa_macro_enable_echo._entry_ptr = internal global ptr @wsa_macro_enable_echo._entry, section ".printk_index", align 4
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA RX_MIX EC0_Mux\00", [45 x i8] zeroinitializer }, align 32
@rx_mix_ec0_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 272, i8 0, i8 0, i32 3, i32 3, ptr @rx_mix_ec_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_mix_ec_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.102, ptr @.str.103, ptr @.str.104], [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZERO\00", [27 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX_MIX_TX0\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RX_MIX_TX1\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WSA RX_MIX EC1_Mux\00", [45 x i8] zeroinitializer }, align 32
@rx_mix_ec1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 272, i8 3, i8 3, i32 3, i32 3, ptr @rx_mix_ec_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WSA RX0 Mux\00", [20 x i8] zeroinitializer }, align 32
@rx_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 0, ptr @rx_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WSA RX1 Mux\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA RX_MIX0 Mux\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA RX_MIX1 Mux\00", [16 x i8] zeroinitializer }, align 32
@wsa_macro_rx_mux_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.8, i32 1855, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: AIF reset already\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wsa_macro_rx_mux_put\00", [43 x i8] zeroinitializer }, align 32
@wsa_macro_rx_mux_put._entry_ptr = internal global ptr @wsa_macro_rx_mux_put._entry, section ".printk_index", align 4
@wsa_macro_rx_mux_put._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.8, i32 1859, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid AIF reset\0A\00", [41 x i8] zeroinitializer }, align 32
@wsa_macro_rx_mux_put._entry_ptr.114 = internal global ptr @wsa_macro_rx_mux_put._entry.112, section ".printk_index", align 4
@wsa_macro_rx_mux_put._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.8, i32 1884, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Invalid AIF_ID for WSA RX MUX %d\0A\00", [58 x i8] zeroinitializer }, align 32
@wsa_macro_rx_mux_put._entry_ptr.117 = internal global ptr @wsa_macro_rx_mux_put._entry.115, section ".printk_index", align 4
@rx_mux_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.102, ptr @.str.118, ptr @.str.119], [20 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1_PB\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF_MIX1_PB\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WSA_RX0 INP0 Mux\00", [47 x i8] zeroinitializer }, align 32
@rx0_prim_inp0_chain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 256, i8 0, i8 0, i32 7, i32 7, ptr @rx_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.102, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX0\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX1\00", [28 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX_MIX0\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX_MIX1\00", [24 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC0\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DEC1\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WSA_RX0 INP1 Mux\00", [47 x i8] zeroinitializer }, align 32
@rx0_prim_inp1_chain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 256, i8 3, i8 3, i32 7, i32 7, ptr @rx_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WSA_RX0 INP2 Mux\00", [47 x i8] zeroinitializer }, align 32
@rx0_prim_inp2_chain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 260, i8 3, i8 3, i32 7, i32 7, ptr @rx_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_RX0 MIX Mux\00", [16 x i8] zeroinitializer }, align 32
@rx0_mix_chain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 260, i8 0, i8 0, i32 5, i32 7, ptr @rx_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_mix_text = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.102, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], [44 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WSA_RX1 INP0 Mux\00", [47 x i8] zeroinitializer }, align 32
@rx1_prim_inp0_chain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 264, i8 0, i8 0, i32 7, i32 7, ptr @rx_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WSA_RX1 INP1 Mux\00", [47 x i8] zeroinitializer }, align 32
@rx1_prim_inp1_chain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 264, i8 3, i8 3, i32 7, i32 7, ptr @rx_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WSA_RX1 INP2 Mux\00", [47 x i8] zeroinitializer }, align 32
@rx1_prim_inp2_chain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 268, i8 3, i8 3, i32 7, i32 7, ptr @rx_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WSA_RX1 MIX Mux\00", [16 x i8] zeroinitializer }, align 32
@rx1_mix_chain_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 268, i8 0, i8 0, i32 5, i32 7, ptr @rx_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"WSA_RX0 SIDETONE MIX Mux\00", [39 x i8] zeroinitializer }, align 32
@rx0_sidetone_mix_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @rx_sidetone_mix_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_sidetone_mix_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.102, ptr @.str.135], [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SRC0\00", [27 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wsa_macro_rx1\00", [18 x i8] zeroinitializer }, align 32
@wsa_macro_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wsa_macro_get_channel_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wsa_macro_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wsa_macro_rx_mix\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wsa_macro_vifeedback\00", [43 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wsa_macro_echo\00", [17 x i8] zeroinitializer }, align 32
@wsa_macro_get_channel_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.8, i32 1028, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: Invalid AIF\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wsa_macro_get_channel_map\00", [38 x i8] zeroinitializer }, align 32
@wsa_macro_get_channel_map._entry_ptr = internal global ptr @wsa_macro_get_channel_map._entry, section ".printk_index", align 4
@wsa_macro_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.8, i32 978, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: cannot set sample rate: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wsa_macro_hw_params\00", [44 x i8] zeroinitializer }, align 32
@wsa_macro_hw_params._entry_ptr = internal global ptr @wsa_macro_hw_params._entry, section ".printk_index", align 4
@int_mix_sample_rate_val = internal constant { [3 x %struct.interp_sample_rate], [40 x i8] } { [3 x %struct.interp_sample_rate] [%struct.interp_sample_rate { i32 48000, i32 4 }, %struct.interp_sample_rate { i32 96000, i32 5 }, %struct.interp_sample_rate { i32 192000, i32 6 }], [40 x i8] zeroinitializer }, align 32
@int_prim_sample_rate_val = internal constant { [9 x %struct.interp_sample_rate], [56 x i8] } { [9 x %struct.interp_sample_rate] [%struct.interp_sample_rate { i32 8000, i32 0 }, %struct.interp_sample_rate { i32 16000, i32 1 }, %struct.interp_sample_rate { i32 24000, i32 -22 }, %struct.interp_sample_rate { i32 32000, i32 3 }, %struct.interp_sample_rate { i32 48000, i32 4 }, %struct.interp_sample_rate { i32 96000, i32 5 }, %struct.interp_sample_rate { i32 192000, i32 6 }, %struct.interp_sample_rate { i32 384000, i32 7 }, %struct.interp_sample_rate { i32 44100, i32 8 }], [56 x i8] zeroinitializer }, align 32
@wsa_macro_set_mix_interpolator_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.8, i32 906, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Invalid RX port, Dai ID is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wsa_macro_set_mix_interpolator_rate\00", [60 x i8] zeroinitializer }, align 32
@wsa_macro_set_mix_interpolator_rate._entry_ptr = internal global ptr @wsa_macro_set_mix_interpolator_rate._entry, section ".printk_index", align 4
@wsa_macro_set_prim_interpolator_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.146, ptr @.str.8, i32 854, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"wsa_macro_set_prim_interpolator_rate\00", [59 x i8] zeroinitializer }, align 32
@wsa_macro_set_prim_interpolator_rate._entry_ptr = internal global ptr @wsa_macro_set_prim_interpolator_rate._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 836, i64 880, i64 912]
@__sancov_gen_cov_switch_values.147 = internal global [19 x i64] [i64 17, i64 32, i64 836, i64 872, i64 880, i64 904, i64 912, i64 1432, i64 1496, i64 1808, i64 1812, i64 1816, i64 1820, i64 1824, i64 1872, i64 1876, i64 1880, i64 1884, i64 1888]
@__sancov_gen_cov_switch_values.148 = internal global [16 x i64] [i64 14, i64 32, i64 872, i64 904, i64 1432, i64 1496, i64 1808, i64 1812, i64 1816, i64 1820, i64 1824, i64 1872, i64 1876, i64 1880, i64 1884, i64 1888]
@__sancov_gen_cov_switch_values.149 = internal global [113 x i64] [i64 111, i64 32, i64 0, i64 4, i64 8, i64 128, i64 132, i64 136, i64 140, i64 144, i64 148, i64 152, i64 156, i64 160, i64 164, i64 168, i64 256, i64 260, i64 264, i64 268, i64 272, i64 276, i64 280, i64 580, i64 584, i64 612, i64 616, i64 644, i64 648, i64 676, i64 680, i64 832, i64 864, i64 896, i64 960, i64 968, i64 976, i64 1024, i64 1028, i64 1032, i64 1036, i64 1040, i64 1044, i64 1048, i64 1052, i64 1056, i64 1060, i64 1064, i64 1068, i64 1072, i64 1080, i64 1084, i64 1088, i64 1092, i64 1096, i64 1100, i64 1152, i64 1156, i64 1160, i64 1164, i64 1168, i64 1172, i64 1176, i64 1180, i64 1184, i64 1188, i64 1192, i64 1196, i64 1200, i64 1208, i64 1212, i64 1216, i64 1220, i64 1224, i64 1228, i64 1280, i64 1284, i64 1288, i64 1292, i64 1344, i64 1348, i64 1352, i64 1356, i64 1408, i64 1412, i64 1416, i64 1420, i64 1424, i64 1428, i64 1436, i64 1472, i64 1476, i64 1480, i64 1484, i64 1488, i64 1492, i64 1500, i64 1536, i64 1540, i64 1600, i64 1604, i64 1664, i64 1668, i64 1728, i64 1732, i64 1792, i64 1796, i64 1800, i64 1804, i64 1856, i64 1860, i64 1864, i64 1868]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.151 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.159 = internal global [6 x i64] [i64 4, i64 16, i64 1024, i64 1048, i64 1152, i64 1176]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.162 = internal global [9 x i64] [i64 7, i64 32, i64 8000, i64 16000, i64 32000, i64 44100, i64 96000, i64 192000, i64 384000]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 16000, i64 24000, i64 32000]
@__sancov_gen_cov_switch_values.164 = internal global [6 x i64] [i64 4, i64 32, i64 44100, i64 96000, i64 192000, i64 384000]
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"wsa_macro_driver\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2454, i32 31 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2456, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"wsa_macro_dt_match\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2447, i32 34 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2391, i32 20 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2392, i32 20 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2393, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2394, i32 20 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2395, i32 20 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2399, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [18 x i8] c"wsa_regmap_config\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 787, i32 35 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2407, i32 16 }
@___asan_gen_.216 = private unnamed_addr constant [24 x i8] c"wsa_macro_component_drv\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2369, i32 46 }
@___asan_gen_.219 = private unnamed_addr constant [14 x i8] c"wsa_macro_dai\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1039, i32 34 }
@___asan_gen_.222 = private unnamed_addr constant [13 x i8] c"wsa_defaults\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 463, i32 33 }
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"swclk_gate_ops\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2337, i32 29 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1120, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2370, i32 10 }
@___asan_gen_.240 = private unnamed_addr constant [23 x i8] c"wsa_macro_snd_controls\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1917, i32 38 }
@___asan_gen_.243 = private unnamed_addr constant [14 x i8] c"wsa_audio_map\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2139, i32 40 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1918, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [32 x i8] c"wsa_macro_ear_spkr_pa_gain_enum\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 382, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1921, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1925, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1930, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"digital_gain\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 355, i32 14 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1932, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1935, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1936, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1937, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1939, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1941, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1943, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1945, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1947, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [32 x i8] c"wsa_macro_ear_spkr_pa_gain_text\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 377, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 378, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 378, i32 15 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 378, i32 25 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 378, i32 35 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 378, i32 45 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 379, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 379, i32 12 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 379, i32 22 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2039, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2041, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2044, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2048, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2051, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [13 x i8] c"aif_vi_mixer\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2029, i32 38 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2053, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [15 x i8] c"rx_mix_ec0_mux\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 457, i32 38 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2057, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [15 x i8] c"rx_mix_ec1_mux\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 460, i32 38 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2062, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [7 x i8] c"rx_mux\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1954, i32 38 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2064, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2066, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2068, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2071, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2072, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2073, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2074, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2076, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [18 x i8] c"rx0_prim_inp0_mux\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 405, i32 38 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2077, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant [18 x i8] c"rx0_prim_inp1_mux\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 408, i32 38 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2078, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [18 x i8] c"rx0_prim_inp2_mux\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 411, i32 38 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2079, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [12 x i8] c"rx0_mix_mux\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 414, i32 38 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2082, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [18 x i8] c"rx1_prim_inp0_mux\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 437, i32 38 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2083, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [18 x i8] c"rx1_prim_inp1_mux\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 440, i32 38 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2084, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [18 x i8] c"rx1_prim_inp2_mux\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 443, i32 38 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2085, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [12 x i8] c"rx1_mix_mux\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 446, i32 38 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2089, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2091, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2094, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2095, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2097, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [21 x i8] c"rx0_sidetone_mix_mux\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 417, i32 38 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2100, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2101, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2102, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2104, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2110, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2116, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2121, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2126, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2127, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2128, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2130, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2131, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2132, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2133, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2134, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [23 x i8] c"wsa_macro_dapm_widgets\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2038, i32 41 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2030, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 2033, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1731, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 458, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [16 x i8] c"rx_mix_ec0_enum\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 449, i32 30 }
@___asan_gen_.536 = private unnamed_addr constant [15 x i8] c"rx_mix_ec_text\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 365, i32 26 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 366, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 366, i32 10 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 366, i32 24 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 461, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant [16 x i8] c"rx_mix_ec1_enum\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 453, i32 30 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1955, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [12 x i8] c"rx_mux_enum\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1951, i32 30 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1957, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1959, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1961, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1855, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1859, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1882, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant [12 x i8] c"rx_mux_text\00", align 1
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 369, i32 26 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 370, i32 10 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 370, i32 21 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 406, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant [25 x i8] c"rx0_prim_inp0_chain_enum\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 386, i32 30 }
@___asan_gen_.605 = private unnamed_addr constant [8 x i8] c"rx_text\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 357, i32 26 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 358, i32 10 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 358, i32 17 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 358, i32 24 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 358, i32 35 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 358, i32 46 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 358, i32 54 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 409, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant [25 x i8] c"rx0_prim_inp1_chain_enum\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 390, i32 30 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 412, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant [25 x i8] c"rx0_prim_inp2_chain_enum\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 394, i32 30 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 415, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [19 x i8] c"rx0_mix_chain_enum\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 398, i32 30 }
@___asan_gen_.644 = private unnamed_addr constant [12 x i8] c"rx_mix_text\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 361, i32 26 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 438, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant [25 x i8] c"rx1_prim_inp0_chain_enum\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 421, i32 30 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 441, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant [25 x i8] c"rx1_prim_inp1_chain_enum\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 425, i32 30 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 444, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [25 x i8] c"rx1_prim_inp2_chain_enum\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 429, i32 30 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 447, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [19 x i8] c"rx1_mix_chain_enum\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 433, i32 30 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 418, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [22 x i8] c"rx0_sidetone_mix_enum\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 402, i32 30 }
@___asan_gen_.677 = private unnamed_addr constant [21 x i8] c"rx_sidetone_mix_text\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 373, i32 26 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 374, i32 10 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1041, i32 11 }
@___asan_gen_.686 = private unnamed_addr constant [18 x i8] c"wsa_macro_dai_ops\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1034, i32 37 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1055, i32 11 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1069, i32 11 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1083, i32 11 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 1028, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 976, i32 4 }
@___asan_gen_.716 = private unnamed_addr constant [24 x i8] c"int_mix_sample_rate_val\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 319, i32 34 }
@___asan_gen_.719 = private unnamed_addr constant [25 x i8] c"int_prim_sample_rate_val\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 307, i32 34 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 905, i32 4 }
@___asan_gen_.731 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.734 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.735 = private constant [38 x i8] c"../sound/soc/codecs/lpass-wsa-macro.c\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.735, i32 853, i32 4 }
@llvm.compiler.used = appending global [217 x ptr] [ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_wsa_macro_driver_exit, ptr @__initcall__kmod_snd_soc_lpass_wsa_macro__238_2463_wsa_macro_driver_init6, ptr @__ksymtab_wsa_macro_set_spkr_mode, ptr @wsa_macro_driver_exit, ptr @wsa_macro_enable_echo._entry, ptr @wsa_macro_enable_echo._entry_ptr, ptr @wsa_macro_get_channel_map._entry, ptr @wsa_macro_get_channel_map._entry_ptr, ptr @wsa_macro_hw_params._entry, ptr @wsa_macro_hw_params._entry_ptr, ptr @wsa_macro_mclk_enable._entry, ptr @wsa_macro_mclk_enable._entry_ptr, ptr @wsa_macro_probe._entry, ptr @wsa_macro_probe._entry_ptr, ptr @wsa_macro_rx_mux_put._entry, ptr @wsa_macro_rx_mux_put._entry.112, ptr @wsa_macro_rx_mux_put._entry.115, ptr @wsa_macro_rx_mux_put._entry_ptr, ptr @wsa_macro_rx_mux_put._entry_ptr.114, ptr @wsa_macro_rx_mux_put._entry_ptr.117, ptr @wsa_macro_set_mix_interpolator_rate._entry, ptr @wsa_macro_set_mix_interpolator_rate._entry_ptr, ptr @wsa_macro_set_prim_interpolator_rate._entry, ptr @wsa_macro_set_prim_interpolator_rate._entry_ptr, ptr @wsa_macro_driver, ptr @.str, ptr @wsa_macro_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @wsa_macro_probe._key, ptr @wsa_regmap_config, ptr @.str.11, ptr @wsa_macro_component_drv, ptr @wsa_macro_dai, ptr @wsa_defaults, ptr @swclk_gate_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @wsa_macro_snd_controls, ptr @wsa_audio_map, ptr @.str.15, ptr @wsa_macro_ear_spkr_pa_gain_enum, ptr @.str.16, ptr @.compoundliteral, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @digital_gain, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @wsa_macro_ear_spkr_pa_gain_text, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @aif_vi_mixer, ptr @.str.56, ptr @rx_mix_ec0_mux, ptr @.str.57, ptr @rx_mix_ec1_mux, ptr @.str.58, ptr @rx_mux, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @rx0_prim_inp0_mux, ptr @.str.67, ptr @rx0_prim_inp1_mux, ptr @.str.68, ptr @rx0_prim_inp2_mux, ptr @.str.69, ptr @rx0_mix_mux, ptr @.str.70, ptr @rx1_prim_inp0_mux, ptr @.str.71, ptr @rx1_prim_inp1_mux, ptr @.str.72, ptr @rx1_prim_inp2_mux, ptr @.str.73, ptr @rx1_mix_mux, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @rx0_sidetone_mix_mux, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @wsa_macro_dapm_widgets, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @rx_mix_ec0_enum, ptr @rx_mix_ec_text, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @rx_mix_ec1_enum, ptr @.str.106, ptr @rx_mux_enum, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @rx_mux_text, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @rx0_prim_inp0_chain_enum, ptr @rx_text, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @rx0_prim_inp1_chain_enum, ptr @.str.128, ptr @rx0_prim_inp2_chain_enum, ptr @.str.129, ptr @rx0_mix_chain_enum, ptr @rx_mix_text, ptr @.str.130, ptr @rx1_prim_inp0_chain_enum, ptr @.str.131, ptr @rx1_prim_inp1_chain_enum, ptr @.str.132, ptr @rx1_prim_inp2_chain_enum, ptr @.str.133, ptr @rx1_mix_chain_enum, ptr @.str.134, ptr @rx0_sidetone_mix_enum, ptr @rx_sidetone_mix_text, ptr @.str.135, ptr @.str.136, ptr @wsa_macro_dai_ops, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @int_mix_sample_rate_val, ptr @int_prim_sample_rate_val, ptr @.str.144, ptr @.str.145, ptr @.str.146], section "llvm.metadata"
@0 = internal global [200 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_dai to i32), i32 672, i32 832, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_defaults to i32), i32 1016, i32 1248, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @swclk_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_mclk_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_snd_controls to i32), i32 624, i32 768, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_audio_map to i32), i32 4836, i32 6048, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_ear_spkr_pa_gain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_ear_spkr_pa_gain_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif_vi_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_ec0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_ec1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mux to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_prim_inp0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_prim_inp1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_prim_inp2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_mix_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx1_prim_inp0_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx1_prim_inp1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx1_prim_inp2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx1_mix_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_sidetone_mix_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_dapm_widgets to i32), i32 7740, i32 9664, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_enable_echo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_ec0_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_ec_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_ec1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_rx_mux_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_rx_mux_put._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_rx_mux_put._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mux_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_prim_inp0_chain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_prim_inp1_chain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_prim_inp2_chain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_mix_chain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_mix_text to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx1_prim_inp0_chain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx1_prim_inp1_chain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx1_prim_inp2_chain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx1_mix_chain_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx0_sidetone_mix_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_sidetone_mix_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_get_channel_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_mix_sample_rate_val to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_prim_sample_rate_val to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_set_mix_interpolator_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wsa_macro_set_prim_interpolator_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wsa_macro_set_spkr_mode(ptr noundef %component, i32 noundef %mode) #0 align 64 {
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
  %spkr_mode = getelementptr inbounds %struct.wsa_macro, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %spkr_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mode, ptr %spkr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  %. = select i1 %cond, i32 0, i32 128
  %not.cond = xor i1 %cond, true
  %.31 = zext i1 %not.cond to i32
  %.32 = select i1 %cond, i32 68, i32 88
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1420, i32 noundef 128, i32 noundef %.) #8
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1484, i32 noundef 128, i32 noundef %.) #8
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1436, i32 noundef 1, i32 noundef %.31) #8
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1500, i32 noundef 1, i32 noundef %.31) #8
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1284, i32 noundef 124, i32 noundef %.32) #8
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1348, i32 noundef 124, i32 noundef %.32) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wsa_macro_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wsa_macro_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @wsa_macro_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %parent_clk_name.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 168, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = getelementptr inbounds %struct.wsa_macro, ptr %call.i, i32 0, i32 15
  %0 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.1, ptr %clks, align 4
  %arrayidx3 = getelementptr %struct.wsa_macro, ptr %call.i, i32 0, i32 15, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.2, ptr %arrayidx3, align 4
  %arrayidx6 = getelementptr %struct.wsa_macro, ptr %call.i, i32 0, i32 15, i32 2
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.3, ptr %arrayidx6, align 4
  %arrayidx9 = getelementptr %struct.wsa_macro, ptr %call.i, i32 0, i32 15, i32 3
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.4, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr %struct.wsa_macro, ptr %call.i, i32 0, i32 15, i32 4
  %4 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.5, ptr %arrayidx12, align 4
  %call15 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 5, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %call15) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %call19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call19, ptr noundef nonnull @wsa_regmap_config, ptr noundef nonnull @wsa_macro_probe._key, ptr noundef nonnull @.str.11) #8
  %regmap = getelementptr inbounds %struct.wsa_macro, ptr %call.i, i32 0, i32 14
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call24, ptr %regmap, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %reset_swr = getelementptr inbounds %struct.wsa_macro, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %reset_swr to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %reset_swr, align 2
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %call.i, align 4
  %clk = getelementptr %struct.wsa_macro, ptr %call.i, i32 0, i32 15, i32 2, i32 1
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call28 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 19200000) #8
  %clk31 = getelementptr %struct.wsa_macro, ptr %call.i, i32 0, i32 15, i32 3, i32 1
  %12 = ptrtoint ptr %clk31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk31, align 4
  %call32 = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef 19200000) #8
  %call.i80 = tail call i32 @clk_bulk_prepare(i32 noundef 5, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 5, ptr noundef %clks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_clk_name.i) #8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %16 = getelementptr inbounds i8, ptr %init.i, i32 12
  %17 = call ptr @memset(ptr %16, i32 255, i32 12)
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %call.i81 = tail call ptr @__clk_get_name(ptr noundef %19) #8
  %20 = ptrtoint ptr %parent_clk_name.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i81, ptr %parent_clk_name.i, align 4
  %21 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.3, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @swclk_gate_ops, ptr %ops.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %flags.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %24 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %parent_clk_name.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %25 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %num_parents.i, align 4
  %hw2.i = getelementptr inbounds %struct.wsa_macro, ptr %call.i, i32 0, i32 16
  %init3.i = getelementptr inbounds %struct.wsa_macro, ptr %call.i, i32 0, i32 16, i32 2
  %26 = ptrtoint ptr %init3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %init.i, ptr %init3.i, align 4
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %call6.i = call i32 @clk_hw_register(ptr noundef %28, ptr noundef %hw2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i82 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i82, label %if.end.i83, label %if.end38.wsa_macro_register_mclk_output.exit_crit_edge

if.end38.wsa_macro_register_mclk_output.exit_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsa_macro_register_mclk_output.exit

if.end.i83:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = call i32 @devm_of_clk_add_hw_provider(ptr noundef %15, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %hw2.i) #8
  br label %wsa_macro_register_mclk_output.exit

wsa_macro_register_mclk_output.exit:              ; preds = %if.end.i83, %if.end38.wsa_macro_register_mclk_output.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_clk_name.i) #8
  %call40 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @wsa_macro_component_drv, ptr noundef nonnull @wsa_macro_dai, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %wsa_macro_register_mclk_output.exit.cleanup_crit_edge, label %err

wsa_macro_register_mclk_output.exit.cleanup_crit_edge: ; preds = %wsa_macro_register_mclk_output.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err:                                              ; preds = %wsa_macro_register_mclk_output.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #8
  call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %wsa_macro_register_mclk_output.exit.cleanup_crit_edge, %if.then3.i, %if.end23.cleanup_crit_edge, %if.then21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %do.end ], [ %5, %if.then21 ], [ %call40, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %wsa_macro_register_mclk_output.exit.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i80, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clks = getelementptr inbounds %struct.wsa_macro, ptr %1, i32 0, i32 15
  tail call void @clk_bulk_disable(i32 noundef 5, ptr noundef %clks) #8
  tail call void @clk_bulk_unprepare(i32 noundef 5, ptr noundef %clks) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wsa_is_writeable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @wsa_is_rw_register(i32 noundef %reg)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog.i [
    i32 836, label %if.then.cleanup_crit_edge
    i32 880, label %if.then.cleanup_crit_edge6
    i32 912, label %if.then.cleanup_crit_edge7
  ]

if.then.cleanup_crit_edge7:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.cleanup_crit_edge6:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge6, %if.then.cleanup_crit_edge7, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %sw.epilog.i ], [ true, %if.then.cleanup_crit_edge ], [ true, %if.then.cleanup_crit_edge6 ], [ true, %if.then.cleanup_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wsa_is_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %reg, label %sw.epilog [
    i32 836, label %entry.return_crit_edge
    i32 880, label %entry.return_crit_edge2
    i32 912, label %entry.return_crit_edge3
    i32 872, label %entry.return_crit_edge4
    i32 904, label %entry.return_crit_edge5
    i32 1432, label %entry.return_crit_edge6
    i32 1496, label %entry.return_crit_edge7
    i32 1808, label %entry.return_crit_edge8
    i32 1812, label %entry.return_crit_edge9
    i32 1816, label %entry.return_crit_edge10
    i32 1820, label %entry.return_crit_edge11
    i32 1824, label %entry.return_crit_edge12
    i32 1872, label %entry.return_crit_edge13
    i32 1876, label %entry.return_crit_edge14
    i32 1880, label %entry.return_crit_edge15
    i32 1884, label %entry.return_crit_edge16
    i32 1888, label %entry.return_crit_edge17
  ]

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc zeroext i1 @wsa_is_rw_register(i32 noundef %reg)
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17
  %retval.0 = phi i1 [ %call, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wsa_is_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %reg, label %sw.epilog [
    i32 872, label %entry.return_crit_edge
    i32 904, label %entry.return_crit_edge1
    i32 1432, label %entry.return_crit_edge2
    i32 1496, label %entry.return_crit_edge3
    i32 1808, label %entry.return_crit_edge4
    i32 1812, label %entry.return_crit_edge5
    i32 1816, label %entry.return_crit_edge6
    i32 1820, label %entry.return_crit_edge7
    i32 1824, label %entry.return_crit_edge8
    i32 1872, label %entry.return_crit_edge9
    i32 1876, label %entry.return_crit_edge10
    i32 1880, label %entry.return_crit_edge11
    i32 1884, label %entry.return_crit_edge12
    i32 1888, label %entry.return_crit_edge13
  ]

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @wsa_is_rw_register(i32 noundef %reg) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %reg, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge1
    i32 8, label %entry.return_crit_edge2
    i32 128, label %entry.return_crit_edge3
    i32 132, label %entry.return_crit_edge4
    i32 136, label %entry.return_crit_edge5
    i32 140, label %entry.return_crit_edge6
    i32 144, label %entry.return_crit_edge7
    i32 148, label %entry.return_crit_edge8
    i32 152, label %entry.return_crit_edge9
    i32 156, label %entry.return_crit_edge10
    i32 160, label %entry.return_crit_edge11
    i32 164, label %entry.return_crit_edge12
    i32 168, label %entry.return_crit_edge13
    i32 256, label %entry.return_crit_edge14
    i32 260, label %entry.return_crit_edge15
    i32 264, label %entry.return_crit_edge16
    i32 268, label %entry.return_crit_edge17
    i32 272, label %entry.return_crit_edge18
    i32 276, label %entry.return_crit_edge19
    i32 280, label %entry.return_crit_edge20
    i32 580, label %entry.return_crit_edge21
    i32 584, label %entry.return_crit_edge22
    i32 612, label %entry.return_crit_edge23
    i32 616, label %entry.return_crit_edge24
    i32 644, label %entry.return_crit_edge25
    i32 648, label %entry.return_crit_edge26
    i32 676, label %entry.return_crit_edge27
    i32 680, label %entry.return_crit_edge28
    i32 832, label %entry.return_crit_edge29
    i32 864, label %entry.return_crit_edge30
    i32 896, label %entry.return_crit_edge31
    i32 960, label %entry.return_crit_edge32
    i32 968, label %entry.return_crit_edge33
    i32 976, label %entry.return_crit_edge34
    i32 1024, label %entry.return_crit_edge35
    i32 1028, label %entry.return_crit_edge36
    i32 1032, label %entry.return_crit_edge37
    i32 1036, label %entry.return_crit_edge38
    i32 1040, label %entry.return_crit_edge39
    i32 1044, label %entry.return_crit_edge40
    i32 1048, label %entry.return_crit_edge41
    i32 1052, label %entry.return_crit_edge42
    i32 1056, label %entry.return_crit_edge43
    i32 1060, label %entry.return_crit_edge44
    i32 1064, label %entry.return_crit_edge45
    i32 1068, label %entry.return_crit_edge46
    i32 1072, label %entry.return_crit_edge47
    i32 1080, label %entry.return_crit_edge48
    i32 1084, label %entry.return_crit_edge49
    i32 1088, label %entry.return_crit_edge50
    i32 1092, label %entry.return_crit_edge51
    i32 1096, label %entry.return_crit_edge52
    i32 1100, label %entry.return_crit_edge53
    i32 1152, label %entry.return_crit_edge54
    i32 1156, label %entry.return_crit_edge55
    i32 1160, label %entry.return_crit_edge56
    i32 1164, label %entry.return_crit_edge57
    i32 1168, label %entry.return_crit_edge58
    i32 1172, label %entry.return_crit_edge59
    i32 1176, label %entry.return_crit_edge60
    i32 1180, label %entry.return_crit_edge61
    i32 1184, label %entry.return_crit_edge62
    i32 1188, label %entry.return_crit_edge63
    i32 1192, label %entry.return_crit_edge64
    i32 1196, label %entry.return_crit_edge65
    i32 1200, label %entry.return_crit_edge66
    i32 1208, label %entry.return_crit_edge67
    i32 1212, label %entry.return_crit_edge68
    i32 1216, label %entry.return_crit_edge69
    i32 1220, label %entry.return_crit_edge70
    i32 1224, label %entry.return_crit_edge71
    i32 1228, label %entry.return_crit_edge72
    i32 1280, label %entry.return_crit_edge73
    i32 1284, label %entry.return_crit_edge74
    i32 1288, label %entry.return_crit_edge75
    i32 1292, label %entry.return_crit_edge76
    i32 1344, label %entry.return_crit_edge77
    i32 1348, label %entry.return_crit_edge78
    i32 1352, label %entry.return_crit_edge79
    i32 1356, label %entry.return_crit_edge80
    i32 1408, label %entry.return_crit_edge81
    i32 1412, label %entry.return_crit_edge82
    i32 1416, label %entry.return_crit_edge83
    i32 1420, label %entry.return_crit_edge84
    i32 1424, label %entry.return_crit_edge85
    i32 1428, label %entry.return_crit_edge86
    i32 1436, label %entry.return_crit_edge87
    i32 1472, label %entry.return_crit_edge88
    i32 1476, label %entry.return_crit_edge89
    i32 1480, label %entry.return_crit_edge90
    i32 1484, label %entry.return_crit_edge91
    i32 1488, label %entry.return_crit_edge92
    i32 1492, label %entry.return_crit_edge93
    i32 1500, label %entry.return_crit_edge94
    i32 1536, label %entry.return_crit_edge95
    i32 1540, label %entry.return_crit_edge96
    i32 1600, label %entry.return_crit_edge97
    i32 1604, label %entry.return_crit_edge98
    i32 1664, label %entry.return_crit_edge99
    i32 1668, label %entry.return_crit_edge100
    i32 1728, label %entry.return_crit_edge101
    i32 1732, label %entry.return_crit_edge102
    i32 1792, label %entry.return_crit_edge103
    i32 1796, label %entry.return_crit_edge104
    i32 1800, label %entry.return_crit_edge105
    i32 1804, label %entry.return_crit_edge106
    i32 1856, label %entry.return_crit_edge107
    i32 1860, label %entry.return_crit_edge108
    i32 1864, label %entry.return_crit_edge109
    i32 1868, label %entry.return_crit_edge110
  ]

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swclk_gate_enable(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -156
  tail call fastcc void @wsa_swrm_clock(ptr noundef %add.ptr, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @swclk_gate_disable(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -156
  tail call fastcc void @wsa_swrm_clock(ptr noundef %add.ptr, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @swclk_gate_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !376
  %regmap = getelementptr i8, ptr %hw, i32 -44
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %and
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @swclk_recalc_rate(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = lshr i32 %parent_rate, 1
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wsa_swrm_clock(ptr nocapture noundef %wsa, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.wsa_macro, ptr %wsa, i32 0, i32 14
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call fastcc void @wsa_macro_mclk_enable(ptr noundef %wsa, i1 noundef zeroext true)
  %reset_swr = getelementptr inbounds %struct.wsa_macro, ptr %wsa, i32 0, i32 5
  %2 = ptrtoint ptr %reset_swr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reset_swr, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %reset_swr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reset_swr, align 2, !range !377
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i2 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  %6 = ptrtoint ptr %reset_swr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %reset_swr, align 2
  br label %if.end12

if.else:                                          ; preds = %entry
  %call.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 8, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %7 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap1, align 4
  %wsa_mclk_users.i = getelementptr inbounds %struct.wsa_macro, ptr %wsa, i32 0, i32 4
  %9 = ptrtoint ptr %wsa_mclk_users.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %wsa_mclk_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.i = icmp eq i16 %10, 0
  br i1 %cmp.i, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %wsa to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wsa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.12) #11
  %13 = ptrtoint ptr %wsa_mclk_users.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %wsa_mclk_users.i, align 4
  br label %if.end12

if.end14.i:                                       ; preds = %if.else
  %dec.i = add i16 %10, -1
  %14 = ptrtoint ptr %wsa_mclk_users.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %dec.i, ptr %wsa_mclk_users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec.i)
  %cmp18.i = icmp eq i16 %dec.i, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.end14.i.if.end12_crit_edge

if.end14.i.if.end12_crit_edge:                    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then20.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i40.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i41.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then20.i, %if.end14.i.if.end12_crit_edge, %do.end.i, %if.end9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wsa_macro_mclk_enable(ptr nocapture noundef %wsa, i1 noundef zeroext %mclk_enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.wsa_macro, ptr %wsa, i32 0, i32 14
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %wsa_mclk_users = getelementptr inbounds %struct.wsa_macro, ptr %wsa, i32 0, i32 4
  %2 = ptrtoint ptr %wsa_mclk_users to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wsa_mclk_users, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %mclk_enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp, label %if.then3, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  %call = tail call i32 @regcache_sync(ptr noundef %1) #8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 136, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i38 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i39 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %wsa_mclk_users to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wsa_mclk_users, align 4
  %inc = add i16 %5, 1
  store i16 %inc, ptr %wsa_mclk_users, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %cmp, label %do.end, label %if.end14

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %wsa to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wsa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12) #11
  %8 = ptrtoint ptr %wsa_mclk_users to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %wsa_mclk_users, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %dec = add i16 %3, -1
  %9 = ptrtoint ptr %wsa_mclk_users to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %dec, ptr %wsa_mclk_users, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp18 = icmp eq i16 %dec, 0
  br i1 %cmp18, label %if.then20, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call.i40 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end14.cleanup_crit_edge, %do.end, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_component_probe(ptr noundef %comp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.wsa_macro, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %comp, ptr noundef %5) #8
  %spkr_gain_offset = getelementptr inbounds %struct.wsa_macro, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %spkr_gain_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %spkr_gain_offset, align 4
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 1032, i32 noundef 8, i32 noundef 8) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 1160, i32 noundef 8, i32 noundef 8) #8
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i, align 4
  %spkr_mode.i = getelementptr inbounds %struct.wsa_macro, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %spkr_mode.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %spkr_mode.i, align 4
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 1420, i32 noundef 128, i32 noundef 0) #8
  %call8.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 1484, i32 noundef 128, i32 noundef 0) #8
  %call9.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 1436, i32 noundef 1, i32 noundef 0) #8
  %call10.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 1500, i32 noundef 1, i32 noundef 0) #8
  %call11.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 1284, i32 noundef 124, i32 noundef 68) #8
  %call12.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %comp, i32 noundef 1348, i32 noundef 124, i32 noundef 68) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wsa_macro_ear_spkr_pa_gain_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %ear_spkr_gain = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %ear_spkr_gain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ear_spkr_gain, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wsa_macro_ear_spkr_pa_gain_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %ear_spkr_gain = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %ear_spkr_gain to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ear_spkr_gain, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wsa_macro_soft_clip_enable_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %arrayidx = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 12, i32 %10
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
define internal i32 @wsa_macro_soft_clip_enable_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %arrayidx2 = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 12, i32 %10
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx2, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wsa_macro_get_compander(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %arrayidx = getelementptr %struct.wsa_macro, ptr %10, i32 0, i32 1, i32 %6
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
define internal i32 @wsa_macro_set_compander(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %arrayidx3 = getelementptr %struct.wsa_macro, ptr %12, i32 0, i32 1, i32 %6
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wsa_macro_get_ec_hq(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %arrayidx = getelementptr %struct.wsa_macro, ptr %10, i32 0, i32 2, i32 %6
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
define internal i32 @wsa_macro_set_ec_hq(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %arrayidx3 = getelementptr %struct.wsa_macro, ptr %12, i32 0, i32 2, i32 %6
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %arrayidx3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_enable_vi_feedback(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  %spec.select = select i1 %tobool6.not, i32 -1, i32 644
  %spec.select45 = select i1 %tobool6.not, i32 -1, i32 676
  br label %if.end8

if.end8:                                          ; preds = %if.else, %entry.if.end8_crit_edge
  %tx_reg0.0 = phi i32 [ 580, %entry.if.end8_crit_edge ], [ %spec.select, %if.else ]
  %tx_reg1.0 = phi i32 [ 612, %entry.if.end8_crit_edge ], [ %spec.select45, %if.else ]
  %11 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %event, label %if.end8.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb17
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg0.0, i32 noundef 32, i32 noundef 32) #8
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg1.0, i32 noundef 32, i32 noundef 32) #8
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg0.0, i32 noundef 15, i32 noundef 0) #8
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg1.0, i32 noundef 15, i32 noundef 0) #8
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg0.0, i32 noundef 16, i32 noundef 16) #8
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg1.0, i32 noundef 16, i32 noundef 16) #8
  br label %sw.epilog.sink.split

sw.bb17:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg0.0, i32 noundef 32, i32 noundef 32) #8
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg1.0, i32 noundef 32, i32 noundef 32) #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb17, %sw.bb
  %.sink47 = phi i32 [ 16, %sw.bb17 ], [ 32, %sw.bb ]
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg0.0, i32 noundef %.sink47, i32 noundef 0) #8
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %tx_reg1.0, i32 noundef %.sink47, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end8.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_enable_echo(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 272) #8
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.151)
  switch i8 %7, label %do.end [
    i8 0, label %entry.sw.epilog_crit_edge
    i8 1, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = lshr i32 %call2, 3
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv3 = zext i8 %7 to i32
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, i32 noundef %conv3) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %entry.sw.epilog_crit_edge
  %.sink44 = phi i32 [ %9, %sw.bb8 ], [ %call2, %entry.sw.epilog_crit_edge ]
  %12 = and i32 %.sink44, 7
  %conv14 = add nuw nsw i32 %12, 65535
  %idxprom = and i32 %conv14, 65535
  %arrayidx = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 2, i32 %idxprom
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.then

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %mul = shl nuw nsw i32 %idxprom, 6
  %conv18 = add nuw nsw i32 %mul, 1664
  %conv19 = and i32 %conv18, 65472
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv19, i32 noundef 1, i32 noundef 1) #8
  %conv24 = add nuw nsw i32 %mul, 1668
  %conv25 = and i32 %conv24, 65476
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv25, i32 noundef 30, i32 noundef 8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_enable_mix_path(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 2, label %entry.sw.epilog_crit_edge
    i8 3, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %path_reg.0 = phi i32 [ 1176, %sw.bb1 ], [ 1048, %entry.sw.epilog_crit_edge ]
  %gain_reg.0 = phi i32 [ 1184, %sw.bb1 ], [ 1056, %entry.sw.epilog_crit_edge ]
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %event, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.bb2
    i32 8, label %sw.bb7
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %gain_reg.0) #8
  %call6 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %gain_reg.0, i32 noundef %call4) #8
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %path_reg.0, i32 noundef 32, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb2, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_enable_main_path(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %conv.tr = zext i8 %3 to i32
  %4 = shl nuw nsw i32 %conv.tr, 7
  %conv1 = add nuw nsw i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = shl nuw nsw i32 %conv.tr, 3
  %conv.i = add nuw nsw i32 %5, 256
  %call.i = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv.i, i32 noundef 7) #8
  %conv6.i = and i32 %call.i, 255
  %conv6.off.i = add nsw i32 %conv6.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv6.off.i)
  %switch.i = icmp ult i32 %conv6.off.i, 2
  br i1 %switch.i, label %sw.bb.if.then_crit_edge, label %if.end.i

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %sw.bb
  %call12.i = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv.i, i32 noundef 56) #8
  %conv14.i = and i32 %call12.i, 255
  %conv14.off.i = add nsw i32 %conv14.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv14.off.i)
  %switch46.i = icmp ult i32 %conv14.off.i, 2
  br i1 %switch46.i, label %if.end.i.if.then_crit_edge, label %wsa_macro_adie_lb.exit

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

wsa_macro_adie_lb.exit:                           ; preds = %if.end.i
  %conv23.i = or i32 %conv.i, 4
  %call24.i = tail call i32 @snd_soc_component_read_field(ptr noundef %add.ptr.i, i32 noundef %conv23.i, i32 noundef 56) #8
  %conv26.i = and i32 %call24.i, 255
  %conv26.off.i = add nsw i32 %conv26.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv26.off.i)
  %switch47.i = icmp ult i32 %conv26.off.i, 2
  br i1 %switch47.i, label %wsa_macro_adie_lb.exit.if.then_crit_edge, label %wsa_macro_adie_lb.exit.sw.epilog_crit_edge

wsa_macro_adie_lb.exit.sw.epilog_crit_edge:       ; preds = %wsa_macro_adie_lb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

wsa_macro_adie_lb.exit.if.then_crit_edge:         ; preds = %wsa_macro_adie_lb.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %wsa_macro_adie_lb.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv1, i32 noundef 32, i32 noundef 32) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %wsa_macro_adie_lb.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_enable_interpolator(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.154)
  switch i8 %7, label %if.end8.fold.split [
    i8 0, label %entry.if.end8_crit_edge
    i8 1, label %if.then7
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.end8.fold.split, %if.then7, %entry.if.end8_crit_edge
  %cmp10.i = phi i1 [ true, %entry.if.end8_crit_edge ], [ false, %if.end8.fold.split ], [ false, %if.then7 ]
  %gain_reg.0 = phi i32 [ 1044, %entry.if.end8_crit_edge ], [ 65535, %if.end8.fold.split ], [ 1172, %if.then7 ]
  %reg.0 = phi i16 [ 1024, %entry.if.end8_crit_edge ], [ -1, %if.end8.fold.split ], [ 1152, %if.then7 ]
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %event, label %if.end8.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 8, label %sw.bb34
  ]

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @wsa_macro_enable_prim_interpolator(ptr noundef %add.ptr.i, i16 noundef zeroext %reg.0, i32 noundef 1)
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  %conv12 = zext i8 %7 to i32
  %arrayidx.i = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 1, i32 %conv12
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %sw.bb10.wsa_macro_config_compander.exit_crit_edge, label %if.end.i

sw.bb10.wsa_macro_config_compander.exit_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsa_macro_config_compander.exit

if.end.i:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %comp.tr.i = zext i8 %7 to i16
  %12 = shl nuw nsw i16 %comp.tr.i, 6
  %conv.i = add nuw nsw i16 %12, 1408
  %13 = shl nuw nsw i16 %comp.tr.i, 7
  %conv3.i = add nuw i16 %13, 1028
  %conv6.i = zext i16 %conv.i to i32
  %call7.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv6.i, i32 noundef 1, i32 noundef 1) #8
  %call9.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv6.i, i32 noundef 2, i32 noundef 2) #8
  %call11.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv6.i, i32 noundef 2, i32 noundef 0) #8
  %conv12.i = zext i16 %conv3.i to i32
  %call13.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv12.i, i32 noundef 2, i32 noundef 2) #8
  br label %wsa_macro_config_compander.exit

wsa_macro_config_compander.exit:                  ; preds = %if.end.i, %sw.bb10.wsa_macro_config_compander.exit_crit_edge
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift, align 4
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i118 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i118 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i118, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cond.i = icmp eq i8 %15, 1
  %spec.select.i = zext i1 %cond.i to i32
  %arrayidx.i119 = getelementptr %struct.wsa_macro, ptr %19, i32 0, i32 12, i32 %spec.select.i
  %20 = ptrtoint ptr %arrayidx.i119 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i119, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i120 = icmp eq i32 %21, 0
  br i1 %tobool.not.i120, label %wsa_macro_config_compander.exit.wsa_macro_config_softclip.exit_crit_edge, label %if.end5.i

wsa_macro_config_compander.exit.wsa_macro_config_softclip.exit_crit_edge: ; preds = %wsa_macro_config_compander.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsa_macro_config_softclip.exit

if.end5.i:                                        ; preds = %wsa_macro_config_compander.exit
  %22 = select i1 %cond.i, i16 64, i16 0
  %conv.i121 = or i16 %22, 1540
  %arrayidx.i.i = getelementptr %struct.wsa_macro, ptr %19, i32 0, i32 13, i32 %spec.select.i
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i, label %if.then5.i.i, label %if.end5.i.wsa_macro_enable_softclip_clk.exit.i_crit_edge

if.end5.i.wsa_macro_enable_softclip_clk.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsa_macro_enable_softclip_clk.exit.i

if.then5.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i = shl nuw nsw i32 1, %spec.select.i
  %conv.i.i = or i16 %22, 1536
  %conv6.i.i = zext i16 %conv.i.i to i32
  %call.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv6.i.i, i32 noundef 1, i32 noundef 1) #8
  %call9.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef %shl.i.i, i32 noundef %shl.i.i) #8
  br label %wsa_macro_enable_softclip_clk.exit.i

wsa_macro_enable_softclip_clk.exit.i:             ; preds = %if.then5.i.i, %if.end5.i.wsa_macro_enable_softclip_clk.exit.i_crit_edge
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %26, 1
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  %conv8.i = zext i16 %conv.i121 to i32
  %call9.i122 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv8.i, i32 noundef 1, i32 noundef 1) #8
  br label %wsa_macro_config_softclip.exit

wsa_macro_config_softclip.exit:                   ; preds = %wsa_macro_enable_softclip_clk.exit.i, %wsa_macro_config_compander.exit.wsa_macro_config_softclip.exit_crit_edge
  %spkr_gain_offset = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 10
  %27 = ptrtoint ptr %spkr_gain_offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %spkr_gain_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp17 = icmp eq i32 %28, 0
  br i1 %cmp17, label %land.lhs.true, label %wsa_macro_config_softclip.exit.if.end27_crit_edge

wsa_macro_config_softclip.exit.if.end27_crit_edge: ; preds = %wsa_macro_config_softclip.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %wsa_macro_config_softclip.exit
  %comp_enabled = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %comp_enabled to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %comp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true.if.then22_crit_edge

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx20 = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool21.not = icmp eq i32 %32, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end27_crit_edge, label %lor.lhs.false.if.then22_crit_edge

lor.lhs.false.if.then22_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %lor.lhs.false.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge
  %call23 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1064, i32 noundef 1, i32 noundef 1) #8
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1092, i32 noundef 1, i32 noundef 1) #8
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1192, i32 noundef 1, i32 noundef 1) #8
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1220, i32 noundef 1, i32 noundef 1) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %lor.lhs.false.if.end27_crit_edge, %wsa_macro_config_softclip.exit.if.end27_crit_edge
  %offset_val.0 = phi i32 [ -2, %if.then22 ], [ 0, %lor.lhs.false.if.end27_crit_edge ], [ 0, %wsa_macro_config_softclip.exit.if.end27_crit_edge ]
  %call29 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %gain_reg.0) #8
  %add = add i32 %call29, %offset_val.0
  %call31 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %gain_reg.0, i32 noundef %add) #8
  %spkr_mode.i = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 11
  %33 = ptrtoint ptr %spkr_mode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %spkr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cond.i123 = icmp eq i32 %34, 1
  %comp_enabled.i = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 1
  %35 = ptrtoint ptr %comp_enabled.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %comp_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i124 = icmp ne i32 %36, 0
  %or.cond.i = and i1 %cmp10.i, %tobool.not.i124
  br i1 %or.cond.i, label %land.lhs.true2.i, label %if.end27.sw.epilog_crit_edge

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true2.i:                                 ; preds = %if.end27
  %ear_spkr_gain.i = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 9
  %37 = ptrtoint ptr %ear_spkr_gain.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ear_spkr_gain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp3.not.i = icmp eq i32 %38, 0
  br i1 %cmp3.not.i, label %land.lhs.true2.i.sw.epilog_crit_edge, label %if.then.i

land.lhs.true2.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = select i1 %cond.i123, i32 -13, i32 -16
  %sub.i = add i32 %38, %add.i
  %call15.i = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 1044, i32 noundef %sub.i) #8
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end8
  %conv36 = zext i8 %7 to i32
  %arrayidx.i127 = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 1, i32 %conv36
  %39 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i128 = icmp eq i32 %40, 0
  br i1 %tobool.not.i128, label %sw.bb34.wsa_macro_config_compander.exit133_crit_edge, label %if.end.i132

sw.bb34.wsa_macro_config_compander.exit133_crit_edge: ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsa_macro_config_compander.exit133

if.end.i132:                                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  %comp.tr.i129 = zext i8 %7 to i16
  %41 = shl nuw nsw i16 %comp.tr.i129, 6
  %conv.i130 = add nuw nsw i16 %41, 1408
  %42 = shl nuw nsw i16 %comp.tr.i129, 7
  %conv3.i131 = add nuw i16 %42, 1028
  %conv18.i = zext i16 %conv.i130 to i32
  %call19.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv18.i, i32 noundef 4, i32 noundef 4) #8
  %conv20.i = zext i16 %conv3.i131 to i32
  %call21.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv20.i, i32 noundef 2, i32 noundef 0) #8
  %call23.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv18.i, i32 noundef 2, i32 noundef 2) #8
  %call25.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv18.i, i32 noundef 2, i32 noundef 0) #8
  %call27.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv18.i, i32 noundef 1, i32 noundef 0) #8
  %call29.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv18.i, i32 noundef 4, i32 noundef 0) #8
  br label %wsa_macro_config_compander.exit133

wsa_macro_config_compander.exit133:               ; preds = %if.end.i132, %sw.bb34.wsa_macro_config_compander.exit133_crit_edge
  %43 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %shift, align 4
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i135 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %driver_data.i.i.i135 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cond.i136 = icmp eq i8 %44, 1
  %spec.select.i137 = zext i1 %cond.i136 to i32
  %arrayidx.i138 = getelementptr %struct.wsa_macro, ptr %48, i32 0, i32 12, i32 %spec.select.i137
  %49 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i139 = icmp eq i32 %50, 0
  br i1 %tobool.not.i139, label %wsa_macro_config_compander.exit133.wsa_macro_config_softclip.exit143_crit_edge, label %if.end5.i141

wsa_macro_config_compander.exit133.wsa_macro_config_softclip.exit143_crit_edge: ; preds = %wsa_macro_config_compander.exit133
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsa_macro_config_softclip.exit143

if.end5.i141:                                     ; preds = %wsa_macro_config_compander.exit133
  %51 = select i1 %cond.i136, i16 64, i16 0
  %conv.i140 = or i16 %51, 1540
  %conv14.i = zext i16 %conv.i140 to i32
  %call15.i142 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv14.i, i32 noundef 1, i32 noundef 0) #8
  %arrayidx.i4.i = getelementptr %struct.wsa_macro, ptr %48, i32 0, i32 13, i32 %spec.select.i137
  %52 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i4.i, align 4
  %dec.i.i = add i32 %53, -1
  store i32 %dec.i.i, ptr %arrayidx.i4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp16.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp16.i.i, label %if.then18.i.i, label %if.end5.i141.wsa_macro_config_softclip.exit143_crit_edge

if.end5.i141.wsa_macro_config_softclip.exit143_crit_edge: ; preds = %if.end5.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsa_macro_config_softclip.exit143

if.then18.i.i:                                    ; preds = %if.end5.i141
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i3.i = shl nuw nsw i32 1, %spec.select.i137
  %conv.i2.i = or i16 %51, 1536
  %conv19.i.i = zext i16 %conv.i2.i to i32
  %call20.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %conv19.i.i, i32 noundef 1, i32 noundef 0) #8
  %call22.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 280, i32 noundef %shl.i3.i, i32 noundef 0) #8
  br label %wsa_macro_config_softclip.exit143

wsa_macro_config_softclip.exit143:                ; preds = %if.then18.i.i, %if.end5.i141.wsa_macro_config_softclip.exit143_crit_edge, %wsa_macro_config_compander.exit133.wsa_macro_config_softclip.exit143_crit_edge
  tail call fastcc void @wsa_macro_enable_prim_interpolator(ptr noundef %add.ptr.i, i16 noundef zeroext %reg.0, i32 noundef 8)
  %spkr_gain_offset42 = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 10
  %54 = ptrtoint ptr %spkr_gain_offset42 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %spkr_gain_offset42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp43 = icmp eq i32 %55, 0
  br i1 %cmp43, label %land.lhs.true45, label %wsa_macro_config_softclip.exit143.if.end63_crit_edge

wsa_macro_config_softclip.exit143.if.end63_crit_edge: ; preds = %wsa_macro_config_softclip.exit143
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

land.lhs.true45:                                  ; preds = %wsa_macro_config_softclip.exit143
  %comp_enabled46 = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 1
  %56 = ptrtoint ptr %comp_enabled46 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %comp_enabled46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool48.not = icmp eq i32 %57, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %land.lhs.true45.if.then53_crit_edge

land.lhs.true45.if.then53_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

lor.lhs.false49:                                  ; preds = %land.lhs.true45
  %arrayidx51 = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool52.not = icmp eq i32 %59, 0
  br i1 %tobool52.not, label %lor.lhs.false49.if.end63_crit_edge, label %lor.lhs.false49.if.then53_crit_edge

lor.lhs.false49.if.then53_crit_edge:              ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53

lor.lhs.false49.if.end63_crit_edge:               ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then53:                                        ; preds = %lor.lhs.false49.if.then53_crit_edge, %land.lhs.true45.if.then53_crit_edge
  %call54 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1064, i32 noundef 1, i32 noundef 0) #8
  %call55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1092, i32 noundef 1, i32 noundef 0) #8
  %call56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1192, i32 noundef 1, i32 noundef 0) #8
  %call57 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1220, i32 noundef 1, i32 noundef 0) #8
  %call59 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %gain_reg.0) #8
  %add60 = add i32 %call59, 2
  %call62 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef %gain_reg.0, i32 noundef %add60) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then53, %lor.lhs.false49.if.end63_crit_edge, %wsa_macro_config_softclip.exit143.if.end63_crit_edge
  %comp_enabled6.i = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 1
  %60 = ptrtoint ptr %comp_enabled6.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %comp_enabled6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool8.not.i = icmp ne i32 %61, 0
  %or.cond1.i = and i1 %cmp10.i, %tobool8.not.i
  br i1 %or.cond1.i, label %land.lhs.true11.i, label %if.end63.sw.epilog_crit_edge

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true11.i:                                ; preds = %if.end63
  %ear_spkr_gain12.i = getelementptr inbounds %struct.wsa_macro, ptr %5, i32 0, i32 9
  %62 = ptrtoint ptr %ear_spkr_gain12.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ear_spkr_gain12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp13.not.i = icmp eq i32 %63, 0
  br i1 %cmp13.not.i, label %land.lhs.true11.i.sw.epilog_crit_edge, label %sw.epilog17.sink.split.i

land.lhs.true11.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog17.sink.split.i:                         ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i146 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 1044, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog17.sink.split.i, %land.lhs.true11.i.sw.epilog_crit_edge, %if.end63.sw.epilog_crit_edge, %if.then.i, %land.lhs.true2.i.sw.epilog_crit_edge, %if.end27.sw.epilog_crit_edge, %sw.bb, %if.end8.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_spk_boost_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(18) @.str.84) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(18) @.str.85) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  %boost_path_ctl.0 = phi i32 [ 65535, %if.else.if.end6_crit_edge ], [ 1344, %if.then5 ], [ 1280, %entry.if.end6_crit_edge ]
  %boost_path_cfg1.0 = phi i32 [ 65535, %if.else.if.end6_crit_edge ], [ 1160, %if.then5 ], [ 1032, %entry.if.end6_crit_edge ]
  %reg.0 = phi i32 [ 65535, %if.else.if.end6_crit_edge ], [ 1152, %if.then5 ], [ 1024, %entry.if.end6_crit_edge ]
  %reg_mix.0 = phi i32 [ 65535, %if.else.if.end6_crit_edge ], [ 1176, %if.then5 ], [ 1048, %entry.if.end6_crit_edge ]
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %event, label %if.end6.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
    i32 8, label %sw.bb20
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %boost_path_cfg1.0, i32 noundef 1, i32 noundef 1) #8
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %boost_path_ctl.0, i32 noundef 16, i32 noundef 16) #8
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef %reg_mix.0) #8
  %and = and i32 %call11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %sw.bb.sw.epilog_crit_edge, label %if.then13

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %reg_mix.0, i32 noundef 16, i32 noundef 0) #8
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %reg.0, i32 noundef 16, i32 noundef 0) #8
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %boost_path_ctl.0, i32 noundef 16, i32 noundef 0) #8
  %call24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef %boost_path_cfg1.0, i32 noundef 1, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb17, %if.then13, %sw.bb.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_mclk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
entry:
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp = icmp eq i32 %event, 1
  tail call fastcc void @wsa_macro_mclk_enable(ptr noundef %5, i1 noundef zeroext %cmp)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_vi_feed_mixer_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #8
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %shift3 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 9
  %11 = ptrtoint ptr %shift3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %shift3, align 4
  %conv = zext i8 %12 to i32
  %arrayidx = getelementptr %struct.wsa_macro, ptr %8, i32 0, i32 6, i32 %conv
  %div3.i = lshr i32 %10, 5
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %div3.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %10, 31
  %15 = lshr i32 %14, %and.i
  %16 = and i32 %15, 1
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_vi_feed_mixer_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #8
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 8
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %12, label %if.then.if.end48_crit_edge [
    i32 0, label %land.lhs.true
    i32 1, label %land.lhs.true11
  ]

if.then.if.end48_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true:                                    ; preds = %if.then
  %arrayidx3 = getelementptr %struct.wsa_macro, ptr %8, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %arrayidx3, align 4
  %and1.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.if.end48_crit_edge

land.lhs.true.if.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %arrayidx3) #8
  br label %if.end48.sink.split

land.lhs.true11:                                  ; preds = %if.then
  %arrayidx13 = getelementptr %struct.wsa_macro, ptr %8, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx13, align 4
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool15.not = icmp eq i32 %18, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true11.if.end48_crit_edge

land.lhs.true11.if.end48_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 1, ptr noundef %arrayidx13) #8
  br label %if.end48.sink.split

if.else:                                          ; preds = %entry
  %19 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %12, label %if.else.if.end48_crit_edge [
    i32 0, label %land.lhs.true24
    i32 1, label %land.lhs.true36
  ]

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

land.lhs.true24:                                  ; preds = %if.else
  %arrayidx26 = getelementptr %struct.wsa_macro, ptr %8, i32 0, i32 6, i32 3
  %20 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx26, align 4
  %and1.i70 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i70)
  %tobool28.not = icmp eq i32 %and1.i70, 0
  br i1 %tobool28.not, label %land.lhs.true24.if.end48_crit_edge, label %if.then29

land.lhs.true24.if.end48_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then29:                                        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %arrayidx26) #8
  br label %if.end48.sink.split

land.lhs.true36:                                  ; preds = %if.else
  %arrayidx38 = getelementptr %struct.wsa_macro, ptr %8, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx38, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool40.not = icmp eq i32 %24, 0
  br i1 %tobool40.not, label %land.lhs.true36.if.end48_crit_edge, label %if.then41

land.lhs.true36.if.end48_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then41:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %arrayidx38) #8
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.then41, %if.then29, %if.then16, %if.then6
  %.sink73 = phi i32 [ -1, %if.then29 ], [ 1, %if.then6 ], [ -1, %if.then41 ], [ 1, %if.then16 ]
  %arrayidx20 = getelementptr %struct.wsa_macro, ptr %8, i32 0, i32 7, i32 3
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20, align 4
  %dec = add i32 %26, %.sink73
  store i32 %dec, ptr %arrayidx20, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %land.lhs.true36.if.end48_crit_edge, %land.lhs.true24.if.end48_crit_edge, %if.else.if.end48_crit_edge, %land.lhs.true11.if.end48_crit_edge, %land.lhs.true.if.end48_crit_edge, %if.then.if.end48_crit_edge
  %27 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dapm, align 4
  %call50 = tail call i32 @snd_soc_dapm_mixer_update_power(ptr noundef %28, ptr noundef %kcontrol, i32 noundef %10, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_widget(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mixer_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_rx_mux_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #8
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
  %arrayidx = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 8, i32 %idxprom
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
define internal i32 @wsa_macro_rx_mux_put(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_widget(ptr noundef %kcontrol) #8
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
  %arrayidx4 = getelementptr %struct.wsa_macro, ptr %10, i32 0, i32 8, i32 %idxprom
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
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111) #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp6 = icmp ugt i32 %14, 3
  br i1 %cmp6, label %do.end10, label %if.end13.thread

if.end13.thread:                                  ; preds = %if.end
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx4, align 4
  %arrayidx19 = getelementptr %struct.wsa_macro, ptr %10, i32 0, i32 7, i32 %14
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool20.not = icmp eq i32 %17, 0
  br i1 %tobool20.not, label %if.end13.thread.sw.epilog_crit_edge, label %if.then21

if.end13.thread.sw.epilog_crit_edge:              ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111) #11
  br label %cleanup

if.end13:                                         ; preds = %entry
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %6, ptr %arrayidx4, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb26, label %do.end33

if.then21:                                        ; preds = %if.end13.thread
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %shift, align 4
  %conv70 = zext i8 %20 to i32
  %arrayidx22 = getelementptr %struct.wsa_macro, ptr %10, i32 0, i32 6, i32 %14
  tail call void @_clear_bit(i32 noundef %conv70, ptr noundef %arrayidx22) #8
  br label %sw.epilog.sink.split

sw.bb26:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %shift, align 4
  %conv = zext i8 %22 to i32
  %arrayidx28 = getelementptr %struct.wsa_macro, ptr %10, i32 0, i32 6, i32 %6
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %arrayidx28) #8
  %arrayidx30 = getelementptr %struct.wsa_macro, ptr %10, i32 0, i32 7, i32 %6
  br label %sw.epilog.sink.split

do.end33:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.111, i32 noundef %6) #11
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %sw.bb26, %if.then21
  %arrayidx19.sink73 = phi ptr [ %arrayidx19, %if.then21 ], [ %arrayidx30, %sw.bb26 ]
  %.sink72 = phi i32 [ -1, %if.then21 ], [ 1, %sw.bb26 ]
  %25 = ptrtoint ptr %arrayidx19.sink73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx19.sink73, align 4
  %dec = add i32 %26, %.sink72
  store i32 %dec, ptr %arrayidx19.sink73, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end13.thread.sw.epilog_crit_edge
  %27 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dapm, align 4
  %call36 = tail call i32 @snd_soc_dapm_mux_update_power(ptr noundef %28, ptr noundef %kcontrol, i32 noundef %6, ptr noundef %4, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end33, %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end33 ], [ 0, %sw.epilog ], [ 0, %do.end ], [ 0, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_mux_update_power(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wsa_macro_enable_prim_interpolator(ptr noundef %component, i16 noundef zeroext %reg, i32 noundef %event) unnamed_addr #0 align 64 {
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
  %4 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.159)
  switch i16 %reg, label %entry.wsa_macro_interp_get_primary_reg.exit_crit_edge [
    i16 1024, label %entry.sw.epilog.sink.split.i_crit_edge
    i16 1048, label %entry.sw.epilog.sink.split.i_crit_edge10
    i16 1152, label %entry.sw.bb1.i_crit_edge
    i16 1176, label %entry.sw.bb1.i_crit_edge11
  ]

entry.sw.bb1.i_crit_edge11:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

entry.sw.epilog.sink.split.i_crit_edge10:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

entry.wsa_macro_interp_get_primary_reg.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %wsa_macro_interp_get_primary_reg.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge11
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %entry.sw.epilog.sink.split.i_crit_edge, %entry.sw.epilog.sink.split.i_crit_edge10
  %.sink.i = phi i16 [ 1, %sw.bb1.i ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge10 ]
  %prim_int_reg.0.ph.i = phi i32 [ 1152, %sw.bb1.i ], [ 1024, %entry.sw.epilog.sink.split.i_crit_edge ], [ 1024, %entry.sw.epilog.sink.split.i_crit_edge10 ]
  br label %wsa_macro_interp_get_primary_reg.exit

wsa_macro_interp_get_primary_reg.exit:            ; preds = %sw.epilog.sink.split.i, %entry.wsa_macro_interp_get_primary_reg.exit_crit_edge
  %ind.0 = phi i16 [ 0, %entry.wsa_macro_interp_get_primary_reg.exit_crit_edge ], [ %.sink.i, %sw.epilog.sink.split.i ]
  %prim_int_reg.0.i = phi i32 [ 0, %entry.wsa_macro_interp_get_primary_reg.exit_crit_edge ], [ %prim_int_reg.0.ph.i, %sw.epilog.sink.split.i ]
  %conv = trunc i32 %prim_int_reg.0.i to i16
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %event, label %wsa_macro_interp_get_primary_reg.exit.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb24
  ]

wsa_macro_interp_get_primary_reg.exit.sw.epilog_crit_edge: ; preds = %wsa_macro_interp_get_primary_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %wsa_macro_interp_get_primary_reg.exit
  %idxprom = zext i16 %ind.0 to i32
  %arrayidx = getelementptr %struct.wsa_macro, ptr %3, i32 0, i32 3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %inc = add i16 %7, 1
  store i16 %inc, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp eq i16 %7, 0
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw nsw i32 %prim_int_reg.0.i, 16
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %add, i32 noundef 3, i32 noundef 3) #8
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %prim_int_reg.0.i, i32 noundef 16, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %conv)
  %cmp.i = icmp eq i16 %conv, 1024
  %spec.select.i = select i1 %cmp.i, i32 1072, i32 65535
  %spec.select42.i = select i1 %cmp.i, i32 1028, i32 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 1152, i16 %conv)
  %cmp3.i = icmp eq i16 %conv, 1152
  %hd2_scale_reg.1.i = select i1 %cmp3.i, i32 1200, i32 %spec.select.i
  %hd2_enable_reg.1.i = select i1 %cmp3.i, i32 1156, i32 %spec.select42.i
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_scale_reg.1.i, i32 noundef 60, i32 noundef 16) #8
  %call12.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_scale_reg.1.i, i32 noundef 3, i32 noundef 1) #8
  %call14.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_enable_reg.1.i, i32 noundef 4, i32 noundef 4) #8
  %add12 = add nuw nsw i32 %prim_int_reg.0.i, 76
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %add12, i32 noundef 1, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %conv14 = zext i16 %reg to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %prim_int_reg.0.i, i32 %conv14)
  %cmp16.not = icmp eq i32 %prim_int_reg.0.i, %conv14
  br i1 %cmp16.not, label %if.end.sw.epilog_crit_edge, label %land.lhs.true

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true:                                    ; preds = %if.end
  %call19 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %prim_int_reg.0.i) #8
  %and = and i32 %call19, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then20

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %conv14, i32 noundef 16, i32 noundef 16) #8
  br label %sw.epilog

sw.bb24:                                          ; preds = %wsa_macro_interp_get_primary_reg.exit
  %idxprom26 = zext i16 %ind.0 to i32
  %arrayidx27 = getelementptr %struct.wsa_macro, ptr %3, i32 0, i32 3, i32 %idxprom26
  %8 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx27, align 2
  %dec = add i16 %9, -1
  store i16 %dec, ptr %arrayidx27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp32 = icmp eq i16 %dec, 0
  br i1 %cmp32, label %if.then34, label %sw.bb24.sw.epilog_crit_edge

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then34:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  %add36 = add nuw nsw i32 %prim_int_reg.0.i, 76
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %add36, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %conv)
  %cmp.i1 = icmp eq i16 %conv, 1024
  %spec.select.i2 = select i1 %cmp.i1, i32 1072, i32 65535
  %spec.select42.i3 = select i1 %cmp.i1, i32 1028, i32 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 1152, i16 %conv)
  %cmp3.i4 = icmp eq i16 %conv, 1152
  %hd2_scale_reg.1.i5 = select i1 %cmp3.i4, i32 1200, i32 %spec.select.i2
  %hd2_enable_reg.1.i6 = select i1 %cmp3.i4, i32 1156, i32 %spec.select42.i3
  %call23.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_enable_reg.1.i6, i32 noundef 4, i32 noundef 0) #8
  %call25.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_scale_reg.1.i5, i32 noundef 3, i32 noundef 0) #8
  %call27.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %hd2_scale_reg.1.i5, i32 noundef 60, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then34, %sw.bb24.sw.epilog_crit_edge, %if.then20, %land.lhs.true.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %wsa_macro_interp_get_primary_reg.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_get_channel_map(ptr nocapture noundef readonly %dai, ptr nocapture noundef writeonly %tx_num, ptr nocapture noundef writeonly %tx_slot, ptr nocapture noundef writeonly %rx_num, ptr nocapture noundef writeonly %rx_slot) #0 align 64 {
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %7, label %do.end [
    i32 3, label %sw.bb
    i32 1, label %entry.sw.bb5_crit_edge
    i32 2, label %entry.sw.bb5_crit_edge90
    i32 4, label %sw.bb31
  ]

entry.sw.bb5_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %tx_slot to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_slot, align 4
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %arrayidx4 = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 7, i32 %13
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4, align 4
  %16 = ptrtoint ptr %tx_num to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx_num, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge90
  %arrayidx8 = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 6, i32 %7
  %call9 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx8, i32 noundef 4, i32 noundef 0) #8
  %conv1081 = and i32 %call9, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv1081)
  %cmp82 = icmp ult i32 %conv1081, 4
  br i1 %cmp82, label %for.body.preheader, label %sw.bb5.for.end_crit_edge

sw.bb5.for.end_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %sw.bb5
  %shl = shl nuw nsw i32 1, %conv1081
  %17 = trunc i32 %shl to i16
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %arrayidx20 = getelementptr %struct.wsa_macro, ptr %5, i32 0, i32 6, i32 %19
  %add = add nuw nsw i32 %conv1081, 1
  %call22 = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx20, i32 noundef 4, i32 noundef %add) #8
  %conv10 = and i32 %call22, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv10)
  %cmp = icmp ult i32 %conv10, 4
  br i1 %cmp, label %for.body.1, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %shl.1 = shl nuw nsw i32 1, %conv10
  %conv14.189 = or i32 %shl, %shl.1
  %conv14.1 = trunc i32 %conv14.189 to i16
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.preheader.for.end_crit_edge, %sw.bb5.for.end_crit_edge
  %mask.1 = phi i16 [ 0, %sw.bb5.for.end_crit_edge ], [ %17, %for.body.preheader.for.end_crit_edge ], [ %conv14.1, %for.body.1 ]
  %cnt.1 = phi i32 [ 0, %sw.bb5.for.end_crit_edge ], [ 1, %for.body.preheader.for.end_crit_edge ], [ 2, %for.body.1 ]
  %20 = and i16 %mask.1, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not = icmp eq i16 %20, 0
  %21 = lshr i16 %mask.1, 2
  %spec.select = select i1 %tobool.not, i16 %mask.1, i16 %21
  %conv29 = zext i16 %spec.select to i32
  %22 = ptrtoint ptr %rx_slot to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv29, ptr %rx_slot, align 4
  %23 = ptrtoint ptr %rx_num to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cnt.1, ptr %rx_num, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 272) #8
  %and35 = and i32 %call32, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.select79 = select i1 %tobool36.not, i32 0, i32 2
  %not.tobool36.not = xor i1 %tobool36.not, true
  %spec.select80 = zext i1 %not.tobool36.not to i32
  %and44 = and i32 %call32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %inc50 = select i1 %tobool36.not, i32 1, i32 2
  %not.tobool45.not = xor i1 %tobool45.not, true
  %24 = zext i1 %not.tobool45.not to i32
  %mask.4 = or i32 %spec.select79, %24
  %cnt.3 = select i1 %tobool45.not, i32 %spec.select80, i32 %inc50
  %25 = ptrtoint ptr %tx_slot to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mask.4, ptr %tx_slot, align 4
  %26 = ptrtoint ptr %tx_num to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cnt.3, ptr %tx_num, align 4
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb31, %for.end, %sw.bb
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wsa_macro_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %2 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond = icmp eq i32 %3, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %5)
  %cmp2.i = icmp eq i32 %5, 48000
  br i1 %cmp2.i, label %sw.bb.for.end.i_crit_edge, label %for.inc.i

sw.bb.for.end.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %sw.bb
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %5, label %for.inc.i.do.end_crit_edge [
    i32 96000, label %for.inc.i.for.end.i_crit_edge
    i32 192000, label %for.end.fold.split.i
    i32 8000, label %for.inc.i.if.end34.i_crit_edge
    i32 16000, label %for.inc.i.for.end27.fold.split.i_crit_edge
    i32 44100, label %for.inc.i.for.end27.fold.split103.i_crit_edge
    i32 32000, label %for.inc.i.for.end27.fold.split100.i_crit_edge
    i32 384000, label %for.inc.i.for.end27.fold.split102.i_crit_edge
  ]

for.inc.i.for.end27.fold.split102.i_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.fold.split102.i

for.inc.i.for.end27.fold.split100.i_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.fold.split100.i

for.inc.i.for.end27.fold.split103.i_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.fold.split103.i

for.inc.i.for.end27.fold.split.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.fold.split.i

for.inc.i.if.end34.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end.fold.split.i:                             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split.i, %for.inc.i.for.end.i_crit_edge, %sw.bb.for.end.i_crit_edge
  %i.072.lcssa.i = phi i32 [ 0, %sw.bb.for.end.i_crit_edge ], [ 1, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.end.fold.split.i ]
  %rate_val4.i = getelementptr [3 x %struct.interp_sample_rate], ptr @int_mix_sample_rate_val, i32 0, i32 %i.072.lcssa.i, i32 1
  %7 = ptrtoint ptr %rate_val4.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rate_val4.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %id.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %13 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i.i, align 4
  %arrayidx.i.i8 = getelementptr %struct.wsa_macro, ptr %12, i32 0, i32 6, i32 %14
  %call2.i.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx.i.i8, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2.i.i)
  %cmp4.i.i = icmp ult i32 %call2.i.i, 4
  br i1 %cmp4.i.i, label %for.cond10.preheader.lr.ph.i.i, label %for.end.i.for.inc25.3.i_crit_edge

for.end.i.for.inc25.3.i_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc25.3.i

for.cond10.preheader.lr.ph.i.i:                   ; preds = %for.end.i
  %conv25.i.i = and i32 %8, 255
  br label %for.cond10.preheader.i.i

for.cond10.preheader.i.i:                         ; preds = %if.end27.1.i.i.for.cond10.preheader.i.i_crit_edge, %for.cond10.preheader.lr.ph.i.i
  %port.05.i.i = phi i32 [ %call2.i.i, %for.cond10.preheader.lr.ph.i.i ], [ %call36.i.i, %if.end27.1.i.i.for.cond10.preheader.i.i_crit_edge ]
  %add.i.i = add nuw nsw i32 %port.05.i.i, 1
  %call15.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 260, i32 noundef 7) #8
  %conv17.i.i = and i32 %call15.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17.i.i, i32 %add.i.i)
  %cmp19.i.i = icmp eq i32 %conv17.i.i, %add.i.i
  br i1 %cmp19.i.i, label %if.then21.i.i, label %for.cond10.preheader.i.i.if.end27.i.i_crit_edge

for.cond10.preheader.i.i.if.end27.i.i_crit_edge:  ; preds = %for.cond10.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i

if.then21.i.i:                                    ; preds = %for.cond10.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1048, i32 noundef 15, i32 noundef %conv25.i.i) #8
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then21.i.i, %for.cond10.preheader.i.i.if.end27.i.i_crit_edge
  %call15.1.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %1, i32 noundef 268, i32 noundef 7) #8
  %conv17.1.i.i = and i32 %call15.1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv17.1.i.i, i32 %add.i.i)
  %cmp19.1.i.i = icmp eq i32 %conv17.1.i.i, %add.i.i
  br i1 %cmp19.1.i.i, label %if.then21.1.i.i, label %if.end27.i.i.if.end27.1.i.i_crit_edge

if.end27.i.i.if.end27.1.i.i_crit_edge:            ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.1.i.i

if.then21.1.i.i:                                  ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call26.1.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1176, i32 noundef 15, i32 noundef %conv25.i.i) #8
  br label %if.end27.1.i.i

if.end27.1.i.i:                                   ; preds = %if.then21.1.i.i, %if.end27.i.i.if.end27.1.i.i_crit_edge
  %15 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i.i, align 4
  %arrayidx34.i.i = getelementptr %struct.wsa_macro, ptr %12, i32 0, i32 6, i32 %16
  %call36.i.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx34.i.i, i32 noundef 4, i32 noundef %add.i.i) #8
  %cmp.i.i = icmp ult i32 %call36.i.i, 4
  br i1 %cmp.i.i, label %if.end27.1.i.i.for.cond10.preheader.i.i_crit_edge, label %prim_rate.i

if.end27.1.i.i.for.cond10.preheader.i.i_crit_edge: ; preds = %if.end27.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader.i.i

prim_rate.i:                                      ; preds = %if.end27.1.i.i
  %17 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %5, label %prim_rate.i.for.inc25.3.i_crit_edge [
    i32 8000, label %prim_rate.i.if.end34.i_crit_edge
    i32 16000, label %prim_rate.i.for.end27.fold.split.i_crit_edge
    i32 24000, label %prim_rate.i.do.end_crit_edge
    i32 32000, label %prim_rate.i.for.end27.fold.split100.i_crit_edge
  ]

prim_rate.i.for.end27.fold.split100.i_crit_edge:  ; preds = %prim_rate.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.fold.split100.i

prim_rate.i.do.end_crit_edge:                     ; preds = %prim_rate.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

prim_rate.i.for.end27.fold.split.i_crit_edge:     ; preds = %prim_rate.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.fold.split.i

prim_rate.i.if.end34.i_crit_edge:                 ; preds = %prim_rate.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

prim_rate.i.for.inc25.3.i_crit_edge:              ; preds = %prim_rate.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc25.3.i

for.inc25.3.i:                                    ; preds = %prim_rate.i.for.inc25.3.i_crit_edge, %for.end.i.for.inc25.3.i_crit_edge
  br i1 %cmp2.i, label %for.inc25.3.i.if.end34.i_crit_edge, label %for.inc25.4.i

for.inc25.3.i.if.end34.i_crit_edge:               ; preds = %for.inc25.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

for.inc25.4.i:                                    ; preds = %for.inc25.3.i
  %18 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %5, label %for.inc25.4.i.do.end_crit_edge [
    i32 96000, label %for.end27.fold.split104.i
    i32 192000, label %for.inc25.4.i.if.end34.i_crit_edge
    i32 384000, label %for.inc25.4.i.for.end27.fold.split102.i_crit_edge
    i32 44100, label %for.inc25.4.i.for.end27.fold.split103.i_crit_edge
  ]

for.inc25.4.i.for.end27.fold.split103.i_crit_edge: ; preds = %for.inc25.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.fold.split103.i

for.inc25.4.i.for.end27.fold.split102.i_crit_edge: ; preds = %for.inc25.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27.fold.split102.i

for.inc25.4.i.if.end34.i_crit_edge:               ; preds = %for.inc25.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

for.inc25.4.i.do.end_crit_edge:                   ; preds = %for.inc25.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end27.fold.split.i:                           ; preds = %prim_rate.i.for.end27.fold.split.i_crit_edge, %for.inc.i.for.end27.fold.split.i_crit_edge
  br label %if.end34.i

for.end27.fold.split100.i:                        ; preds = %prim_rate.i.for.end27.fold.split100.i_crit_edge, %for.inc.i.for.end27.fold.split100.i_crit_edge
  br label %if.end34.i

for.end27.fold.split102.i:                        ; preds = %for.inc25.4.i.for.end27.fold.split102.i_crit_edge, %for.inc.i.for.end27.fold.split102.i_crit_edge
  br label %if.end34.i

for.end27.fold.split103.i:                        ; preds = %for.inc25.4.i.for.end27.fold.split103.i_crit_edge, %for.inc.i.for.end27.fold.split103.i_crit_edge
  br label %if.end34.i

for.end27.fold.split104.i:                        ; preds = %for.inc25.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %for.end27.fold.split104.i, %for.end27.fold.split103.i, %for.end27.fold.split102.i, %for.end27.fold.split100.i, %for.end27.fold.split.i, %for.inc25.4.i.if.end34.i_crit_edge, %for.inc25.3.i.if.end34.i_crit_edge, %prim_rate.i.if.end34.i_crit_edge, %for.inc.i.if.end34.i_crit_edge
  %i.173.lcssa.i.ph = phi i32 [ 4, %for.inc25.3.i.if.end34.i_crit_edge ], [ 1, %for.end27.fold.split.i ], [ 3, %for.end27.fold.split100.i ], [ 0, %prim_rate.i.if.end34.i_crit_edge ], [ 7, %for.end27.fold.split102.i ], [ 8, %for.end27.fold.split103.i ], [ 5, %for.end27.fold.split104.i ], [ 0, %for.inc.i.if.end34.i_crit_edge ], [ 6, %for.inc25.4.i.if.end34.i_crit_edge ]
  %rate_val23.i12 = getelementptr [9 x %struct.interp_sample_rate], ptr @int_prim_sample_rate_val, i32 0, i32 %i.173.lcssa.i.ph, i32 1
  %19 = ptrtoint ptr %rate_val23.i12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rate_val23.i12, align 4
  %21 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %component1, align 4
  %dev.i.i59.i = getelementptr inbounds %struct.snd_soc_component, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %dev.i.i59.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i59.i, align 4
  %driver_data.i.i.i60.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %driver_data.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i.i.i60.i, align 4
  %id.i61.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %27 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i61.i, align 4
  %arrayidx.i62.i = getelementptr %struct.wsa_macro, ptr %26, i32 0, i32 6, i32 %28
  %call2.i63.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx.i62.i, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call2.i63.i)
  %cmp5.i.i = icmp ult i32 %call2.i63.i, 4
  br i1 %cmp5.i.i, label %for.cond10.preheader.lr.ph.i64.i, label %if.end34.i.cleanup_crit_edge

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond10.preheader.lr.ph.i64.i:                 ; preds = %if.end34.i
  %conv46.i.i = and i32 %20, 255
  br label %for.cond10.preheader.i66.i

for.cond10.preheader.i66.i:                       ; preds = %if.end48.1.i.i.for.cond10.preheader.i66.i_crit_edge, %for.cond10.preheader.lr.ph.i64.i
  %port.06.i.i = phi i32 [ %call2.i63.i, %for.cond10.preheader.lr.ph.i64.i ], [ %call57.i.i, %if.end48.1.i.i.for.cond10.preheader.i66.i_crit_edge ]
  %add27.i.i = add nuw nsw i32 %port.06.i.i, 1
  %call17.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %22, i32 noundef 256, i32 noundef 7) #8
  %call20.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %22, i32 noundef 256, i32 noundef 56) #8
  %call23.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %22, i32 noundef 260, i32 noundef 56) #8
  %conv25.i65.i = and i32 %call17.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25.i65.i, i32 %add27.i.i)
  %cmp28.i.i = icmp eq i32 %conv25.i65.i, %add27.i.i
  %conv31.i.i = and i32 %call20.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31.i.i, i32 %add27.i.i)
  %cmp34.i.i = icmp eq i32 %conv31.i.i, %add27.i.i
  %or.cond.i.i = select i1 %cmp28.i.i, i1 true, i1 %cmp34.i.i
  %conv37.i.i = and i32 %call23.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv37.i.i, i32 %add27.i.i)
  %cmp40.i.i = icmp eq i32 %conv37.i.i, %add27.i.i
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp40.i.i
  br i1 %or.cond1.i.i, label %if.then42.i.i, label %for.cond10.preheader.i66.i.if.end48.i.i_crit_edge

for.cond10.preheader.i66.i.if.end48.i.i_crit_edge: ; preds = %for.cond10.preheader.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

if.then42.i.i:                                    ; preds = %for.cond10.preheader.i66.i
  call void @__sanitizer_cov_trace_pc() #10
  %call47.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %22, i32 noundef 1024, i32 noundef 15, i32 noundef %conv46.i.i) #8
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then42.i.i, %for.cond10.preheader.i66.i.if.end48.i.i_crit_edge
  %call17.1.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %22, i32 noundef 264, i32 noundef 7) #8
  %call20.1.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %22, i32 noundef 264, i32 noundef 56) #8
  %call23.1.i.i = tail call i32 @snd_soc_component_read_field(ptr noundef %22, i32 noundef 268, i32 noundef 56) #8
  %conv25.1.i.i = and i32 %call17.1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25.1.i.i, i32 %add27.i.i)
  %cmp28.1.i.i = icmp eq i32 %conv25.1.i.i, %add27.i.i
  %conv31.1.i.i = and i32 %call20.1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv31.1.i.i, i32 %add27.i.i)
  %cmp34.1.i.i = icmp eq i32 %conv31.1.i.i, %add27.i.i
  %or.cond.1.i.i = select i1 %cmp28.1.i.i, i1 true, i1 %cmp34.1.i.i
  %conv37.1.i.i = and i32 %call23.1.i.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv37.1.i.i, i32 %add27.i.i)
  %cmp40.1.i.i = icmp eq i32 %conv37.1.i.i, %add27.i.i
  %or.cond1.1.i.i = select i1 %or.cond.1.i.i, i1 true, i1 %cmp40.1.i.i
  br i1 %or.cond1.1.i.i, label %if.then42.1.i.i, label %if.end48.i.i.if.end48.1.i.i_crit_edge

if.end48.i.i.if.end48.1.i.i_crit_edge:            ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.1.i.i

if.then42.1.i.i:                                  ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call47.1.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %22, i32 noundef 1152, i32 noundef 15, i32 noundef %conv46.i.i) #8
  br label %if.end48.1.i.i

if.end48.1.i.i:                                   ; preds = %if.then42.1.i.i, %if.end48.i.i.if.end48.1.i.i_crit_edge
  %29 = ptrtoint ptr %id.i61.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i61.i, align 4
  %arrayidx55.i.i = getelementptr %struct.wsa_macro, ptr %26, i32 0, i32 6, i32 %30
  %call57.i.i = tail call i32 @_find_next_bit_be(ptr noundef %arrayidx55.i.i, i32 noundef 4, i32 noundef %add27.i.i) #8
  %cmp.i67.i = icmp ult i32 %call57.i.i, 4
  br i1 %cmp.i67.i, label %if.end48.1.i.i.for.cond10.preheader.i66.i_crit_edge, label %if.end48.1.i.i.cleanup_crit_edge

if.end48.1.i.i.cleanup_crit_edge:                 ; preds = %if.end48.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end48.1.i.i.for.cond10.preheader.i66.i_crit_edge: ; preds = %if.end48.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader.i66.i

do.end:                                           ; preds = %for.inc25.4.i.do.end_crit_edge, %prim_rate.i.do.end_crit_edge, %for.inc.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143, i32 noundef %34) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end48.1.i.i.cleanup_crit_edge, %if.end34.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end34.i.cleanup_crit_edge ], [ 0, %if.end48.1.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 200)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 200)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !201, !202, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !345, !346, !347, !349, !350, !351, !352, !354, !356, !357, !358, !359, !361, !363, !364, !365}
!llvm.module.flags = !{!367, !368, !369, !370, !371, !372, !373, !374}
!llvm.ident = !{!375}

!0 = !{ptr @__ksymtab_wsa_macro_set_spkr_mode, !1, !"__ksymtab_wsa_macro_set_spkr_mode", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 836, i32 1}
!2 = !{ptr @__initcall__kmod_snd_soc_lpass_wsa_macro__238_2463_wsa_macro_driver_init6, !3, !"__initcall__kmod_snd_soc_lpass_wsa_macro__238_2463_wsa_macro_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2463, i32 1}
!4 = !{ptr @__exitcall_wsa_macro_driver_exit, !3, !"__exitcall_wsa_macro_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2464, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2465, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2456, i32 11}
!12 = !{ptr @wsa_macro_driver, !13, !"wsa_macro_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2454, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2391, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2392, i32 20}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2393, i32 20}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2394, i32 20}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2395, i32 20}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2399, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wsa_macro_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @wsa_macro_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @wsa_macro_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2407, i32 16}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @wsa_regmap_config, !36, !"wsa_regmap_config", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 787, i32 35}
!37 = !{ptr @wsa_defaults, !38, !"wsa_defaults", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 463, i32 33}
!39 = !{ptr @swclk_gate_ops, !40, !"swclk_gate_ops", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2337, i32 29}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1120, i32 4}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wsa_macro_mclk_enable._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @wsa_macro_mclk_enable._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2370, i32 10}
!48 = !{ptr @wsa_macro_component_drv, !49, !"wsa_macro_component_drv", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2369, i32 46}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1918, i32 2}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1921, i32 2}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1925, i32 2}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1930, i32 2}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1932, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1935, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1936, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1937, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1939, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1941, i32 2}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1943, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1945, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1947, i32 2}
!76 = !{ptr @wsa_macro_snd_controls, !77, !"wsa_macro_snd_controls", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1917, i32 38}
!78 = !{ptr @wsa_macro_ear_spkr_pa_gain_enum, !79, !"wsa_macro_ear_spkr_pa_gain_enum", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 382, i32 8}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 378, i32 2}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 378, i32 15}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 378, i32 25}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 378, i32 35}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 378, i32 45}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 379, i32 2}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 379, i32 12}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 379, i32 22}
!96 = !{ptr @wsa_macro_ear_spkr_pa_gain_text, !97, !"wsa_macro_ear_spkr_pa_gain_text", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 377, i32 27}
!98 = !{ptr @digital_gain, !99, !"digital_gain", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 355, i32 14}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2039, i32 2}
!102 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2041, i32 2}
!105 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2044, i32 2}
!108 = !{ptr @.str.52, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2048, i32 2}
!111 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2051, i32 2}
!114 = !{ptr @.str.56, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2053, i32 2}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2057, i32 2}
!118 = !{ptr @.str.58, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2062, i32 2}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2064, i32 2}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2066, i32 2}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2068, i32 2}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2071, i32 2}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2072, i32 2}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2073, i32 2}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2074, i32 2}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2076, i32 2}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2077, i32 2}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2078, i32 2}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2079, i32 2}
!142 = !{ptr @.str.70, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2082, i32 2}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2083, i32 2}
!146 = !{ptr @.str.72, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2084, i32 2}
!148 = !{ptr @.str.73, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2085, i32 2}
!150 = !{ptr @.str.74, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2089, i32 2}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2091, i32 2}
!154 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2094, i32 2}
!156 = !{ptr @.str.77, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2095, i32 2}
!158 = !{ptr @.str.78, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2097, i32 2}
!160 = !{ptr @.str.79, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2100, i32 2}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2101, i32 2}
!164 = !{ptr @.str.81, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2102, i32 2}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2104, i32 2}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2110, i32 2}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2116, i32 2}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2121, i32 2}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2126, i32 2}
!176 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2127, i32 2}
!178 = !{ptr @.str.88, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2128, i32 2}
!180 = !{ptr @.str.89, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2130, i32 2}
!182 = !{ptr @.str.90, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2131, i32 2}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2132, i32 2}
!186 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2133, i32 2}
!188 = !{ptr @.str.93, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2134, i32 2}
!190 = !{ptr @wsa_macro_dapm_widgets, !191, !"wsa_macro_dapm_widgets", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2038, i32 41}
!192 = !{ptr @.str.95, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2030, i32 2}
!194 = !{ptr @.str.97, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2033, i32 2}
!196 = !{ptr @aif_vi_mixer, !197, !"aif_vi_mixer", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2029, i32 38}
!198 = !{ptr @.str.99, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1731, i32 3}
!200 = !{ptr @.str.100, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @wsa_macro_enable_echo._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @wsa_macro_enable_echo._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 458, i32 2}
!205 = !{ptr @rx_mix_ec0_mux, !206, !"rx_mix_ec0_mux", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 457, i32 38}
!207 = !{ptr @rx_mix_ec0_enum, !208, !"rx_mix_ec0_enum", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 449, i32 30}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 366, i32 2}
!211 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 366, i32 10}
!213 = !{ptr @.str.104, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 366, i32 24}
!215 = !{ptr @rx_mix_ec_text, !216, !"rx_mix_ec_text", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 365, i32 26}
!217 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 461, i32 2}
!219 = !{ptr @rx_mix_ec1_mux, !220, !"rx_mix_ec1_mux", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 460, i32 38}
!221 = !{ptr @rx_mix_ec1_enum, !222, !"rx_mix_ec1_enum", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 453, i32 30}
!223 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1955, i32 2}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1957, i32 2}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1959, i32 2}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1961, i32 2}
!231 = !{ptr @rx_mux, !232, !"rx_mux", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1954, i32 38}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1855, i32 4}
!235 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @wsa_macro_rx_mux_put._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @wsa_macro_rx_mux_put._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1859, i32 4}
!240 = !{ptr @wsa_macro_rx_mux_put._entry.112, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @wsa_macro_rx_mux_put._entry_ptr.114, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1882, i32 3}
!244 = !{ptr @wsa_macro_rx_mux_put._entry.115, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @wsa_macro_rx_mux_put._entry_ptr.117, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @rx_mux_enum, !247, !"rx_mux_enum", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1951, i32 30}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 370, i32 10}
!250 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 370, i32 21}
!252 = !{ptr @rx_mux_text, !253, !"rx_mux_text", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 369, i32 26}
!254 = !{ptr @.str.120, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 406, i32 2}
!256 = !{ptr @rx0_prim_inp0_mux, !257, !"rx0_prim_inp0_mux", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 405, i32 38}
!258 = !{ptr @rx0_prim_inp0_chain_enum, !259, !"rx0_prim_inp0_chain_enum", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 386, i32 30}
!260 = !{ptr @.str.121, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 358, i32 10}
!262 = !{ptr @.str.122, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 358, i32 17}
!264 = !{ptr @.str.123, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 358, i32 24}
!266 = !{ptr @.str.124, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 358, i32 35}
!268 = !{ptr @.str.125, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 358, i32 46}
!270 = !{ptr @.str.126, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 358, i32 54}
!272 = !{ptr @rx_text, !273, !"rx_text", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 357, i32 26}
!274 = !{ptr @.str.127, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 409, i32 2}
!276 = !{ptr @rx0_prim_inp1_mux, !277, !"rx0_prim_inp1_mux", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 408, i32 38}
!278 = !{ptr @rx0_prim_inp1_chain_enum, !279, !"rx0_prim_inp1_chain_enum", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 390, i32 30}
!280 = !{ptr @.str.128, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 412, i32 2}
!282 = !{ptr @rx0_prim_inp2_mux, !283, !"rx0_prim_inp2_mux", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 411, i32 38}
!284 = !{ptr @rx0_prim_inp2_chain_enum, !285, !"rx0_prim_inp2_chain_enum", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 394, i32 30}
!286 = !{ptr @.str.129, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 415, i32 2}
!288 = !{ptr @rx0_mix_mux, !289, !"rx0_mix_mux", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 414, i32 38}
!290 = !{ptr @rx0_mix_chain_enum, !291, !"rx0_mix_chain_enum", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 398, i32 30}
!292 = !{ptr @rx_mix_text, !293, !"rx_mix_text", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 361, i32 26}
!294 = !{ptr @.str.130, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 438, i32 2}
!296 = !{ptr @rx1_prim_inp0_mux, !297, !"rx1_prim_inp0_mux", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 437, i32 38}
!298 = !{ptr @rx1_prim_inp0_chain_enum, !299, !"rx1_prim_inp0_chain_enum", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 421, i32 30}
!300 = !{ptr @.str.131, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 441, i32 2}
!302 = !{ptr @rx1_prim_inp1_mux, !303, !"rx1_prim_inp1_mux", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 440, i32 38}
!304 = !{ptr @rx1_prim_inp1_chain_enum, !305, !"rx1_prim_inp1_chain_enum", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 425, i32 30}
!306 = !{ptr @.str.132, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 444, i32 2}
!308 = !{ptr @rx1_prim_inp2_mux, !309, !"rx1_prim_inp2_mux", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 443, i32 38}
!310 = !{ptr @rx1_prim_inp2_chain_enum, !311, !"rx1_prim_inp2_chain_enum", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 429, i32 30}
!312 = !{ptr @.str.133, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 447, i32 2}
!314 = !{ptr @rx1_mix_mux, !315, !"rx1_mix_mux", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 446, i32 38}
!316 = !{ptr @rx1_mix_chain_enum, !317, !"rx1_mix_chain_enum", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 433, i32 30}
!318 = !{ptr @.str.134, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 418, i32 2}
!320 = !{ptr @rx0_sidetone_mix_mux, !321, !"rx0_sidetone_mix_mux", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 417, i32 38}
!322 = !{ptr @rx0_sidetone_mix_enum, !323, !"rx0_sidetone_mix_enum", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 402, i32 30}
!324 = !{ptr @.str.135, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 374, i32 10}
!326 = !{ptr @rx_sidetone_mix_text, !327, !"rx_sidetone_mix_text", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 373, i32 26}
!328 = !{ptr @wsa_audio_map, !329, !"wsa_audio_map", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2139, i32 40}
!330 = !{ptr @.str.136, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1041, i32 11}
!332 = !{ptr @.str.137, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1055, i32 11}
!334 = !{ptr @.str.138, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1069, i32 11}
!336 = !{ptr @.str.139, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1083, i32 11}
!338 = !{ptr @wsa_macro_dai, !339, !"wsa_macro_dai", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1039, i32 34}
!340 = !{ptr @wsa_macro_dai_ops, !341, !"wsa_macro_dai_ops", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1034, i32 37}
!342 = !{ptr @.str.140, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 1028, i32 3}
!344 = !{ptr @.str.141, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @wsa_macro_get_channel_map._entry, !343, !"_entry", i1 false, i1 false}
!346 = !{ptr @wsa_macro_get_channel_map._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.142, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 976, i32 4}
!349 = !{ptr @.str.143, !348, !"<string literal>", i1 false, i1 false}
!350 = !{ptr @wsa_macro_hw_params._entry, !348, !"_entry", i1 false, i1 false}
!351 = !{ptr @wsa_macro_hw_params._entry_ptr, !348, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @int_mix_sample_rate_val, !353, !"int_mix_sample_rate_val", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 319, i32 34}
!354 = !{ptr @.str.144, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 905, i32 4}
!356 = !{ptr @.str.145, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @wsa_macro_set_mix_interpolator_rate._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @wsa_macro_set_mix_interpolator_rate._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @int_prim_sample_rate_val, !360, !"int_prim_sample_rate_val", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 307, i32 34}
!361 = !{ptr @.str.146, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 853, i32 4}
!363 = !{ptr @wsa_macro_set_prim_interpolator_rate._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @wsa_macro_set_prim_interpolator_rate._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @wsa_macro_dt_match, !366, !"wsa_macro_dt_match", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/lpass-wsa-macro.c", i32 2447, i32 34}
!367 = !{i32 1, !"wchar_size", i32 2}
!368 = !{i32 1, !"min_enum_size", i32 4}
!369 = !{i32 8, !"branch-target-enforcement", i32 0}
!370 = !{i32 8, !"sign-return-address", i32 0}
!371 = !{i32 8, !"sign-return-address-all", i32 0}
!372 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!373 = !{i32 7, !"uwtable", i32 1}
!374 = !{i32 7, !"frame-pointer", i32 2}
!375 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!376 = !{!"auto-init"}
!377 = !{i8 0, i8 2}
