; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/nau8825.c_pt.bc'
source_filename = "../sound/soc/codecs/nau8825.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nau8825_enable_jack_detect\22, \22a\22\09"
module asm "\09.weak\09__crc_nau8825_enable_jack_detect\09\09\09\09"
module asm "\09.long\09__crc_nau8825_enable_jack_detect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nau8825_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22nau8825_enable_jack_detect\22\09\09\09\09\09"
module asm "__kstrtabns_nau8825_enable_jack_detect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nau8825_fll_attr = type { i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.nau8825_osr_attr = type { i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.nau8825 = type { ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.semaphore, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i32], i32, i8 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
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

@__kstrtab_nau8825_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__kstrtabns_nau8825_enable_jack_detect = external dso_local constant [0 x i8], align 1
@__ksymtab_nau8825_enable_jack_detect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nau8825_enable_jack_detect to i32), ptr @__kstrtab_nau8825_enable_jack_detect, ptr @__kstrtabns_nau8825_enable_jack_detect }, section "___ksymtab_gpl+nau8825_enable_jack_detect", align 4
@__initcall__kmod_snd_soc_nau8825__318_2710_nau8825_driver_init6 = internal global ptr @nau8825_driver_init, section ".initcall6.init", align 4
@nau8825_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @nau8825_i2c_probe, ptr @nau8825_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nau8825_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nau8825_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nau8825_driver_exit = internal global ptr @nau8825_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description319 = internal constant [48 x i8] c"snd_soc_nau8825.description=ASoC nau8825 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author320 = internal constant [60 x i8] c"snd_soc_nau8825.author=Anatol Pomozov <anatol@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [54 x i8] c"snd_soc_nau8825.file=sound/soc/codecs/snd-soc-nau8825\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [28 x i8] c"snd_soc_nau8825.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nau8825\00", [24 x i8] zeroinitializer }, align 32
@nau8825_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,nau8825\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nau8825_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nau8825\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nau8825_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nau8825_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr @nau8825_writeable_reg, ptr @nau8825_readable_reg, ptr @nau8825_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 130, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8825_reg_defaults, i32 71, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nau8825:2634:(&nau8825_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@nau8825_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&nau8825->xtalk_work)\00", [56 x i8] zeroinitializer }, align 32
@nau8825_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2654, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to read device id from the NAU8825: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8825_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/nau8825.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nau8825_i2c_probe._entry_ptr = internal global ptr @nau8825_i2c_probe._entry, section ".printk_index", align 4
@nau8825_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 2659, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Not a NAU8825 chip\0A\00", [44 x i8] zeroinitializer }, align 32
@nau8825_i2c_probe._entry_ptr.10 = internal global ptr @nau8825_i2c_probe._entry.8, section ".printk_index", align 4
@nau8825_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @nau8825_controls, i32 9, ptr @nau8825_dapm_widgets, i32 36, ptr @nau8825_dapm_routes, i32 38, ptr @nau8825_component_probe, ptr @nau8825_component_remove, ptr @nau8825_suspend, ptr @nau8825_resume, ptr null, ptr null, ptr null, ptr null, ptr @nau8825_set_sysclk, ptr @nau8825_set_pll, ptr @nau8825_set_jack, ptr null, ptr null, ptr null, ptr null, ptr @nau8825_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@nau8825_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.155, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @nau8825_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.109, i64 73014445060, i32 8190, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.111, i64 73014445060, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nuvoton,jkdet-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nuvoton,jkdet-pull-enable\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nuvoton,jkdet-pull-up\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nuvoton,jkdet-polarity\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nuvoton,micbias-voltage\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nuvoton,vref-impedance\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nuvoton,sar-threshold-num\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nuvoton,sar-threshold\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nuvoton,sar-hysteresis\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nuvoton,sar-voltage\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nuvoton,sar-compare-time\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nuvoton,sar-sampling-time\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nuvoton,short-key-debounce\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nuvoton,jack-insert-debounce\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nuvoton,jack-eject-debounce\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nuvoton,crosstalk-enable\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@nau8825_read_device_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 2591, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"No 'mclk' clock found, assume MCLK is managed externally\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nau8825_read_device_properties\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nau8825_read_device_properties._entry_ptr = internal global ptr @nau8825_read_device_properties._entry, section ".printk_index", align 4
@nau8825_reg_defaults = internal constant { [71 x %struct.reg_default], [136 x i8] } { [71 x %struct.reg_default] [%struct.reg_default { i32 1, i32 255 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 80 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 12582 }, %struct.reg_default { i32 6, i32 8 }, %struct.reg_default { i32 7, i32 16 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 24576 }, %struct.reg_default { i32 10, i32 61756 }, %struct.reg_default { i32 12, i32 12 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 18, i32 65535 }, %struct.reg_default { i32 19, i32 21 }, %struct.reg_default { i32 20, i32 272 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 11 }, %struct.reg_default { i32 29, i32 32784 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 16 }, %struct.reg_default { i32 44, i32 1 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 207 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 719 }, %struct.reg_default { i32 52, i32 207 }, %struct.reg_default { i32 56, i32 5254 }, %struct.reg_default { i32 57, i32 3858 }, %struct.reg_default { i32 58, i32 9727 }, %struct.reg_default { i32 59, i32 13399 }, %struct.reg_default { i32 69, i32 5254 }, %struct.reg_default { i32 70, i32 3858 }, %struct.reg_default { i32 71, i32 9721 }, %struct.reg_default { i32 72, i32 13399 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 113, i32 17 }, %struct.reg_default { i32 114, i32 32 }, %struct.reg_default { i32 115, i32 8 }, %struct.reg_default { i32 116, i32 6 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 0 }], [136 x i8] zeroinitializer }, align 32
@sema_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(*sem).lock\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"semaphore->lock\00", [16 x i8] zeroinitializer }, align 32
@nau8825_xtalk_measure.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.5, ptr @.str.35, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_nau8825\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nau8825_xtalk_measure\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HPR_R2L imm: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@nau8825_xtalk_measure.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.5, ptr @.str.36, i8 0, i8 -62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HPL_R2L imm: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@nau8825_xtalk_measure.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.34, ptr @.str.5, ptr @.str.37, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cross talk sidetone: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@nau8825_xtalk_baktab = internal global { [4 x %struct.reg_default], [32 x i8] } { [4 x %struct.reg_default] [%struct.reg_default { i32 48, i32 207 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 207 }, %struct.reg_default { i32 52, i32 719 }], [32 x i8] zeroinitializer }, align 32
@logtable = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 369, i16 736, i16 1102, i16 1466, i16 1829, i16 2190, i16 2551, i16 2909, i16 3267, i16 3623, i16 3978, i16 4331, i16 4683, i16 5034, i16 5384, i16 5732, i16 6079, i16 6425, i16 6769, i16 7112, i16 7454, i16 7795, i16 8134, i16 8473, i16 8810, i16 9146, i16 9480, i16 9814, i16 10146, i16 10477, i16 10807, i16 11136, i16 11464, i16 11791, i16 12116, i16 12440, i16 12764, i16 13086, i16 13407, i16 13727, i16 14046, i16 14363, i16 14680, i16 14996, i16 15310, i16 15624, i16 15937, i16 16248, i16 16559, i16 16868, i16 17177, i16 17484, i16 17791, i16 18096, i16 18401, i16 18704, i16 19007, i16 19308, i16 19609, i16 19909, i16 20207, i16 20505, i16 20802, i16 21098, i16 21393, i16 21687, i16 21980, i16 22272, i16 22564, i16 22854, i16 23144, i16 23433, i16 23720, i16 24007, i16 24293, i16 24579, i16 24863, i16 25146, i16 25429, i16 25711, i16 25992, i16 26272, i16 26551, i16 26830, i16 27108, i16 27384, i16 27660, i16 27936, i16 28210, i16 28484, i16 28757, i16 29029, i16 29300, i16 29571, i16 29840, i16 30109, i16 30378, i16 30645, i16 30912, i16 31178, i16 31443, i16 31707, i16 31971, i16 32234, i16 32496, i16 32758, i16 -32517, i16 -32257, i16 -31998, i16 -31739, i16 -31481, i16 -31224, i16 -30967, i16 -30711, i16 -30456, i16 -30202, i16 -29948, i16 -29695, i16 -29442, i16 -29190, i16 -28939, i16 -28689, i16 -28439, i16 -28190, i16 -27941, i16 -27694, i16 -27446, i16 -27200, i16 -26954, i16 -26709, i16 -26464, i16 -26220, i16 -25977, i16 -25734, i16 -25492, i16 -25250, i16 -25009, i16 -24769, i16 -24530, i16 -24290, i16 -24052, i16 -23814, i16 -23577, i16 -23340, i16 -23104, i16 -22869, i16 -22634, i16 -22399, i16 -22166, i16 -21933, i16 -21700, i16 -21468, i16 -21236, i16 -21006, i16 -20775, i16 -20546, i16 -20316, i16 -20088, i16 -19860, i16 -19632, i16 -19405, i16 -19179, i16 -18953, i16 -18727, i16 -18502, i16 -18278, i16 -18054, i16 -17831, i16 -17608, i16 -17386, i16 -17164, i16 -16943, i16 -16723, i16 -16502, i16 -16283, i16 -16064, i16 -15845, i16 -15627, i16 -15409, i16 -15192, i16 -14976, i16 -14760, i16 -14544, i16 -14329, i16 -14114, i16 -13900, i16 -13686, i16 -13473, i16 -13260, i16 -13048, i16 -12836, i16 -12625, i16 -12414, i16 -12204, i16 -11994, i16 -11785, i16 -11576, i16 -11367, i16 -11159, i16 -10952, i16 -10745, i16 -10538, i16 -10332, i16 -10126, i16 -9921, i16 -9716, i16 -9511, i16 -9307, i16 -9104, i16 -8901, i16 -8698, i16 -8496, i16 -8294, i16 -8093, i16 -7892, i16 -7691, i16 -7491, i16 -7291, i16 -7092, i16 -6893, i16 -6695, i16 -6497, i16 -6299, i16 -6102, i16 -5905, i16 -5709, i16 -5513, i16 -5317, i16 -5122, i16 -4927, i16 -4733, i16 -4539, i16 -4346, i16 -4152, i16 -3960, i16 -3767, i16 -3575, i16 -3384, i16 -3193, i16 -3002, i16 -2811, i16 -2621, i16 -2432, i16 -2242, i16 -2053, i16 -1865, i16 -1677, i16 -1489, i16 -1302, i16 -1115, i16 -928, i16 -742, i16 -556, i16 -370, i16 -185], [128 x i8] zeroinitializer }, align 32
@nau8825_configure_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 2247, ptr @.str.40, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Disable clock for power saving when no headset connected\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nau8825_configure_sysclk\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@nau8825_configure_sysclk._entry_ptr = internal global ptr @nau8825_configure_sysclk._entry, section ".printk_index", align 4
@nau8825_configure_sysclk._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.39, ptr @.str.5, i32 2330, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@nau8825_configure_sysclk._entry_ptr.43 = internal global ptr @nau8825_configure_sysclk._entry.41, section ".printk_index", align 4
@nau8825_configure_sysclk.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.39, ptr @.str.5, ptr @.str.44, i8 2, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@nau8825_sema_acquire._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 264, ptr @.str.40, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Acquire semaphore timeout\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nau8825_sema_acquire\00", [43 x i8] zeroinitializer }, align 32
@nau8825_sema_acquire._entry_ptr = internal global ptr @nau8825_sema_acquire._entry, section ".printk_index", align 4
@nau8825_sema_acquire._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.5, i32 268, ptr @.str.40, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Acquire semaphore fail\0A\00", [40 x i8] zeroinitializer }, align 32
@nau8825_sema_acquire._entry_ptr.49 = internal global ptr @nau8825_sema_acquire._entry.47, section ".printk_index", align 4
@nau8825_mclk_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.50, ptr @.str.5, i32 2155, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nau8825_mclk_prepare\00", [43 x i8] zeroinitializer }, align 32
@nau8825_mclk_prepare._entry_ptr = internal global ptr @nau8825_mclk_prepare._entry, section ".printk_index", align 4
@nau8825_mclk_prepare._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.5, i32 2162, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to prepare codec mclk\0A\00", [34 x i8] zeroinitializer }, align 32
@nau8825_mclk_prepare._entry_ptr.53 = internal global ptr @nau8825_mclk_prepare._entry.51, section ".printk_index", align 4
@nau8825_mclk_prepare._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.5, i32 2171, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to set mclk rate\0A\00", [39 x i8] zeroinitializer }, align 32
@nau8825_mclk_prepare._entry_ptr.56 = internal global ptr @nau8825_mclk_prepare._entry.54, section ".printk_index", align 4
@nau8825_print_device_properties.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.58, i8 2, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nau8825_print_device_properties\00", [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jkdet-enable:         %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.59, i8 2, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jkdet-pull-enable:    %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.60, i8 2, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jkdet-pull-up:        %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.61, i8 2, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jkdet-polarity:       %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.62, i8 2, i8 112, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"micbias-voltage:      %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.63, i8 2, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vref-impedance:       %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.64, i8 2, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-threshold-num:    %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.65, i8 2, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sar-threshold[%d]=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.66, i8 2, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-hysteresis:       %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.67, i8 2, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-voltage:          %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.68, i8 2, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-compare-time:     %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.69, i8 2, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sar-sampling-time:    %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.70, i8 2, i8 115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"short-key-debounce:   %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.71, i8 2, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jack-insert-debounce: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.72, i8 2, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"jack-eject-debounce:  %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_print_device_properties.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.57, ptr @.str.5, ptr @.str.73, i8 2, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"crosstalk-enable:     %d\0A\00", [38 x i8] zeroinitializer }, align 32
@nau8825_setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 2609, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot request irq %d (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8825_setup_irq\00", [46 x i8] zeroinitializer }, align 32
@nau8825_setup_irq._entry_ptr = internal global ptr @nau8825_setup_irq._entry, section ".printk_index", align 4
@nau8825_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.5, i32 1716, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to read irq status\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8825_interrupt\00", [46 x i8] zeroinitializer }, align 32
@nau8825_interrupt._entry_ptr = internal global ptr @nau8825_interrupt._entry, section ".printk_index", align 4
@nau8825_interrupt._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.5, i32 1781, ptr @.str.40, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Headset completion IRQ fired but no headset connected\0A\00", [41 x i8] zeroinitializer }, align 32
@nau8825_interrupt._entry_ptr.80 = internal global ptr @nau8825_interrupt._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SAR\00", [28 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@nau8825_jack_insert.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.83, ptr @.str.5, ptr @.str.84, i8 1, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nau8825_jack_insert\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OMTP (micgnd1) mic connected\0A\00", [34 x i8] zeroinitializer }, align 32
@nau8825_jack_insert.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.83, ptr @.str.5, ptr @.str.85, i8 1, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CTIA (micgnd2) mic connected\0A\00", [34 x i8] zeroinitializer }, align 32
@nau8825_jack_insert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.83, ptr @.str.5, i32 1694, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"detection error; disable mic function\0A\00", [57 x i8] zeroinitializer }, align 32
@nau8825_jack_insert._entry_ptr = internal global ptr @nau8825_jack_insert._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nau8825_controls = internal constant { [9 x %struct.snd_kcontrol_new], [112 x i8] } { [9 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @sidetone_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @fepga_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.94 { ptr @crosstalk_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @nau8825_adc_decimation_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @nau8825_dac_oversampl_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @nau8825_biq_path_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info_ext, ptr @nau8825_biq_coeff_get, ptr @nau8825_biq_coeff_put, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }], [112 x i8] zeroinitializer }, align 32
@nau8825_dapm_routes = internal constant { [38 x %struct.snd_soc_dapm_route], [488 x i8] } { [38 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.147, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.148, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.147, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr @.str.148, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr null, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.117, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr null, ptr @.str.118, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.133, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr null, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.140, ptr null, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.141, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }], [488 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 -10300, i32 2400], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 48, i32 48, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Headphone Bypass Volume\00", [40 x i8] zeroinitializer }, align 32
@sidetone_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 -4200, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 48, i32 48, i32 12, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -5400, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 50, i32 50, i32 6, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Frontend PGA Volume\00", [44 x i8] zeroinitializer }, align 32
@fepga_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -100, i32 3600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 37, i32 37, i32 127, i32 127, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headphone Crosstalk Volume\00", [37 x i8] zeroinitializer }, align 32
@crosstalk_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 -9600, i32 2400], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 47, i32 47, i32 0, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC Decimation Rate\00", [44 x i8] zeroinitializer }, align 32
@nau8825_adc_decimation_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 43, i8 0, i8 0, i32 4, i32 3, ptr @nau8825_adc_decimation, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Oversampling Rate\00", [42 x i8] zeroinitializer }, align 32
@nau8825_dac_oversampl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 44, i8 0, i8 0, i32 5, i32 7, ptr @nau8825_dac_oversampl, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BIQ Path Select\00", [16 x i8] zeroinitializer }, align 32
@nau8825_biq_path_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 0, i8 0, i32 2, i32 1, ptr @nau8825_biq_path, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"BIQ Coefficients\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_bytes_ext, [48 x i8] } { %struct.soc_bytes_ext { i32 20, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@nau8825_adc_decimation = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104], [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"128\00", [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"256\00", [28 x i8] zeroinitializer }, align 32
@nau8825_dac_oversampl = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.102, ptr @.str.104, ptr @.str.103, ptr @.str.105, ptr @.str.101], [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nau8825_biq_path = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.106, ptr @.str.107], [24 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFTX\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFRX\00", [26 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"System Clock\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIC\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Frontend PGA\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Clock\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Power\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADACL\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADACR\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADACL Clock\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADACR Clock\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DDACR\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DDACL\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DDAC Clock\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DACL Mux\00", [23 x i8] zeroinitializer }, align 32
@nau8825_dacl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @nau8825_dacl_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DACR Mux\00", [23 x i8] zeroinitializer }, align 32
@nau8825_dacr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @nau8825_dacr_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP amp L\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP amp R\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver R Stage 1\00", [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver L Stage 1\00", [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver R Stage 2\00", [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver L Stage 2\00", [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver R Stage 3\00", [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Output Driver L Stage 3\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Output DACL\00", [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Output DACR\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HPOL Pulldown\00", [18 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HPOR Pulldown\00", [18 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HP Boost Driver\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Class G\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOL\00", [27 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPOR\00", [27 x i8] zeroinitializer }, align 32
@nau8825_dapm_widgets = internal constant { [36 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1616 x i8] } { [36 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.108, ptr @.str.109, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29, i8 15, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.110, ptr @.str.111, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 8, ptr @system_clock_control, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 116, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @nau8825_adc_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 114, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.117, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.118, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 115, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 3, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8825_dacl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8825_dacr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @nau8825_pump_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 4, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 5, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 5, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 6, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 127, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 6, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 8, i32 1, i32 0, i32 1, i8 0, i8 0, i32 7, ptr null, i16 9, ptr @nau8825_output_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 128, i8 9, i32 1, i32 0, i32 1, i8 0, i8 0, i32 7, ptr null, i16 9, ptr @nau8825_output_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 8, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 8, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 118, i8 9, i32 1, i32 0, i32 1, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 80, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 10, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1616 x i8] zeroinitializer }, align 32
@system_clock_control.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.144, ptr @.str.5, ptr @.str.145, i8 0, i8 -8, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"system_clock_control\00", [43 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"system clock control : POWER OFF\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACL Source\00", [20 x i8] zeroinitializer }, align 32
@nau8825_dacl_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 51, i8 9, i8 9, i32 2, i32 1, ptr @nau8825_dac_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@nau8825_dac_src = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.147, ptr @.str.148], [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DACR Source\00", [20 x i8] zeroinitializer }, align 32
@nau8825_dacr_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 52, i8 9, i8 9, i32 2, i32 1, ptr @nau8825_dac_src, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@nau8825_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.5, i32 2135, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nau8825_set_pll\00", [16 x i8] zeroinitializer }, align 32
@nau8825_set_pll._entry_ptr = internal global ptr @nau8825_set_pll._entry, section ".printk_index", align 4
@nau8825_set_pll.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.151, ptr @.str.5, ptr @.str.152, i8 2, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.152 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mclk_src=%x ratio=%x fll_frac=%x fll_int=%x clk_ref_div=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fll_pre_scalar = internal constant { [4 x %struct.nau8825_fll_attr], [32 x i8] } { [4 x %struct.nau8825_fll_attr] [%struct.nau8825_fll_attr { i32 1, i32 0 }, %struct.nau8825_fll_attr { i32 2, i32 1 }, %struct.nau8825_fll_attr { i32 4, i32 2 }, %struct.nau8825_fll_attr { i32 8, i32 3 }], [32 x i8] zeroinitializer }, align 32
@fll_ratio = internal constant { [7 x %struct.nau8825_fll_attr], [40 x i8] } { [7 x %struct.nau8825_fll_attr] [%struct.nau8825_fll_attr { i32 512000, i32 1 }, %struct.nau8825_fll_attr { i32 256000, i32 2 }, %struct.nau8825_fll_attr { i32 128000, i32 4 }, %struct.nau8825_fll_attr { i32 64000, i32 8 }, %struct.nau8825_fll_attr { i32 32000, i32 16 }, %struct.nau8825_fll_attr { i32 8000, i32 32 }, %struct.nau8825_fll_attr { i32 4000, i32 64 }], [40 x i8] zeroinitializer }, align 32
@mclk_src_scaling = internal constant { [13 x %struct.nau8825_fll_attr], [56 x i8] } { [13 x %struct.nau8825_fll_attr] [%struct.nau8825_fll_attr { i32 1, i32 0 }, %struct.nau8825_fll_attr { i32 2, i32 2 }, %struct.nau8825_fll_attr { i32 4, i32 3 }, %struct.nau8825_fll_attr { i32 8, i32 4 }, %struct.nau8825_fll_attr { i32 16, i32 5 }, %struct.nau8825_fll_attr { i32 32, i32 6 }, %struct.nau8825_fll_attr { i32 3, i32 7 }, %struct.nau8825_fll_attr { i32 6, i32 10 }, %struct.nau8825_fll_attr { i32 12, i32 11 }, %struct.nau8825_fll_attr { i32 24, i32 12 }, %struct.nau8825_fll_attr { i32 48, i32 13 }, %struct.nau8825_fll_attr { i32 96, i32 14 }, %struct.nau8825_fll_attr { i32 5, i32 15 }], [56 x i8] zeroinitializer }, align 32
@nau8825_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.154, ptr @.str.5, i32 2390, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to prepare component mclk\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nau8825_set_bias_level\00", [41 x i8] zeroinitializer }, align 32
@nau8825_set_bias_level._entry_ptr = internal global ptr @nau8825_set_bias_level._entry, section ".printk_index", align 4
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nau8825-hifi\00", [19 x i8] zeroinitializer }, align 32
@nau8825_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @nau8825_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8825_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@osr_dac_sel = internal constant { [5 x %struct.nau8825_osr_attr], [56 x i8] } { [5 x %struct.nau8825_osr_attr] [%struct.nau8825_osr_attr { i32 64, i32 2 }, %struct.nau8825_osr_attr { i32 256, i32 0 }, %struct.nau8825_osr_attr { i32 128, i32 1 }, %struct.nau8825_osr_attr zeroinitializer, %struct.nau8825_osr_attr { i32 32, i32 3 }], [56 x i8] zeroinitializer }, align 32
@osr_adc_sel = internal constant { [4 x %struct.nau8825_osr_attr], [32 x i8] } { [4 x %struct.nau8825_osr_attr] [%struct.nau8825_osr_attr { i32 32, i32 3 }, %struct.nau8825_osr_attr { i32 64, i32 2 }, %struct.nau8825_osr_attr { i32 128, i32 1 }, %struct.nau8825_osr_attr { i32 256, i32 0 }], [32 x i8] zeroinitializer }, align 32
@nau8825_clock_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.5, i32 1266, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"exceed the maximum frequency of CLK_ADC or CLK_DAC\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nau8825_clock_check\00", [44 x i8] zeroinitializer }, align 32
@nau8825_clock_check._entry_ptr = internal global ptr @nau8825_clock_check._entry, section ".printk_index", align 4
@switch.table.nau8825_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@__sancov_gen_cov_switch_values.158 = internal global [76 x i64] [i64 74, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 15, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 56, i64 57, i64 58, i64 59, i64 69, i64 70, i64 71, i64 72, i64 76, i64 80, i64 81, i64 85, i64 102, i64 104, i64 105, i64 106, i64 113, i64 114, i64 115, i64 116, i64 118, i64 119, i64 127, i64 128]
@__sancov_gen_cov_switch_values.159 = internal global [82 x i64] [i64 80, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 56, i64 57, i64 58, i64 59, i64 69, i64 70, i64 71, i64 72, i64 76, i64 77, i64 78, i64 80, i64 81, i64 85, i64 88, i64 89, i64 102, i64 104, i64 105, i64 106, i64 113, i64 114, i64 115, i64 116, i64 118, i64 119, i64 127, i64 128, i64 129, i64 130]
@__sancov_gen_cov_switch_values.160 = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 16, i64 17, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 77, i64 78, i64 88, i64 89, i64 129, i64 130]
@__sancov_gen_cov_switch_values.161 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.163 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.171 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"nau8825_driver\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2700, i32 26 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2702, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"nau8825_of_ids\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2685, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"nau8825_i2c_ids\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2678, i32 35 }
@___asan_gen_.184 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"nau8825_regmap_config\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1981, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2634, i32 20 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2646, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2653, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2659, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [25 x i8] c"nau8825_component_driver\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2462, i32 46 }
@___asan_gen_.226 = private unnamed_addr constant [12 x i8] c"nau8825_dai\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1431, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2525, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2527, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2529, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2530, i32 38 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2534, i32 38 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2538, i32 38 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2542, i32 38 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2546, i32 44 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2554, i32 38 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2558, i32 38 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2562, i32 38 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2566, i32 38 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2570, i32 38 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2574, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2578, i32 38 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2583, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2585, i32 36 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2591, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [21 x i8] c"nau8825_reg_defaults\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 121, i32 33 }
@___asan_gen_.295 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 33, i32 31 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 34, i32 28 }
@___asan_gen_.302 = private unnamed_addr constant [29 x i8] c"../include/linux/semaphore.h\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.302, i32 35, i32 39 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 760, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 777, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 792, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"nau8825_xtalk_baktab\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 196, i32 27 }
@___asan_gen_.322 = private unnamed_addr constant [9 x i8] c"logtable\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 203, i32 29 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2247, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2330, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2334, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 264, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 268, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2155, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2162, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2171, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2495, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2496, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2497, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2498, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2499, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2500, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2502, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2504, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2507, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2508, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2509, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2510, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2511, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2512, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2514, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2516, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2608, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1716, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1781, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1537, i32 33 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1538, i32 33 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1653, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1673, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1694, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [17 x i8] c"nau8825_controls\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1080, i32 38 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c"nau8825_dapm_routes\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1208, i32 40 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1081, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1074, i32 14 }
@___asan_gen_.487 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1083, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [17 x i8] c"sidetone_vol_tlv\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1075, i32 14 }
@___asan_gen_.494 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1085, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1076, i32 14 }
@___asan_gen_.501 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1087, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [15 x i8] c"fepga_gain_tlv\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1077, i32 14 }
@___asan_gen_.508 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1089, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant [18 x i8] c"crosstalk_vol_tlv\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1078, i32 14 }
@___asan_gen_.515 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1092, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [28 x i8] c"nau8825_adc_decimation_enum\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1062, i32 30 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1093, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [27 x i8] c"nau8825_dac_oversampl_enum\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1070, i32 30 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1095, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [22 x i8] c"nau8825_biq_path_enum\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1054, i32 30 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1096, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [23 x i8] c"nau8825_adc_decimation\00", align 1
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1058, i32 27 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1059, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1059, i32 8 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1059, i32 14 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1059, i32 21 }
@___asan_gen_.553 = private unnamed_addr constant [22 x i8] c"nau8825_dac_oversampl\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1066, i32 27 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1067, i32 22 }
@___asan_gen_.559 = private unnamed_addr constant [17 x i8] c"nau8825_biq_path\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1050, i32 27 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1051, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1051, i32 9 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1121, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1123, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1124, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1127, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1130, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1136, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1137, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1147, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1148, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1149, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1150, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1152, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1154, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1156, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1158, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [17 x i8] c"nau8825_dacl_mux\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1113, i32 38 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1159, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant [17 x i8] c"nau8825_dacr_mux\00", align 1
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1116, i32 38 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1161, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1163, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1166, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1170, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1172, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1174, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1176, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1178, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1180, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1183, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1186, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1191, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1193, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1197, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1201, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1204, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1205, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant [21 x i8] c"nau8825_dapm_widgets\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1120, i32 41 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 993, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1114, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [18 x i8] c"nau8825_dacl_enum\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1105, i32 8 }
@___asan_gen_.694 = private unnamed_addr constant [16 x i8] c"nau8825_dac_src\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1101, i32 27 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1102, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1102, i32 10 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1117, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant [18 x i8] c"nau8825_dacr_enum\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1109, i32 8 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2135, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2138, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [15 x i8] c"fll_pre_scalar\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 93, i32 38 }
@___asan_gen_.724 = private unnamed_addr constant [10 x i8] c"fll_ratio\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 83, i32 38 }
@___asan_gen_.727 = private unnamed_addr constant [17 x i8] c"mclk_src_scaling\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 66, i32 38 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 2390, i32 6 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1432, i32 10 }
@___asan_gen_.742 = private unnamed_addr constant [16 x i8] c"nau8825_dai_ops\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1422, i32 37 }
@___asan_gen_.745 = private unnamed_addr constant [12 x i8] c"osr_dac_sel\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 106, i32 38 }
@___asan_gen_.748 = private unnamed_addr constant [12 x i8] c"osr_adc_sel\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 114, i32 38 }
@___asan_gen_.751 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.757 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.758 = private constant [30 x i8] c"../sound/soc/codecs/nau8825.c\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.758, i32 1266, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant [31 x i8] c"switch.table.nau8825_hw_params\00", align 1
@llvm.compiler.used = appending global [226 x ptr] [ptr @__UNIQUE_ID_author320, ptr @__UNIQUE_ID_description319, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_nau8825_driver_exit, ptr @__initcall__kmod_snd_soc_nau8825__318_2710_nau8825_driver_init6, ptr @__ksymtab_nau8825_enable_jack_detect, ptr @nau8825_clock_check._entry, ptr @nau8825_clock_check._entry_ptr, ptr @nau8825_configure_sysclk._entry, ptr @nau8825_configure_sysclk._entry.41, ptr @nau8825_configure_sysclk._entry_ptr, ptr @nau8825_configure_sysclk._entry_ptr.43, ptr @nau8825_driver_exit, ptr @nau8825_i2c_probe._entry, ptr @nau8825_i2c_probe._entry.8, ptr @nau8825_i2c_probe._entry_ptr, ptr @nau8825_i2c_probe._entry_ptr.10, ptr @nau8825_interrupt._entry, ptr @nau8825_interrupt._entry.78, ptr @nau8825_interrupt._entry_ptr, ptr @nau8825_interrupt._entry_ptr.80, ptr @nau8825_jack_insert._entry, ptr @nau8825_jack_insert._entry_ptr, ptr @nau8825_mclk_prepare._entry, ptr @nau8825_mclk_prepare._entry.51, ptr @nau8825_mclk_prepare._entry.54, ptr @nau8825_mclk_prepare._entry_ptr, ptr @nau8825_mclk_prepare._entry_ptr.53, ptr @nau8825_mclk_prepare._entry_ptr.56, ptr @nau8825_read_device_properties._entry, ptr @nau8825_read_device_properties._entry_ptr, ptr @nau8825_sema_acquire._entry, ptr @nau8825_sema_acquire._entry.47, ptr @nau8825_sema_acquire._entry_ptr, ptr @nau8825_sema_acquire._entry_ptr.49, ptr @nau8825_set_bias_level._entry, ptr @nau8825_set_bias_level._entry_ptr, ptr @nau8825_set_pll._entry, ptr @nau8825_set_pll._entry_ptr, ptr @nau8825_setup_irq._entry, ptr @nau8825_setup_irq._entry_ptr, ptr @nau8825_driver, ptr @.str, ptr @nau8825_of_ids, ptr @nau8825_i2c_ids, ptr @nau8825_i2c_probe._key, ptr @nau8825_regmap_config, ptr @.str.1, ptr @nau8825_i2c_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @nau8825_component_driver, ptr @nau8825_dai, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @nau8825_reg_defaults, ptr @sema_init.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @nau8825_xtalk_baktab, ptr @logtable, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @nau8825_controls, ptr @nau8825_dapm_routes, ptr @.str.87, ptr @adc_vol_tlv, ptr @.compoundliteral, ptr @.str.88, ptr @sidetone_vol_tlv, ptr @.compoundliteral.89, ptr @.str.90, ptr @dac_vol_tlv, ptr @.compoundliteral.91, ptr @.str.92, ptr @fepga_gain_tlv, ptr @.compoundliteral.93, ptr @.str.94, ptr @crosstalk_vol_tlv, ptr @.compoundliteral.95, ptr @.str.96, ptr @nau8825_adc_decimation_enum, ptr @.str.97, ptr @nau8825_dac_oversampl_enum, ptr @.str.98, ptr @nau8825_biq_path_enum, ptr @.str.99, ptr @.compoundliteral.100, ptr @nau8825_adc_decimation, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @nau8825_dac_oversampl, ptr @.str.105, ptr @nau8825_biq_path, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @nau8825_dacl_mux, ptr @.str.125, ptr @nau8825_dacr_mux, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @nau8825_dapm_widgets, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @nau8825_dacl_enum, ptr @nau8825_dac_src, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @nau8825_dacr_enum, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @fll_pre_scalar, ptr @fll_ratio, ptr @mclk_src_scaling, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @nau8825_dai_ops, ptr @osr_dac_sel, ptr @osr_adc_sel, ptr @.str.156, ptr @.str.157, ptr @switch.table.nau8825_hw_params], section "llvm.metadata"
@0 = internal global [201 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_read_device_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_reg_defaults to i32), i32 568, i32 704, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sema_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_xtalk_baktab to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logtable to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_configure_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_configure_sysclk._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_sema_acquire._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_sema_acquire._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_mclk_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_mclk_prepare._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_mclk_prepare._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_interrupt._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_jack_insert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_controls to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dapm_routes to i32), i32 1976, i32 2464, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fepga_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crosstalk_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_adc_decimation_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dac_oversampl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_biq_path_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_adc_decimation to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dac_oversampl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_biq_path to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dacl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dacr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dapm_widgets to i32), i32 6480, i32 8096, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dacl_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dac_src to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dacr_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_pre_scalar to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_ratio to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk_src_scaling to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osr_dac_sel to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osr_adc_sel to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8825_clock_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nau8825_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nau8825_enable_jack_detect(ptr nocapture noundef readonly %component, ptr noundef %jack) #0 align 64 {
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
  %regmap1 = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1, align 4
  %jack2 = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %jack2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %jack, ptr %jack2, align 4
  %tobool.not = icmp eq ptr %jack, null
  %. = select i1 %tobool.not, i32 0, i32 67
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 67, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nau8825_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nau8825_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @nau8825_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !410
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 252, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  %jkdet_enable.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 12
  %frombool.i = zext i1 %call.i.i to i8
  %3 = ptrtoint ptr %jkdet_enable.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %jkdet_enable.i, align 4
  %call.i152.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.12) #8
  %jkdet_pull_enable.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 13
  %frombool2.i = zext i1 %call.i152.i to i8
  %4 = ptrtoint ptr %jkdet_pull_enable.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool2.i, ptr %jkdet_pull_enable.i, align 1
  %call.i153.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %jkdet_pull_up.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 14
  %frombool4.i = zext i1 %call.i153.i to i8
  %5 = ptrtoint ptr %jkdet_pull_up.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool4.i, ptr %jkdet_pull_up.i, align 2
  %jkdet_polarity.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 15
  %call.i154.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef %jkdet_polarity.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154.i)
  %tobool.not.i = icmp eq i32 %call.i154.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %jkdet_polarity.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %jkdet_polarity.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %micbias_voltage.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 10
  %call.i155.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %micbias_voltage.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.i)
  %tobool8.not.i = icmp eq i32 %call.i155.i, 0
  br i1 %tobool8.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then9.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %micbias_voltage.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %micbias_voltage.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end.i.if.end11.i_crit_edge
  %vref_impedance.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 11
  %call.i156.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef %vref_impedance.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156.i)
  %tobool13.not.i = icmp eq i32 %call.i156.i, 0
  br i1 %tobool13.not.i, label %if.end11.i.if.end16.i_crit_edge, label %if.then14.i

if.end11.i.if.end16.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %vref_impedance.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %vref_impedance.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then14.i, %if.end11.i.if.end16.i_crit_edge
  %sar_threshold_num.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 16
  %call.i157.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %sar_threshold_num.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157.i)
  %tobool18.not.i = icmp eq i32 %call.i157.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end21.i_crit_edge, label %if.then19.i

if.end16.i.if.end21.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then19.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %sar_threshold_num.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %sar_threshold_num.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.end16.i.if.end21.i_crit_edge
  %sar_threshold.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 17
  %10 = ptrtoint ptr %sar_threshold_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sar_threshold_num.i, align 4
  %call23.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %sar_threshold.i, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end21.i.if.end33.i_crit_edge, label %if.then25.i

if.end21.i.if.end33.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %sar_threshold.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %sar_threshold.i, align 4
  %arrayidx28.i = getelementptr %struct.nau8825, ptr %call.i, i32 0, i32 17, i32 1
  %13 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 18, ptr %arrayidx28.i, align 4
  %arrayidx30.i = getelementptr %struct.nau8825, ptr %call.i, i32 0, i32 17, i32 2
  %14 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 38, ptr %arrayidx30.i, align 4
  %arrayidx32.i = getelementptr %struct.nau8825, ptr %call.i, i32 0, i32 17, i32 3
  %15 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 115, ptr %arrayidx32.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then25.i, %if.end21.i.if.end33.i_crit_edge
  %sar_hysteresis.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 18
  %call.i158.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef %sar_hysteresis.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158.i)
  %tobool35.not.i = icmp eq i32 %call.i158.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.end38.i_crit_edge, label %if.then36.i

if.end33.i.if.end38.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %sar_hysteresis.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %sar_hysteresis.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then36.i, %if.end33.i.if.end38.i_crit_edge
  %sar_voltage.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 19
  %call.i159.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef %sar_voltage.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159.i)
  %tobool40.not.i = icmp eq i32 %call.i159.i, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end43.i_crit_edge, label %if.then41.i

if.end38.i.if.end43.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %sar_voltage.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %sar_voltage.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then41.i, %if.end38.i.if.end43.i_crit_edge
  %sar_compare_time.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 20
  %call.i160.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %sar_compare_time.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160.i)
  %tobool45.not.i = icmp eq i32 %call.i160.i, 0
  br i1 %tobool45.not.i, label %if.end43.i.if.end48.i_crit_edge, label %if.then46.i

if.end43.i.if.end48.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %sar_compare_time.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %sar_compare_time.i, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then46.i, %if.end43.i.if.end48.i_crit_edge
  %sar_sampling_time.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 21
  %call.i161.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef %sar_sampling_time.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161.i)
  %tobool50.not.i = icmp eq i32 %call.i161.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end53.i_crit_edge, label %if.then51.i

if.end48.i.if.end53.i_crit_edge:                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53.i

if.then51.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %sar_sampling_time.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %sar_sampling_time.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then51.i, %if.end48.i.if.end53.i_crit_edge
  %key_debounce.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 22
  %call.i162.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.23, ptr noundef %key_debounce.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162.i)
  %tobool55.not.i = icmp eq i32 %call.i162.i, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end58.i_crit_edge, label %if.then56.i

if.end53.i.if.end58.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %key_debounce.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %key_debounce.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then56.i, %if.end53.i.if.end58.i_crit_edge
  %jack_insert_debounce.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 23
  %call.i163.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.24, ptr noundef %jack_insert_debounce.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163.i)
  %tobool60.not.i = icmp eq i32 %call.i163.i, 0
  br i1 %tobool60.not.i, label %if.end58.i.if.end63.i_crit_edge, label %if.then61.i

if.end58.i.if.end63.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %jack_insert_debounce.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 7, ptr %jack_insert_debounce.i, align 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.end58.i.if.end63.i_crit_edge
  %jack_eject_debounce.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 24
  %call.i164.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef %jack_eject_debounce.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164.i)
  %tobool65.not.i = icmp eq i32 %call.i164.i, 0
  br i1 %tobool65.not.i, label %if.end63.i.if.end68.i_crit_edge, label %if.then66.i

if.end63.i.if.end68.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %jack_eject_debounce.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %jack_eject_debounce.i, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.then66.i, %if.end63.i.if.end68.i_crit_edge
  %call.i165.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.26) #8
  %conv.i = zext i1 %call.i165.i to i32
  %xtalk_enable.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 31
  %23 = ptrtoint ptr %xtalk_enable.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i, ptr %xtalk_enable.i, align 4
  %call70.i = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.27) #8
  %mclk.i = getelementptr inbounds %struct.nau8825, ptr %call.i, i32 0, i32 4
  %24 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call70.i, ptr %mclk.i, align 4
  %magicptr.i = ptrtoint ptr %call70.i to i32
  %25 = zext i32 %magicptr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr.i, label %if.else81.i [
    i32 -517, label %if.end68.i.cleanup_crit_edge
    i32 -2, label %if.then79.i
  ]

if.end68.i.cleanup_crit_edge:                     ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then79.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %mclk.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.28) #11
  br label %if.end10

if.else81.i:                                      ; preds = %if.end68.i
  %cmp.i.i = icmp ugt ptr %call70.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.else81.i.cleanup_crit_edge, label %if.else81.i.if.end10_crit_edge

if.else81.i.if.end10_crit_edge:                   ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.else81.i.cleanup_crit_edge:                    ; preds = %if.else81.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.else81.i.if.end10_crit_edge, %if.then79.i, %entry.if.end10_crit_edge
  %nau8825.0 = phi ptr [ %1, %entry.if.end10_crit_edge ], [ %call.i, %if.then79.i ], [ %call.i, %if.else81.i.if.end10_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %nau8825.0, ptr %driver_data.i.i, align 4
  %call11 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @nau8825_regmap_config, ptr noundef nonnull @nau8825_i2c_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 1
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call11, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %30 = ptrtoint ptr %nau8825.0 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev1, ptr %nau8825.0, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %irq19 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 7
  %33 = ptrtoint ptr %irq19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %irq19, align 4
  %xtalk_state = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 26
  %34 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %xtalk_state, align 4
  %xtalk_protect = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 29
  %35 = ptrtoint ptr %xtalk_protect to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %xtalk_protect, align 4
  %xtalk_baktab_initialized = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 32
  %36 = ptrtoint ptr %xtalk_baktab_initialized to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %xtalk_baktab_initialized, align 4
  %xtalk_sem = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6
  %wait_list1.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %xtalk_sem to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %xtalk_sem, align 4
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 0, i32 1
  %38 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -559067475, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 0, i32 2
  %39 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 0, i32 3
  %40 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -1 to ptr), ptr %.compoundliteral.sroa.4.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.5.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 0, i32 4
  %41 = call ptr @memset(ptr %.compoundliteral.sroa.5.0..sroa_idx.i, i32 0, i32 12)
  %.compoundliteral.sroa.6.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 0, i32 4, i32 2
  %42 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @.str.31, ptr %.compoundliteral.sroa.6.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 0, i32 4, i32 3
  %43 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %.compoundliteral.sroa.7.0..sroa_idx.i, align 4
  %.compoundliteral.sroa.75.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 0, i32 4, i32 4
  %44 = ptrtoint ptr %.compoundliteral.sroa.75.0..sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %.compoundliteral.sroa.75.0..sroa_idx.i, align 1
  %.compoundliteral.sroa.8.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 0, i32 4, i32 5
  %45 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx.i, i32 0, i32 10)
  %.compoundliteral.sroa.86.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %.compoundliteral.sroa.86.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %.compoundliteral.sroa.86.0..sroa_idx.i, align 4
  %47 = ptrtoint ptr %wait_list1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %wait_list1.i, ptr %wait_list1.i, align 4
  %.compoundliteral.sroa.10.0..sroa_idx.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 6, i32 2, i32 1
  %48 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %wait_list1.i, ptr %.compoundliteral.sroa.10.0..sroa_idx.i, align 4
  tail call void @lockdep_init_map_type(ptr noundef %.compoundliteral.sroa.5.0..sroa_idx.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @sema_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %xtalk_work = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 5
  tail call void @__init_work(ptr noundef %xtalk_work, i32 noundef 0) #8
  %49 = ptrtoint ptr %xtalk_work to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -64, ptr %xtalk_work, align 4
  %lockdep_map = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.2, ptr noundef nonnull @nau8825_i2c_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry23 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 5, i32 1, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 5, i32 2
  %52 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @nau8825_xtalk_work, ptr %func, align 4
  tail call fastcc void @nau8825_print_device_properties(ptr noundef nonnull %nau8825.0)
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call.i85 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 0, i32 noundef 0) #8
  %call1.i = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 0, i32 noundef 0) #8
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call27 = call i32 @regmap_read(ptr noundef %56, i32 noundef 88, ptr noundef nonnull %value) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %call27) #11
  br label %cleanup

if.end32:                                         ; preds = %if.end17
  %57 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %value, align 4
  %and = and i32 %58, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp33.not = icmp eq i32 %and, 0
  br i1 %cmp33.not, label %if.end38, label %do.end37

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %call.i86 = call i32 @regmap_write(ptr noundef %60, i32 noundef 2, i32 noundef 1) #8
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call.i.i87 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 102, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call.i74.i = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 118, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %vref_impedance.i88 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 11
  %65 = ptrtoint ptr %vref_impedance.i88 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vref_impedance.i88, align 4
  %shl.i = shl i32 %66, 4
  %call.i75.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 102, i32 noundef 48, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i76.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 118, i32 noundef 9024, i32 noundef 9024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jkdet_enable.i89 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 12
  %67 = ptrtoint ptr %jkdet_enable.i89 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %jkdet_enable.i89, align 4, !range !411
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i90 = icmp eq i8 %68, 0
  %cond.i = select i1 %tobool.not.i90, i32 256, i32 0
  %call.i77.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 26, i32 noundef 256, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jkdet_pull_enable.i91 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 13
  %69 = ptrtoint ptr %jkdet_pull_enable.i91 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %jkdet_pull_enable.i91, align 1, !range !411
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool9.not.i = icmp eq i8 %70, 0
  %cond10.i = select i1 %tobool9.not.i, i32 512, i32 0
  %call.i78.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 26, i32 noundef 512, i32 noundef %cond10.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jkdet_pull_up.i92 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 14
  %71 = ptrtoint ptr %jkdet_pull_up.i92 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %jkdet_pull_up.i92, align 2, !range !411
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool12.not.i = icmp eq i8 %72, 0
  %cond13.i = select i1 %tobool12.not.i, i32 0, i32 2048
  %call.i79.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 26, i32 noundef 2048, i32 noundef %cond13.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jkdet_polarity.i93 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 15
  %73 = ptrtoint ptr %jkdet_polarity.i93 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %jkdet_polarity.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool15.not.i = icmp eq i32 %74, 0
  %cond16.i = select i1 %tobool15.not.i, i32 2, i32 0
  %call.i80.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 13, i32 noundef 2, i32 noundef %cond16.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jack_insert_debounce.i94 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 23
  %75 = ptrtoint ptr %jack_insert_debounce.i94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %jack_insert_debounce.i94, align 4
  %shl18.i = shl i32 %76, 5
  %call.i81.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 13, i32 noundef 224, i32 noundef %shl18.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %jack_eject_debounce.i95 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 24
  %77 = ptrtoint ptr %jack_eject_debounce.i95 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %jack_eject_debounce.i95, align 4
  %shl20.i = shl i32 %78, 2
  %call.i82.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 13, i32 noundef 28, i32 noundef %shl20.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i83.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 15, i32 noundef 24576, i32 noundef 24576, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i84.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 15, i32 noundef 2047, i32 noundef 2047, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %micbias_voltage.i96 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 10
  %79 = ptrtoint ptr %micbias_voltage.i96 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %micbias_voltage.i96, align 4
  %call.i85.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 116, i32 noundef 7, i32 noundef %80, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_threshold_num.i97 = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 16
  %81 = ptrtoint ptr %sar_threshold_num.i97 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sar_threshold_num.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool25.not.i = icmp eq i32 %82, 0
  br i1 %tobool25.not.i, label %if.end38.nau8825_init_regs.exit_crit_edge, label %if.then.i98

if.end38.nau8825_init_regs.exit_crit_edge:        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_init_regs.exit

if.then.i98:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %sar_voltage.i.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 19
  %85 = ptrtoint ptr %sar_voltage.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %sar_voltage.i.i, align 4
  %shl.i.i = shl i32 %86, 8
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 19, i32 noundef 1792, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_compare_time.i.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 20
  %87 = ptrtoint ptr %sar_compare_time.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sar_compare_time.i.i, align 4
  %shl2.i.i = shl i32 %88, 2
  %call.i62.i.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 19, i32 noundef 12, i32 noundef %shl2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_sampling_time.i.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 21
  %89 = ptrtoint ptr %sar_sampling_time.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sar_sampling_time.i.i, align 4
  %call.i63.i.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 19, i32 noundef 3, i32 noundef %90, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %91 = ptrtoint ptr %sar_threshold_num.i97 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %sar_threshold_num.i97, align 4
  %sub.i.i = shl i32 %92, 8
  %shl6.i.i = add i32 %sub.i.i, -256
  %call.i64.i.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 20, i32 noundef 1792, i32 noundef %shl6.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_hysteresis.i.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 18
  %93 = ptrtoint ptr %sar_hysteresis.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %sar_hysteresis.i.i, align 4
  %call.i65.i.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 20, i32 noundef 15, i32 noundef %94, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %key_debounce.i.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 22
  %95 = ptrtoint ptr %key_debounce.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %key_debounce.i.i, align 4
  %shl10.i.i = shl i32 %96, 12
  %call.i66.i.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 20, i32 noundef 12288, i32 noundef %shl10.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %sar_threshold.i.i = getelementptr inbounds %struct.nau8825, ptr %nau8825.0, i32 0, i32 17
  %97 = ptrtoint ptr %sar_threshold.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sar_threshold.i.i, align 4
  %shl12.i.i = shl i32 %98, 8
  %arrayidx14.i.i = getelementptr %struct.nau8825, ptr %nau8825.0, i32 0, i32 17, i32 1
  %99 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx14.i.i, align 4
  %or.i.i = or i32 %shl12.i.i, %100
  %call15.i.i = call i32 @regmap_write(ptr noundef %84, i32 noundef 21, i32 noundef %or.i.i) #8
  %arrayidx17.i.i = getelementptr %struct.nau8825, ptr %nau8825.0, i32 0, i32 17, i32 2
  %101 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx17.i.i, align 4
  %shl18.i.i = shl i32 %102, 8
  %arrayidx20.i.i = getelementptr %struct.nau8825, ptr %nau8825.0, i32 0, i32 17, i32 3
  %103 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx20.i.i, align 4
  %or21.i.i = or i32 %shl18.i.i, %104
  %call22.i.i = call i32 @regmap_write(ptr noundef %84, i32 noundef 22, i32 noundef %or21.i.i) #8
  %arrayidx24.i.i = getelementptr %struct.nau8825, ptr %nau8825.0, i32 0, i32 17, i32 4
  %105 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx24.i.i, align 4
  %shl25.i.i = shl i32 %106, 8
  %arrayidx27.i.i = getelementptr %struct.nau8825, ptr %nau8825.0, i32 0, i32 17, i32 5
  %107 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx27.i.i, align 4
  %or28.i.i = or i32 %shl25.i.i, %108
  %call29.i.i = call i32 @regmap_write(ptr noundef %84, i32 noundef 23, i32 noundef %or28.i.i) #8
  %arrayidx31.i.i = getelementptr %struct.nau8825, ptr %nau8825.0, i32 0, i32 17, i32 6
  %109 = ptrtoint ptr %arrayidx31.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx31.i.i, align 4
  %shl32.i.i = shl i32 %110, 8
  %arrayidx34.i.i = getelementptr %struct.nau8825, ptr %nau8825.0, i32 0, i32 17, i32 7
  %111 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx34.i.i, align 4
  %or35.i.i = or i32 %shl32.i.i, %112
  %call36.i.i = call i32 @regmap_write(ptr noundef %84, i32 noundef 24, i32 noundef %or35.i.i) #8
  %call.i67.i.i = call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 15, i32 noundef 160, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %nau8825_init_regs.exit

nau8825_init_regs.exit:                           ; preds = %if.then.i98, %if.end38.nau8825_init_regs.exit_crit_edge
  %call.i86.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 43, i32 noundef 19, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i87.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 44, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i88.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 128, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %113 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap, align 4
  %call.i89.i = call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 102, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i90.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 44, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i91.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 106, i32 noundef 4099, i32 noundef 4099, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i92.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 80, i32 noundef 16128, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i93.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 115, i32 noundef 124, i32 noundef 44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %115 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap, align 4
  %call.i94.i = call i32 @regmap_update_bits_base(ptr noundef %116, i32 noundef 51, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %117 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap, align 4
  %call.i95.i = call i32 @regmap_update_bits_base(ptr noundef %118, i32 noundef 52, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i96.i = call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 30, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %119 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool40.not = icmp eq i32 %120, 0
  br i1 %tobool40.not, label %nau8825_init_regs.exit.if.end43_crit_edge, label %if.then41

nau8825_init_regs.exit.if.end43_crit_edge:        ; preds = %nau8825_init_regs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then41:                                        ; preds = %nau8825_init_regs.exit
  %121 = ptrtoint ptr %nau8825.0 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %nau8825.0, align 4
  %123 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %irq19, align 4
  %call.i100 = call i32 @devm_request_threaded_irq(ptr noundef %122, i32 noundef %124, ptr noundef null, ptr noundef nonnull @nau8825_interrupt, i32 noundef 8200, ptr noundef nonnull @.str, ptr noundef nonnull %nau8825.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool.not.i101 = icmp eq i32 %call.i100, 0
  br i1 %tobool.not.i101, label %if.then41.if.end43_crit_edge, label %do.end.i

if.then41.if.end43_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

do.end.i:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %125 = ptrtoint ptr %nau8825.0 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %nau8825.0, align 4
  %127 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %irq19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.74, i32 noundef %128, i32 noundef %call.i100) #11
  br label %if.end43

if.end43:                                         ; preds = %do.end.i, %if.then41.if.end43_crit_edge, %nau8825_init_regs.exit.if.end43_crit_edge
  %call45 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @nau8825_component_driver, ptr noundef nonnull @nau8825_dai, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end37, %do.end31, %if.then14, %if.else81.i.cleanup_crit_edge, %if.end68.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.then14 ], [ %call27, %do.end31 ], [ -19, %do.end37 ], [ %call45, %if.end43 ], [ -12, %if.then.cleanup_crit_edge ], [ -22, %if.else81.i.cleanup_crit_edge ], [ %magicptr.i, %if.end68.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nau8825_i2c_remove(ptr nocapture noundef readnone %client) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nau8825_xtalk_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  tail call fastcc void @nau8825_xtalk_measure(ptr noundef %add.ptr)
  %xtalk_state = getelementptr i8, ptr %work, i32 196
  %0 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xtalk_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @nau8825_xtalk_measure(ptr noundef %add.ptr)
  %2 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %xtalk_state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = phi i32 [ %.pr, %if.then ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp2 = icmp eq i32 %3, 4
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %jack = getelementptr i8, ptr %work, i32 -8
  %4 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jack, align 4
  %xtalk_event = getelementptr i8, ptr %work, i32 200
  %6 = ptrtoint ptr %xtalk_event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xtalk_event, align 4
  %xtalk_event_mask = getelementptr i8, ptr %work, i32 204
  %8 = ptrtoint ptr %xtalk_event_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xtalk_event_mask, align 4
  tail call void @snd_soc_jack_report(ptr noundef %5, i32 noundef %7, i32 noundef %9) #8
  %xtalk_sem.i = getelementptr i8, ptr %work, i32 44
  tail call void @up(ptr noundef %xtalk_sem.i) #8
  %xtalk_protect = getelementptr i8, ptr %work, i32 208
  %10 = ptrtoint ptr %xtalk_protect to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %xtalk_protect, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8825_print_device_properties(ptr nocapture noundef readonly %nau8825) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nau8825, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then)) #8
          to label %do.body5 [label %if.then], !srcloc !412

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_enable = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 12
  %2 = ptrtoint ptr %jkdet_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %jkdet_enable, align 4, !range !411
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug302, ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef %4) #8
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then17)) #8
          to label %do.body23 [label %if.then17], !srcloc !412

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_pull_enable = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 13
  %5 = ptrtoint ptr %jkdet_pull_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %jkdet_pull_enable, align 1, !range !411
  %7 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %7) #8
  br label %do.body23

do.body23:                                        ; preds = %if.then17, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then35)) #8
          to label %do.body41 [label %if.then35], !srcloc !412

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_pull_up = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 14
  %8 = ptrtoint ptr %jkdet_pull_up to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %jkdet_pull_up, align 2, !range !411
  %10 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %10) #8
  br label %do.body41

do.body41:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then53)) #8
          to label %do.body57 [label %if.then53], !srcloc !412

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %jkdet_polarity = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 15
  %11 = ptrtoint ptr %jkdet_polarity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %jkdet_polarity, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug305, ptr noundef %1, ptr noundef nonnull @.str.61, i32 noundef %12) #8
  br label %do.body57

do.body57:                                        ; preds = %if.then53, %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then69)) #8
          to label %do.body73 [label %if.then69], !srcloc !412

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %micbias_voltage = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 10
  %13 = ptrtoint ptr %micbias_voltage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %micbias_voltage, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug306, ptr noundef %1, ptr noundef nonnull @.str.62, i32 noundef %14) #8
  br label %do.body73

do.body73:                                        ; preds = %if.then69, %do.body57
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then85)) #8
          to label %do.body89 [label %if.then85], !srcloc !412

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #10
  %vref_impedance = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 11
  %15 = ptrtoint ptr %vref_impedance to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vref_impedance, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %16) #8
  br label %do.body89

do.body89:                                        ; preds = %if.then85, %do.body73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then101)) #8
          to label %do.end104 [label %if.then101], !srcloc !412

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %sar_threshold_num = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 16
  %17 = ptrtoint ptr %sar_threshold_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sar_threshold_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug308, ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %18) #8
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %do.body89
  %sar_threshold_num105 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 16
  %19 = ptrtoint ptr %sar_threshold_num105 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sar_threshold_num105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp347 = icmp sgt i32 %20, 0
  br i1 %cmp347, label %do.end104.do.body107_crit_edge, label %do.end104.do.body123_crit_edge

do.end104.do.body123_crit_edge:                   ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body123

do.end104.do.body107_crit_edge:                   ; preds = %do.end104
  br label %do.body107

do.body107:                                       ; preds = %for.inc.do.body107_crit_edge, %do.end104.do.body107_crit_edge
  %i.0348 = phi i32 [ %inc, %for.inc.do.body107_crit_edge ], [ 0, %do.end104.do.body107_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then119)) #8
          to label %for.inc [label %if.then119], !srcloc !412

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.nau8825, ptr %nau8825, i32 0, i32 17, i32 %i.0348
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug309, ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %i.0348, i32 noundef %22) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then119, %do.body107
  %inc = add nuw nsw i32 %i.0348, 1
  %23 = ptrtoint ptr %sar_threshold_num105 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sar_threshold_num105, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.inc.do.body107_crit_edge, label %for.inc.do.body123_crit_edge

for.inc.do.body123_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body123

for.inc.do.body107_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body107

do.body123:                                       ; preds = %for.inc.do.body123_crit_edge, %do.end104.do.body123_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then135)) #8
          to label %do.body139 [label %if.then135], !srcloc !412

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #10
  %sar_hysteresis = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 18
  %25 = ptrtoint ptr %sar_hysteresis to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sar_hysteresis, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug310, ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %26) #8
  br label %do.body139

do.body139:                                       ; preds = %if.then135, %do.body123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then151)) #8
          to label %do.body155 [label %if.then151], !srcloc !412

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #10
  %sar_voltage = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 19
  %27 = ptrtoint ptr %sar_voltage to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sar_voltage, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug311, ptr noundef %1, ptr noundef nonnull @.str.67, i32 noundef %28) #8
  br label %do.body155

do.body155:                                       ; preds = %if.then151, %do.body139
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then167)) #8
          to label %do.body171 [label %if.then167], !srcloc !412

if.then167:                                       ; preds = %do.body155
  call void @__sanitizer_cov_trace_pc() #10
  %sar_compare_time = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 20
  %29 = ptrtoint ptr %sar_compare_time to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sar_compare_time, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug312, ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %30) #8
  br label %do.body171

do.body171:                                       ; preds = %if.then167, %do.body155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then183)) #8
          to label %do.body187 [label %if.then183], !srcloc !412

if.then183:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #10
  %sar_sampling_time = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 21
  %31 = ptrtoint ptr %sar_sampling_time to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sar_sampling_time, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug313, ptr noundef %1, ptr noundef nonnull @.str.69, i32 noundef %32) #8
  br label %do.body187

do.body187:                                       ; preds = %if.then183, %do.body171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then199)) #8
          to label %do.body203 [label %if.then199], !srcloc !412

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #10
  %key_debounce = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 22
  %33 = ptrtoint ptr %key_debounce to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %key_debounce, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug314, ptr noundef %1, ptr noundef nonnull @.str.70, i32 noundef %34) #8
  br label %do.body203

do.body203:                                       ; preds = %if.then199, %do.body187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then215)) #8
          to label %do.body219 [label %if.then215], !srcloc !412

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #10
  %jack_insert_debounce = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 23
  %35 = ptrtoint ptr %jack_insert_debounce to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %jack_insert_debounce, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug315, ptr noundef %1, ptr noundef nonnull @.str.71, i32 noundef %36) #8
  br label %do.body219

do.body219:                                       ; preds = %if.then215, %do.body203
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then231)) #8
          to label %do.body235 [label %if.then231], !srcloc !412

if.then231:                                       ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #10
  %jack_eject_debounce = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 24
  %37 = ptrtoint ptr %jack_eject_debounce to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %jack_eject_debounce, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug316, ptr noundef %1, ptr noundef nonnull @.str.72, i32 noundef %38) #8
  br label %do.body235

do.body235:                                       ; preds = %if.then231, %do.body219
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_print_device_properties, %if.then247)) #8
          to label %do.end250 [label %if.then247], !srcloc !412

if.then247:                                       ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #10
  %xtalk_enable = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 31
  %39 = ptrtoint ptr %xtalk_enable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %xtalk_enable, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_print_device_properties.__UNIQUE_ID_ddebug317, ptr noundef %1, ptr noundef nonnull @.str.73, i32 noundef %40) #8
  br label %do.end250

do.end250:                                        ; preds = %if.then247, %do.body235
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8825_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %reg, label %sw.default [
    i32 15, label %entry.return_crit_edge
    i32 76, label %entry.return_crit_edge14
    i32 85, label %entry.return_crit_edge15
    i32 102, label %entry.return_crit_edge16
    i32 127, label %entry.return_crit_edge17
    i32 128, label %entry.return_crit_edge18
    i32 118, label %entry.return_crit_edge19
    i32 119, label %entry.return_crit_edge20
    i32 113, label %entry.return_crit_edge21
    i32 114, label %entry.return_crit_edge22
    i32 115, label %entry.return_crit_edge23
    i32 116, label %entry.return_crit_edge24
    i32 104, label %entry.return_crit_edge25
    i32 105, label %entry.return_crit_edge26
    i32 106, label %entry.return_crit_edge27
    i32 80, label %entry.return_crit_edge28
    i32 81, label %entry.return_crit_edge29
    i32 69, label %entry.return_crit_edge30
    i32 70, label %entry.return_crit_edge31
    i32 71, label %entry.return_crit_edge32
    i32 72, label %entry.return_crit_edge33
    i32 56, label %entry.return_crit_edge34
    i32 57, label %entry.return_crit_edge35
    i32 58, label %entry.return_crit_edge36
    i32 59, label %entry.return_crit_edge37
    i32 21, label %entry.return_crit_edge38
    i32 22, label %entry.return_crit_edge39
    i32 23, label %entry.return_crit_edge40
    i32 24, label %entry.return_crit_edge41
    i32 25, label %entry.return_crit_edge42
    i32 26, label %entry.return_crit_edge43
    i32 27, label %entry.return_crit_edge44
    i32 28, label %entry.return_crit_edge45
    i32 29, label %entry.return_crit_edge46
    i32 30, label %entry.return_crit_edge47
    i32 31, label %entry.return_crit_edge48
    i32 32, label %entry.return_crit_edge49
    i32 33, label %entry.return_crit_edge50
    i32 34, label %entry.return_crit_edge51
    i32 35, label %entry.return_crit_edge52
    i32 36, label %entry.return_crit_edge53
    i32 37, label %entry.return_crit_edge54
    i32 38, label %entry.return_crit_edge55
    i32 39, label %entry.return_crit_edge56
    i32 40, label %entry.return_crit_edge57
    i32 41, label %entry.return_crit_edge58
    i32 42, label %entry.return_crit_edge59
    i32 43, label %entry.return_crit_edge60
    i32 44, label %entry.return_crit_edge61
    i32 45, label %entry.return_crit_edge62
    i32 46, label %entry.return_crit_edge63
    i32 47, label %entry.return_crit_edge64
    i32 48, label %entry.return_crit_edge65
    i32 49, label %entry.return_crit_edge66
    i32 50, label %entry.return_crit_edge67
    i32 51, label %entry.return_crit_edge68
    i32 52, label %entry.return_crit_edge69
    i32 17, label %entry.return_crit_edge70
    i32 18, label %entry.return_crit_edge71
    i32 19, label %entry.return_crit_edge72
    i32 20, label %entry.return_crit_edge73
    i32 12, label %entry.return_crit_edge74
    i32 13, label %entry.return_crit_edge75
    i32 0, label %entry.return_crit_edge76
    i32 1, label %entry.return_crit_edge77
    i32 2, label %entry.return_crit_edge78
    i32 3, label %entry.return_crit_edge79
    i32 4, label %entry.return_crit_edge80
    i32 5, label %entry.return_crit_edge81
    i32 6, label %entry.return_crit_edge82
    i32 7, label %entry.return_crit_edge83
    i32 8, label %entry.return_crit_edge84
    i32 9, label %entry.return_crit_edge85
    i32 10, label %entry.return_crit_edge86
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8825_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %reg, label %sw.default [
    i32 85, label %entry.return_crit_edge
    i32 102, label %entry.return_crit_edge15
    i32 127, label %entry.return_crit_edge16
    i32 128, label %entry.return_crit_edge17
    i32 129, label %entry.return_crit_edge18
    i32 130, label %entry.return_crit_edge19
    i32 118, label %entry.return_crit_edge20
    i32 119, label %entry.return_crit_edge21
    i32 113, label %entry.return_crit_edge22
    i32 114, label %entry.return_crit_edge23
    i32 115, label %entry.return_crit_edge24
    i32 116, label %entry.return_crit_edge25
    i32 104, label %entry.return_crit_edge26
    i32 105, label %entry.return_crit_edge27
    i32 106, label %entry.return_crit_edge28
    i32 88, label %entry.return_crit_edge29
    i32 89, label %entry.return_crit_edge30
    i32 80, label %entry.return_crit_edge31
    i32 81, label %entry.return_crit_edge32
    i32 76, label %entry.return_crit_edge33
    i32 77, label %entry.return_crit_edge34
    i32 78, label %entry.return_crit_edge35
    i32 69, label %entry.return_crit_edge36
    i32 70, label %entry.return_crit_edge37
    i32 71, label %entry.return_crit_edge38
    i32 72, label %entry.return_crit_edge39
    i32 56, label %entry.return_crit_edge40
    i32 57, label %entry.return_crit_edge41
    i32 58, label %entry.return_crit_edge42
    i32 59, label %entry.return_crit_edge43
    i32 21, label %entry.return_crit_edge44
    i32 22, label %entry.return_crit_edge45
    i32 23, label %entry.return_crit_edge46
    i32 24, label %entry.return_crit_edge47
    i32 25, label %entry.return_crit_edge48
    i32 26, label %entry.return_crit_edge49
    i32 27, label %entry.return_crit_edge50
    i32 28, label %entry.return_crit_edge51
    i32 29, label %entry.return_crit_edge52
    i32 30, label %entry.return_crit_edge53
    i32 31, label %entry.return_crit_edge54
    i32 32, label %entry.return_crit_edge55
    i32 33, label %entry.return_crit_edge56
    i32 34, label %entry.return_crit_edge57
    i32 35, label %entry.return_crit_edge58
    i32 36, label %entry.return_crit_edge59
    i32 37, label %entry.return_crit_edge60
    i32 38, label %entry.return_crit_edge61
    i32 39, label %entry.return_crit_edge62
    i32 40, label %entry.return_crit_edge63
    i32 41, label %entry.return_crit_edge64
    i32 42, label %entry.return_crit_edge65
    i32 43, label %entry.return_crit_edge66
    i32 44, label %entry.return_crit_edge67
    i32 45, label %entry.return_crit_edge68
    i32 46, label %entry.return_crit_edge69
    i32 47, label %entry.return_crit_edge70
    i32 48, label %entry.return_crit_edge71
    i32 49, label %entry.return_crit_edge72
    i32 50, label %entry.return_crit_edge73
    i32 51, label %entry.return_crit_edge74
    i32 52, label %entry.return_crit_edge75
    i32 15, label %entry.return_crit_edge76
    i32 16, label %entry.return_crit_edge77
    i32 17, label %entry.return_crit_edge78
    i32 18, label %entry.return_crit_edge79
    i32 19, label %entry.return_crit_edge80
    i32 20, label %entry.return_crit_edge81
    i32 12, label %entry.return_crit_edge82
    i32 13, label %entry.return_crit_edge83
    i32 1, label %entry.return_crit_edge84
    i32 2, label %entry.return_crit_edge85
    i32 3, label %entry.return_crit_edge86
    i32 4, label %entry.return_crit_edge87
    i32 5, label %entry.return_crit_edge88
    i32 6, label %entry.return_crit_edge89
    i32 7, label %entry.return_crit_edge90
    i32 8, label %entry.return_crit_edge91
    i32 9, label %entry.return_crit_edge92
    i32 10, label %entry.return_crit_edge93
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8825_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 16, label %entry.return_crit_edge2
    i32 17, label %entry.return_crit_edge3
    i32 77, label %entry.return_crit_edge4
    i32 78, label %entry.return_crit_edge5
    i32 88, label %entry.return_crit_edge6
    i32 89, label %entry.return_crit_edge7
    i32 129, label %entry.return_crit_edge8
    i32 130, label %entry.return_crit_edge9
    i32 32, label %entry.return_crit_edge10
    i32 33, label %entry.return_crit_edge11
    i32 34, label %entry.return_crit_edge12
    i32 35, label %entry.return_crit_edge13
    i32 36, label %entry.return_crit_edge14
    i32 37, label %entry.return_crit_edge15
    i32 38, label %entry.return_crit_edge16
    i32 39, label %entry.return_crit_edge17
    i32 40, label %entry.return_crit_edge18
    i32 41, label %entry.return_crit_edge19
    i32 42, label %entry.return_crit_edge20
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8825_xtalk_measure(ptr noundef %nau8825) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %xtalk_state = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 26
  %0 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xtalk_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb9
    i32 3, label %sw.bb34
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %xtalk_baktab_initialized.i.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 32
  %3 = ptrtoint ptr %xtalk_baktab_initialized.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %xtalk_baktab_initialized.i.i, align 4, !range !411
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %for.cond.preheader.i.i, label %sw.bb.nau8825_xtalk_backup.exit.i_crit_edge

sw.bb.nau8825_xtalk_backup.exit.i_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_backup.exit.i

for.cond.preheader.i.i:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %regmap.i.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %7 = load i32, ptr @nau8825_xtalk_baktab, align 4
  %call.i.i = tail call i32 @regmap_read(ptr noundef %6, i32 noundef %7, ptr noundef getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 0, i32 1)) #8
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %10 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 1), align 4
  %call.1.i.i = tail call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 1, i32 1)) #8
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %13 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 2), align 4
  %call.2.i.i = tail call i32 @regmap_read(ptr noundef %12, i32 noundef %13, ptr noundef getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 2, i32 1)) #8
  %14 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i, align 4
  %16 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 3), align 4
  %call.3.i.i = tail call i32 @regmap_read(ptr noundef %15, i32 noundef %16, ptr noundef getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 3, i32 1)) #8
  %17 = ptrtoint ptr %xtalk_baktab_initialized.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %xtalk_baktab_initialized.i.i, align 4
  br label %nau8825_xtalk_backup.exit.i

nau8825_xtalk_backup.exit.i:                      ; preds = %for.cond.preheader.i.i, %sw.bb.nau8825_xtalk_backup.exit.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i23.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 29, i32 noundef 12303, i32 noundef 8201, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = load i32, ptr @nau8825_xtalk_baktab, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %20)
  %cmp2.i.i = icmp eq i32 %20, 50
  br i1 %cmp2.i.i, label %nau8825_xtalk_backup.exit.i.if.then.i_crit_edge, label %for.inc.i.i

nau8825_xtalk_backup.exit.i.if.then.i_crit_edge:  ; preds = %nau8825_xtalk_backup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.i.i:                                      ; preds = %nau8825_xtalk_backup.exit.i
  %21 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %21)
  %cmp2.1.i.i = icmp eq i32 %21, 50
  br i1 %cmp2.1.i.i, label %for.inc.i.i.if.then.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %22 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %22)
  %cmp2.2.i.i = icmp eq i32 %22, 50
  br i1 %cmp2.2.i.i, label %for.inc.1.i.i.if.then.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.if.then.i_crit_edge:                ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %23 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %23)
  %cmp2.3.i.i = icmp eq i32 %23, 50
  br i1 %cmp2.3.i.i, label %for.inc.2.i.i.if.then.i_crit_edge, label %for.inc.2.i.i.nau8825_xtalk_prepare.exit_crit_edge

for.inc.2.i.i.nau8825_xtalk_prepare.exit_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_prepare.exit

for.inc.2.i.i.if.then.i_crit_edge:                ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.2.i.i.if.then.i_crit_edge, %for.inc.1.i.i.if.then.i_crit_edge, %for.inc.i.i.if.then.i_crit_edge, %nau8825_xtalk_backup.exit.i.if.then.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 2, %for.inc.1.i.i.if.then.i_crit_edge ], [ 1, %for.inc.i.i.if.then.i_crit_edge ], [ 0, %nau8825_xtalk_backup.exit.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.i.if.then.i_crit_edge ]
  %def.i = getelementptr [4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 %retval.0.i.ph.i, i32 1
  %24 = ptrtoint ptr %def.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %def.i, align 4
  %and.i = and i32 %25, 63
  tail call fastcc void @nau8825_hpvol_ramp(ptr noundef %nau8825, i32 noundef %and.i, i32 noundef 0) #8
  br label %nau8825_xtalk_prepare.exit

nau8825_xtalk_prepare.exit:                       ; preds = %if.then.i, %for.inc.2.i.i.nau8825_xtalk_prepare.exit_crit_edge
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i25.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 4, i32 noundef 0) #8
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 5, i32 noundef 12582) #8
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call4.i.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 6, i32 noundef 8) #8
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %call6.i.i = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 7, i32 noundef 16) #8
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call8.i.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 8, i32 noundef 0) #8
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call10.i.i = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 9, i32 noundef 24576) #8
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %40 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i, align 4
  %call.i28.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 9, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %42 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i, align 4
  %call.i29.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 3, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %call.i30.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 4, i32 noundef 127, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %call.i.i27.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 1, i32 noundef 1984, i32 noundef 1984, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %48 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i, align 4
  %call.i22.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 128, i32 noundef 1056, i32 noundef 1056, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %50 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i, align 4
  %call.i23.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 115, i32 noundef 45824, i32 noundef 13056, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %call.i24.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 127, i32 noundef 60, i32 noundef 60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %54 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i, align 4
  %call.i25.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 127, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %56 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i, align 4
  %call.i26.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 12, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %58 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i, align 4
  %call.i27.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 118, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %60 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i, align 4
  %call.i28.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 80, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %62 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i, align 4
  %call.i.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 114, i32 noundef 832, i32 noundef 576, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %64 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i, align 4
  %call.i31.i = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 51, i32 noundef 767, i32 noundef 171, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %66 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i, align 4
  %call.i32.i = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 52, i32 noundef 767, i32 noundef 683, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %call.i33.i = tail call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 76, i32 noundef 16375, i32 noundef 2547, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %70 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i, align 4
  %call.i34.i = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 15, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %72 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i, align 4
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 128, i32 noundef 768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @msleep(i32 noundef 280) #8
  %74 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %xtalk_state, align 4
  tail call fastcc void @nau8825_xtalk_imm_start(ptr noundef %nau8825, i32 noundef 210)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr %struct.nau8825, ptr %nau8825, i32 0, i32 30, i32 1
  %call = tail call i32 @regmap_read(ptr noundef %76, i32 noundef 77, ptr noundef %arrayidx) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_xtalk_measure.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_xtalk_measure, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !412

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %nau8825, align 4
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_xtalk_measure.__UNIQUE_ID_ddebug294, ptr noundef %78, ptr noundef nonnull @.str.35, i32 noundef %80) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.bb2
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %call.i.i91 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 76, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %83 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %xtalk_state, align 4
  tail call fastcc void @nau8825_xtalk_imm_start(ptr noundef %nau8825, i32 noundef 255)
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %regmap10 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %84 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap10, align 4
  %arrayidx12 = getelementptr %struct.nau8825, ptr %nau8825, i32 0, i32 30, i32 2
  %call13 = tail call i32 @regmap_read(ptr noundef %85, i32 noundef 77, ptr noundef %arrayidx12) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_xtalk_measure.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_xtalk_measure, %if.then26)) #8
          to label %do.end32 [label %if.then26], !srcloc !412

if.then26:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %nau8825, align 4
  %88 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_xtalk_measure.__UNIQUE_ID_ddebug295, ptr noundef %87, ptr noundef nonnull @.str.36, i32 noundef %89) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then26, %sw.bb9
  %90 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap10, align 4
  %call.i.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 76, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @msleep(i32 noundef 150) #8
  %92 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 3, ptr %xtalk_state, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  %arrayidx36 = getelementptr %struct.nau8825, ptr %nau8825, i32 0, i32 30, i32 1
  %93 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx36, align 4
  %arrayidx38 = getelementptr %struct.nau8825, ptr %nau8825, i32 0, i32 30, i32 2
  %95 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp.i = icmp eq i32 %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp1.i = icmp eq i32 %96, 0
  %spec.select.i = or i1 %cmp.i, %cmp1.i
  br i1 %spec.select.i, label %do.end.i, label %if.end22.i, !prof !413

do.end.i:                                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 429, i32 noundef 9, ptr noundef null) #8
  br label %nau8825_xtalk_sidetone.exit

if.end22.i:                                       ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  %97 = tail call i32 @llvm.ctlz.i32(i32 %94, i1 true) #8, !range !414
  %shl.i.i = shl i32 %94, %97
  %shr.i.i = lshr i32 %shl.i.i, 23
  %and.i.i = and i32 %shr.i.i, 255
  %and2.i.i = and i32 %shl.i.i, 8388607
  %add.i.i = add nuw nsw i32 %shr.i.i, 1
  %and3.i.i = and i32 %add.i.i, 255
  %arrayidx.i.i = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %and3.i.i
  %98 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %99 to i32
  %arrayidx4.i.i = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %and.i.i
  %100 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx4.i.i, align 2
  %conv5.i.i = zext i16 %101 to i32
  %sub6.i.i = sub nsw i32 %conv.i.i, %conv5.i.i
  %and7.i.i = and i32 %sub6.i.i, 65535
  %mul.i.i = mul i32 %and7.i.i, %and2.i.i
  %shr8.i.i = lshr i32 %mul.i.i, 15
  %.neg.i = mul nsw i32 %97, -16777216
  %shl9.i.i = add nsw i32 %.neg.i, 520093696
  %shl12.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %add13.i.i = or i32 %shl9.i.i, %shl12.i.i
  %add14.i.i = add i32 %add13.i.i, %shr8.i.i
  %conv15.i.i = zext i32 %add14.i.i to i64
  %mul16.i.i = mul nuw nsw i64 %conv15.i.i, 646456993
  %shr17.i.i = lshr i64 %mul16.i.i, 31
  %conv18.i.i = trunc i64 %shr17.i.i to i32
  %div.i.i = udiv i32 %conv18.i.i, 16777
  %102 = tail call i32 @llvm.ctlz.i32(i32 %96, i1 true) #8, !range !414
  %shl.i47.i = shl i32 %96, %102
  %shr.i48.i = lshr i32 %shl.i47.i, 23
  %and.i49.i = and i32 %shr.i48.i, 255
  %and2.i50.i = and i32 %shl.i47.i, 8388607
  %add.i51.i = add nuw nsw i32 %shr.i48.i, 1
  %and3.i52.i = and i32 %add.i51.i, 255
  %arrayidx.i53.i = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %and3.i52.i
  %103 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx.i53.i, align 2
  %conv.i54.i = zext i16 %104 to i32
  %arrayidx4.i55.i = getelementptr [256 x i16], ptr @logtable, i32 0, i32 %and.i49.i
  %105 = ptrtoint ptr %arrayidx4.i55.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %arrayidx4.i55.i, align 2
  %conv5.i56.i = zext i16 %106 to i32
  %sub6.i57.i = sub nsw i32 %conv.i54.i, %conv5.i56.i
  %and7.i58.i = and i32 %sub6.i57.i, 65535
  %mul.i59.i = mul i32 %and7.i58.i, %and2.i50.i
  %shr8.i60.i = lshr i32 %mul.i59.i, 15
  %.neg71.i = mul nsw i32 %102, -16777216
  %shl9.i62.i = add nsw i32 %.neg71.i, 520093696
  %shl12.i63.i = shl nuw nsw i32 %conv5.i56.i, 8
  %add13.i64.i = or i32 %shl9.i62.i, %shl12.i63.i
  %add14.i65.i = add i32 %add13.i64.i, %shr8.i60.i
  %conv15.i66.i = zext i32 %add14.i65.i to i64
  %mul16.i67.i = mul nuw nsw i64 %conv15.i66.i, 646456993
  %shr17.i68.i = lshr i64 %mul16.i67.i, 31
  %conv18.i69.i = trunc i64 %shr17.i68.i to i32
  %div.i70.i = udiv i32 %conv18.i69.i, 16777
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %div.i70.i)
  %cmp24.not.i = icmp ult i32 %div.i.i, %div.i70.i
  %sub.i = sub nsw i32 %div.i.i, %div.i70.i
  %sub26.i = sub nsw i32 %div.i70.i, %div.i.i
  %gain.0.in.in.i = select i1 %cmp24.not.i, i32 %sub26.i, i32 %sub.i
  %gain.0.neg.i = mul nsw i32 %gain.0.in.in.i, -40
  %sub31.i = add nsw i32 %gain.0.neg.i, 162000
  %div.i = udiv i32 %sub31.i, 1000
  br label %nau8825_xtalk_sidetone.exit

nau8825_xtalk_sidetone.exit:                      ; preds = %if.end22.i, %do.end.i
  %retval.0.i94 = phi i32 [ 0, %do.end.i ], [ %div.i, %if.end22.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_xtalk_measure.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_xtalk_measure, %if.then52)) #8
          to label %do.end56 [label %if.then52], !srcloc !412

if.then52:                                        ; preds = %nau8825_xtalk_sidetone.exit
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_xtalk_measure.__UNIQUE_ID_ddebug296, ptr noundef %108, ptr noundef nonnull @.str.37, i32 noundef %retval.0.i94) #8
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %nau8825_xtalk_sidetone.exit
  %regmap57 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %109 = ptrtoint ptr %regmap57 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap57, align 4
  %shl = shl nuw nsw i32 %retval.0.i94, 8
  %or = or i32 %shl, %retval.0.i94
  %call58 = tail call i32 @regmap_write(ptr noundef %110, i32 noundef 47, i32 noundef %or) #8
  tail call fastcc void @nau8825_xtalk_clean(ptr noundef %nau8825, i1 noundef zeroext false)
  %111 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4, ptr %xtalk_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end56, %do.end32, %do.end, %nau8825_xtalk_prepare.exit, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8825_xtalk_imm_start(ptr nocapture noundef readonly %nau8825, i32 noundef %vol) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 48, i32 noundef 255, i32 noundef %vol, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 102, i32 noundef 768, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %xtalk_state = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 26
  %4 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xtalk_state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb5
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb5, %entry.sw.epilog.sink.split_crit_edge
  %.sink19 = phi i32 [ 16384, %sw.bb5 ], [ 32768, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 102, i32 noundef 49152, i32 noundef %.sink19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  tail call void @msleep(i32 noundef 100) #8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 76, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8825_xtalk_clean(ptr noundef %nau8825, i1 noundef zeroext %cause_cancel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nau8825_configure_sysclk(ptr noundef %nau8825, i32 noundef 2, i32 noundef 0)
  %regmap.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 118, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 128, i32 noundef 768, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i31.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 102, i32 noundef 49920, i32 noundef 768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i32.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 127, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i33.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 127, i32 noundef 60, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i34.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 115, i32 noundef 13056, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 128, i32 noundef 1056, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i36.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1, i32 noundef 1728, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %irq.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 7
  %18 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.nau8825_xtalk_clean_dac.exit_crit_edge

entry.nau8825_xtalk_clean_dac.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_clean_dac.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i37.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 1, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %nau8825_xtalk_clean_dac.exit

nau8825_xtalk_clean_dac.exit:                     ; preds = %if.then.i, %entry.nau8825_xtalk_clean_dac.exit_crit_edge
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call.i.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 114, i32 noundef 832, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 76, i32 noundef 0) #8
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 15, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 29, i32 noundef 12303, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %xtalk_baktab_initialized.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 32
  %30 = ptrtoint ptr %xtalk_baktab_initialized.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %xtalk_baktab_initialized.i, align 4, !range !411
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i15 = icmp eq i8 %31, 0
  br i1 %tobool.not.i15, label %nau8825_xtalk_clean_dac.exit.nau8825_xtalk_restore.exit_crit_edge, label %for.cond.preheader.i

nau8825_xtalk_clean_dac.exit.nau8825_xtalk_restore.exit_crit_edge: ; preds = %nau8825_xtalk_clean_dac.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_restore.exit

for.cond.preheader.i:                             ; preds = %nau8825_xtalk_clean_dac.exit
  br i1 %cause_cancel, label %for.inc.1.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.cond.preheader.i
  %32 = load i32, ptr @nau8825_xtalk_baktab, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %32)
  %cmp2.i = icmp eq i32 %32, 50
  br i1 %cmp2.i, label %for.inc.thread.i, label %land.lhs.true.1.critedge.i

for.inc.thread.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 0, i32 1), align 4
  %and.i = and i32 %33, 63
  tail call fastcc void @nau8825_hpvol_ramp(ptr noundef %nau8825, i32 noundef 0, i32 noundef %and.i) #8
  br label %land.lhs.true.1.i

land.lhs.true.1.critedge.i:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %36 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 0, i32 1), align 4
  %call.c23.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %32, i32 noundef %36) #8
  br label %land.lhs.true.1.i

land.lhs.true.1.i:                                ; preds = %land.lhs.true.1.critedge.i, %for.inc.thread.i
  %37 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %37)
  %cmp2.1.i = icmp eq i32 %37, 50
  br i1 %cmp2.1.i, label %for.inc.1.thread.i, label %land.lhs.true.2.critedge.i

for.inc.1.thread.i:                               ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 1, i32 1), align 4
  %and.1.i = and i32 %38, 63
  tail call fastcc void @nau8825_hpvol_ramp(ptr noundef %nau8825, i32 noundef 0, i32 noundef %and.1.i) #8
  br label %land.lhs.true.2.i

for.inc.1.critedge.i:                             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %41 = load i32, ptr @nau8825_xtalk_baktab, align 4
  %42 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 0, i32 1), align 4
  %call.c.i = tail call i32 @regmap_write(ptr noundef %40, i32 noundef %41, i32 noundef %42) #8
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %45 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 1), align 4
  %46 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 1, i32 1), align 4
  %call.1.c.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef %45, i32 noundef %46) #8
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %49 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 2), align 4
  %50 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 2, i32 1), align 4
  %call.2.c.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef %49, i32 noundef %50) #8
  br label %if.end5.3.i

land.lhs.true.2.critedge.i:                       ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i, align 4
  %53 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 1, i32 1), align 4
  %call.1.c24.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef %37, i32 noundef %53) #8
  br label %land.lhs.true.2.i

land.lhs.true.2.i:                                ; preds = %land.lhs.true.2.critedge.i, %for.inc.1.thread.i
  %54 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %54)
  %cmp2.2.i = icmp eq i32 %54, 50
  br i1 %cmp2.2.i, label %for.inc.2.thread.i, label %for.inc.2.i

for.inc.2.thread.i:                               ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 2, i32 1), align 4
  %and.2.i = and i32 %55, 63
  tail call fastcc void @nau8825_hpvol_ramp(ptr noundef %nau8825, i32 noundef 0, i32 noundef %and.2.i) #8
  br label %land.lhs.true.3.i

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i, align 4
  %58 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 2, i32 1), align 4
  %call.2.i = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %54, i32 noundef %58) #8
  br label %land.lhs.true.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i, %for.inc.2.thread.i
  %59 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %59)
  %cmp2.3.i = icmp eq i32 %59, 50
  br i1 %cmp2.3.i, label %if.then3.3.i, label %land.lhs.true.3.i.if.end5.3.i_crit_edge

land.lhs.true.3.i.if.end5.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.3.i

if.then3.3.i:                                     ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %60 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 3, i32 1), align 4
  %and.3.i = and i32 %60, 63
  tail call fastcc void @nau8825_hpvol_ramp(ptr noundef %nau8825, i32 noundef 0, i32 noundef %and.3.i) #8
  br label %for.inc.3.i

if.end5.3.i:                                      ; preds = %land.lhs.true.3.i.if.end5.3.i_crit_edge, %for.inc.1.critedge.i
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 4
  %63 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 3), align 4
  %64 = load i32, ptr getelementptr inbounds ([4 x %struct.reg_default], ptr @nau8825_xtalk_baktab, i32 0, i32 3, i32 1), align 4
  %call.3.i = tail call i32 @regmap_write(ptr noundef %62, i32 noundef %63, i32 noundef %64) #8
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end5.3.i, %if.then3.3.i
  %65 = ptrtoint ptr %xtalk_baktab_initialized.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %xtalk_baktab_initialized.i, align 4
  br label %nau8825_xtalk_restore.exit

nau8825_xtalk_restore.exit:                       ; preds = %for.inc.3.i, %nau8825_xtalk_clean_dac.exit.nau8825_xtalk_restore.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8825_hpvol_ramp(ptr nocapture noundef readonly %nau8825, i32 noundef %vol_from, i32 noundef %vol_to) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %vol_from, i32 %vol_to)
  %cmp = icmp eq i32 %vol_from, %vol_to
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %vol_from, i32 %vol_to)
  %cmp2 = icmp ult i32 %vol_from, %vol_to
  %0 = tail call i32 @llvm.umin.i32(i32 %vol_from, i32 %vol_to)
  %1 = tail call i32 @llvm.umax.i32(i32 %vol_from, i32 %vol_to)
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 54)
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %0)
  %cmp92 = icmp ugt i32 %2, %0
  br i1 %cmp92, label %for.body.lr.ph, label %if.else.for.end_crit_edge

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %sub = add i32 %2, %0
  %regmap = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %volume.03 = phi i32 [ %0, %for.body.lr.ph ], [ %add13, %for.body.for.body_crit_edge ]
  %add = sub i32 %sub, %volume.03
  %value.0 = select i1 %cmp2, i32 %volume.03, i32 %add
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %value.0, 6
  %or = or i32 %shl, %value.0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 50, i32 noundef 4095, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10500, i32 noundef 2) #8
  %add13 = add nuw nsw i32 %volume.03, 3
  %cmp9 = icmp ugt i32 %2, %add13
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else.for.end_crit_edge
  %.vol_from.vol_to = select i1 %cmp2, i32 %2, i32 %0
  %regmap18 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %5 = ptrtoint ptr %regmap18 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap18, align 4
  %shl19 = shl i32 %.vol_from.vol_to, 6
  %or20 = or i32 %shl19, %.vol_from.vol_to
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 50, i32 noundef 4095, i32 noundef %or20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nau8825_configure_sysclk(ptr noundef %nau8825, i32 noundef %clk_id, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  %jkdet.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %2 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %clk_id, label %do.end52 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb9
    i32 3, label %sw.bb25
    i32 4, label %sw.bb32
    i32 5, label %sw.bb41
  ]

sw.bb:                                            ; preds = %entry
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 7168, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %mclk_freq = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 8
  %3 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %sw.bb.do.body54_crit_edge, label %if.then

sw.bb.do.body54_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %mclk = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 4
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %6) #8
  tail call void @clk_unprepare(ptr noundef %6) #8
  br label %do.body54.sink.split

sw.bb3:                                           ; preds = %entry
  %xtalk_sem2.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 6
  %call.i = tail call i32 @down_timeout(ptr noundef %xtalk_sem2.i, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end11.sink.split.i, label %sw.bb3.nau8825_sema_acquire.exit_crit_edge

sw.bb3.nau8825_sema_acquire.exit_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_sema_acquire.exit

if.end11.sink.split.i:                            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.45) #11
  br label %nau8825_sema_acquire.exit

nau8825_sema_acquire.exit:                        ; preds = %if.end11.sink.split.i, %sw.bb3.nau8825_sema_acquire.exit_crit_edge
  %call.i.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i5.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i6.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 7168, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %xtalk_sem2.i) #8
  %call5 = tail call fastcc i32 @nau8825_mclk_prepare(ptr noundef %nau8825, i32 noundef %freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %nau8825_sema_acquire.exit.do.body54_crit_edge, label %nau8825_sema_acquire.exit.cleanup_crit_edge

nau8825_sema_acquire.exit.cleanup_crit_edge:      ; preds = %nau8825_sema_acquire.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nau8825_sema_acquire.exit.do.body54_crit_edge:    ; preds = %nau8825_sema_acquire.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

sw.bb9:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %status.i, align 4, !annotation !410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jkdet.i) #8
  %10 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %jkdet.i, align 4, !annotation !410
  %call.i113 = call i32 @regmap_read(ptr noundef %1, i32 noundef 13, ptr noundef nonnull %jkdet.i) #8
  %11 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %jkdet.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 88, ptr noundef nonnull %status.i) #8
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i, align 4
  %and.i = lshr i32 %12, 1
  %and2.i = lshr i32 %14, 7
  %15 = xor i32 %and2.i, %and.i
  %16 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i114 = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jkdet.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %cmp.i114, label %if.then12, label %if.else

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i115 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i116 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i117 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i118 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 7295, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i119 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9, i32 noundef 16384, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end18

if.else:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nau8825_configure_mclk_as_sysclk(ptr noundef %1)
  %17 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nau8825, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.38) #11
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then12
  %mclk_freq19 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 8
  %19 = ptrtoint ptr %mclk_freq19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mclk_freq19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not = icmp eq i32 %20, 0
  br i1 %tobool20.not, label %if.end18.do.body54_crit_edge, label %if.then21

if.end18.do.body54_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %mclk22 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 4
  %21 = ptrtoint ptr %mclk22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mclk22, align 4
  call void @clk_disable(ptr noundef %22) #8
  call void @clk_unprepare(ptr noundef %22) #8
  br label %do.body54.sink.split

sw.bb25:                                          ; preds = %entry
  %xtalk_sem2.i120 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 6
  %call.i121 = tail call i32 @down_timeout(ptr noundef %xtalk_sem2.i120, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %cmp.i122 = icmp slt i32 %call.i121, 0
  br i1 %cmp.i122, label %if.end11.sink.split.i123, label %sw.bb25.nau8825_sema_acquire.exit124_crit_edge

sw.bb25.nau8825_sema_acquire.exit124_crit_edge:   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_sema_acquire.exit124

if.end11.sink.split.i123:                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.45) #11
  br label %nau8825_sema_acquire.exit124

nau8825_sema_acquire.exit124:                     ; preds = %if.end11.sink.split.i123, %sw.bb25.nau8825_sema_acquire.exit124_crit_edge
  %call.i125 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 64512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %xtalk_sem2.i120) #8
  %call28 = tail call fastcc i32 @nau8825_mclk_prepare(ptr noundef %nau8825, i32 noundef %freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %nau8825_sema_acquire.exit124.do.body54_crit_edge, label %nau8825_sema_acquire.exit124.cleanup_crit_edge

nau8825_sema_acquire.exit124.cleanup_crit_edge:   ; preds = %nau8825_sema_acquire.exit124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

nau8825_sema_acquire.exit124.do.body54_crit_edge: ; preds = %nau8825_sema_acquire.exit124
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

sw.bb32:                                          ; preds = %entry
  %xtalk_sem2.i127 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 6
  %call.i128 = tail call i32 @down_timeout(ptr noundef %xtalk_sem2.i127, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp.i129 = icmp slt i32 %call.i128, 0
  br i1 %cmp.i129, label %if.end11.sink.split.i130, label %sw.bb32.nau8825_sema_acquire.exit131_crit_edge

sw.bb32.nau8825_sema_acquire.exit131_crit_edge:   ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_sema_acquire.exit131

if.end11.sink.split.i130:                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.45) #11
  br label %nau8825_sema_acquire.exit131

nau8825_sema_acquire.exit131:                     ; preds = %if.end11.sink.split.i130, %sw.bb32.nau8825_sema_acquire.exit131_crit_edge
  %call.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 64512, i32 noundef 63488, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %xtalk_sem2.i127) #8
  %mclk_freq35 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 8
  %27 = ptrtoint ptr %mclk_freq35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mclk_freq35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool36.not = icmp eq i32 %28, 0
  br i1 %tobool36.not, label %nau8825_sema_acquire.exit131.do.body54_crit_edge, label %if.then37

nau8825_sema_acquire.exit131.do.body54_crit_edge: ; preds = %nau8825_sema_acquire.exit131
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.then37:                                        ; preds = %nau8825_sema_acquire.exit131
  call void @__sanitizer_cov_trace_pc() #10
  %mclk38 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 4
  %29 = ptrtoint ptr %mclk38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mclk38, align 4
  tail call void @clk_disable(ptr noundef %30) #8
  tail call void @clk_unprepare(ptr noundef %30) #8
  br label %do.body54.sink.split

sw.bb41:                                          ; preds = %entry
  %xtalk_sem2.i134 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 6
  %call.i135 = tail call i32 @down_timeout(ptr noundef %xtalk_sem2.i134, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp.i136 = icmp slt i32 %call.i135, 0
  br i1 %cmp.i136, label %if.end11.sink.split.i137, label %sw.bb41.nau8825_sema_acquire.exit138_crit_edge

sw.bb41.nau8825_sema_acquire.exit138_crit_edge:   ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_sema_acquire.exit138

if.end11.sink.split.i137:                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.45) #11
  br label %nau8825_sema_acquire.exit138

nau8825_sema_acquire.exit138:                     ; preds = %if.end11.sink.split.i137, %sw.bb41.nau8825_sema_acquire.exit138_crit_edge
  %call.i139 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 64512, i32 noundef 64512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %xtalk_sem2.i134) #8
  %mclk_freq44 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 8
  %33 = ptrtoint ptr %mclk_freq44 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mclk_freq44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool45.not = icmp eq i32 %34, 0
  br i1 %tobool45.not, label %nau8825_sema_acquire.exit138.do.body54_crit_edge, label %if.then46

nau8825_sema_acquire.exit138.do.body54_crit_edge: ; preds = %nau8825_sema_acquire.exit138
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

if.then46:                                        ; preds = %nau8825_sema_acquire.exit138
  call void @__sanitizer_cov_trace_pc() #10
  %mclk47 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 4
  %35 = ptrtoint ptr %mclk47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mclk47, align 4
  tail call void @clk_disable(ptr noundef %36) #8
  tail call void @clk_unprepare(ptr noundef %36) #8
  br label %do.body54.sink.split

do.end52:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.42, i32 noundef %clk_id) #11
  br label %cleanup

do.body54.sink.split:                             ; preds = %if.then46, %if.then37, %if.then21, %if.then
  %mclk_freq.sink = phi ptr [ %mclk_freq, %if.then ], [ %mclk_freq19, %if.then21 ], [ %mclk_freq35, %if.then37 ], [ %mclk_freq44, %if.then46 ]
  %39 = ptrtoint ptr %mclk_freq.sink to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %mclk_freq.sink, align 4
  br label %do.body54

do.body54:                                        ; preds = %do.body54.sink.split, %nau8825_sema_acquire.exit138.do.body54_crit_edge, %nau8825_sema_acquire.exit131.do.body54_crit_edge, %nau8825_sema_acquire.exit124.do.body54_crit_edge, %if.end18.do.body54_crit_edge, %nau8825_sema_acquire.exit.do.body54_crit_edge, %sw.bb.do.body54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_configure_sysclk.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_configure_sysclk, %if.then59)) #8
          to label %cleanup [label %if.then59], !srcloc !412

if.then59:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %nau8825, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_configure_sysclk.__UNIQUE_ID_ddebug301, ptr noundef %41, ptr noundef nonnull @.str.44, i32 noundef %freq, i32 noundef %clk_id) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %do.body54, %do.end52, %nau8825_sema_acquire.exit124.cleanup_crit_edge, %nau8825_sema_acquire.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end52 ], [ %call5, %nau8825_sema_acquire.exit.cleanup_crit_edge ], [ %call28, %nau8825_sema_acquire.exit124.cleanup_crit_edge ], [ 0, %if.then59 ], [ 0, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8825_configure_mclk_as_sysclk(ptr noundef %regmap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %regmap, i32 noundef 4, i32 noundef 7168, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nau8825_sema_acquire(ptr noundef %nau8825, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout)
  %tobool.not = icmp eq i32 %timeout, 0
  %xtalk_sem2 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @down_timeout(ptr noundef %xtalk_sem2, i32 noundef %timeout) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.if.end11.sink.split_crit_edge, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then.if.end11.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @down_trylock(ptr noundef %xtalk_sem2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.if.end11_crit_edge, label %if.else.if.end11.sink.split_crit_edge

if.else.if.end11.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.sink.split

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11.sink.split:                              ; preds = %if.else.if.end11.sink.split_crit_edge, %if.then.if.end11.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.45, %if.then.if.end11.sink.split_crit_edge ], [ @.str.48, %if.else.if.end11.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call, %if.then.if.end11.sink.split_crit_edge ], [ %call3, %if.else.if.end11.sink.split_crit_edge ]
  %0 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull %.str.48.sink) #11
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.if.end11_crit_edge ], [ 0, %if.else.if.end11_crit_edge ], [ %ret.0.ph, %if.end11.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nau8825_mclk_prepare(ptr nocapture noundef %nau8825, i32 noundef %freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nau8825, align 4
  %call = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.27) #8
  %mclk = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 4
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.28) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mclk_freq = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 8
  %5 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then4.do.end11_crit_edge

if.then4.do.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

if.end.i:                                         ; preds = %if.then4
  %call1.i = tail call i32 @clk_enable(ptr noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.then3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then3.i, %if.then4.do.end11_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then4.do.end11_crit_edge ]
  %7 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.52) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end.i.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %9 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mclk_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %freq)
  %cmp.not = icmp eq i32 %10, %freq
  br i1 %cmp.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %11 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mclk, align 4
  %call18 = tail call i32 @clk_round_rate(ptr noundef %12, i32 noundef %freq) #8
  %13 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mclk, align 4
  %call20 = tail call i32 @clk_set_rate(ptr noundef %14, i32 noundef %call18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nau8825, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.55) #11
  br label %cleanup

if.end27:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call18, ptr %mclk_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end25, %if.end14.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call20, %do.end25 ], [ %retval.0.i.ph, %do.end11 ], [ 0, %if.end27 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @nau8825_is_jack_inserted(ptr noundef %regmap) unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  %jkdet = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #8
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jkdet) #8
  %1 = ptrtoint ptr %jkdet to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %jkdet, align 4, !annotation !410
  %call = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 13, ptr noundef nonnull %jkdet) #8
  %2 = ptrtoint ptr %jkdet to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %jkdet, align 4
  %call1 = call i32 @regmap_read(ptr noundef %regmap, i32 noundef 88, ptr noundef nonnull %status) #8
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and = lshr i32 %3, 1
  %and2 = lshr i32 %5, 7
  %6 = xor i32 %and2, %and
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jkdet) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #8
  ret i1 %cmp
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_trylock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_interrupt(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  %jkdet.i = alloca i32, align 4
  %active_irq = alloca i32, align 4
  %key_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irq) #8
  %2 = ptrtoint ptr %active_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %active_irq, align 4, !annotation !410
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %active_irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.76) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %active_irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_irq, align 4
  %and = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp = icmp eq i32 %and, 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nau8825_eject_jack(ptr noundef %data)
  br label %land.lhs.true91

if.else:                                          ; preds = %if.end
  %and3 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key_status) #8
  %7 = ptrtoint ptr %key_status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %key_status, align 4, !annotation !410
  %call6 = call i32 @regmap_read(ptr noundef %1, i32 noundef 17, ptr noundef nonnull %key_status) #8
  %8 = ptrtoint ptr %key_status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_status, align 4
  %10 = lshr i32 %9, 8
  %trunc.i = trunc i32 %10 to i15
  %rev.i = call i15 @llvm.bitreverse.i15(i15 %trunc.i) #8
  %mask.i = and i15 %rev.i, -512
  %11 = zext i15 %mask.i to i32
  %button_pressed = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 9
  %12 = ptrtoint ptr %button_pressed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %button_pressed, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key_status) #8
  br label %land.lhs.true91

if.else11:                                        ; preds = %if.else
  %and12 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else15, label %if.else11.land.lhs.true91_crit_edge

if.else11.land.lhs.true91_crit_edge:              ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true91

if.else15:                                        ; preds = %if.else11
  %and16 = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else58, label %if.then18

if.then18:                                        ; preds = %if.else15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %status.i, align 4, !annotation !410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jkdet.i) #8
  %14 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %jkdet.i, align 4, !annotation !410
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 13, ptr noundef nonnull %jkdet.i) #8
  %15 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %jkdet.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 88, ptr noundef nonnull %status.i) #8
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 4
  %and.i = lshr i32 %16, 1
  %and2.i = lshr i32 %18, 7
  %19 = xor i32 %and2.i, %and.i
  %20 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i = icmp eq i32 %20, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jkdet.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  br i1 %cmp.i, label %if.then20, label %do.end50

if.then20:                                        ; preds = %if.then18
  %call21 = call fastcc i32 @nau8825_jack_insert(ptr noundef %data)
  %xtalk_enable = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 31
  %21 = ptrtoint ptr %xtalk_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xtalk_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool23.not = icmp eq i32 %22, 0
  br i1 %tobool23.not, label %if.then20.if.else40_crit_edge, label %land.lhs.true

if.then20.if.else40_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else40

land.lhs.true:                                    ; preds = %if.then20
  %high_imped = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 25
  %23 = ptrtoint ptr %high_imped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %high_imped, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool24.not = icmp eq i32 %24, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true.if.else40_crit_edge

land.lhs.true.if.else40_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else40

if.then25:                                        ; preds = %land.lhs.true
  %xtalk_protect = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 29
  %25 = ptrtoint ptr %xtalk_protect to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %xtalk_protect, align 4, !range !411
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool26.not = icmp eq i8 %26, 0
  br i1 %tobool26.not, label %if.then27, label %if.then25.if.then37_crit_edge

if.then25.if.then37_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then27:                                        ; preds = %if.then25
  %27 = ptrtoint ptr %xtalk_protect to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %xtalk_protect, align 4
  %call29 = call fastcc i32 @nau8825_sema_acquire(ptr noundef %data, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end34, label %if.end34.thread

if.end34.thread:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %xtalk_protect to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %xtalk_protect, align 4
  br label %if.end52

if.end34:                                         ; preds = %if.then27
  %29 = ptrtoint ptr %xtalk_protect to i32
  call void @__asan_load1_noabort(i32 %29)
  %.pr = load i8, ptr %xtalk_protect, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool36.not = icmp eq i8 %.pr, 0
  br i1 %tobool36.not, label %if.end34.if.end52_crit_edge, label %if.end34.if.then37_crit_edge

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.end34.if.end52_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %if.then25.if.then37_crit_edge
  %xtalk_state = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 26
  %30 = ptrtoint ptr %xtalk_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %xtalk_state, align 4
  %xtalk_work = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %31 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %xtalk_work) #8
  br label %if.end52

if.else40:                                        ; preds = %land.lhs.true.if.else40_crit_edge, %if.then20.if.else40_crit_edge
  %xtalk_protect41 = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 29
  %32 = ptrtoint ptr %xtalk_protect41 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %xtalk_protect41, align 4, !range !411
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool42.not = icmp eq i8 %33, 0
  br i1 %tobool42.not, label %if.else40.if.end52_crit_edge, label %if.then43

if.else40.if.end52_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then43:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #10
  %xtalk_sem.i = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 6
  call void @up(ptr noundef %xtalk_sem.i) #8
  %34 = ptrtoint ptr %xtalk_protect41 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %xtalk_protect41, align 4
  br label %if.end52

do.end50:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.79) #11
  call fastcc void @nau8825_eject_jack(ptr noundef %data)
  br label %if.end52

if.end52:                                         ; preds = %do.end50, %if.then43, %if.else40.if.end52_crit_edge, %if.then37, %if.end34.if.end52_crit_edge, %if.end34.thread
  %event.0 = phi i32 [ %call21, %if.then43 ], [ %call21, %if.else40.if.end52_crit_edge ], [ %call21, %if.then37 ], [ %call21, %if.end34.if.end52_crit_edge ], [ 0, %do.end50 ], [ %call21, %if.end34.thread ]
  %xtalk_state54 = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 26
  %37 = ptrtoint ptr %xtalk_state54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %xtalk_state54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp55 = icmp eq i32 %38, 0
  br i1 %cmp55, label %if.then56, label %if.end52.land.lhs.true91_crit_edge

if.end52.land.lhs.true91_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true91

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %xtalk_event = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 27
  %39 = ptrtoint ptr %xtalk_event to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %event.0, ptr %xtalk_event, align 4
  %xtalk_event_mask = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 28
  %40 = ptrtoint ptr %xtalk_event_mask to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %xtalk_event_mask, align 4
  br label %land.lhs.true91

if.else58:                                        ; preds = %if.else15
  %and59 = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else71, label %if.then61

if.then61:                                        ; preds = %if.else58
  %xtalk_enable62 = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 31
  %41 = ptrtoint ptr %xtalk_enable62 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xtalk_enable62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool63.not = icmp eq i32 %42, 0
  br i1 %tobool63.not, label %if.then61.if.end88_crit_edge, label %land.lhs.true64

if.then61.if.end88_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

land.lhs.true64:                                  ; preds = %if.then61
  %xtalk_protect65 = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 29
  %43 = ptrtoint ptr %xtalk_protect65 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %xtalk_protect65, align 4, !range !411
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool66.not = icmp eq i8 %44, 0
  br i1 %tobool66.not, label %land.lhs.true64.if.end88_crit_edge, label %if.then67

land.lhs.true64.if.end88_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then67:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #10
  %xtalk_work68 = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %45 = load ptr, ptr @system_wq, align 4
  %call.i.i144 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %xtalk_work68) #8
  br label %if.end88

if.else71:                                        ; preds = %if.else58
  %and72 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and72)
  %cmp73 = icmp eq i32 %and72, 1
  br i1 %cmp73, label %if.then74, label %if.else71.if.end88.thread_crit_edge

if.else71.if.end88.thread_crit_edge:              ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.thread

if.then74:                                        ; preds = %if.else71
  %call75 = call fastcc zeroext i1 @nau8825_is_jack_inserted(ptr noundef %1)
  br i1 %call75, label %if.then76, label %if.then74.if.end88.thread_crit_edge

if.then74.if.end88.thread_crit_edge:              ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.thread

if.then76:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %call.i145 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 18, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i146 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 15, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call fastcc void @nau8825_setup_auto_irq(ptr noundef %data)
  br label %if.end88.thread

if.end88.thread:                                  ; preds = %if.then76, %if.then74.if.end88.thread_crit_edge, %if.else71.if.end88.thread_crit_edge
  %46 = ptrtoint ptr %active_irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %active_irq, align 4
  %call89162 = call i32 @regmap_write(ptr noundef %1, i32 noundef 17, i32 noundef %47) #8
  br label %cleanup

if.end88:                                         ; preds = %if.then67, %land.lhs.true64.if.end88_crit_edge, %if.then61.if.end88_crit_edge
  %call89 = call i32 @regmap_write(ptr noundef %1, i32 noundef 17, i32 noundef 256) #8
  br label %cleanup

land.lhs.true91:                                  ; preds = %if.then56, %if.end52.land.lhs.true91_crit_edge, %if.else11.land.lhs.true91_crit_edge, %if.then5, %if.then2
  %clear_irq.0.ph.ph = phi i32 [ 32, %if.then5 ], [ 1024, %if.then56 ], [ 1024, %if.end52.land.lhs.true91_crit_edge ], [ 12, %if.then2 ], [ 128, %if.else11.land.lhs.true91_crit_edge ]
  %event.1.ph.ph = phi i32 [ %11, %if.then5 ], [ %event.0, %if.then56 ], [ %event.0, %if.end52.land.lhs.true91_crit_edge ], [ 0, %if.then2 ], [ 0, %if.else11.land.lhs.true91_crit_edge ]
  %event_mask.0.ph.ph = phi i32 [ 30720, %if.then5 ], [ 3, %if.then56 ], [ 3, %if.end52.land.lhs.true91_crit_edge ], [ 3, %if.then2 ], [ 30720, %if.else11.land.lhs.true91_crit_edge ]
  %call89168 = call i32 @regmap_write(ptr noundef %1, i32 noundef 17, i32 noundef %clear_irq.0.ph.ph) #8
  %xtalk_state92 = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 26
  %48 = ptrtoint ptr %xtalk_state92 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xtalk_state92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp93 = icmp eq i32 %49, 4
  br i1 %cmp93, label %if.then94, label %land.lhs.true91.cleanup_crit_edge

land.lhs.true91.cleanup_crit_edge:                ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then94:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #10
  %jack = getelementptr inbounds %struct.nau8825, ptr %data, i32 0, i32 3
  %50 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %jack, align 4
  call void @snd_soc_jack_report(ptr noundef %51, i32 noundef %event.1.ph.ph, i32 noundef %event_mask.0.ph.ph) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %land.lhs.true91.cleanup_crit_edge, %if.end88, %if.end88.thread, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then94 ], [ 1, %land.lhs.true91.cleanup_crit_edge ], [ 1, %if.end88 ], [ 1, %if.end88.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8825_eject_jack(ptr noundef %nau8825) unnamed_addr #0 align 64 {
entry:
  %active_irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm1 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 2
  %0 = ptrtoint ptr %dapm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm1, align 4
  %regmap2 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  %xtalk_enable.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 31
  %4 = ptrtoint ptr %xtalk_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xtalk_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.nau8825_xtalk_cancel.exit_crit_edge, label %land.lhs.true.i

entry.nau8825_xtalk_cancel.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_cancel.exit

land.lhs.true.i:                                  ; preds = %entry
  %xtalk_state.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 26
  %6 = ptrtoint ptr %xtalk_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xtalk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 4
  br i1 %cmp.not.i, label %land.lhs.true.i.nau8825_xtalk_cancel.exit_crit_edge, label %if.then.i

land.lhs.true.i.nau8825_xtalk_cancel.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_cancel.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %xtalk_work.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 5
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %xtalk_work.i) #8
  tail call fastcc void @nau8825_xtalk_clean(ptr noundef %nau8825, i1 noundef zeroext true) #8
  br label %nau8825_xtalk_cancel.exit

nau8825_xtalk_cancel.exit:                        ; preds = %if.then.i, %land.lhs.true.i.nau8825_xtalk_cancel.exit_crit_edge, %entry.nau8825_xtalk_cancel.exit_crit_edge
  %count.i.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %count.i.i, align 4
  %xtalk_state1.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 26
  %9 = ptrtoint ptr %xtalk_state1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %xtalk_state1.i, align 4
  %xtalk_protect.i = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 29
  %10 = ptrtoint ptr %xtalk_protect.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %xtalk_protect.i, align 4
  %call = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %1, ptr noundef nonnull @.str.81) #8
  %call3 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %1, ptr noundef nonnull @.str.82) #8
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 116, i32 noundef 20480, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call6 = tail call i32 @snd_soc_dapm_sync(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irq.i) #8
  %11 = ptrtoint ptr %active_irq.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %active_irq.i, align 4, !annotation !410
  %call.i25 = call i32 @regmap_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %active_irq.i) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %nau8825_xtalk_cancel.exit
  %i.06.i = phi i32 [ 0, %nau8825_xtalk_cancel.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %shl.i = shl nuw nsw i32 1, %i.06.i
  %12 = ptrtoint ptr %active_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %active_irq.i, align 4
  %and.i = and i32 %13, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i26 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i26, label %for.body.i.for.inc.i_crit_edge, label %if.then.i27

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i27:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 17, i32 noundef %shl.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i27, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %nau8825_int_status_clear_all.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

nau8825_int_status_clear_all.exit:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irq.i) #8
  %call.i28 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 18, i32 noundef 5, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i29 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 15, i32 noundef 3077, i32 noundef 3076, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i30 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 13, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i31 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call11 = call fastcc i32 @nau8825_configure_sysclk(ptr noundef %nau8825, i32 noundef 0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nau8825_jack_insert(ptr nocapture noundef %nau8825) unnamed_addr #0 align 64 {
entry:
  %jack_status_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %dapm2 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 2
  %2 = ptrtoint ptr %dapm2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dapm2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jack_status_reg) #8
  %4 = ptrtoint ptr %jack_status_reg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %jack_status_reg, align 4, !annotation !410
  %call = call i32 @regmap_read(ptr noundef %1, i32 noundef 130, ptr noundef nonnull %jack_status_reg) #8
  %5 = ptrtoint ptr %jack_status_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %jack_status_reg, align 4
  %7 = lshr i32 %6, 10
  %and = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  %high_imped = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 25
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %high_imped to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %high_imped, align 4
  %9 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nau8825, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.86) #11
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %high_imped to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %high_imped, align 4
  %12 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %and, label %if.end.unreachabledefault [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %do.body
    i32 2, label %do.body17
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_jack_insert.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_jack_insert, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !412

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nau8825, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_jack_insert.__UNIQUE_ID_ddebug298, ptr noundef %14, ptr noundef nonnull @.str.84) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 12, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i66 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 116, i32 noundef 20480, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i67 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 19, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call13 = call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %3, ptr noundef nonnull @.str.82) #8
  %call14 = call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %3, ptr noundef nonnull @.str.81) #8
  %call15 = call i32 @snd_soc_dapm_sync(ptr noundef %3) #8
  br label %sw.epilog

do.body17:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_jack_insert.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_jack_insert, %if.then29)) #8
          to label %do.end33 [label %if.then29], !srcloc !412

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %nau8825 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nau8825, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_jack_insert.__UNIQUE_ID_ddebug299, ptr noundef %16, ptr noundef nonnull @.str.85) #8
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body17
  %call.i68 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 12, i32 noundef 12, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i69 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 116, i32 noundef 20480, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i70 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 19, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call37 = call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %3, ptr noundef nonnull @.str.82) #8
  %call38 = call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %3, ptr noundef nonnull @.str.81) #8
  %call39 = call i32 @snd_soc_dapm_sync(ptr noundef %3) #8
  br label %sw.epilog

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

sw.epilog:                                        ; preds = %do.end33, %do.end, %if.end.sw.epilog_crit_edge, %if.end.thread
  %type.0 = phi i32 [ 1, %if.end.thread ], [ 3, %do.end33 ], [ 3, %do.end ], [ 1, %if.end.sw.epilog_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jack_status_reg) #8
  ret i32 %type.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nau8825_setup_auto_irq(ptr noundef %nau8825) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap1 = getelementptr inbounds %struct.nau8825, ptr %nau8825, i32 0, i32 1
  %0 = ptrtoint ptr %regmap1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 15, i32 noundef 1028, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call2 = tail call fastcc i32 @nau8825_configure_sysclk(ptr noundef %nau8825, i32 noundef 2, i32 noundef 0)
  %call.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 1, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 29, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 29, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 13, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call7 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 18, i32 noundef 0) #8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 13, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 13, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nau8825_component_probe(ptr noundef %component) #7 align 64 {
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
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %dapm2 = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dapm2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dapm.i, ptr %dapm2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nau8825_component_remove(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %xtalk_enable.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %xtalk_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xtalk_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.nau8825_xtalk_cancel.exit_crit_edge, label %land.lhs.true.i

entry.nau8825_xtalk_cancel.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_cancel.exit

land.lhs.true.i:                                  ; preds = %entry
  %xtalk_state.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %xtalk_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xtalk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 4
  br i1 %cmp.not.i, label %land.lhs.true.i.nau8825_xtalk_cancel.exit_crit_edge, label %if.then.i

land.lhs.true.i.nau8825_xtalk_cancel.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_cancel.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %xtalk_work.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 5
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %xtalk_work.i) #8
  tail call fastcc void @nau8825_xtalk_clean(ptr noundef %3, i1 noundef zeroext true) #8
  br label %nau8825_xtalk_cancel.exit

nau8825_xtalk_cancel.exit:                        ; preds = %if.then.i, %land.lhs.true.i.nau8825_xtalk_cancel.exit_crit_edge, %entry.nau8825_xtalk_cancel.exit_crit_edge
  %count.i.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %count.i.i, align 4
  %xtalk_state1.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 26
  %9 = ptrtoint ptr %xtalk_state1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %xtalk_state1.i, align 4
  %xtalk_protect.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 29
  %10 = ptrtoint ptr %xtalk_protect.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %xtalk_protect.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_suspend(ptr noundef %component) #0 align 64 {
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
  %irq = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 0) #8
  %dapm = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dapm, align 4
  %call2 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %7, ptr noundef nonnull @.str.81) #8
  %8 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dapm, align 4
  %call4 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %9, ptr noundef nonnull @.str.82) #8
  %10 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dapm, align 4
  %call6 = tail call i32 @snd_soc_dapm_sync(ptr noundef %11) #8
  %regmap = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %13, i1 noundef zeroext true) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %15) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_resume(ptr nocapture noundef readonly %component) #0 align 64 {
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
  %regmap = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #8
  %xtalk_protect = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 29
  %8 = ptrtoint ptr %xtalk_protect to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %xtalk_protect, align 4
  %xtalk_sem2.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 6
  %call3.i = tail call i32 @down_trylock(ptr noundef %xtalk_sem2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.48) #11
  %11 = ptrtoint ptr %xtalk_protect to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %xtalk_protect, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 7
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %13) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %call1 = tail call fastcc i32 @nau8825_configure_sysclk(ptr noundef %3, i32 noundef %clk_id, i32 noundef %freq)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_set_pll(ptr nocapture noundef readonly %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #0 align 64 {
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
  %div20 = lshr i32 %freq_out, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500001, i32 %freq_in)
  %cmp1.i = icmp ult i32 %freq_in, 13500001
  br i1 %cmp1.i, label %if.end4.i, label %for.inc.i

for.inc.i:                                        ; preds = %entry
  %div.1110.i = lshr i32 %freq_in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000002, i32 %freq_in)
  %cmp1.1.i = icmp ult i32 %freq_in, 27000002
  br i1 %cmp1.1.i, label %for.inc.i.if.end4.thread.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end4.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %div.2111.i = lshr i32 %freq_in, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000004, i32 %freq_in)
  %cmp1.2.i = icmp ult i32 %freq_in, 54000004
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end4.thread.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end4.thread.i_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %div.3112.i = lshr i32 %freq_in, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000008, i32 %freq_in)
  %cmp1.3.i = icmp ult i32 %freq_in, 108000008
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end4.thread.i_crit_edge, label %for.inc.2.i.do.end_crit_edge

for.inc.2.i.do.end_crit_edge:                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.2.i.if.end4.thread.i_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.thread.i

if.end4.thread.i:                                 ; preds = %for.inc.2.i.if.end4.thread.i_crit_edge, %for.inc.1.i.if.end4.thread.i_crit_edge, %for.inc.i.if.end4.thread.i_crit_edge
  %i.0100.lcssa.ph.i = phi i32 [ 3, %for.inc.2.i.if.end4.thread.i_crit_edge ], [ 2, %for.inc.1.i.if.end4.thread.i_crit_edge ], [ 1, %for.inc.i.if.end4.thread.i_crit_edge ]
  %div.lcssa.ph.i = phi i32 [ %div.3112.i, %for.inc.2.i.if.end4.thread.i_crit_edge ], [ %div.2111.i, %for.inc.1.i.if.end4.thread.i_crit_edge ], [ %div.1110.i, %for.inc.i.if.end4.thread.i_crit_edge ]
  %val115.i = getelementptr [4 x %struct.nau8825_fll_attr], ptr @fll_pre_scalar, i32 0, i32 %i.0100.lcssa.ph.i, i32 1
  %4 = ptrtoint ptr %val115.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val115.i, align 4
  br label %if.end19.i

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 512000, i32 %freq_in)
  %cmp11.not.i = icmp ult i32 %freq_in, 512000
  br i1 %cmp11.not.i, label %for.inc14.i, label %if.end4.i.if.end19.i_crit_edge

if.end4.i.if.end19.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %freq_in)
  %cmp11.not.1.i = icmp ult i32 %freq_in, 256000
  br i1 %cmp11.not.1.i, label %for.inc14.1.i, label %for.inc14.i.if.end19.i_crit_edge

for.inc14.i.if.end19.i_crit_edge:                 ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.1.i:                                    ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %freq_in)
  %cmp11.not.2.i = icmp ult i32 %freq_in, 128000
  br i1 %cmp11.not.2.i, label %for.inc14.2.i, label %for.inc14.1.i.if.end19.i_crit_edge

for.inc14.1.i.if.end19.i_crit_edge:               ; preds = %for.inc14.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.2.i:                                    ; preds = %for.inc14.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %freq_in)
  %cmp11.not.3.i = icmp ult i32 %freq_in, 64000
  br i1 %cmp11.not.3.i, label %for.inc14.3.i, label %for.inc14.2.i.if.end19.i_crit_edge

for.inc14.2.i.if.end19.i_crit_edge:               ; preds = %for.inc14.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.3.i:                                    ; preds = %for.inc14.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %freq_in)
  %cmp11.not.4.i = icmp ult i32 %freq_in, 32000
  br i1 %cmp11.not.4.i, label %for.inc14.4.i, label %for.inc14.3.i.if.end19.i_crit_edge

for.inc14.3.i.if.end19.i_crit_edge:               ; preds = %for.inc14.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.4.i:                                    ; preds = %for.inc14.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %freq_in)
  %cmp11.not.5.i = icmp ult i32 %freq_in, 8000
  br i1 %cmp11.not.5.i, label %for.inc14.5.i, label %for.inc14.4.i.if.end19.i_crit_edge

for.inc14.4.i.if.end19.i_crit_edge:               ; preds = %for.inc14.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.5.i:                                    ; preds = %for.inc14.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %freq_in)
  %cmp11.not.6.i = icmp ult i32 %freq_in, 4000
  br i1 %cmp11.not.6.i, label %for.inc14.5.i.do.end_crit_edge, label %for.inc14.5.i.if.end19.i_crit_edge

for.inc14.5.i.if.end19.i_crit_edge:               ; preds = %for.inc14.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i

for.inc14.5.i.do.end_crit_edge:                   ; preds = %for.inc14.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end19.i:                                       ; preds = %for.inc14.5.i.if.end19.i_crit_edge, %for.inc14.4.i.if.end19.i_crit_edge, %for.inc14.3.i.if.end19.i_crit_edge, %for.inc14.2.i.if.end19.i_crit_edge, %for.inc14.1.i.if.end19.i_crit_edge, %for.inc14.i.if.end19.i_crit_edge, %if.end4.i.if.end19.i_crit_edge, %if.end4.thread.i
  %fll_param.sroa.19.0 = phi i32 [ 0, %for.inc14.5.i.if.end19.i_crit_edge ], [ 0, %for.inc14.4.i.if.end19.i_crit_edge ], [ 0, %for.inc14.3.i.if.end19.i_crit_edge ], [ 0, %for.inc14.2.i.if.end19.i_crit_edge ], [ 0, %for.inc14.1.i.if.end19.i_crit_edge ], [ 0, %for.inc14.i.if.end19.i_crit_edge ], [ 0, %if.end4.i.if.end19.i_crit_edge ], [ %5, %if.end4.thread.i ]
  %div.lcssa119.i = phi i32 [ %freq_in, %for.inc14.5.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.4.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.3.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.2.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.1.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.i.if.end19.i_crit_edge ], [ %freq_in, %if.end4.i.if.end19.i_crit_edge ], [ %div.lcssa.ph.i, %if.end4.thread.i ]
  %i.1101.lcssa.i = phi i32 [ 6, %for.inc14.5.i.if.end19.i_crit_edge ], [ 5, %for.inc14.4.i.if.end19.i_crit_edge ], [ 4, %for.inc14.3.i.if.end19.i_crit_edge ], [ 3, %for.inc14.2.i.if.end19.i_crit_edge ], [ 2, %for.inc14.1.i.if.end19.i_crit_edge ], [ 1, %for.inc14.i.if.end19.i_crit_edge ], [ 0, %if.end4.i.if.end19.i_crit_edge ], [ 0, %if.end4.thread.i ]
  %val21.i = getelementptr [7 x %struct.nau8825_fll_attr], ptr @fll_ratio, i32 0, i32 %i.1101.lcssa.i, i32 1
  %6 = ptrtoint ptr %val21.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val21.i, align 4
  %conv.i = zext i32 %div20 to i64
  %mul25.i = shl nuw nsw i64 %conv.i, 9
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %if.end19.i
  %fvco_sel.0104.i = phi i32 [ 13, %if.end19.i ], [ %fvco_sel.1.i, %for.body24.i.for.body24.i_crit_edge ]
  %i.2103.i = phi i32 [ 0, %if.end19.i ], [ %inc40.i, %for.body24.i.for.body24.i_crit_edge ]
  %fvco_max.0102.i = phi i64 [ 0, %if.end19.i ], [ %fvco_max.1.i, %for.body24.i.for.body24.i_crit_edge ]
  %arrayidx26.i = getelementptr [13 x %struct.nau8825_fll_attr], ptr @mclk_src_scaling, i32 0, i32 %i.2103.i
  %8 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx26.i, align 4
  %conv28.i = zext i32 %9 to i64
  %mul29.i = mul i64 %mul25.i, %conv28.i
  %10 = add i64 %mul29.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 33999999, i64 %10)
  %11 = icmp ult i64 %10, 33999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.0102.i, i64 %mul29.i)
  %cmp35.i = icmp ult i64 %fvco_max.0102.i, %mul29.i
  %or.cond84.i = select i1 %11, i1 %cmp35.i, i1 false
  %fvco_max.1.i = select i1 %or.cond84.i, i64 %mul29.i, i64 %fvco_max.0102.i
  %fvco_sel.1.i = select i1 %or.cond84.i, i32 %i.2103.i, i32 %fvco_sel.0104.i
  %inc40.i = add nuw nsw i32 %i.2103.i, 1
  %exitcond.not.i = icmp eq i32 %inc40.i, 13
  br i1 %exitcond.not.i, label %for.end41.i, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24.i

for.end41.i:                                      ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %fvco_sel.1.i)
  %cmp42.i = icmp eq i32 %fvco_sel.1.i, 13
  br i1 %cmp42.i, label %for.end41.i.do.end_crit_edge, label %if.end45.i

for.end41.i.do.end_crit_edge:                     ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end45.i:                                       ; preds = %for.end41.i
  %val47.i = getelementptr [13 x %struct.nau8825_fll_attr], ptr @mclk_src_scaling, i32 0, i32 %fvco_sel.1.i, i32 1
  %12 = ptrtoint ptr %val47.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val47.i, align 4
  %shl.i = shl i64 %fvco_max.1.i, 16
  %mul49.i = mul i32 %7, %div.lcssa119.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !415

if.then168.i.i.i:                                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i.i = trunc i64 %shl.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul49.i
  br label %do.body2

if.else174.i.i.i:                                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul49.i, i64 %shl.i) #12, !srcloc !416
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %14, 1
  %extract.t93.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %do.body2

do.end:                                           ; preds = %for.end41.i.do.end_crit_edge, %for.inc14.5.i.do.end_crit_edge, %for.inc.2.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.150, i32 noundef %freq_in) #11
  br label %cleanup

do.body2:                                         ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t93.i, %if.else174.i.i.i ]
  %15 = lshr i32 %dividend.addr.0.i.i.off0.i, 16
  %conv50.i = and i32 %15, 1023
  %conv52.i = and i32 %dividend.addr.0.i.i.off0.i, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8825_set_pll.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8825_set_pll, %if.then6)) #8
          to label %do.end10 [label %if.then6], !srcloc !412

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8825_set_pll.__UNIQUE_ID_ddebug300, ptr noundef %17, ptr noundef nonnull @.str.152, i32 noundef %13, i32 noundef %7, i32 noundef %conv52.i, i32 noundef %conv50.i, i32 noundef %fll_param.sroa.19.0) #8
  br label %do.end10

do.end10:                                         ; preds = %if.then6, %do.body2
  %regmap.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3, i32 noundef 32783, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %or2.i = or i32 %7, 6144
  %call.i38.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef 7295, i32 noundef %or2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 5, i32 noundef %conv52.i) #8
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i39.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 6, i32 noundef 1023, i32 noundef %conv50.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %shl.i26 = shl i32 %fll_param.sroa.19.0, 10
  %call.i40.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 7, i32 noundef 3072, i32 noundef %shl.i26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i41.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 8, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %call.i42.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv52.i)
  %tobool.not.i = icmp eq i32 %conv52.i, 0
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %..i = select i1 %tobool.not.i, i32 4096, i32 49152
  %.48.i = select i1 %tobool.not.i, i32 0, i32 24576
  %call.i45.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 8, i32 noundef 53248, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call.i46.i = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 9, i32 noundef 24576, i32 noundef %.48.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 429496000) #8
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_set_jack(ptr nocapture noundef readonly %component, ptr noundef %jack, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap1.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap1.i, align 4
  %jack2.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %jack2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %jack, ptr %jack2.i, align 4
  %tobool.not.i = icmp eq ptr %jack, null
  %..i = select i1 %tobool.not.i, i32 0, i32 67
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 12, i32 noundef 67, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #0 align 64 {
entry:
  %active_irq.i.i = alloca i32, align 4
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
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb9
    i32 1, label %sw.bb
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %mclk_freq = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %mclk_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mclk_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then2:                                         ; preds = %if.then
  %mclk = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then2.do.end_crit_edge

if.then2.do.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.i:                                         ; preds = %if.then2
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end6_crit_edge, label %if.then3.i

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %10) #8
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then2.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then2.do.end_crit_edge ]
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.153) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %regmap1.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap1.i, align 4
  %call.i35 = tail call fastcc i32 @nau8825_configure_sysclk(ptr noundef %3, i32 noundef 0, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irq.i.i) #8
  %15 = ptrtoint ptr %active_irq.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %active_irq.i.i, align 4, !annotation !410
  %call.i.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 16, ptr noundef nonnull %active_irq.i.i) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6
  %i.06.i.i = phi i32 [ 0, %if.end6 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw nsw i32 1, %i.06.i.i
  %16 = ptrtoint ptr %active_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active_irq.i.i, align 4
  %and.i.i = and i32 %17, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i.i = call i32 @regmap_write(ptr noundef %14, i32 noundef 17, i32 noundef %shl.i.i) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %nau8825_resume_setup.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

nau8825_resume_setup.exit:                        ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irq.i.i) #8
  %call.i1.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 15, i32 noundef 3077, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i2.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 13, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %call.i3.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 18, i32 noundef 5, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 116, i32 noundef 20480, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i37 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 12, i32 noundef 15, i32 noundef 15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %xtalk_enable.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 31
  %22 = ptrtoint ptr %xtalk_enable.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xtalk_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i38 = icmp eq i32 %23, 0
  br i1 %tobool.not.i38, label %sw.bb9.nau8825_xtalk_cancel.exit_crit_edge, label %land.lhs.true.i

sw.bb9.nau8825_xtalk_cancel.exit_crit_edge:       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_cancel.exit

land.lhs.true.i:                                  ; preds = %sw.bb9
  %xtalk_state.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 26
  %24 = ptrtoint ptr %xtalk_state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xtalk_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.not.i = icmp eq i32 %25, 4
  br i1 %cmp.not.i, label %land.lhs.true.i.nau8825_xtalk_cancel.exit_crit_edge, label %if.then.i

land.lhs.true.i.nau8825_xtalk_cancel.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_xtalk_cancel.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %xtalk_work.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 5
  %call.i39 = tail call zeroext i1 @cancel_work_sync(ptr noundef %xtalk_work.i) #8
  tail call fastcc void @nau8825_xtalk_clean(ptr noundef %3, i1 noundef zeroext true) #8
  br label %nau8825_xtalk_cancel.exit

nau8825_xtalk_cancel.exit:                        ; preds = %if.then.i, %land.lhs.true.i.nau8825_xtalk_cancel.exit_crit_edge, %sw.bb9.nau8825_xtalk_cancel.exit_crit_edge
  %count.i.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %count.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %count.i.i, align 4
  %xtalk_state1.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 26
  %27 = ptrtoint ptr %xtalk_state1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %xtalk_state1.i, align 4
  %xtalk_protect.i = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 29
  %28 = ptrtoint ptr %xtalk_protect.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %xtalk_protect.i, align 4
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 18, i32 noundef 65535) #8
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 1, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %mclk_freq17 = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %mclk_freq17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mclk_freq17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool18.not = icmp eq i32 %34, 0
  br i1 %tobool18.not, label %nau8825_xtalk_cancel.exit.cleanup_crit_edge, label %if.then19

nau8825_xtalk_cancel.exit.cleanup_crit_edge:      ; preds = %nau8825_xtalk_cancel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %nau8825_xtalk_cancel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mclk20 = getelementptr inbounds %struct.nau8825, ptr %3, i32 0, i32 4
  %35 = ptrtoint ptr %mclk20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mclk20, align 4
  tail call void @clk_disable(ptr noundef %36) #8
  tail call void @clk_unprepare(ptr noundef %36) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %nau8825_xtalk_cancel.exit.cleanup_crit_edge, %nau8825_resume_setup.exit, %do.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %nau8825_xtalk_cancel.exit.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %nau8825_resume_setup.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info_ext(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_biq_coeff_get(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %regmap = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %6 = inttoptr i32 %5 to ptr
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call = tail call i32 @regmap_raw_read(ptr noundef nonnull %3, i32 noundef 33, ptr noundef %value, i32 noundef %8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_biq_coeff_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %regmap = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %call = tail call ptr @kmemdup(ptr noundef %value, i32 noundef %8, i32 noundef 3265) #8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 32, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  %call8 = tail call i32 @regmap_raw_write(ptr noundef %12, i32 noundef 33, ptr noundef nonnull %call, i32 noundef %14) #8
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 32, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @system_clock_control(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  %jkdet.i = alloca i32, align 4
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
  %regmap2 = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap2, align 4
  %and = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.body

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @system_clock_control.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@system_clock_control, %if.then7)) #8
          to label %do.end [label %if.then7], !srcloc !412

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @system_clock_control.__UNIQUE_ID_ddebug297, ptr noundef %9, ptr noundef nonnull @.str.145) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #8
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %status.i, align 4, !annotation !410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %jkdet.i) #8
  %11 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %jkdet.i, align 4, !annotation !410
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 13, ptr noundef nonnull %jkdet.i) #8
  %12 = ptrtoint ptr %jkdet.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %jkdet.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 88, ptr noundef nonnull %status.i) #8
  %14 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %status.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %jkdet.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #8
  %16 = lshr i32 %15, 6
  %and.i18 = xor i32 %13, %16
  %17 = and i32 %and.i18, 2
  %18 = xor i32 %17, 2
  %call10 = call fastcc i32 @nau8825_configure_sysclk(ptr noundef %5, i32 noundef %18, i32 noundef 0)
  br label %if.end13

if.end13:                                         ; preds = %do.end, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_adc_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 125) #8
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 7
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %sw.bb3.cleanup.sink.split_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3.cleanup.sink.split_crit_edge:              ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3.cleanup.sink.split_crit_edge, %sw.bb
  %.sink10 = phi i32 [ 256, %sw.bb ], [ 0, %sw.bb3.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 1, i32 noundef 256, i32 noundef %.sink10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb3.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_pump_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %entry.cleanup.sink.split_crit_edge
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 10) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 1024, %sw.bb ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 128, i32 noundef 1024, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_output_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #0 align 64 {
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 8, label %sw.bb3
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %entry.cleanup.sink.split_crit_edge
  %.sink9 = phi i32 [ 768, %sw.bb3 ], [ 0, %entry.cleanup.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 102, i32 noundef 768, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #0 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.169)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ctrl2_val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 8, %sw.bb ]
  %and2 = and i32 %fmt, 3840
  %8 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %and2, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog6_crit_edge
    i32 768, label %sw.bb3
  ]

sw.epilog.sw.epilog6_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb3, %sw.epilog.sw.epilog6_crit_edge
  %ctrl1_val.0 = phi i32 [ 128, %sw.bb3 ], [ %and2, %sw.epilog.sw.epilog6_crit_edge ]
  %and7 = and i32 %fmt, 15
  %9 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %and7, label %sw.epilog6.cleanup_crit_edge [
    i32 1, label %sw.bb8
    i32 3, label %sw.bb10
    i32 2, label %sw.epilog6.sw.epilog20_crit_edge
    i32 4, label %sw.bb14
    i32 5, label %sw.bb16
  ]

sw.epilog6.sw.epilog20_crit_edge:                 ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog20

sw.epilog6.cleanup_crit_edge:                     ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  %or9 = or i32 %ctrl1_val.0, 2
  br label %sw.epilog20

sw.bb10:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  %or11 = or i32 %ctrl1_val.0, 1
  br label %sw.epilog20

sw.bb14:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  %or15 = or i32 %ctrl1_val.0, 3
  br label %sw.epilog20

sw.bb16:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #10
  %or18 = or i32 %ctrl1_val.0, 67
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb16, %sw.bb14, %sw.bb10, %sw.bb8, %sw.epilog6.sw.epilog20_crit_edge
  %ctrl1_val.1 = phi i32 [ %or18, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %ctrl1_val.0, %sw.epilog6.sw.epilog20_crit_edge ]
  %xtalk_sem2.i = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 6
  %call.i = tail call i32 @down_timeout(ptr noundef %xtalk_sem2.i, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end11.sink.split.i, label %sw.epilog20.nau8825_sema_acquire.exit_crit_edge

sw.epilog20.nau8825_sema_acquire.exit_crit_edge:  ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_sema_acquire.exit

if.end11.sink.split.i:                            ; preds = %sw.epilog20
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.45) #11
  br label %nau8825_sema_acquire.exit

nau8825_sema_acquire.exit:                        ; preds = %if.end11.sink.split.i, %sw.epilog20.nau8825_sema_acquire.exit_crit_edge
  %regmap = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 28, i32 noundef 207, i32 noundef %ctrl1_val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 29, i32 noundef 8, i32 noundef %ctrl2_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  tail call void @up(ptr noundef %xtalk_sem2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %nau8825_sema_acquire.exit, %sw.epilog6.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %nau8825_sema_acquire.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8825_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  %osr = alloca i32, align 4
  %ctrl_val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %osr) #8
  %6 = ptrtoint ptr %osr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %osr, align 4, !annotation !410
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_val) #8
  %7 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ctrl_val, align 4, !annotation !410
  %xtalk_sem2.i = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 6
  %call.i = tail call i32 @down_timeout(ptr noundef %xtalk_sem2.i, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end11.sink.split.i, label %entry.nau8825_sema_acquire.exit_crit_edge

entry.nau8825_sema_acquire.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nau8825_sema_acquire.exit

if.end11.sink.split.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.45) #11
  br label %nau8825_sema_acquire.exit

nau8825_sema_acquire.exit:                        ; preds = %if.end11.sink.split.i, %entry.nau8825_sema_acquire.exit_crit_edge
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %regmap = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %nau8825_sema_acquire.exit
  %call3 = call i32 @regmap_read(ptr noundef %13, i32 noundef 44, ptr noundef nonnull %osr) #8
  %14 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %osr, align 4
  %and = and i32 %15, 7
  store i32 %and, ptr %osr, align 4
  %16 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stream, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i91 = icmp eq i32 %17, 0
  br i1 %cmp.i91, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp1.i = icmp ugt i32 %and, 4
  br i1 %cmp1.i, label %if.then.i.cleanup_crit_edge, label %if.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [5 x %struct.nau8825_osr_attr], ptr @osr_dac_sel, i32 0, i32 %and
  br label %if.end9.i

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp4.i = icmp ugt i32 %and, 3
  br i1 %cmp4.i, label %if.else.i.cleanup_crit_edge, label %if.end6.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx7.i = getelementptr [4 x %struct.nau8825_osr_attr], ptr @osr_adc_sel, i32 0, i32 %and
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end6.i, %if.end.i
  %osrate.0.in.i = phi ptr [ %arrayidx.i, %if.end.i ], [ %arrayidx7.i, %if.end6.i ]
  %20 = ptrtoint ptr %osrate.0.in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %osrate.0.i = load i32, ptr %osrate.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %osrate.0.i)
  %tobool.not.i = icmp eq i32 %osrate.0.i, 0
  %mul.i = mul i32 %19, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %mul.i)
  %cmp10.i = icmp sgt i32 %mul.i, 6144000
  %or.cond.i = or i1 %cmp10.i, %tobool.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.156) #11
  br label %cleanup

if.end:                                           ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %osr, align 4
  %clk_src = getelementptr [5 x %struct.nau8825_osr_attr], ptr @osr_dac_sel, i32 0, i32 %26, i32 1
  %27 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_src, align 4
  %shl = shl i32 %28, 4
  %call.i92 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 3, i32 noundef 48, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end24

if.else:                                          ; preds = %nau8825_sema_acquire.exit
  %call11 = call i32 @regmap_read(ptr noundef %13, i32 noundef 43, ptr noundef nonnull %osr) #8
  %29 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %osr, align 4
  %and12 = and i32 %30, 3
  store i32 %and12, ptr %osr, align 4
  %31 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stream, align 4
  %arrayidx.i.i93 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i94 = icmp eq i32 %32, 0
  %arrayidx.i97 = getelementptr [5 x %struct.nau8825_osr_attr], ptr @osr_dac_sel, i32 0, i32 %and12
  %arrayidx7.i101 = getelementptr [4 x %struct.nau8825_osr_attr], ptr @osr_adc_sel, i32 0, i32 %and12
  %osrate.0.in.i103 = select i1 %cmp.i94, ptr %arrayidx.i97, ptr %arrayidx7.i101
  %35 = ptrtoint ptr %osrate.0.in.i103 to i32
  call void @__asan_load4_noabort(i32 %35)
  %osrate.0.i104 = load i32, ptr %osrate.0.in.i103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %osrate.0.i104)
  %tobool.not.i105 = icmp eq i32 %osrate.0.i104, 0
  %mul.i106 = mul i32 %34, %and12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %mul.i106)
  %cmp10.i107 = icmp sgt i32 %mul.i106, 6144000
  %or.cond.i108 = or i1 %cmp10.i107, %tobool.not.i105
  br i1 %or.cond.i108, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.156) #11
  br label %cleanup

if.end18:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %40 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %osr, align 4
  %clk_src21 = getelementptr [4 x %struct.nau8825_osr_attr], ptr @osr_adc_sel, i32 0, i32 %41, i32 1
  %42 = ptrtoint ptr %clk_src21 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %clk_src21, align 4
  %shl22 = shl i32 %43, 6
  %call.i114 = call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 3, i32 noundef 192, i32 noundef %shl22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end24

if.end24:                                         ; preds = %if.end18, %if.end
  %regmap25 = getelementptr inbounds %struct.nau8825, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap25, align 4
  %call26 = call i32 @regmap_read(ptr noundef %45, i32 noundef 29, ptr noundef nonnull %ctrl_val) #8
  %46 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctrl_val, align 4
  %and27 = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end24.if.end47_crit_edge, label %if.then29

if.end24.if.end47_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then29:                                        ; preds = %if.end24
  %call30 = call i32 @snd_soc_params_to_bclk(ptr noundef %params) #8
  %arrayidx.i.i115 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i115, align 4
  %div = udiv i32 %call30, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div)
  %cmp32 = icmp ult i32 %div, 33
  br i1 %cmp32, label %if.then29.if.end43_crit_edge, label %if.else34

if.then29.if.end43_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else34:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div)
  %cmp35 = icmp ult i32 %div, 65
  br i1 %cmp35, label %if.else34.if.end43_crit_edge, label %if.else37

if.else34.if.end43_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.else37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %div)
  %cmp38 = icmp ult i32 %div, 129
  br i1 %cmp38, label %if.else37.if.end43_crit_edge, label %if.else37.cleanup_crit_edge

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else37.if.end43_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.end43:                                         ; preds = %if.else37.if.end43_crit_edge, %if.else34.if.end43_crit_edge, %if.then29.if.end43_crit_edge
  %bclk_div.0 = phi i32 [ 2, %if.then29.if.end43_crit_edge ], [ 1, %if.else34.if.end43_crit_edge ], [ 0, %if.else37.if.end43_crit_edge ]
  %50 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap25, align 4
  %add = shl nuw nsw i32 %bclk_div.0, 12
  %shl45 = add nuw nsw i32 %add, 4096
  %or = or i32 %shl45, %bclk_div.0
  %call.i117 = call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 29, i32 noundef 12295, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end47

if.end47:                                         ; preds = %if.end43, %if.end24.if.end47_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end47.if.then.i.i.i_crit_edge

if.end47.if.then.i.i.i_crit_edge:                 ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end47.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end47.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %53, %if.end47.if.then.i.i.i_crit_edge ], [ %56, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %54 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !414
  %add.i.i.i = or i32 %54, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end47
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.1.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #8
  %57 = add i32 %call1.i, -16
  %58 = call i32 @llvm.fshl.i32(i32 %57, i32 %57, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %58)
  %59 = icmp ult i32 %58, 5
  br i1 %59, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %58 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %60 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %switch.lobit.not = icmp eq i8 %60, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.nau8825_hw_params, i32 0, i32 %58
  %61 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load = load i32, ptr %switch.gep, align 4
  %62 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap25, align 4
  %call.i119 = call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 28, i32 noundef 12, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %if.else37.cleanup_crit_edge, %if.then17, %do.end.i, %if.else.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %if.then17 ], [ -22, %do.end.i ], [ -22, %if.then.i.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ -22, %if.else37.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @up(ptr noundef %xtalk_sem2.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_val) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osr) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i15 @llvm.bitreverse.i15(i15) #6

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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 201)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !74, !76, !78, !80, !82, !84, !86, !87, !88, !89, !91, !92, !94, !95, !97, !99, !101, !102, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !200, !202, !203, !204, !206, !207, !209, !210, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !272, !274, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !342, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !366, !367, !368, !370, !371, !373, !375, !377, !379, !380, !381, !382, !384, !386, !388, !390, !391, !392, !393, !395, !397, !399}
!llvm.module.flags = !{!401, !402, !403, !404, !405, !406, !407, !408}
!llvm.ident = !{!409}

!0 = !{ptr @__ksymtab_nau8825_enable_jack_detect, !1, !"__ksymtab_nau8825_enable_jack_detect", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/nau8825.c", i32 1483, i32 1}
!2 = !{ptr @__initcall__kmod_snd_soc_nau8825__318_2710_nau8825_driver_init6, !3, !"__initcall__kmod_snd_soc_nau8825__318_2710_nau8825_driver_init6", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/nau8825.c", i32 2710, i32 1}
!4 = !{ptr @__exitcall_nau8825_driver_exit, !3, !"__exitcall_nau8825_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description319, !6, !"__UNIQUE_ID_description319", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/nau8825.c", i32 2712, i32 1}
!7 = !{ptr @__UNIQUE_ID_author320, !8, !"__UNIQUE_ID_author320", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/nau8825.c", i32 2713, i32 1}
!9 = !{ptr @__UNIQUE_ID_file321, !10, !"__UNIQUE_ID_file321", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/nau8825.c", i32 2714, i32 1}
!11 = !{ptr @__UNIQUE_ID_license322, !10, !"__UNIQUE_ID_license322", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/nau8825.c", i32 2702, i32 11}
!14 = !{ptr @nau8825_driver, !15, !"nau8825_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/nau8825.c", i32 2700, i32 26}
!16 = !{ptr @nau8825_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/nau8825.c", i32 2634, i32 20}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nau8825_i2c_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/nau8825.c", i32 2646, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/nau8825.c", i32 2653, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nau8825_i2c_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @nau8825_i2c_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/nau8825.c", i32 2659, i32 3}
!32 = !{ptr @nau8825_i2c_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @nau8825_i2c_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/nau8825.c", i32 2525, i32 3}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/nau8825.c", i32 2527, i32 3}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/nau8825.c", i32 2529, i32 3}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/nau8825.c", i32 2530, i32 38}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/nau8825.c", i32 2534, i32 38}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/nau8825.c", i32 2538, i32 38}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/nau8825.c", i32 2542, i32 38}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/nau8825.c", i32 2546, i32 44}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/nau8825.c", i32 2554, i32 38}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/nau8825.c", i32 2558, i32 38}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/nau8825.c", i32 2562, i32 38}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/nau8825.c", i32 2566, i32 38}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/nau8825.c", i32 2570, i32 38}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/nau8825.c", i32 2574, i32 38}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/nau8825.c", i32 2578, i32 38}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/nau8825.c", i32 2583, i32 3}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/nau8825.c", i32 2585, i32 36}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/nau8825.c", i32 2591, i32 3}
!70 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @nau8825_read_device_properties._entry, !69, !"_entry", i1 false, i1 false}
!73 = !{ptr @nau8825_read_device_properties._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @nau8825_regmap_config, !75, !"nau8825_regmap_config", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/nau8825.c", i32 1981, i32 35}
!76 = !{ptr @nau8825_reg_defaults, !77, !"nau8825_reg_defaults", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/nau8825.c", i32 121, i32 33}
!78 = !{ptr @sema_init.__key, !79, !"__key", i1 false, i1 false}
!79 = !{!"../include/linux/semaphore.h", i32 33, i32 31}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/semaphore.h", i32 34, i32 28}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../include/linux/semaphore.h", i32 35, i32 39}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/nau8825.c", i32 760, i32 3}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @nau8825_xtalk_measure.__UNIQUE_ID_ddebug294, !85, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/nau8825.c", i32 777, i32 3}
!91 = !{ptr @nau8825_xtalk_measure.__UNIQUE_ID_ddebug295, !90, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/nau8825.c", i32 792, i32 3}
!94 = !{ptr @nau8825_xtalk_measure.__UNIQUE_ID_ddebug296, !93, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!95 = !{ptr @nau8825_xtalk_baktab, !96, !"nau8825_xtalk_baktab", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/nau8825.c", i32 196, i32 27}
!97 = !{ptr @logtable, !98, !"logtable", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/nau8825.c", i32 203, i32 29}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/nau8825.c", i32 2247, i32 4}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @nau8825_configure_sysclk._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @nau8825_configure_sysclk._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/nau8825.c", i32 2330, i32 3}
!107 = !{ptr @nau8825_configure_sysclk._entry.41, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @nau8825_configure_sysclk._entry_ptr.43, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/nau8825.c", i32 2334, i32 2}
!111 = !{ptr @nau8825_configure_sysclk.__UNIQUE_ID_ddebug301, !110, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/nau8825.c", i32 264, i32 4}
!114 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @nau8825_sema_acquire._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @nau8825_sema_acquire._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/nau8825.c", i32 268, i32 4}
!119 = !{ptr @nau8825_sema_acquire._entry.47, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @nau8825_sema_acquire._entry_ptr.49, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.50, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/nau8825.c", i32 2155, i32 3}
!123 = !{ptr @nau8825_mclk_prepare._entry, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @nau8825_mclk_prepare._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/nau8825.c", i32 2162, i32 4}
!127 = !{ptr @nau8825_mclk_prepare._entry.51, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @nau8825_mclk_prepare._entry_ptr.53, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/nau8825.c", i32 2171, i32 4}
!131 = !{ptr @nau8825_mclk_prepare._entry.54, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @nau8825_mclk_prepare._entry_ptr.56, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/nau8825.c", i32 2495, i32 2}
!135 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug302, !134, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/nau8825.c", i32 2496, i32 2}
!139 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug303, !138, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/nau8825.c", i32 2497, i32 2}
!142 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug304, !141, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/nau8825.c", i32 2498, i32 2}
!145 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug305, !144, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/nau8825.c", i32 2499, i32 2}
!148 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug306, !147, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!149 = !{ptr @.str.63, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/nau8825.c", i32 2500, i32 2}
!151 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug307, !150, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/nau8825.c", i32 2502, i32 2}
!154 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug308, !153, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/nau8825.c", i32 2504, i32 3}
!157 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug309, !156, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!158 = !{ptr @.str.66, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/nau8825.c", i32 2507, i32 2}
!160 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug310, !159, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!161 = !{ptr @.str.67, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/nau8825.c", i32 2508, i32 2}
!163 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug311, !162, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/nau8825.c", i32 2509, i32 2}
!166 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug312, !165, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!167 = !{ptr @.str.69, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/nau8825.c", i32 2510, i32 2}
!169 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug313, !168, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!170 = !{ptr @.str.70, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/nau8825.c", i32 2511, i32 2}
!172 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug314, !171, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!173 = !{ptr @.str.71, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/nau8825.c", i32 2512, i32 2}
!175 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug315, !174, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/nau8825.c", i32 2514, i32 2}
!178 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug316, !177, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!179 = !{ptr @.str.73, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/nau8825.c", i32 2516, i32 2}
!181 = !{ptr @nau8825_print_device_properties.__UNIQUE_ID_ddebug317, !180, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!182 = !{ptr @.str.74, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/nau8825.c", i32 2608, i32 3}
!184 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @nau8825_setup_irq._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @nau8825_setup_irq._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.76, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/nau8825.c", i32 1716, i32 3}
!189 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @nau8825_interrupt._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @nau8825_interrupt._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/nau8825.c", i32 1781, i32 4}
!194 = !{ptr @nau8825_interrupt._entry.78, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @nau8825_interrupt._entry_ptr.80, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.81, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/nau8825.c", i32 1537, i32 33}
!198 = !{ptr @.str.82, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/nau8825.c", i32 1538, i32 33}
!200 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/nau8825.c", i32 1653, i32 3}
!202 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @nau8825_jack_insert.__UNIQUE_ID_ddebug298, !201, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!204 = !{ptr @.str.85, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/nau8825.c", i32 1673, i32 3}
!206 = !{ptr @nau8825_jack_insert.__UNIQUE_ID_ddebug299, !205, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!207 = !{ptr @.str.86, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/nau8825.c", i32 1694, i32 3}
!209 = !{ptr @nau8825_jack_insert._entry, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @nau8825_jack_insert._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @nau8825_component_driver, !212, !"nau8825_component_driver", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/nau8825.c", i32 2462, i32 46}
!213 = !{ptr @.str.87, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/nau8825.c", i32 1081, i32 2}
!215 = !{ptr @.str.88, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/nau8825.c", i32 1083, i32 2}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/nau8825.c", i32 1085, i32 2}
!219 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/nau8825.c", i32 1087, i32 2}
!221 = !{ptr @.str.94, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/nau8825.c", i32 1089, i32 2}
!223 = !{ptr @.str.96, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/nau8825.c", i32 1092, i32 2}
!225 = !{ptr @.str.97, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/nau8825.c", i32 1093, i32 2}
!227 = !{ptr @.str.98, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/nau8825.c", i32 1095, i32 2}
!229 = !{ptr @.str.99, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/nau8825.c", i32 1096, i32 2}
!231 = !{ptr @nau8825_controls, !232, !"nau8825_controls", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/nau8825.c", i32 1080, i32 38}
!233 = !{ptr @adc_vol_tlv, !234, !"adc_vol_tlv", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/nau8825.c", i32 1074, i32 14}
!235 = !{ptr @sidetone_vol_tlv, !236, !"sidetone_vol_tlv", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/nau8825.c", i32 1075, i32 14}
!237 = !{ptr @dac_vol_tlv, !238, !"dac_vol_tlv", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/nau8825.c", i32 1076, i32 14}
!239 = !{ptr @fepga_gain_tlv, !240, !"fepga_gain_tlv", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/nau8825.c", i32 1077, i32 14}
!241 = !{ptr @crosstalk_vol_tlv, !242, !"crosstalk_vol_tlv", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/nau8825.c", i32 1078, i32 14}
!243 = !{ptr @nau8825_adc_decimation_enum, !244, !"nau8825_adc_decimation_enum", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/nau8825.c", i32 1062, i32 30}
!245 = !{ptr @.str.101, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/nau8825.c", i32 1059, i32 2}
!247 = !{ptr @.str.102, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/nau8825.c", i32 1059, i32 8}
!249 = !{ptr @.str.103, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/nau8825.c", i32 1059, i32 14}
!251 = !{ptr @.str.104, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/nau8825.c", i32 1059, i32 21}
!253 = !{ptr @nau8825_adc_decimation, !254, !"nau8825_adc_decimation", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/nau8825.c", i32 1058, i32 27}
!255 = !{ptr @nau8825_dac_oversampl_enum, !256, !"nau8825_dac_oversampl_enum", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/nau8825.c", i32 1070, i32 30}
!257 = !{ptr @.str.105, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/nau8825.c", i32 1067, i32 22}
!259 = !{ptr @nau8825_dac_oversampl, !260, !"nau8825_dac_oversampl", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/nau8825.c", i32 1066, i32 27}
!261 = !{ptr @nau8825_biq_path_enum, !262, !"nau8825_biq_path_enum", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/nau8825.c", i32 1054, i32 30}
!263 = !{ptr @.str.106, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/nau8825.c", i32 1051, i32 2}
!265 = !{ptr @.str.107, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/nau8825.c", i32 1051, i32 9}
!267 = !{ptr @nau8825_biq_path, !268, !"nau8825_biq_path", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/nau8825.c", i32 1050, i32 27}
!269 = !{ptr @.str.108, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/nau8825.c", i32 1121, i32 2}
!271 = !{ptr @.str.109, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.110, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/nau8825.c", i32 1123, i32 2}
!274 = !{ptr @.str.111, !273, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.112, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/nau8825.c", i32 1124, i32 2}
!277 = !{ptr @.str.113, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/nau8825.c", i32 1127, i32 2}
!279 = !{ptr @.str.114, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/nau8825.c", i32 1130, i32 2}
!281 = !{ptr @.str.115, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/nau8825.c", i32 1136, i32 2}
!283 = !{ptr @.str.116, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/nau8825.c", i32 1137, i32 2}
!285 = !{ptr @.str.117, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/nau8825.c", i32 1147, i32 2}
!287 = !{ptr @.str.118, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/nau8825.c", i32 1148, i32 2}
!289 = !{ptr @.str.119, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/nau8825.c", i32 1149, i32 2}
!291 = !{ptr @.str.120, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/nau8825.c", i32 1150, i32 2}
!293 = !{ptr @.str.121, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/nau8825.c", i32 1152, i32 2}
!295 = !{ptr @.str.122, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/nau8825.c", i32 1154, i32 2}
!297 = !{ptr @.str.123, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/nau8825.c", i32 1156, i32 2}
!299 = !{ptr @.str.124, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/nau8825.c", i32 1158, i32 2}
!301 = !{ptr @.str.125, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/nau8825.c", i32 1159, i32 2}
!303 = !{ptr @.str.126, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/nau8825.c", i32 1161, i32 2}
!305 = !{ptr @.str.127, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/nau8825.c", i32 1163, i32 2}
!307 = !{ptr @.str.128, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/nau8825.c", i32 1166, i32 2}
!309 = !{ptr @.str.129, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/nau8825.c", i32 1170, i32 2}
!311 = !{ptr @.str.130, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/nau8825.c", i32 1172, i32 2}
!313 = !{ptr @.str.131, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/nau8825.c", i32 1174, i32 2}
!315 = !{ptr @.str.132, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/nau8825.c", i32 1176, i32 2}
!317 = !{ptr @.str.133, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/nau8825.c", i32 1178, i32 2}
!319 = !{ptr @.str.134, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/nau8825.c", i32 1180, i32 2}
!321 = !{ptr @.str.135, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/nau8825.c", i32 1183, i32 2}
!323 = !{ptr @.str.136, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/nau8825.c", i32 1186, i32 2}
!325 = !{ptr @.str.137, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/nau8825.c", i32 1191, i32 2}
!327 = !{ptr @.str.138, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/nau8825.c", i32 1193, i32 2}
!329 = !{ptr @.str.139, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/nau8825.c", i32 1197, i32 2}
!331 = !{ptr @.str.140, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/nau8825.c", i32 1201, i32 2}
!333 = !{ptr @.str.141, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/nau8825.c", i32 1204, i32 2}
!335 = !{ptr @.str.142, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/nau8825.c", i32 1205, i32 2}
!337 = !{ptr @nau8825_dapm_widgets, !338, !"nau8825_dapm_widgets", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/nau8825.c", i32 1120, i32 41}
!339 = !{ptr @.str.144, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/nau8825.c", i32 993, i32 3}
!341 = !{ptr @.str.145, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @system_clock_control.__UNIQUE_ID_ddebug297, !340, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!343 = !{ptr @.str.146, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/nau8825.c", i32 1114, i32 2}
!345 = !{ptr @nau8825_dacl_mux, !346, !"nau8825_dacl_mux", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/nau8825.c", i32 1113, i32 38}
!347 = !{ptr @nau8825_dacl_enum, !348, !"nau8825_dacl_enum", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/nau8825.c", i32 1105, i32 8}
!349 = !{ptr @.str.147, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/nau8825.c", i32 1102, i32 2}
!351 = !{ptr @.str.148, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/nau8825.c", i32 1102, i32 10}
!353 = !{ptr @nau8825_dac_src, !354, !"nau8825_dac_src", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/nau8825.c", i32 1101, i32 27}
!355 = !{ptr @.str.149, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/nau8825.c", i32 1117, i32 2}
!357 = !{ptr @nau8825_dacr_mux, !358, !"nau8825_dacr_mux", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/nau8825.c", i32 1116, i32 38}
!359 = !{ptr @nau8825_dacr_enum, !360, !"nau8825_dacr_enum", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/nau8825.c", i32 1109, i32 8}
!361 = !{ptr @nau8825_dapm_routes, !362, !"nau8825_dapm_routes", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/nau8825.c", i32 1208, i32 40}
!363 = !{ptr @.str.150, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/nau8825.c", i32 2135, i32 3}
!365 = !{ptr @.str.151, !364, !"<string literal>", i1 false, i1 false}
!366 = !{ptr @nau8825_set_pll._entry, !364, !"_entry", i1 false, i1 false}
!367 = !{ptr @nau8825_set_pll._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.152, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/nau8825.c", i32 2138, i32 2}
!370 = !{ptr @nau8825_set_pll.__UNIQUE_ID_ddebug300, !369, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!371 = !{ptr @fll_pre_scalar, !372, !"fll_pre_scalar", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/nau8825.c", i32 93, i32 38}
!373 = !{ptr @fll_ratio, !374, !"fll_ratio", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/nau8825.c", i32 83, i32 38}
!375 = !{ptr @mclk_src_scaling, !376, !"mclk_src_scaling", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/nau8825.c", i32 66, i32 38}
!377 = !{ptr @.str.153, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/nau8825.c", i32 2390, i32 6}
!379 = !{ptr @.str.154, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @nau8825_set_bias_level._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @nau8825_set_bias_level._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.155, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/nau8825.c", i32 1432, i32 10}
!384 = !{ptr @nau8825_dai, !385, !"nau8825_dai", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/nau8825.c", i32 1431, i32 34}
!386 = !{ptr @nau8825_dai_ops, !387, !"nau8825_dai_ops", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/nau8825.c", i32 1422, i32 37}
!388 = !{ptr @.str.156, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/nau8825.c", i32 1266, i32 3}
!390 = !{ptr @.str.157, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @nau8825_clock_check._entry, !389, !"_entry", i1 false, i1 false}
!392 = !{ptr @nau8825_clock_check._entry_ptr, !389, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @osr_dac_sel, !394, !"osr_dac_sel", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/nau8825.c", i32 106, i32 38}
!395 = !{ptr @osr_adc_sel, !396, !"osr_adc_sel", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/nau8825.c", i32 114, i32 38}
!397 = !{ptr @nau8825_of_ids, !398, !"nau8825_of_ids", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/nau8825.c", i32 2685, i32 34}
!399 = !{ptr @nau8825_i2c_ids, !400, !"nau8825_i2c_ids", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/nau8825.c", i32 2678, i32 35}
!401 = !{i32 1, !"wchar_size", i32 2}
!402 = !{i32 1, !"min_enum_size", i32 4}
!403 = !{i32 8, !"branch-target-enforcement", i32 0}
!404 = !{i32 8, !"sign-return-address", i32 0}
!405 = !{i32 8, !"sign-return-address-all", i32 0}
!406 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!407 = !{i32 7, !"uwtable", i32 1}
!408 = !{i32 7, !"frame-pointer", i32 2}
!409 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!410 = !{!"auto-init"}
!411 = !{i8 0, i8 2}
!412 = !{i64 2149042154, i64 2149042159, i64 2149042172, i64 2149042216, i64 2149042250, i64 2149042271}
!413 = !{!"branch_weights", i32 1, i32 2000}
!414 = !{i32 0, i32 33}
!415 = !{!"branch_weights", i32 2000, i32 1}
!416 = !{i64 2148275201, i64 2148275481, i64 2148275815, i64 2148276149}
