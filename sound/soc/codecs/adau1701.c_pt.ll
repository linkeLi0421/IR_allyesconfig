; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/adau1701.c_pt.bc'
source_filename = "../sound/soc/codecs/adau1701.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sigmadsp_ops = type { ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.adau1701 = type { ptr, ptr, i32, i32, i32, ptr, ptr, [12 x i8], ptr, [2 x %struct.regulator_bulk_data] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.sigmadsp = type { ptr, %struct.list_head, %struct.list_head, %struct.snd_pcm_hw_constraint_list, i32, ptr, ptr, %struct.mutex, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_adau1701__294_885_adau1701_i2c_driver_init6 = internal global ptr @adau1701_i2c_driver_init, section ".initcall6.init", align 4
@adau1701_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adau1701_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adau1701_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adau1701_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adau1701_i2c_driver_exit = internal global ptr @adau1701_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [59 x i8] c"snd_soc_adau1701.description=ASoC ADAU1701 SigmaDSP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [57 x i8] c"snd_soc_adau1701.author=Cliff Cai <cliff.cai@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [61 x i8] c"snd_soc_adau1701.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [56 x i8] c"snd_soc_adau1701.file=sound/soc/codecs/snd-soc-adau1701\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [29 x i8] c"snd_soc_adau1701.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adau1701\00", [23 x i8] zeroinitializer }, align 32
@adau1701_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adau1701\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adau1701_i2c_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adau1401\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adau1401a\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adau1701\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adau1702\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@adau1701_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 805, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adau1701_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/adau1701.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adau1701_i2c_probe._entry_ptr = internal global ptr @adau1701_i2c_probe._entry, section ".printk_index", align 4
@adau1701_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 812, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@adau1701_i2c_probe._entry_ptr.8 = internal global ptr @adau1701_i2c_probe._entry.6, section ".printk_index", align 4
@adau1701_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adau1701_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 32, ptr null, ptr null, ptr @adau1701_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @adau1701_reg_read, ptr @adau1701_reg_write, ptr null, i8 0, i32 2088, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"adau1701:818:(&adau1701_regmap)->lock\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,pll-clkdiv\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adi,pin-config\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adi,pll-mode\00", [19 x i8] zeroinitializer }, align 32
@adau1701_sigmadsp_ops = internal constant { %struct.sigmadsp_ops, [28 x i8] } { %struct.sigmadsp_ops { ptr @adau1701_safeload }, [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adau1701.bin\00", [19 x i8] zeroinitializer }, align 32
@adau1701_component_drv = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @adau1701_controls, i32 1, ptr @adau1701_dapm_widgets, i32 11, ptr @adau1701_dapm_routes, i32 6, ptr @adau1701_probe, ptr @adau1701_remove, ptr @adau1701_suspend, ptr @adau1701_resume, ptr null, ptr null, ptr null, ptr null, ptr @adau1701_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1701_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@adau1701_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @adau1701_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.26, i64 68719476804, i32 5248, i32 0, i32 0, i32 2, i32 8, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.21, i64 68719476804, i32 5248, i32 0, i32 0, i32 2, i32 8, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@adau1701_register_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported register address: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adau1701_register_size\00", [41 x i8] zeroinitializer }, align 32
@adau1701_register_size._entry_ptr = internal global ptr @adau1701_register_size._entry, section ".printk_index", align 4
@adau1701_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }], [48 x i8] zeroinitializer }, align 32
@adau1701_dapm_routes = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.27, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Master Capture Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2076, i32 2076, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC0\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC1\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC2\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DAC3\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT0\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT1\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT2\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT3\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN0\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IN1\00", [28 x i8] zeroinitializer }, align 32
@adau1701_dapm_widgets = internal constant { [11 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [484 x i8] } { [11 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.20, ptr @.str.21, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2082, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.22, ptr @.str.21, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2082, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.23, ptr @.str.21, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2082, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.24, ptr @.str.21, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2082, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.25, ptr @.str.26, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2082, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [484 x i8] zeroinitializer }, align 32
@adau1701_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.34, ptr @.str.3, i32 682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adau1701_probe\00", [17 x i8] zeroinitializer }, align 32
@adau1701_probe._entry_ptr = internal global ptr @adau1701_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adau1701_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 352, ptr @.str.37, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to load firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adau1701_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adau1701_reset._entry_ptr = internal global ptr @adau1701_reset._entry, section ".printk_index", align 4
@adau1701_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.38, ptr @.str.3, i32 749, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adau1701_resume\00", [16 x i8] zeroinitializer }, align 32
@adau1701_resume._entry_ptr = internal global ptr @adau1701_resume._entry, section ".printk_index", align 4
@adau1701_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @adau1701_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1701_mute_stream, ptr @adau1701_startup, ptr null, ptr @adau1701_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@switch.table.adau1701_reg_read = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 3, i32 2, i32 1, i32 3, i32 3, i32 2, i32 3, i32 3, i32 3, i32 2, i32 2], [48 x i8] zeroinitializer }, align 32
@switch.table.adau1701_reg_write = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 2, i32 3, i32 2, i32 1, i32 3, i32 3, i32 2, i32 3, i32 3, i32 3, i32 2, i32 2], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 48000, i64 96000, i64 192000]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 24]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 24]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 24]
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"adau1701_i2c_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 876, i32 26 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 878, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"adau1701_dt_ids\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 662, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"adau1701_i2c_id\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 867, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 805, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 812, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"adau1701_regmap\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 778, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 817, i32 21 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 826, i32 38 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 829, i32 43 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 834, i32 55 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 841, i32 63 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"adau1701_sigmadsp_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 296, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 851, i32 27 }
@___asan_gen_.111 = private unnamed_addr constant [23 x i8] c"adau1701_component_drv\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 760, i32 46 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"adau1701_dai\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 641, i32 34 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 105, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 105, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 168, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"adau1701_controls\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 122, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"adau1701_dapm_routes\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 141, i32 40 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 123, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 127, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 128, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 129, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 130, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 131, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 133, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 134, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 135, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 136, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 137, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 138, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [22 x i8] c"adau1701_dapm_widgets\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 126, i32 41 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 682, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 352, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 749, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"adau1701_dai_ops\00", align 1
@___asan_gen_.209 = private constant [31 x i8] c"../sound/soc/codecs/adau1701.c\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 633, i32 37 }
@___asan_gen_.211 = private unnamed_addr constant [31 x i8] c"switch.table.adau1701_reg_read\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [32 x i8] c"switch.table.adau1701_reg_write\00", align 1
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_adau1701_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_adau1701__294_885_adau1701_i2c_driver_init6, ptr @adau1701_i2c_driver_exit, ptr @adau1701_i2c_probe._entry, ptr @adau1701_i2c_probe._entry.6, ptr @adau1701_i2c_probe._entry_ptr, ptr @adau1701_i2c_probe._entry_ptr.8, ptr @adau1701_probe._entry, ptr @adau1701_probe._entry_ptr, ptr @adau1701_register_size._entry, ptr @adau1701_register_size._entry_ptr, ptr @adau1701_reset._entry, ptr @adau1701_reset._entry_ptr, ptr @adau1701_resume._entry, ptr @adau1701_resume._entry_ptr, ptr @adau1701_i2c_driver, ptr @.str, ptr @adau1701_dt_ids, ptr @adau1701_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @adau1701_i2c_probe._key, ptr @adau1701_regmap, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @adau1701_sigmadsp_ops, ptr @.str.14, ptr @adau1701_component_drv, ptr @adau1701_dai, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @adau1701_controls, ptr @adau1701_dapm_routes, ptr @.str.19, ptr @.compoundliteral, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @adau1701_dapm_widgets, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @adau1701_dai_ops, ptr @switch.table.adau1701_reg_read, ptr @switch.table.adau1701_reg_write], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_i2c_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_sigmadsp_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_component_drv to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_register_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_dapm_routes to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_dapm_widgets to i32), i32 1980, i32 2464, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1701_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adau1701_reg_read to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adau1701_reg_write to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adau1701_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adau1701_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @adau1701_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx2 = getelementptr %struct.adau1701, ptr %call.i, i32 0, i32 9, i32 0
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.15, ptr %arrayidx2, align 4
  %arrayidx2.1 = getelementptr %struct.adau1701, ptr %call.i, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.16, ptr %arrayidx2.1, align 4
  %call4 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %arrayidx2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end7

do.end:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call4) #10
  br label %cleanup

if.end7:                                          ; preds = %for.body.preheader
  %call10 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call10) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %client17 = getelementptr inbounds %struct.adau1701, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %client17 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %client17, align 4
  %call18 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef null, ptr noundef %client, ptr noundef nonnull @adau1701_regmap, ptr noundef nonnull @adau1701_i2c_probe._key, ptr noundef nonnull @.str.9) #7
  %regmap = getelementptr inbounds %struct.adau1701, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call18, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call18 to i32
  br label %exit_regulators_disable

if.end24:                                         ; preds = %if.end16
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool25.not = icmp eq ptr %6, null
  br i1 %tobool25.not, label %if.end24.if.end32_crit_edge, label %if.then26

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %pll_clkdiv = getelementptr inbounds %struct.adau1701, ptr %call.i, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %6, ptr noundef nonnull @.str.10, ptr noundef %pll_clkdiv, i32 noundef 1, i32 noundef 0) #7
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %pin_config = getelementptr inbounds %struct.adau1701, ptr %call.i, i32 0, i32 7
  %call.i105 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef %pin_config, i32 noundef 12, i32 noundef 0) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end24.if.end32_crit_edge
  %call33 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 1) #7
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call33, ptr %call.i, align 4
  %cmp.i106 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call33 to i32
  br label %exit_regulators_disable

if.end39:                                         ; preds = %if.end32
  %call40 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 3) #7
  %gpio_pll_mode = getelementptr inbounds %struct.adau1701, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %gpio_pll_mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call40, ptr %gpio_pll_mode, align 4
  %cmp.i107 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call40 to i32
  br label %exit_regulators_disable

if.end46:                                         ; preds = %if.end39
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call47 = tail call ptr @devm_sigmadsp_init_i2c(ptr noundef %client, ptr noundef nonnull @adau1701_sigmadsp_ops, ptr noundef nonnull @.str.14) #7
  %sigmadsp = getelementptr inbounds %struct.adau1701, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %sigmadsp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call47, ptr %sigmadsp, align 4
  %cmp.i108 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call47 to i32
  br label %exit_regulators_disable

if.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @adau1701_component_drv, ptr noundef nonnull @adau1701_dai, i32 noundef 1) #7
  br label %exit_regulators_disable

exit_regulators_disable:                          ; preds = %if.end53, %if.then50, %if.then43, %if.then36, %if.then21
  %ret.0 = phi i32 [ %4, %if.then21 ], [ %10, %if.then36 ], [ %12, %if.then43 ], [ %15, %if.then50 ], [ %call55, %if.end53 ]
  %call58 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx2) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_regulators_disable, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call10, %do.end15 ], [ %ret.0, %exit_regulators_disable ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_sigmadsp_init_i2c(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adau1701_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2087, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 2087
  call void @__sanitizer_cov_trace_const_cmp4(i32 2076, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 2076
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef %value) #2 align 64 {
entry:
  %send_buf = alloca [2 x i8], align 1
  %recv_buf = alloca [3 x i8], align 1
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %send_buf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %send_buf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %recv_buf) #7
  %1 = ptrtoint ptr %recv_buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %recv_buf, align 1, !annotation !121
  %2 = getelementptr inbounds [3 x i8], ptr %recv_buf, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !121
  %4 = getelementptr inbounds [3 x i8], ptr %recv_buf, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !121
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #7
  %6 = getelementptr inbounds i8, ptr %msgs, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %switch.tableidx = add i32 %reg, -2076
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 12
  br i1 %8, label %switch.hole_check, label %entry.adau1701_register_size.exit_crit_edge

entry.adau1701_register_size.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %adau1701_register_size.exit

adau1701_register_size.exit:                      ; preds = %switch.hole_check.adau1701_register_size.exit_crit_edge, %entry.adau1701_register_size.exit_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %reg) #10
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 3197, %switch.maskindex
  %9 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %switch.lobit.not = icmp eq i16 %9, 0
  br i1 %switch.lobit.not, label %switch.hole_check.adau1701_register_size.exit_crit_edge, label %switch.lookup

switch.hole_check.adau1701_register_size.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %adau1701_register_size.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.adau1701_reg_read, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %shr = lshr i32 %reg, 8
  %conv = trunc i32 %shr to i8
  %11 = ptrtoint ptr %send_buf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %send_buf, align 1
  %conv1 = trunc i32 %reg to i8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1, ptr %0, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr, align 2
  %15 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msgs, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %send_buf, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %flags, align 2
  %arrayidx9 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %14, ptr %arrayidx9, align 4
  %conv11 = trunc i32 %switch.load to i16
  %len13 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %len13 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv11, ptr %len13, align 4
  %buf16 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %buf16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %recv_buf, ptr %buf16, align 4
  %flags18 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %flags18, align 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %call20 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msgs, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %switch.lookup.cleanup_crit_edge, label %if.else

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call20)
  %cmp24.not = icmp eq i32 %call20, 2
  br i1 %cmp24.not, label %if.else.for.body_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %shl5556 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %if.else.for.body_crit_edge ]
  %shl = shl i32 %shl5556, 8
  %arrayidx31 = getelementptr [3 x i8], ptr %recv_buf, i32 0, i32 %i.057
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %26 to i32
  %or = or i32 %shl, %conv32
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %switch.load
  br i1 %exitcond.not, label %cleanup.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %adau1701_register_size.exit
  %retval.0 = phi i32 [ -22, %adau1701_register_size.exit ], [ %call20, %switch.lookup.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ 0, %cleanup.loopexit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %recv_buf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %send_buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %value) #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %buf, i32 2
  %2 = call ptr @memset(ptr %1, i32 255, i32 3)
  %switch.tableidx = add i32 %reg, -2076
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 12
  br i1 %3, label %switch.hole_check, label %entry.adau1701_register_size.exit_crit_edge

entry.adau1701_register_size.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %adau1701_register_size.exit

adau1701_register_size.exit:                      ; preds = %switch.hole_check.adau1701_register_size.exit_crit_edge, %entry.adau1701_register_size.exit_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %reg) #10
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 3197, %switch.maskindex
  %4 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %switch.lobit.not = icmp eq i16 %4, 0
  br i1 %switch.lobit.not, label %switch.hole_check.adau1701_register_size.exit_crit_edge, label %switch.lookup

switch.hole_check.adau1701_register_size.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %adau1701_register_size.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.adau1701_reg_write, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %shr = lshr i32 %reg, 8
  %conv = trunc i32 %shr to i8
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %buf, align 1
  %conv1 = trunc i32 %reg to i8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv1, ptr %0, align 1
  %add = add nuw nsw i32 %switch.load, 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %switch.lookup
  %i.037 = phi i32 [ %add, %switch.lookup ], [ %dec, %for.body.for.body_crit_edge ]
  %value.addr.036 = phi i32 [ %value, %switch.lookup ], [ %shr7, %for.body.for.body_crit_edge ]
  %conv5 = trunc i32 %value.addr.036 to i8
  %arrayidx6 = getelementptr [5 x i8], ptr %buf, i32 0, i32 %i.037
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv5, ptr %arrayidx6, align 1
  %shr7 = lshr i32 %value.addr.036, 8
  %dec = add nsw i32 %i.037, -1
  %cmp3 = icmp ugt i32 %dec, 1
  br i1 %cmp3, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %add8 = add nuw nsw i32 %switch.load, 2
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %context, ptr noundef nonnull %buf, i32 noundef %add8, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add8)
  %cmp11 = icmp eq i32 %call.i, %add8
  br i1 %cmp11, label %for.end.cleanup_crit_edge, label %if.else

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  %call9. = select i1 %cmp14, i32 %call.i, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.end.cleanup_crit_edge, %adau1701_register_size.exit
  %retval.0 = phi i32 [ -22, %adau1701_register_size.exit ], [ 0, %for.end.cleanup_crit_edge ], [ %call9., %if.else ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_safeload(ptr nocapture noundef readonly %sigmadsp, i32 noundef %addr, ptr nocapture noundef readonly %bytes, i32 noundef %len) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %buf = alloca [10 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sigmadsp, ptr %sigmadsp, i32 0, i32 6
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #7
  %5 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 2
  %6 = getelementptr inbounds [10 x i8], ptr %buf, i32 0, i32 3
  %regmap = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 5
  %7 = call ptr @memset(ptr %buf, i32 255, i32 10)
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %9, i32 noundef 2076, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %and = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 50) #7
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp61.not = icmp ult i32 %len, 4
  br i1 %cmp61.not, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %div58 = lshr i32 %len, 2
  br label %for.body

for.cond:                                         ; preds = %if.else30
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %div58
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %12 = trunc i32 %i.062 to i16
  %conv = add i16 %12, 2064
  %13 = call i16 @llvm.bswap.i16(i16 %conv) #7
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %buf, align 2
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %5, align 2
  %mul = shl i32 %i.062, 2
  %add.ptr7 = getelementptr i8, ptr %bytes, i32 %mul
  %16 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %add.ptr7, align 1
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %6, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %buf, i32 noundef 7, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  br i1 %cmp10, label %for.body.cleanup_crit_edge, label %if.else

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp13.not = icmp eq i32 %call.i, 7
  br i1 %cmp13.not, label %if.end17, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.else
  %conv19 = add i16 %12, 2069
  %19 = call i16 @llvm.bswap.i16(i16 %conv19) #7
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %buf, align 2
  %add21 = add i32 %i.062, %addr
  %conv22 = trunc i32 %add21 to i16
  %21 = call i16 @llvm.bswap.i16(i16 %conv22) #7
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %5, align 2
  %call.i59 = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %buf, i32 noundef 4, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %cmp27 = icmp slt i32 %call.i59, 0
  br i1 %cmp27, label %if.end17.cleanup_crit_edge, label %if.else30

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else30:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i59)
  %cmp31.not = icmp eq i32 %call.i59, 4
  br i1 %cmp31.not, label %for.cond, label %if.else30.cleanup_crit_edge

if.else30.cleanup_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end4.for.end_crit_edge
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i60 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 2076, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else30.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i60, %for.end ], [ %call1, %entry.cleanup_crit_edge ], [ -5, %if.else30.cleanup_crit_edge ], [ %call.i59, %if.end17.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ %call.i, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %sigmadsp = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %sigmadsp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sigmadsp, align 4
  %call1 = tail call i32 @sigmadsp_attach(ptr noundef %5, ptr noundef %component) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 9
  %call2 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef %call2) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pll_clkdiv = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %pll_clkdiv to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pll_clkdiv, align 4
  %call6 = tail call fastcc i32 @adau1701_reset(ptr noundef %component, i32 noundef -1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %exit_regulators_disable, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %arrayidx.1 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %12 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 4
  %or.1 = or i32 %shl.1, %conv
  %arrayidx.2 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %14 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 8
  %or.2 = or i32 %shl.2, %or.1
  %arrayidx.3 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %16 to i32
  %shl.3 = shl nuw nsw i32 %conv.3, 12
  %or.3 = or i32 %shl.3, %or.2
  %arrayidx.4 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %18 to i32
  %shl.4 = shl nuw nsw i32 %conv.4, 16
  %or.4 = or i32 %shl.4, %or.3
  %arrayidx.5 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 5
  %19 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %20 to i32
  %shl.5 = shl nuw nsw i32 %conv.5, 20
  %or.5 = or i32 %shl.5, %or.4
  %regmap = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 2080, i32 noundef %or.5) #7
  %arrayidx17 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 6
  %23 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %24 to i32
  %arrayidx17.1 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 7
  %25 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx17.1, align 1
  %conv18.1 = zext i8 %26 to i32
  %shl20.1 = shl nuw nsw i32 %conv18.1, 4
  %or21.1 = or i32 %shl20.1, %conv18
  %arrayidx17.2 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 8
  %27 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx17.2, align 1
  %conv18.2 = zext i8 %28 to i32
  %shl20.2 = shl nuw nsw i32 %conv18.2, 8
  %or21.2 = or i32 %shl20.2, %or21.1
  %arrayidx17.3 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 9
  %29 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx17.3, align 1
  %conv18.3 = zext i8 %30 to i32
  %shl20.3 = shl nuw nsw i32 %conv18.3, 12
  %or21.3 = or i32 %shl20.3, %or21.2
  %arrayidx17.4 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 10
  %31 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx17.4, align 1
  %conv18.4 = zext i8 %32 to i32
  %shl20.4 = shl nuw nsw i32 %conv18.4, 16
  %or21.4 = or i32 %shl20.4, %or21.3
  %arrayidx17.5 = getelementptr %struct.adau1701, ptr %3, i32 0, i32 7, i32 11
  %33 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx17.5, align 1
  %conv18.5 = zext i8 %34 to i32
  %shl20.5 = shl nuw nsw i32 %conv18.5, 20
  %or21.5 = or i32 %shl20.5, %or21.4
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call26 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 2081, i32 noundef %or21.5) #7
  br label %cleanup

exit_regulators_disable:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #7
  br label %cleanup

cleanup:                                          ; preds = %exit_regulators_disable, %for.body.preheader, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ %call6, %exit_regulators_disable ], [ 0, %for.body.preheader ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adau1701_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supplies = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 9
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 9
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 9
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7, i32 noundef %call1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pll_clkdiv = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %pll_clkdiv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pll_clkdiv, align 4
  %call2 = tail call fastcc i32 @adau1701_reset(ptr noundef %component, i32 noundef %7, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %clk_id, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %val.0 = phi i32 [ 4, %sw.bb1 ], [ %clk_id, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 2086, i32 noundef 4, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %sysclk = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb2
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge
  %.sink9 = phi i32 [ 96, %sw.bb2 ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %regmap3 = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %regmap3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap3, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 2082, i32 noundef 96, i32 noundef %.sink9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sigmadsp_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adau1701_reset(ptr nocapture noundef readonly %component, i32 noundef %clkdiv, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  %values = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values) #7
  %4 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %values, align 4, !annotation !121
  %sigmadsp = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %sigmadsp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sigmadsp, align 4
  tail call void @sigmadsp_reset(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %clkdiv)
  %cmp.not = icmp eq i32 %clkdiv, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gpio_pll_mode = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %gpio_pll_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpio_pll_mode, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = tail call i32 @llvm.fshl.i32(i32 %clkdiv, i32 %clkdiv, i32 26)
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %9, label %if.then.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb2
    i32 6, label %sw.bb5
    i32 0, label %if.then.sw.bb8_crit_edge
    i32 8, label %if.then.sw.bb8_crit_edge64
  ]

if.then.sw.bb8_crit_edge64:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.then.sw.bb8_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %values, align 4
  %and.i.i57 = and i32 %12, -4
  store i32 %and.i.i57, ptr %values, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %values, align 4
  %and.i.i58 = and i32 %14, -4
  %or.i.i = or i32 %and.i.i58, 2
  store i32 %or.i.i, ptr %values, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %values, align 4
  %or.i.i59 = and i32 %16, -4
  %and.i.i60 = or i32 %or.i.i59, 1
  store i32 %and.i.i60, ptr %values, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then.sw.bb8_crit_edge, %if.then.sw.bb8_crit_edge64
  %17 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %values, align 4
  %or.i.i62 = or i32 %18, 3
  store i32 %or.i.i62, ptr %values, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb, %if.then.sw.epilog_crit_edge
  %19 = ptrtoint ptr %gpio_pll_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpio_pll_mode, align 4
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndescs, align 4
  %desc = getelementptr inbounds %struct.gpio_descs, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  %call16 = call i32 @gpiod_set_array_value_cansleep(i32 noundef %22, ptr noundef %desc, ptr noundef %24, ptr noundef nonnull %values) #7
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %pll_clkdiv = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 3
  %25 = ptrtoint ptr %pll_clkdiv to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %clkdiv, ptr %pll_clkdiv, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %tobool17.not = icmp eq ptr %27, null
  br i1 %tobool17.not, label %if.end.if.end22_crit_edge, label %if.then18

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then18:                                        ; preds = %if.end
  call void @gpiod_set_value_cansleep(ptr noundef nonnull %27, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748) #7
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %30, i32 noundef 1) #7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then18
  %__ms.063 = phi i32 [ 85, %if.then18 ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.063, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #7
  %tobool21.not = icmp eq i32 %dec, 0
  br i1 %tobool21.not, label %while.body.if.end22_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.if.end22_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %while.body.if.end22_crit_edge, %if.end.if.end22_crit_edge
  br i1 %cmp.not, label %if.end22.if.end30_crit_edge, label %if.then24

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then24:                                        ; preds = %if.end22
  %32 = ptrtoint ptr %sigmadsp to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sigmadsp, align 4
  %call26 = call i32 @sigmadsp_setup(ptr noundef %33, i32 noundef %rate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end30_crit_edge, label %do.end

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end:                                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.35) #10
  br label %cleanup

if.end30:                                         ; preds = %if.then24.if.end30_crit_edge, %if.end22.if.end30_crit_edge
  %regmap = getelementptr inbounds %struct.adau1701, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call31 = call i32 @regmap_write(ptr noundef %37, i32 noundef 2087, i32 noundef 1) #7
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call33 = call i32 @regmap_write(ptr noundef %39, i32 noundef 2076, i32 noundef 4) #7
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  call void @regcache_mark_dirty(ptr noundef %41) #7
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call36 = call i32 @regcache_sync(ptr noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end
  %retval.0 = phi i32 [ %call26, %do.end ], [ 0, %if.end30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sigmadsp_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sigmadsp_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %seroctl.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 2048, %sw.bb ]
  %and2 = lshr i32 %fmt, 8
  %8 = and i32 %and2, 15
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %8, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog12_crit_edge
    i32 2, label %sw.bb4
    i32 3, label %sw.bb5
    i32 4, label %sw.bb8
  ]

sw.epilog.sw.epilog12_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog12

sw.bb5:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or7 = or i32 %seroctl.0, 4096
  br label %sw.epilog12

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %or10 = or i32 %seroctl.0, 4096
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.bb8, %sw.bb5, %sw.bb4, %sw.epilog.sw.epilog12_crit_edge
  %serictl.0 = phi i32 [ 8, %sw.bb8 ], [ 8, %sw.bb5 ], [ 0, %sw.bb4 ], [ %8, %sw.epilog.sw.epilog12_crit_edge ]
  %seroctl.1 = phi i32 [ %or10, %sw.bb8 ], [ %or7, %sw.bb5 ], [ %seroctl.0, %sw.bb4 ], [ %seroctl.0, %sw.epilog.sw.epilog12_crit_edge ]
  %invert_lrclk.0.off0 = phi i1 [ true, %sw.bb8 ], [ false, %sw.bb5 ], [ true, %sw.bb4 ], [ false, %sw.epilog.sw.epilog12_crit_edge ]
  %and13 = and i32 %fmt, 15
  %10 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %and13, label %sw.epilog12.cleanup_crit_edge [
    i32 1, label %sw.epilog12.sw.epilog24_crit_edge
    i32 3, label %sw.bb14
    i32 2, label %sw.bb17
  ]

sw.epilog12.sw.epilog24_crit_edge:                ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog24

sw.epilog12.cleanup_crit_edge:                    ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  %or15 = or i32 %serictl.0, 1
  %or16 = or i32 %seroctl.1, 4
  %lnot = xor i1 %invert_lrclk.0.off0, true
  br label %sw.epilog24

sw.bb17:                                          ; preds = %sw.epilog12
  call void @__sanitizer_cov_trace_pc() #9
  %or18 = or i32 %serictl.0, 3
  %or19 = or i32 %seroctl.1, 8
  %lnot21 = xor i1 %invert_lrclk.0.off0, true
  br label %sw.epilog24

sw.epilog24:                                      ; preds = %sw.bb17, %sw.bb14, %sw.epilog12.sw.epilog24_crit_edge
  %serictl.1 = phi i32 [ %or18, %sw.bb17 ], [ %or15, %sw.bb14 ], [ %serictl.0, %sw.epilog12.sw.epilog24_crit_edge ]
  %seroctl.2 = phi i32 [ %or19, %sw.bb17 ], [ %or16, %sw.bb14 ], [ %seroctl.1, %sw.epilog12.sw.epilog24_crit_edge ]
  %invert_lrclk.1.off0 = phi i1 [ %lnot21, %sw.bb17 ], [ %lnot, %sw.bb14 ], [ %invert_lrclk.0.off0, %sw.epilog12.sw.epilog24_crit_edge ]
  %or26 = or i32 %seroctl.2, 8192
  %or27 = or i32 %serictl.1, 16
  %serictl.2 = select i1 %invert_lrclk.1.off0, i32 %or27, i32 %serictl.1
  %seroctl.3 = select i1 %invert_lrclk.1.off0, i32 %or26, i32 %seroctl.2
  %dai_fmt = getelementptr inbounds %struct.adau1701, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and13, ptr %dai_fmt, align 4
  %regmap = getelementptr inbounds %struct.adau1701, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 2079, i32 noundef %serictl.2) #7
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 2078, i32 noundef -4, i32 noundef %seroctl.3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog24, %sw.epilog12.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog24 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_mute_stream(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 8, i32 0
  %regmap = getelementptr inbounds %struct.adau1701, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 2076, i32 noundef 8, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_startup(ptr noundef %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %sigmadsp = getelementptr inbounds %struct.adau1701, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %sigmadsp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sigmadsp, align 4
  %call1 = tail call i32 @sigmadsp_restrict_params(ptr noundef %7, ptr noundef %substream) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1701_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %sysclk = getelementptr inbounds %struct.adau1701, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %div = udiv i32 %7, %9
  %pll_clkdiv = getelementptr inbounds %struct.adau1701, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %pll_clkdiv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_clkdiv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %11)
  %cmp.not = icmp eq i32 %div, %11
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %call4 = tail call fastcc i32 @adau1701_reset(ptr noundef %1, i32 noundef %div, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.end7thread-pre-split

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7thread-pre-split:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %arrayidx.i.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7thread-pre-split, %entry.if.end7_crit_edge
  %13 = phi i32 [ %.pr, %if.end7thread-pre-split ], [ %9, %entry.if.end7_crit_edge ]
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %13, label %if.end7.cleanup_crit_edge [
    i32 192000, label %if.end7.sw.epilog_crit_edge
    i32 96000, label %sw.bb9
    i32 48000, label %sw.bb10
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb9, %if.end7.sw.epilog_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb10 ], [ 1, %sw.bb9 ], [ 2, %if.end7.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.adau1701, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 2076, i32 noundef 3, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %17 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp12 = icmp eq i32 %18, 0
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i, align 4
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.epilog
  %dai_fmt.i = getelementptr inbounds %struct.adau1701, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dai_fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then13
  %arrayidx.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i.i, label %if.end.i.if.then.i.i.i.i_crit_edge

if.end.i.if.then.i.i.i.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge, %if.end.i.if.then.i.i.i.i_crit_edge
  %i.09.lcssa.i.i.i.i = phi i32 [ 0, %if.end.i.if.then.i.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i = phi i32 [ %26, %if.end.i.if.then.i.i.i.i_crit_edge ], [ %29, %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i, i1 true) #7, !range !122
  %add.i.i.i.i = or i32 %27, %i.09.lcssa.i.i.i.i
  br label %params_width.exit.i

for.inc.i.i.i.i:                                  ; preds = %if.end.i
  %arrayidx.1.i.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.1.i.i.i.i, label %for.inc.i.i.i.i.params_width.exit.i_crit_edge, label %for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge

for.inc.i.i.i.i.if.then.i.i.i.i_crit_edge:        ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i

for.inc.i.i.i.i.params_width.exit.i_crit_edge:    ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit.i

params_width.exit.i:                              ; preds = %for.inc.i.i.i.i.params_width.exit.i_crit_edge, %if.then.i.i.i.i
  %retval.0.i.i.i.i = phi i32 [ %add.i.i.i.i, %if.then.i.i.i.i ], [ 0, %for.inc.i.i.i.i.params_width.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.i) #7
  %30 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call1.i.i, label %params_width.exit.i.cleanup_crit_edge [
    i32 16, label %params_width.exit.i.sw.epilog.i_crit_edge
    i32 20, label %sw.bb2.i
    i32 24, label %sw.bb3.i
  ]

params_width.exit.i.sw.epilog.i_crit_edge:        ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

params_width.exit.i.cleanup_crit_edge:            ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.i:                                         ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %params_width.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %params_width.exit.i.sw.epilog.i_crit_edge
  %val.0.i = phi i32 [ 3, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 6, %params_width.exit.i.sw.epilog.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.adau1701, ptr %22, i32 0, i32 5
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 2079, i32 noundef 7, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %arrayidx.i.i.i.i35 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %arrayidx.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i.i36 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i.i36, label %for.inc.i.i.i.i43, label %if.else.if.then.i.i.i.i40_crit_edge

if.else.if.then.i.i.i.i40_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i40

if.then.i.i.i.i40:                                ; preds = %for.inc.i.i.i.i43.if.then.i.i.i.i40_crit_edge, %if.else.if.then.i.i.i.i40_crit_edge
  %i.09.lcssa.i.i.i.i37 = phi i32 [ 0, %if.else.if.then.i.i.i.i40_crit_edge ], [ 32, %for.inc.i.i.i.i43.if.then.i.i.i.i40_crit_edge ]
  %.lcssa.i.i.i.i38 = phi i32 [ %34, %if.else.if.then.i.i.i.i40_crit_edge ], [ %37, %for.inc.i.i.i.i43.if.then.i.i.i.i40_crit_edge ]
  %35 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.i38, i1 true) #7, !range !122
  %add.i.i.i.i39 = or i32 %35, %i.09.lcssa.i.i.i.i37
  br label %params_width.exit.i46

for.inc.i.i.i.i43:                                ; preds = %if.else
  %arrayidx.1.i.i.i.i41 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx.1.i.i.i.i41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.1.i.i.i.i41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.1.i.i.i.i42 = icmp eq i32 %37, 0
  br i1 %tobool.not.1.i.i.i.i42, label %for.inc.i.i.i.i43.params_width.exit.i46_crit_edge, label %for.inc.i.i.i.i43.if.then.i.i.i.i40_crit_edge

for.inc.i.i.i.i43.if.then.i.i.i.i40_crit_edge:    ; preds = %for.inc.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.i40

for.inc.i.i.i.i43.params_width.exit.i46_crit_edge: ; preds = %for.inc.i.i.i.i43
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit.i46

params_width.exit.i46:                            ; preds = %for.inc.i.i.i.i43.params_width.exit.i46_crit_edge, %if.then.i.i.i.i40
  %retval.0.i.i.i.i44 = phi i32 [ %add.i.i.i.i39, %if.then.i.i.i.i40 ], [ 0, %for.inc.i.i.i.i43.params_width.exit.i46_crit_edge ]
  %call1.i.i45 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.i44) #7
  %38 = zext i32 %call1.i.i45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call1.i.i45, label %params_width.exit.i46.cleanup_crit_edge [
    i32 16, label %params_width.exit.i46.sw.epilog.i51_crit_edge
    i32 20, label %sw.bb2.i47
    i32 24, label %sw.bb3.i48
  ]

params_width.exit.i46.sw.epilog.i51_crit_edge:    ; preds = %params_width.exit.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i51

params_width.exit.i46.cleanup_crit_edge:          ; preds = %params_width.exit.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.i47:                                       ; preds = %params_width.exit.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i51

sw.bb3.i48:                                       ; preds = %params_width.exit.i46
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i51

sw.epilog.i51:                                    ; preds = %sw.bb3.i48, %sw.bb2.i47, %params_width.exit.i46.sw.epilog.i51_crit_edge
  %val.0.i49 = phi i32 [ 0, %sw.bb3.i48 ], [ 1, %sw.bb2.i47 ], [ 2, %params_width.exit.i46.sw.epilog.i51_crit_edge ]
  %dai_fmt.i50 = getelementptr inbounds %struct.adau1701, ptr %22, i32 0, i32 2
  %39 = ptrtoint ptr %dai_fmt.i50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dai_fmt.i50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp.i = icmp eq i32 %40, 2
  br i1 %cmp.i, label %if.then.i, label %sw.epilog.i51.if.end.i54_crit_edge

sw.epilog.i51.if.end.i54_crit_edge:               ; preds = %sw.epilog.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54

if.then.i:                                        ; preds = %sw.epilog.i51
  %41 = ptrtoint ptr %arrayidx.i.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i.i.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i22.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i22.i, label %for.inc.i.i.i29.i, label %if.then.i.if.then.i.i.i26.i_crit_edge

if.then.i.if.then.i.i.i26.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i26.i

if.then.i.i.i26.i:                                ; preds = %for.inc.i.i.i29.i.if.then.i.i.i26.i_crit_edge, %if.then.i.if.then.i.i.i26.i_crit_edge
  %i.09.lcssa.i.i.i23.i = phi i32 [ 0, %if.then.i.if.then.i.i.i26.i_crit_edge ], [ 32, %for.inc.i.i.i29.i.if.then.i.i.i26.i_crit_edge ]
  %.lcssa.i.i.i24.i = phi i32 [ %42, %if.then.i.if.then.i.i.i26.i_crit_edge ], [ %45, %for.inc.i.i.i29.i.if.then.i.i.i26.i_crit_edge ]
  %43 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i24.i, i1 true) #7, !range !122
  %add.i.i.i25.i = or i32 %43, %i.09.lcssa.i.i.i23.i
  br label %params_width.exit32.i

for.inc.i.i.i29.i:                                ; preds = %if.then.i
  %arrayidx.1.i.i.i27.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx.1.i.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1.i.i.i27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.1.i.i.i28.i = icmp eq i32 %45, 0
  br i1 %tobool.not.1.i.i.i28.i, label %for.inc.i.i.i29.i.params_width.exit32.i_crit_edge, label %for.inc.i.i.i29.i.if.then.i.i.i26.i_crit_edge

for.inc.i.i.i29.i.if.then.i.i.i26.i_crit_edge:    ; preds = %for.inc.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i26.i

for.inc.i.i.i29.i.params_width.exit32.i_crit_edge: ; preds = %for.inc.i.i.i29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit32.i

params_width.exit32.i:                            ; preds = %for.inc.i.i.i29.i.params_width.exit32.i_crit_edge, %if.then.i.i.i26.i
  %retval.0.i.i.i30.i = phi i32 [ %add.i.i.i25.i, %if.then.i.i.i26.i ], [ 0, %for.inc.i.i.i29.i.params_width.exit32.i_crit_edge ]
  %call1.i31.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i30.i) #7
  %46 = zext i32 %call1.i31.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call1.i31.i, label %params_width.exit32.i.if.end.i54_crit_edge [
    i32 16, label %sw.bb5.i
    i32 20, label %sw.bb6.i
    i32 24, label %sw.bb8.i
  ]

params_width.exit32.i.if.end.i54_crit_edge:       ; preds = %params_width.exit32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i54

sw.bb5.i:                                         ; preds = %params_width.exit32.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %val.0.i49, 16
  br label %if.end.i54

sw.bb6.i:                                         ; preds = %params_width.exit32.i
  call void @__sanitizer_cov_trace_pc() #9
  %or7.i = or i32 %val.0.i49, 12
  br label %if.end.i54

sw.bb8.i:                                         ; preds = %params_width.exit32.i
  call void @__sanitizer_cov_trace_pc() #9
  %or9.i = or i32 %val.0.i49, 8
  br label %if.end.i54

if.end.i54:                                       ; preds = %sw.bb8.i, %sw.bb6.i, %sw.bb5.i, %params_width.exit32.i.if.end.i54_crit_edge, %sw.epilog.i51.if.end.i54_crit_edge
  %mask.0.i = phi i32 [ 3, %sw.epilog.i51.if.end.i54_crit_edge ], [ 31, %params_width.exit32.i.if.end.i54_crit_edge ], [ 31, %sw.bb8.i ], [ 31, %sw.bb6.i ], [ 31, %sw.bb5.i ]
  %val.2.i = phi i32 [ %val.0.i49, %sw.epilog.i51.if.end.i54_crit_edge ], [ %val.0.i49, %params_width.exit32.i.if.end.i54_crit_edge ], [ %or9.i, %sw.bb8.i ], [ %or7.i, %sw.bb6.i ], [ %or.i, %sw.bb5.i ]
  %regmap.i52 = getelementptr inbounds %struct.adau1701, ptr %22, i32 0, i32 5
  %47 = ptrtoint ptr %regmap.i52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i52, align 4
  %call.i.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 2078, i32 noundef %mask.0.i, i32 noundef %val.2.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i54, %params_width.exit.i46.cleanup_crit_edge, %sw.epilog.i, %params_width.exit.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %sw.epilog.i ], [ 0, %if.then13.cleanup_crit_edge ], [ -22, %params_width.exit.i.cleanup_crit_edge ], [ 0, %if.end.i54 ], [ -22, %params_width.exit.i46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sigmadsp_restrict_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !65, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_snd_soc_adau1701__294_885_adau1701_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_adau1701__294_885_adau1701_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/adau1701.c", i32 885, i32 1}
!2 = !{ptr @__exitcall_adau1701_i2c_driver_exit, !1, !"__exitcall_adau1701_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/adau1701.c", i32 887, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/adau1701.c", i32 888, i32 1}
!7 = !{ptr @__UNIQUE_ID_author297, !8, !"__UNIQUE_ID_author297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/adau1701.c", i32 889, i32 1}
!9 = !{ptr @__UNIQUE_ID_file298, !10, !"__UNIQUE_ID_file298", i1 false, i1 false}
!10 = !{!"../sound/soc/codecs/adau1701.c", i32 890, i32 1}
!11 = !{ptr @__UNIQUE_ID_license299, !10, !"__UNIQUE_ID_license299", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/adau1701.c", i32 878, i32 11}
!14 = !{ptr @adau1701_i2c_driver, !15, !"adau1701_i2c_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/adau1701.c", i32 876, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/adau1701.c", i32 805, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adau1701_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adau1701_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/adau1701.c", i32 812, i32 3}
!26 = !{ptr @adau1701_i2c_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @adau1701_i2c_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @adau1701_i2c_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/adau1701.c", i32 817, i32 21}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/adau1701.c", i32 826, i32 38}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/adau1701.c", i32 829, i32 43}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/adau1701.c", i32 834, i32 55}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/adau1701.c", i32 841, i32 63}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/adau1701.c", i32 851, i32 27}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/adau1701.c", i32 105, i32 2}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/adau1701.c", i32 105, i32 10}
!45 = distinct !{null, !46, !"supply_names", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/adau1701.c", i32 104, i32 27}
!47 = !{ptr @adau1701_regmap, !48, !"adau1701_regmap", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/adau1701.c", i32 778, i32 35}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/adau1701.c", i32 168, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @adau1701_register_size._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @adau1701_register_size._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @adau1701_sigmadsp_ops, !55, !"adau1701_sigmadsp_ops", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/adau1701.c", i32 296, i32 34}
!56 = !{ptr @adau1701_component_drv, !57, !"adau1701_component_drv", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/adau1701.c", i32 760, i32 46}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/adau1701.c", i32 123, i32 2}
!60 = !{ptr @adau1701_controls, !61, !"adau1701_controls", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/adau1701.c", i32 122, i32 38}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/adau1701.c", i32 127, i32 2}
!64 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/adau1701.c", i32 128, i32 2}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/adau1701.c", i32 129, i32 2}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/adau1701.c", i32 130, i32 2}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/adau1701.c", i32 131, i32 2}
!73 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/adau1701.c", i32 133, i32 2}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/adau1701.c", i32 134, i32 2}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/adau1701.c", i32 135, i32 2}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/adau1701.c", i32 136, i32 2}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/adau1701.c", i32 137, i32 2}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/adau1701.c", i32 138, i32 2}
!86 = !{ptr @adau1701_dapm_widgets, !87, !"adau1701_dapm_widgets", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/adau1701.c", i32 126, i32 41}
!88 = !{ptr @adau1701_dapm_routes, !89, !"adau1701_dapm_routes", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/adau1701.c", i32 141, i32 40}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/adau1701.c", i32 682, i32 3}
!92 = !{ptr @adau1701_probe._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @adau1701_probe._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/adau1701.c", i32 352, i32 4}
!96 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @adau1701_reset._entry, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @adau1701_reset._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/adau1701.c", i32 749, i32 3}
!102 = !{ptr @adau1701_resume._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @adau1701_resume._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @adau1701_dai, !105, !"adau1701_dai", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/adau1701.c", i32 641, i32 34}
!106 = !{ptr @adau1701_dai_ops, !107, !"adau1701_dai_ops", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/adau1701.c", i32 633, i32 37}
!108 = !{ptr @adau1701_dt_ids, !109, !"adau1701_dt_ids", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/adau1701.c", i32 662, i32 34}
!110 = !{ptr @adau1701_i2c_id, !111, !"adau1701_i2c_id", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/adau1701.c", i32 867, i32 35}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{i32 0, i32 33}
