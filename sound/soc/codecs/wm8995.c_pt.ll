; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8995.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8995.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.wm8995_priv = type { ptr, [2 x i32], [2 x i32], [2 x i32], [2 x %struct.fll_config], [2 x %struct.fll_config], [8 x %struct.regulator_bulk_data], [8 x %struct.notifier_block], ptr }
%struct.fll_config = type { i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.fll_div = type { i16, i16, i16, i16, i16 }
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

@__initcall__kmod_snd_soc_wm8995__322_2299_wm8995_modinit6 = internal global ptr @wm8995_modinit, section ".initcall6.init", align 4
@wm8995_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8995_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8995_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@wm8995_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @wm8995_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wm8995_exit = internal global ptr @wm8995_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description323 = internal constant [46 x i8] c"snd_soc_wm8995.description=ASoC WM8995 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [75 x i8] c"snd_soc_wm8995.author=Dimitris Papastamos <dp@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [52 x i8] c"snd_soc_wm8995.file=sound/soc/codecs/snd-soc-wm8995\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [27 x i8] c"snd_soc_wm8995.license=GPL\00", section ".modinfo", align 1
@wm8995_modinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to register wm8995 I2C driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8995_modinit\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8995.c\00", [38 x i8] zeroinitializer }, align 32
@wm8995_modinit._entry_ptr = internal global ptr @wm8995_modinit._entry, section ".printk_index", align 4
@wm8995_modinit._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 2293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to register wm8995 SPI driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@wm8995_modinit._entry_ptr.5 = internal global ptr @wm8995_modinit._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8995\00", [25 x i8] zeroinitializer }, align 32
@wm8995_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8995\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8995_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8995_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr null, ptr @wm8995_readable, ptr @wm8995_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 12799, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8995_reg_defaults, i32 324, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8995:2246:(&wm8995_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8995_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 2249, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8995_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8995_i2c_probe._entry_ptr = internal global ptr @wm8995_i2c_probe._entry, section ".printk_index", align 4
@soc_component_dev_wm8995 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm8995_snd_controls, i32 18, ptr @wm8995_dapm_widgets, i32 59, ptr @wm8995_intercon, i32 120, ptr @wm8995_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8995_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8995_dai = internal global { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.206, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8995_aif1_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.69, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.89, i64 68719477828, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.207, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8995_aif2_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.208, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.209, i64 68719477828, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.210, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8995_aif3_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.211, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.212, i64 68719477828, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@wm8995_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.9, ptr @.str.2, i32 2257, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register CODEC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8995_i2c_probe._entry_ptr.14 = internal global ptr @wm8995_i2c_probe._entry.12, section ".printk_index", align 4
@wm8995_reg_defaults = internal constant { [324 x %struct.reg_default], [640 x i8] } { [324 x %struct.reg_default] [%struct.reg_default { i32 0, i32 35221 }, %struct.reg_default { i32 5, i32 256 }, %struct.reg_default { i32 16, i32 11 }, %struct.reg_default { i32 17, i32 11 }, %struct.reg_default { i32 24, i32 704 }, %struct.reg_default { i32 25, i32 704 }, %struct.reg_default { i32 26, i32 704 }, %struct.reg_default { i32 27, i32 704 }, %struct.reg_default { i32 28, i32 15 }, %struct.reg_default { i32 32, i32 5 }, %struct.reg_default { i32 33, i32 5 }, %struct.reg_default { i32 40, i32 3 }, %struct.reg_default { i32 41, i32 19 }, %struct.reg_default { i32 48, i32 4 }, %struct.reg_default { i32 56, i32 2552 }, %struct.reg_default { i32 64, i32 7973 }, %struct.reg_default { i32 69, i32 4 }, %struct.reg_default { i32 82, i32 43690 }, %struct.reg_default { i32 84, i32 10794 }, %struct.reg_default { i32 146, i32 96 }, %struct.reg_default { i32 256, i32 2 }, %struct.reg_default { i32 257, i32 32772 }, %struct.reg_default { i32 520, i32 16 }, %struct.reg_default { i32 528, i32 131 }, %struct.reg_default { i32 529, i32 131 }, %struct.reg_default { i32 548, i32 3200 }, %struct.reg_default { i32 580, i32 3200 }, %struct.reg_default { i32 768, i32 16464 }, %struct.reg_default { i32 769, i32 16384 }, %struct.reg_default { i32 771, i32 64 }, %struct.reg_default { i32 772, i32 64 }, %struct.reg_default { i32 773, i32 64 }, %struct.reg_default { i32 774, i32 4 }, %struct.reg_default { i32 775, i32 256 }, %struct.reg_default { i32 784, i32 16464 }, %struct.reg_default { i32 785, i32 16384 }, %struct.reg_default { i32 787, i32 64 }, %struct.reg_default { i32 788, i32 64 }, %struct.reg_default { i32 789, i32 64 }, %struct.reg_default { i32 1024, i32 192 }, %struct.reg_default { i32 1025, i32 192 }, %struct.reg_default { i32 1026, i32 192 }, %struct.reg_default { i32 1027, i32 192 }, %struct.reg_default { i32 1028, i32 192 }, %struct.reg_default { i32 1029, i32 192 }, %struct.reg_default { i32 1030, i32 192 }, %struct.reg_default { i32 1031, i32 192 }, %struct.reg_default { i32 1056, i32 512 }, %struct.reg_default { i32 1057, i32 16 }, %struct.reg_default { i32 1058, i32 512 }, %struct.reg_default { i32 1059, i32 16 }, %struct.reg_default { i32 1088, i32 152 }, %struct.reg_default { i32 1089, i32 2117 }, %struct.reg_default { i32 1104, i32 152 }, %struct.reg_default { i32 1105, i32 2117 }, %struct.reg_default { i32 1152, i32 25368 }, %struct.reg_default { i32 1153, i32 25344 }, %struct.reg_default { i32 1154, i32 4042 }, %struct.reg_default { i32 1155, i32 1024 }, %struct.reg_default { i32 1156, i32 216 }, %struct.reg_default { i32 1157, i32 7861 }, %struct.reg_default { i32 1158, i32 61765 }, %struct.reg_default { i32 1159, i32 2933 }, %struct.reg_default { i32 1160, i32 453 }, %struct.reg_default { i32 1161, i32 7256 }, %struct.reg_default { i32 1162, i32 62323 }, %struct.reg_default { i32 1163, i32 2644 }, %struct.reg_default { i32 1164, i32 1368 }, %struct.reg_default { i32 1165, i32 5774 }, %struct.reg_default { i32 1166, i32 63529 }, %struct.reg_default { i32 1167, i32 1965 }, %struct.reg_default { i32 1168, i32 4355 }, %struct.reg_default { i32 1169, i32 1380 }, %struct.reg_default { i32 1170, i32 1369 }, %struct.reg_default { i32 1171, i32 16384 }, %struct.reg_default { i32 1184, i32 25368 }, %struct.reg_default { i32 1185, i32 25344 }, %struct.reg_default { i32 1186, i32 4042 }, %struct.reg_default { i32 1187, i32 1024 }, %struct.reg_default { i32 1188, i32 216 }, %struct.reg_default { i32 1189, i32 7861 }, %struct.reg_default { i32 1190, i32 61765 }, %struct.reg_default { i32 1191, i32 2933 }, %struct.reg_default { i32 1192, i32 453 }, %struct.reg_default { i32 1193, i32 7256 }, %struct.reg_default { i32 1194, i32 62323 }, %struct.reg_default { i32 1195, i32 2644 }, %struct.reg_default { i32 1196, i32 1368 }, %struct.reg_default { i32 1197, i32 5774 }, %struct.reg_default { i32 1198, i32 63529 }, %struct.reg_default { i32 1199, i32 1965 }, %struct.reg_default { i32 1200, i32 4355 }, %struct.reg_default { i32 1201, i32 1380 }, %struct.reg_default { i32 1202, i32 1369 }, %struct.reg_default { i32 1203, i32 16384 }, %struct.reg_default { i32 1280, i32 192 }, %struct.reg_default { i32 1281, i32 192 }, %struct.reg_default { i32 1282, i32 192 }, %struct.reg_default { i32 1283, i32 192 }, %struct.reg_default { i32 1312, i32 512 }, %struct.reg_default { i32 1313, i32 16 }, %struct.reg_default { i32 1344, i32 152 }, %struct.reg_default { i32 1345, i32 2117 }, %struct.reg_default { i32 1408, i32 25368 }, %struct.reg_default { i32 1409, i32 25344 }, %struct.reg_default { i32 1410, i32 4042 }, %struct.reg_default { i32 1411, i32 1024 }, %struct.reg_default { i32 1412, i32 216 }, %struct.reg_default { i32 1413, i32 7861 }, %struct.reg_default { i32 1414, i32 61765 }, %struct.reg_default { i32 1415, i32 2933 }, %struct.reg_default { i32 1416, i32 453 }, %struct.reg_default { i32 1417, i32 7256 }, %struct.reg_default { i32 1418, i32 62323 }, %struct.reg_default { i32 1419, i32 2644 }, %struct.reg_default { i32 1420, i32 1368 }, %struct.reg_default { i32 1421, i32 5774 }, %struct.reg_default { i32 1422, i32 63529 }, %struct.reg_default { i32 1423, i32 1965 }, %struct.reg_default { i32 1424, i32 4355 }, %struct.reg_default { i32 1425, i32 1380 }, %struct.reg_default { i32 1426, i32 1369 }, %struct.reg_default { i32 1427, i32 16384 }, %struct.reg_default { i32 1568, i32 2 }, %struct.reg_default { i32 1792, i32 41216 }, %struct.reg_default { i32 1793, i32 41217 }, %struct.reg_default { i32 1794, i32 41217 }, %struct.reg_default { i32 1795, i32 41217 }, %struct.reg_default { i32 1796, i32 41217 }, %struct.reg_default { i32 1797, i32 41217 }, %struct.reg_default { i32 1798, i32 41217 }, %struct.reg_default { i32 1799, i32 41217 }, %struct.reg_default { i32 1800, i32 41217 }, %struct.reg_default { i32 1801, i32 41217 }, %struct.reg_default { i32 1802, i32 41217 }, %struct.reg_default { i32 1803, i32 41217 }, %struct.reg_default { i32 1804, i32 41217 }, %struct.reg_default { i32 1805, i32 41217 }, %struct.reg_default { i32 1825, i32 85 }, %struct.reg_default { i32 1848, i32 16383 }, %struct.reg_default { i32 1849, i32 8191 }, %struct.reg_default { i32 2049, i32 1 }, %struct.reg_default { i32 2050, i32 105 }, %struct.reg_default { i32 2056, i32 2 }, %struct.reg_default { i32 2057, i32 3 }, %struct.reg_default { i32 2058, i32 105 }, %struct.reg_default { i32 12288, i32 1 }, %struct.reg_default { i32 12289, i32 1 }, %struct.reg_default { i32 12291, i32 6 }, %struct.reg_default { i32 12292, i32 64 }, %struct.reg_default { i32 12293, i32 1 }, %struct.reg_default { i32 12294, i32 15 }, %struct.reg_default { i32 12295, i32 6 }, %struct.reg_default { i32 12296, i32 1 }, %struct.reg_default { i32 12297, i32 3 }, %struct.reg_default { i32 12298, i32 260 }, %struct.reg_default { i32 12300, i32 96 }, %struct.reg_default { i32 12301, i32 17 }, %struct.reg_default { i32 12302, i32 1025 }, %struct.reg_default { i32 12304, i32 80 }, %struct.reg_default { i32 12305, i32 3 }, %struct.reg_default { i32 12306, i32 256 }, %struct.reg_default { i32 12308, i32 81 }, %struct.reg_default { i32 12309, i32 3 }, %struct.reg_default { i32 12310, i32 260 }, %struct.reg_default { i32 12311, i32 10 }, %struct.reg_default { i32 12312, i32 96 }, %struct.reg_default { i32 12313, i32 59 }, %struct.reg_default { i32 12314, i32 1282 }, %struct.reg_default { i32 12315, i32 256 }, %struct.reg_default { i32 12316, i32 12287 }, %struct.reg_default { i32 12320, i32 12287 }, %struct.reg_default { i32 12324, i32 12287 }, %struct.reg_default { i32 12328, i32 12287 }, %struct.reg_default { i32 12332, i32 12287 }, %struct.reg_default { i32 12336, i32 12287 }, %struct.reg_default { i32 12340, i32 12287 }, %struct.reg_default { i32 12344, i32 12287 }, %struct.reg_default { i32 12348, i32 12287 }, %struct.reg_default { i32 12352, i32 1 }, %struct.reg_default { i32 12353, i32 1 }, %struct.reg_default { i32 12355, i32 6 }, %struct.reg_default { i32 12356, i32 64 }, %struct.reg_default { i32 12357, i32 1 }, %struct.reg_default { i32 12358, i32 15 }, %struct.reg_default { i32 12359, i32 6 }, %struct.reg_default { i32 12360, i32 1 }, %struct.reg_default { i32 12361, i32 3 }, %struct.reg_default { i32 12362, i32 260 }, %struct.reg_default { i32 12364, i32 96 }, %struct.reg_default { i32 12365, i32 17 }, %struct.reg_default { i32 12366, i32 1025 }, %struct.reg_default { i32 12368, i32 80 }, %struct.reg_default { i32 12369, i32 3 }, %struct.reg_default { i32 12370, i32 256 }, %struct.reg_default { i32 12372, i32 96 }, %struct.reg_default { i32 12373, i32 59 }, %struct.reg_default { i32 12374, i32 1282 }, %struct.reg_default { i32 12375, i32 256 }, %struct.reg_default { i32 12376, i32 12287 }, %struct.reg_default { i32 12380, i32 12287 }, %struct.reg_default { i32 12384, i32 12287 }, %struct.reg_default { i32 12388, i32 12287 }, %struct.reg_default { i32 12392, i32 12287 }, %struct.reg_default { i32 12396, i32 12287 }, %struct.reg_default { i32 12400, i32 12287 }, %struct.reg_default { i32 12404, i32 12287 }, %struct.reg_default { i32 12408, i32 12287 }, %struct.reg_default { i32 12412, i32 12287 }, %struct.reg_default { i32 12416, i32 1 }, %struct.reg_default { i32 12417, i32 1 }, %struct.reg_default { i32 12419, i32 6 }, %struct.reg_default { i32 12420, i32 64 }, %struct.reg_default { i32 12421, i32 1 }, %struct.reg_default { i32 12422, i32 15 }, %struct.reg_default { i32 12423, i32 6 }, %struct.reg_default { i32 12424, i32 1 }, %struct.reg_default { i32 12425, i32 3 }, %struct.reg_default { i32 12426, i32 262 }, %struct.reg_default { i32 12428, i32 97 }, %struct.reg_default { i32 12429, i32 17 }, %struct.reg_default { i32 12430, i32 1025 }, %struct.reg_default { i32 12432, i32 80 }, %struct.reg_default { i32 12433, i32 3 }, %struct.reg_default { i32 12434, i32 258 }, %struct.reg_default { i32 12436, i32 81 }, %struct.reg_default { i32 12437, i32 3 }, %struct.reg_default { i32 12438, i32 262 }, %struct.reg_default { i32 12439, i32 10 }, %struct.reg_default { i32 12440, i32 97 }, %struct.reg_default { i32 12441, i32 59 }, %struct.reg_default { i32 12442, i32 1282 }, %struct.reg_default { i32 12443, i32 256 }, %struct.reg_default { i32 12444, i32 12287 }, %struct.reg_default { i32 12448, i32 12287 }, %struct.reg_default { i32 12452, i32 12287 }, %struct.reg_default { i32 12456, i32 12287 }, %struct.reg_default { i32 12460, i32 12287 }, %struct.reg_default { i32 12464, i32 12287 }, %struct.reg_default { i32 12468, i32 12287 }, %struct.reg_default { i32 12472, i32 12287 }, %struct.reg_default { i32 12476, i32 12287 }, %struct.reg_default { i32 12480, i32 1 }, %struct.reg_default { i32 12481, i32 1 }, %struct.reg_default { i32 12483, i32 6 }, %struct.reg_default { i32 12484, i32 64 }, %struct.reg_default { i32 12485, i32 1 }, %struct.reg_default { i32 12486, i32 15 }, %struct.reg_default { i32 12487, i32 6 }, %struct.reg_default { i32 12488, i32 1 }, %struct.reg_default { i32 12489, i32 3 }, %struct.reg_default { i32 12490, i32 262 }, %struct.reg_default { i32 12492, i32 97 }, %struct.reg_default { i32 12493, i32 17 }, %struct.reg_default { i32 12494, i32 1025 }, %struct.reg_default { i32 12496, i32 80 }, %struct.reg_default { i32 12497, i32 3 }, %struct.reg_default { i32 12498, i32 258 }, %struct.reg_default { i32 12500, i32 97 }, %struct.reg_default { i32 12501, i32 59 }, %struct.reg_default { i32 12502, i32 1282 }, %struct.reg_default { i32 12503, i32 256 }, %struct.reg_default { i32 12504, i32 12287 }, %struct.reg_default { i32 12508, i32 12287 }, %struct.reg_default { i32 12512, i32 12287 }, %struct.reg_default { i32 12516, i32 12287 }, %struct.reg_default { i32 12520, i32 12287 }, %struct.reg_default { i32 12524, i32 12287 }, %struct.reg_default { i32 12528, i32 12287 }, %struct.reg_default { i32 12532, i32 12287 }, %struct.reg_default { i32 12536, i32 12287 }, %struct.reg_default { i32 12540, i32 12287 }, %struct.reg_default { i32 12544, i32 96 }, %struct.reg_default { i32 12546, i32 1537 }, %struct.reg_default { i32 12548, i32 80 }, %struct.reg_default { i32 12550, i32 256 }, %struct.reg_default { i32 12552, i32 1 }, %struct.reg_default { i32 12554, i32 260 }, %struct.reg_default { i32 12555, i32 256 }, %struct.reg_default { i32 12556, i32 12287 }, %struct.reg_default { i32 12560, i32 12287 }, %struct.reg_default { i32 12564, i32 12287 }, %struct.reg_default { i32 12568, i32 12287 }, %struct.reg_default { i32 12572, i32 12287 }, %struct.reg_default { i32 12576, i32 12287 }, %struct.reg_default { i32 12580, i32 12287 }, %struct.reg_default { i32 12584, i32 12287 }, %struct.reg_default { i32 12588, i32 12287 }, %struct.reg_default { i32 12592, i32 12287 }, %struct.reg_default { i32 12596, i32 12287 }, %struct.reg_default { i32 12600, i32 12287 }, %struct.reg_default { i32 12604, i32 12287 }, %struct.reg_default { i32 12608, i32 97 }, %struct.reg_default { i32 12610, i32 1537 }, %struct.reg_default { i32 12612, i32 80 }, %struct.reg_default { i32 12614, i32 258 }, %struct.reg_default { i32 12616, i32 1 }, %struct.reg_default { i32 12618, i32 262 }, %struct.reg_default { i32 12619, i32 256 }, %struct.reg_default { i32 12620, i32 12287 }, %struct.reg_default { i32 12624, i32 12287 }, %struct.reg_default { i32 12628, i32 12287 }, %struct.reg_default { i32 12632, i32 12287 }, %struct.reg_default { i32 12636, i32 12287 }, %struct.reg_default { i32 12640, i32 12287 }, %struct.reg_default { i32 12644, i32 12287 }, %struct.reg_default { i32 12648, i32 12287 }, %struct.reg_default { i32 12652, i32 12287 }, %struct.reg_default { i32 12656, i32 12287 }, %struct.reg_default { i32 12660, i32 12287 }, %struct.reg_default { i32 12664, i32 12287 }, %struct.reg_default { i32 12668, i32 12287 }, %struct.reg_default { i32 12672, i32 96 }, %struct.reg_default { i32 12674, i32 1537 }, %struct.reg_default { i32 12676, i32 97 }, %struct.reg_default { i32 12678, i32 1537 }, %struct.reg_default { i32 12680, i32 80 }, %struct.reg_default { i32 12682, i32 768 }, %struct.reg_default { i32 12684, i32 1 }, %struct.reg_default { i32 12686, i32 772 }, %struct.reg_default { i32 12688, i32 64 }, %struct.reg_default { i32 12690, i32 15 }, %struct.reg_default { i32 12692, i32 1 }, %struct.reg_default { i32 12695, i32 256 }], [640 x i8] zeroinitializer }, align 32
@wm8995_snd_controls = internal constant { [18 x %struct.snd_kcontrol_new], [192 x i8] } { [18 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @in1lr_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @in1l_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @in1l_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @in1r_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dmic_src1_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dmic_src2_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }], [192 x i8] zeroinitializer }, align 32
@wm8995_intercon = internal constant { [120 x %struct.snd_soc_dapm_route], [1536 x i8] } { [120 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.62, ptr @check_clk_sys, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr null, ptr @.str.63, ptr @check_clk_sys, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr @.str.116, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr @.str.118, ptr @.str.57, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.58, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.59, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.58, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.81, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.123, ptr @.str.80, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr @.str.124, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.123, ptr @.str.81, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr @.str.124, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.125, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.125, ptr @.str.75, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.84, ptr @.str.131, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.85, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.85, ptr @.str.131, ptr @.str.77, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.169, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr @.str.170, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.169, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.170, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr null, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.143, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.141, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.138, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr @.str.136, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.143, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.141, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.138, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr @.str.136, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.94, ptr null, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.141, ptr @.str.90, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.92, ptr @.str.143, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr null, ptr @.str.93, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.141, ptr @.str.91, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr @.str.143, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.96, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.97, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.94, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr @.str.95, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.96, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.97, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.94, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.95, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.96, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.97, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.94, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr @.str.95, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.96, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.97, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.94, ptr @.str.94, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.95, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.106, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1536 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 24, i32 25, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 25, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 26, i32 27, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 27, i32 9, i32 9, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF1DAC1 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1026, i32 1027, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF1DAC2 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1030, i32 1031, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIF2DAC Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1282, i32 1283, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IN1LR Volume\00", [19 x i8] zeroinitializer }, align 32
@in1lr_pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1650, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 16, i32 17, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN1L Boost\00", [21 x i8] zeroinitializer }, align 32
@in1l_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 18, i32 18, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN1L Mode\00", [22 x i8] zeroinitializer }, align 32
@in1l_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 2, i8 2, i32 3, i32 3, ptr @in1l_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IN1R Mode\00", [22 x i8] zeroinitializer }, align 32
@in1r_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 0, i8 0, i32 3, i32 3, ptr @in1r_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC1 SRC\00", [22 x i8] zeroinitializer }, align 32
@dmic_src1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 8, i8 8, i32 3, i32 3, ptr @dmic_src_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMIC2 SRC\00", [22 x i8] zeroinitializer }, align 32
@dmic_src2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 6, i8 6, i32 3, i32 3, ptr @dmic_src_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Sidetone Volume\00", [43 x i8] zeroinitializer }, align 32
@sidetone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3600, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 1536, i32 1536, i32 0, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC2 Sidetone Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 1539, i32 1539, i32 0, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF1ADC1 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1024, i32 1025, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF1ADC2 Volume\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1028, i32 1029, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIF2ADC Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 1280, i32 1281, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@in1l_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48], [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Differential\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Single-ended IN1LN\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Single-ended IN1LP\00", [45 x i8] zeroinitializer }, align 32
@in1r_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.46, ptr @.str.49, ptr @.str.50], [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Single-ended IN1RN\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Single-ended IN1RP\00", [45 x i8] zeroinitializer }, align 32
@dmic_src_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53], [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMICDAT1\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMICDAT2\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMICDAT3\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC1DAT\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC2DAT\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1L\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IN1R\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN1L PGA\00", [23 x i8] zeroinitializer }, align 32
@in1l_pga = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN1R PGA\00", [23 x i8] zeroinitializer }, align 32
@in1r_pga = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF2CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP1CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DSP2CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SYSDSPCLK\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_SYS\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIF1ADC1L\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIF1ADC1R\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIF1ADCDAT\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIF1ADC2L\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIF1ADC2R\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADCL Mux\00", [23 x i8] zeroinitializer }, align 32
@adcl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADCR Mux\00", [23 x i8] zeroinitializer }, align 32
@adcr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC2L\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC2R\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC1L\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMIC1R\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF1ADC1L Mixer\00", [16 x i8] zeroinitializer }, align 32
@aif1adc1l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF1ADC1R Mixer\00", [16 x i8] zeroinitializer }, align 32
@aif1adc1r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF1ADC2L Mixer\00", [16 x i8] zeroinitializer }, align 32
@aif1adc2l_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF1ADC2R Mixer\00", [16 x i8] zeroinitializer }, align 32
@aif1adc2r_mix = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIF1DAC1L\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIF1DAC1R\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIF1DACDAT\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIF1DAC2L\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AIF1DAC2R\00", [22 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF2DAC2L Mixer\00", [16 x i8] zeroinitializer }, align 32
@aif2dac2l_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AIF2DAC2R Mixer\00", [16 x i8] zeroinitializer }, align 32
@aif2dac2r_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC2L\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC2R\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC1L\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC1R\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1L Mixer\00", [20 x i8] zeroinitializer }, align 32
@dac1l_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1R Mixer\00", [20 x i8] zeroinitializer }, align 32
@dac1r_mix = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @wm8995_put_class_w, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Sidetone\00", [18 x i8] zeroinitializer }, align 32
@sidetone1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sidetone1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Sidetone\00", [17 x i8] zeroinitializer }, align 32
@sidetone2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @sidetone2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Headphone PGA\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Supply\00", [47 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPK1L Driver\00", [19 x i8] zeroinitializer }, align 32
@spk1l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @spk1l_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPK1R Driver\00", [19 x i8] zeroinitializer }, align 32
@spk1r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @spk1r_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPK2L Driver\00", [19 x i8] zeroinitializer }, align 32
@spk2l_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @spk2l_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPK2R Driver\00", [19 x i8] zeroinitializer }, align 32
@spk2r_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @spk2r_src_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LDO2\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HP1L\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HP1R\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPK1L\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPK1R\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPK2L\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPK2R\00", [26 x i8] zeroinitializer }, align 32
@wm8995_dapm_widgets = internal constant { [59 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2628 x i8] } { [59 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.57, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.58, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in1l_pga, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @in1r_pga, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 512, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 516, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 520, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 520, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 520, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @clk_sys_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.68, ptr @.str.69, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.70, ptr @.str.69, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.71, ptr @.str.69, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.72, ptr @.str.69, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.73, ptr @.str.69, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adcr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.81, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aif1adc1l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aif1adc1r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.84, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aif1adc2l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.85, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aif1adc2r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.88, ptr @.str.89, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @aif2dac2l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.93, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @aif2dac2r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.94, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @dac1l_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @dac1r_mix, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sidetone1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sidetone2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @hp_supply_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2048, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk1l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2049, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk1r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2056, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk2l_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2057, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @spk2r_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2628 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN1L Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN1R Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@configure_aif_clock.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.121, ptr @.str.2, ptr @.str.122, i8 0, i8 -79, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8995\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"configure_aif_clock\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Dividing AIF%d clock to %dHz\0A\00", [34 x i8] zeroinitializer }, align 32
@adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.123, ptr @.str.124], [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ADC/DMIC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1542, i32 1542, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1542, i32 1542, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1543, i32 1543, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1543, i32 1543, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1544, i32 1544, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1544, i32 1544, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1545, i32 1545, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1545, i32 1545, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Sidetone Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Sidetone Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1.2 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1.1 Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1540, i32 1540, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1541, i32 1541, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1537, i32 1537, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8995_update_class_w.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.155, ptr @.str.2, ptr @.str.156, i8 0, i8 123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8995_update_class_w\00", [42 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Class W source AIF2DAC\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8995_update_class_w.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.155, ptr @.str.2, ptr @.str.157, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.157 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Class W source AIF1DAC2\0A\00", [39 x i8] zeroinitializer }, align 32
@wm8995_update_class_w.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.155, ptr @.str.2, ptr @.str.158, i8 0, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.158 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Class W source AIF1DAC1\0A\00", [39 x i8] zeroinitializer }, align 32
@wm8995_update_class_w.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.155, ptr @.str.2, ptr @.str.159, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC mixer setting: %x\0A\00", [41 x i8] zeroinitializer }, align 32
@wm8995_update_class_w.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.155, ptr @.str.2, ptr @.str.160, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.160 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Left and right DAC mixers different\0A\00", [59 x i8] zeroinitializer }, align 32
@wm8995_update_class_w.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.155, ptr @.str.2, ptr @.str.161, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Class W enabled\0A\00", [47 x i8] zeroinitializer }, align 32
@wm8995_update_class_w.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.155, ptr @.str.2, ptr @.str.162, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.162 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Class W disabled\0A\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1538, i32 1538, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Sidetone Mux\00", [46 x i8] zeroinitializer }, align 32
@sidetone1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1569, i8 0, i8 0, i32 2, i32 1, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@sidetone_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.169, ptr @.str.170], [24 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC/DMIC1\00", [22 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Sidetone Mux\00", [45 x i8] zeroinitializer }, align 32
@sidetone2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 1569, i8 1, i8 1, i32 2, i32 1, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dc_servo_cmd.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.172, ptr @.str.2, ptr @.str.173, i8 0, i8 -108, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dc_servo_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: reg = %#x, val = %#x, mask = %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@dc_servo_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.172, ptr @.str.2, i32 604, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timed out waiting for DC Servo\0A\00", [32 x i8] zeroinitializer }, align 32
@dc_servo_cmd._entry_ptr = internal global ptr @dc_servo_cmd._entry, section ".printk_index", align 4
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPK1L SRC\00", [22 x i8] zeroinitializer }, align 32
@spk1l_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2048, i8 0, i8 0, i32 4, i32 3, ptr @spk_src_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@spk_src_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.96, ptr @.str.97, ptr @.str.94, ptr @.str.95], [16 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPK1R SRC\00", [22 x i8] zeroinitializer }, align 32
@spk1r_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2049, i8 0, i8 0, i32 4, i32 3, ptr @spk_src_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPK2L SRC\00", [22 x i8] zeroinitializer }, align 32
@spk2l_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2056, i8 0, i8 0, i32 4, i32 3, ptr @spk_src_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPK2R SRC\00", [22 x i8] zeroinitializer }, align 32
@spk2r_src_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 2057, i8 0, i8 0, i32 4, i32 3, ptr @spk_src_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@wm8995_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.180, ptr @.str.2, i32 2011, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8995_probe\00", [19 x i8] zeroinitializer }, align 32
@wm8995_probe._entry_ptr = internal global ptr @wm8995_probe._entry, section ".printk_index", align 4
@wm8995_probe._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.180, ptr @.str.2, i32 2032, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to register regulator notifier: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@wm8995_probe._entry_ptr.183 = internal global ptr @wm8995_probe._entry.181, section ".printk_index", align 4
@wm8995_probe._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.180, ptr @.str.2, i32 2039, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8995_probe._entry_ptr.186 = internal global ptr @wm8995_probe._entry.184, section ".printk_index", align 4
@wm8995_probe._entry.187 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.180, ptr @.str.2, i32 2045, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read device ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8995_probe._entry_ptr.189 = internal global ptr @wm8995_probe._entry.187, section ".printk_index", align 4
@wm8995_probe._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.180, ptr @.str.2, i32 2050, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid device ID: %#x\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8995_probe._entry_ptr.192 = internal global ptr @wm8995_probe._entry.190, section ".printk_index", align 4
@wm8995_probe._entry.193 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.180, ptr @.str.2, i32 2057, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to issue reset: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8995_probe._entry_ptr.195 = internal global ptr @wm8995_probe._entry.193, section ".printk_index", align 4
@.str.196 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD1\00", [25 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD2\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DBVDD3\00", [25 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD1\00", [26 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVDD2\00", [26 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MICVDD\00", [25 x i8] zeroinitializer }, align 32
@wm8995_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.205, ptr @.str.2, i32 1976, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to sync cache: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8995_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@wm8995_set_bias_level._entry_ptr = internal global ptr @wm8995_set_bias_level._entry, section ".printk_index", align 4
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8995-aif1\00", [20 x i8] zeroinitializer }, align 32
@wm8995_aif1_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8995_set_dai_sysclk, ptr @wm8995_set_fll, ptr null, ptr null, ptr @wm8995_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr @wm8995_set_tristate, ptr null, ptr null, ptr @wm8995_aif_mute, ptr null, ptr null, ptr @wm8995_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8995-aif2\00", [20 x i8] zeroinitializer }, align 32
@wm8995_aif2_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8995_set_dai_sysclk, ptr @wm8995_set_fll, ptr null, ptr null, ptr @wm8995_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr @wm8995_set_tristate, ptr null, ptr null, ptr @wm8995_aif_mute, ptr null, ptr null, ptr @wm8995_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF2 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8995-aif3\00", [20 x i8] zeroinitializer }, align 32
@wm8995_aif3_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8995_set_tristate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF3 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF3 Playback\00", [18 x i8] zeroinitializer }, align 32
@wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.213, ptr @.str.2, ptr @.str.214, i8 1, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.213 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8995_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AIF%d using MCLK1 at %uHz\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.213, ptr @.str.2, ptr @.str.215, i8 1, i8 -29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.215 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AIF%d using MCLK2 at %uHz\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.213, ptr @.str.2, ptr @.str.216, i8 1, i8 -28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.216 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AIF%d using FLL1\0A\00", [46 x i8] zeroinitializer }, align 32
@wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.213, ptr @.str.2, ptr @.str.217, i8 1, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.217 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AIF%d using FLL2\0A\00", [46 x i8] zeroinitializer }, align 32
@wm8995_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.213, ptr @.str.2, i32 1946, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown clock source %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wm8995_set_dai_sysclk._entry_ptr = internal global ptr @wm8995_set_dai_sysclk._entry, section ".printk_index", align 4
@wm8995_get_fll_config.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.219, ptr @.str.2, ptr @.str.220, i8 1, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.219 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8995_get_fll_config\00", [42 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FLL input=%dHz, output=%dHz\0A\00", [35 x i8] zeroinitializer }, align 32
@wm8995_get_fll_config.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.219, ptr @.str.2, ptr @.str.221, i8 1, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.221 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CLK_REF_DIV=%d, Fref=%dHz\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8995_get_fll_config.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.219, ptr @.str.2, ptr @.str.222, i8 1, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.222 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"OUTDIV=%d, Fvco=%dHz\0A\00", [42 x i8] zeroinitializer }, align 32
@wm8995_get_fll_config.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.219, ptr @.str.2, ptr @.str.223, i8 1, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.223 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"FLL_FRATIO=%d, Fref=%dHz\0A\00", [38 x i8] zeroinitializer }, align 32
@wm8995_get_fll_config.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.219, ptr @.str.2, ptr @.str.224, i8 1, i8 -69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.224 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Nmod=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@wm8995_get_fll_config.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.219, ptr @.str.2, ptr @.str.225, i8 1, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.225 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"N=%x K=%x\0A\00", [21 x i8] zeroinitializer }, align 32
@wm8995_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.227, ptr @.str.2, i32 1457, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown master/slave configuration\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm8995_set_dai_fmt\00", [45 x i8] zeroinitializer }, align 32
@wm8995_set_dai_fmt._entry_ptr = internal global ptr @wm8995_set_dai_fmt._entry, section ".printk_index", align 4
@wm8995_set_dai_fmt._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.227, ptr @.str.2, i32 1478, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown dai format\0A\00", [44 x i8] zeroinitializer }, align 32
@wm8995_set_dai_fmt._entry_ptr.230 = internal global ptr @wm8995_set_dai_fmt._entry.228, section ".printk_index", align 4
@wm8995_hw_params.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.231, ptr @.str.2, ptr @.str.232, i8 1, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.231 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8995_hw_params\00", [47 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AIF1 using split LRCLK\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8995_hw_params.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.231, ptr @.str.2, ptr @.str.233, i8 1, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.233 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AIF2 using split LRCLK\0A\00", [40 x i8] zeroinitializer }, align 32
@wm8995_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.231, ptr @.str.2, i32 1609, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported word length %u\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8995_hw_params._entry_ptr = internal global ptr @wm8995_hw_params._entry, section ".printk_index", align 4
@srs = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 8000, i32 11025, i32 12000, i32 16000, i32 22050, i32 24000, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000], [52 x i8] zeroinitializer }, align 32
@wm8995_hw_params._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.231, ptr @.str.2, i32 1619, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Sample rate %d is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@wm8995_hw_params._entry_ptr.237 = internal global ptr @wm8995_hw_params._entry.235, section ".printk_index", align 4
@wm8995_hw_params.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.231, ptr @.str.2, ptr @.str.238, i8 1, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.238 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sample rate is %dHz\0A\00", [43 x i8] zeroinitializer }, align 32
@wm8995_hw_params.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.231, ptr @.str.2, ptr @.str.239, i8 1, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.239 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"AIF%dCLK is %dHz, target BCLK %dHz\0A\00", [60 x i8] zeroinitializer }, align 32
@fs_ratios = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 -1, i32 128, i32 192, i32 256, i32 384, i32 512, i32 768, i32 1024, i32 1408, i32 1536], [56 x i8] zeroinitializer }, align 32
@wm8995_hw_params.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.231, ptr @.str.2, ptr @.str.240, i8 1, i8 -102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.240 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Selected AIF%dCLK/fs = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@bclk_divs = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 10, i32 15, i32 20, i32 30, i32 40, i32 55, i32 60, i32 80, i32 110, i32 120, i32 160, i32 220, i32 240, i32 320, i32 440, i32 480], [32 x i8] zeroinitializer }, align 32
@wm8995_hw_params.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.231, ptr @.str.2, ptr @.str.241, i8 1, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.241 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Using BCLK_DIV %d for actual BCLK %dHz\0A\00", [56 x i8] zeroinitializer }, align 32
@wm8995_hw_params.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.120, ptr @.str.231, ptr @.str.2, ptr @.str.242, i8 1, i8 -96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.242 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using LRCLK rate %d for actual LRCLK %dHz\0A\00", [53 x i8] zeroinitializer }, align 32
@wm8995_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.243 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8995:2212:(&wm8995_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8995_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.244, ptr @.str.2, i32 2215, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8995_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@wm8995_spi_probe._entry_ptr = internal global ptr @wm8995_spi_probe._entry, section ".printk_index", align 4
@switch.table.wm8995_set_tristate = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 770, i32 786, i32 5], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8995_set_tristate.245 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 32768, i32 32768, i32 32], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8995_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 32, i32 64, i32 0, i32 96], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [214 x i64] [i64 212, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 16, i64 17, i64 18, i64 24, i64 25, i64 26, i64 27, i64 28, i64 32, i64 33, i64 40, i64 41, i64 48, i64 49, i64 52, i64 53, i64 56, i64 57, i64 64, i64 69, i64 80, i64 81, i64 82, i64 84, i64 85, i64 86, i64 87, i64 96, i64 97, i64 256, i64 257, i64 258, i64 272, i64 273, i64 512, i64 513, i64 516, i64 517, i64 520, i64 521, i64 528, i64 529, i64 530, i64 544, i64 545, i64 546, i64 547, i64 548, i64 576, i64 577, i64 578, i64 579, i64 580, i64 768, i64 769, i64 770, i64 771, i64 772, i64 773, i64 774, i64 775, i64 784, i64 785, i64 786, i64 787, i64 788, i64 789, i64 790, i64 791, i64 1024, i64 1025, i64 1026, i64 1027, i64 1028, i64 1029, i64 1030, i64 1031, i64 1040, i64 1041, i64 1056, i64 1057, i64 1058, i64 1059, i64 1088, i64 1089, i64 1090, i64 1091, i64 1092, i64 1104, i64 1105, i64 1106, i64 1107, i64 1108, i64 1152, i64 1153, i64 1154, i64 1155, i64 1156, i64 1157, i64 1158, i64 1159, i64 1160, i64 1161, i64 1162, i64 1163, i64 1164, i64 1165, i64 1166, i64 1167, i64 1168, i64 1169, i64 1170, i64 1171, i64 1184, i64 1185, i64 1186, i64 1187, i64 1188, i64 1189, i64 1190, i64 1191, i64 1192, i64 1193, i64 1194, i64 1195, i64 1196, i64 1197, i64 1198, i64 1199, i64 1200, i64 1201, i64 1202, i64 1203, i64 1280, i64 1281, i64 1282, i64 1283, i64 1296, i64 1312, i64 1313, i64 1344, i64 1345, i64 1346, i64 1347, i64 1348, i64 1408, i64 1409, i64 1410, i64 1411, i64 1412, i64 1413, i64 1414, i64 1415, i64 1416, i64 1417, i64 1418, i64 1419, i64 1420, i64 1421, i64 1422, i64 1423, i64 1424, i64 1425, i64 1426, i64 1427, i64 1536, i64 1537, i64 1538, i64 1539, i64 1540, i64 1541, i64 1542, i64 1543, i64 1544, i64 1545, i64 1552, i64 1568, i64 1569, i64 1792, i64 1793, i64 1794, i64 1795, i64 1796, i64 1797, i64 1798, i64 1799, i64 1800, i64 1801, i64 1802, i64 1803, i64 1804, i64 1805, i64 1824, i64 1825, i64 1840, i64 1841, i64 1842, i64 1848, i64 1849, i64 1856, i64 2048, i64 2049, i64 2050, i64 2056, i64 2057, i64 2058]
@__sancov_gen_cov_switch_values.246 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 48, i64 49, i64 52, i64 53, i64 87, i64 530, i64 1840, i64 1841, i64 1856]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.250 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.251 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.252 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.253 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.254 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.255 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.256 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.257 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.258 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.260 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.261 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.262 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.263 = internal global [13 x i64] [i64 11, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.264 = private unnamed_addr constant [18 x i8] c"wm8995_i2c_driver\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2269, i32 26 }
@___asan_gen_.267 = private unnamed_addr constant [18 x i8] c"wm8995_spi_driver\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2225, i32 26 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2285, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2292, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2271, i32 11 }
@___asan_gen_.291 = private unnamed_addr constant [14 x i8] c"wm8995_i2c_id\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2262, i32 35 }
@___asan_gen_.297 = private unnamed_addr constant [14 x i8] c"wm8995_regmap\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2188, i32 35 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2246, i32 19 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2249, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8995\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2174, i32 46 }
@___asan_gen_.321 = private unnamed_addr constant [11 x i8] c"wm8995_dai\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2117, i32 34 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2257, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c"wm8995_reg_defaults\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 44, i32 33 }
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c"wm8995_snd_controls\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 442, i32 38 }
@___asan_gen_.336 = private unnamed_addr constant [16 x i8] c"wm8995_intercon\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1020, i32 40 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 443, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [12 x i8] c"digital_tlv\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 414, i32 14 }
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 445, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 448, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 450, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 453, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 455, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 457, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 460, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [14 x i8] c"in1lr_pga_tlv\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 415, i32 14 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 463, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [15 x i8] c"in1l_boost_tlv\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 416, i32 14 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 466, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [10 x i8] c"in1l_enum\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 423, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 467, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [10 x i8] c"in1r_enum\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 430, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 469, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [15 x i8] c"dmic_src1_enum\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 437, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 470, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [15 x i8] c"dmic_src2_enum\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 439, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 472, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [13 x i8] c"sidetone_tlv\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 417, i32 14 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 474, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 477, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 479, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 481, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [10 x i8] c"in1l_text\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 419, i32 20 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 420, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 420, i32 18 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 420, i32 40 }
@___asan_gen_.443 = private unnamed_addr constant [10 x i8] c"in1r_text\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 426, i32 20 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 427, i32 18 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 427, i32 40 }
@___asan_gen_.452 = private unnamed_addr constant [14 x i8] c"dmic_src_text\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 433, i32 20 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 434, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 434, i32 14 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 434, i32 26 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 910, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 911, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 913, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 914, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 916, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [9 x i8] c"in1l_pga\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 868, i32 38 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 918, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [9 x i8] c"in1r_pga\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 871, i32 38 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 921, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 923, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 926, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 927, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 928, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 929, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 930, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 931, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 934, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 936, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 938, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 940, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 942, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 945, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [9 x i8] c"adcl_mux\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 881, i32 38 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 946, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant [9 x i8] c"adcr_mux\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 884, i32 38 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 948, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 949, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 950, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 951, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 953, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 954, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 956, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant [14 x i8] c"aif1adc1l_mix\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 788, i32 38 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 958, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant [14 x i8] c"aif1adc1r_mix\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 795, i32 38 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 960, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant [14 x i8] c"aif1adc2l_mix\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 802, i32 38 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 962, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant [14 x i8] c"aif1adc2r_mix\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 809, i32 38 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 965, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 967, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 969, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 972, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 974, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 977, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [14 x i8] c"aif2dac2l_mix\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 842, i32 38 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 979, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant [14 x i8] c"aif2dac2r_mix\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 855, i32 38 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 982, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 983, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 984, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 985, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 987, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant [10 x i8] c"dac1l_mix\00", align 1
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 816, i32 38 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 989, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant [10 x i8] c"dac1r_mix\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 829, i32 38 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 992, i32 2 }
@___asan_gen_.641 = private unnamed_addr constant [14 x i8] c"sidetone1_mux\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 780, i32 38 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 993, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant [14 x i8] c"sidetone2_mux\00", align 1
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 785, i32 38 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 995, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 998, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1001, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [10 x i8] c"spk1l_mux\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 900, i32 38 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1003, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant [10 x i8] c"spk1r_mux\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 902, i32 38 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1005, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant [10 x i8] c"spk2l_mux\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 904, i32 38 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1007, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant [10 x i8] c"spk2r_mux\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 906, i32 38 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1010, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1012, i32 2 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1013, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1014, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1015, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1016, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1017, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant [20 x i8] c"wm8995_dapm_widgets\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 909, i32 41 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 869, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 872, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 707, i32 3 }
@___asan_gen_.721 = private unnamed_addr constant [9 x i8] c"adc_enum\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 879, i32 8 }
@___asan_gen_.724 = private unnamed_addr constant [13 x i8] c"adc_mux_text\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 874, i32 20 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 875, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 876, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 789, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 791, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.742 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 803, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.748 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 843, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 845, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.758 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 849, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 851, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.767 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.768 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.769 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.772 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.774 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.775 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.776 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 495, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 499, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 503, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 507, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 514, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 519, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 525, i32 3 }
@___asan_gen_.801 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.802 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.803 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.805 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 781, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant [15 x i8] c"sidetone1_enum\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 778, i32 8 }
@___asan_gen_.812 = private unnamed_addr constant [14 x i8] c"sidetone_text\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 774, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 775, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 775, i32 15 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 786, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant [15 x i8] c"sidetone2_enum\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 783, i32 8 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 593, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 604, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 901, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant [15 x i8] c"spk1l_src_enum\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 891, i32 8 }
@___asan_gen_.845 = private unnamed_addr constant [13 x i8] c"spk_src_text\00", align 1
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 887, i32 20 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 903, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant [15 x i8] c"spk1r_src_enum\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 893, i32 8 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 905, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant [15 x i8] c"spk2l_src_enum\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 895, i32 8 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 907, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant [15 x i8] c"spk2r_src_enum\00", align 1
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 897, i32 8 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2011, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2030, i32 4 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2039, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2045, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2050, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2057, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 34, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 35, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 36, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 37, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 38, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 39, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 40, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 41, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1975, i32 5 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2119, i32 11 }
@___asan_gen_.941 = private unnamed_addr constant [20 x i8] c"wm8995_aif1_dai_ops\00", align 1
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2093, i32 37 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2137, i32 11 }
@___asan_gen_.947 = private unnamed_addr constant [20 x i8] c"wm8995_aif2_dai_ops\00", align 1
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2103, i32 37 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2146, i32 19 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2139, i32 19 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2155, i32 11 }
@___asan_gen_.959 = private unnamed_addr constant [20 x i8] c"wm8995_aif3_dai_ops\00", align 1
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2113, i32 37 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2164, i32 19 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2157, i32 19 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1927, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1933, i32 3 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1938, i32 3 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1942, i32 3 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1946, i32 3 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1729, i32 2 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1740, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1750, i32 2 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1767, i32 2 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1774, i32 2 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1789, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1457, i32 3 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1478, i32 3 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1571, i32 4 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1583, i32 4 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1608, i32 3 }
@___asan_gen_.1040 = private unnamed_addr constant [4 x i8] c"srs\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1529, i32 18 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1618, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1624, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1625, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant [10 x i8] c"fs_ratios\00", align 1
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1534, i32 18 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1642, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant [10 x i8] c"bclk_divs\00", align 1
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1539, i32 18 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1662, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 1666, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2212, i32 19 }
@___asan_gen_.1076 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1080 = private constant [29 x i8] c"../sound/soc/codecs/wm8995.c\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1080, i32 2215, i32 3 }
@___asan_gen_.1082 = private unnamed_addr constant [33 x i8] c"switch.table.wm8995_set_tristate\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant [37 x i8] c"switch.table.wm8995_set_tristate.245\00", align 1
@___asan_gen_.1084 = private unnamed_addr constant [30 x i8] c"switch.table.wm8995_hw_params\00", align 1
@llvm.compiler.used = appending global [330 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__exitcall_wm8995_exit, ptr @__initcall__kmod_snd_soc_wm8995__322_2299_wm8995_modinit6, ptr @dc_servo_cmd._entry, ptr @dc_servo_cmd._entry_ptr, ptr @wm8995_exit, ptr @wm8995_hw_params._entry, ptr @wm8995_hw_params._entry.235, ptr @wm8995_hw_params._entry_ptr, ptr @wm8995_hw_params._entry_ptr.237, ptr @wm8995_i2c_probe._entry, ptr @wm8995_i2c_probe._entry.12, ptr @wm8995_i2c_probe._entry_ptr, ptr @wm8995_i2c_probe._entry_ptr.14, ptr @wm8995_modinit._entry, ptr @wm8995_modinit._entry.3, ptr @wm8995_modinit._entry_ptr, ptr @wm8995_modinit._entry_ptr.5, ptr @wm8995_probe._entry, ptr @wm8995_probe._entry.181, ptr @wm8995_probe._entry.184, ptr @wm8995_probe._entry.187, ptr @wm8995_probe._entry.190, ptr @wm8995_probe._entry.193, ptr @wm8995_probe._entry_ptr, ptr @wm8995_probe._entry_ptr.183, ptr @wm8995_probe._entry_ptr.186, ptr @wm8995_probe._entry_ptr.189, ptr @wm8995_probe._entry_ptr.192, ptr @wm8995_probe._entry_ptr.195, ptr @wm8995_set_bias_level._entry, ptr @wm8995_set_bias_level._entry_ptr, ptr @wm8995_set_dai_fmt._entry, ptr @wm8995_set_dai_fmt._entry.228, ptr @wm8995_set_dai_fmt._entry_ptr, ptr @wm8995_set_dai_fmt._entry_ptr.230, ptr @wm8995_set_dai_sysclk._entry, ptr @wm8995_set_dai_sysclk._entry_ptr, ptr @wm8995_spi_probe._entry, ptr @wm8995_spi_probe._entry_ptr, ptr @wm8995_i2c_driver, ptr @wm8995_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @wm8995_i2c_id, ptr @wm8995_i2c_probe._key, ptr @wm8995_regmap, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @soc_component_dev_wm8995, ptr @wm8995_dai, ptr @.str.13, ptr @wm8995_reg_defaults, ptr @wm8995_snd_controls, ptr @wm8995_intercon, ptr @.str.15, ptr @digital_tlv, ptr @.compoundliteral, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @in1lr_pga_tlv, ptr @.compoundliteral.29, ptr @.str.30, ptr @in1l_boost_tlv, ptr @.compoundliteral.31, ptr @.str.32, ptr @in1l_enum, ptr @.str.33, ptr @in1r_enum, ptr @.str.34, ptr @dmic_src1_enum, ptr @.str.35, ptr @dmic_src2_enum, ptr @.str.36, ptr @sidetone_tlv, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @in1l_text, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @in1r_text, ptr @.str.49, ptr @.str.50, ptr @dmic_src_text, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @in1l_pga, ptr @.str.59, ptr @in1r_pga, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @adcl_mux, ptr @.str.75, ptr @adcr_mux, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @aif1adc1l_mix, ptr @.str.83, ptr @aif1adc1r_mix, ptr @.str.84, ptr @aif1adc2l_mix, ptr @.str.85, ptr @aif1adc2r_mix, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @aif2dac2l_mix, ptr @.str.93, ptr @aif2dac2r_mix, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @dac1l_mix, ptr @.str.99, ptr @dac1r_mix, ptr @.str.100, ptr @sidetone1_mux, ptr @.str.101, ptr @sidetone2_mux, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @spk1l_mux, ptr @.str.105, ptr @spk1r_mux, ptr @.str.106, ptr @spk2l_mux, ptr @.str.107, ptr @spk2r_mux, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @wm8995_dapm_widgets, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @adc_enum, ptr @adc_mux_text, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.compoundliteral.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.compoundliteral.133, ptr @.compoundliteral.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.compoundliteral.145, ptr @.compoundliteral.146, ptr @.compoundliteral.147, ptr @.compoundliteral.148, ptr @.compoundliteral.149, ptr @.compoundliteral.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.compoundliteral.153, ptr @.compoundliteral.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.compoundliteral.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @sidetone1_enum, ptr @sidetone_text, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @sidetone2_enum, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @spk1l_src_enum, ptr @spk_src_text, ptr @.str.176, ptr @spk1r_src_enum, ptr @.str.177, ptr @spk2l_src_enum, ptr @.str.178, ptr @spk2r_src_enum, ptr @.str.179, ptr @.str.180, ptr @.str.182, ptr @.str.185, ptr @.str.188, ptr @.str.191, ptr @.str.194, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @wm8995_aif1_dai_ops, ptr @.str.207, ptr @wm8995_aif2_dai_ops, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @wm8995_aif3_dai_ops, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.229, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @srs, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @fs_ratios, ptr @.str.240, ptr @bclk_divs, ptr @.str.241, ptr @.str.242, ptr @wm8995_spi_probe._key, ptr @.str.243, ptr @.str.244, ptr @switch.table.wm8995_set_tristate, ptr @switch.table.wm8995_set_tristate.245, ptr @switch.table.wm8995_hw_params], section "llvm.metadata"
@0 = internal global [305 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_modinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_modinit._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8995 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_dai to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_reg_defaults to i32), i32 2592, i32 3232, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_snd_controls to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_intercon to i32), i32 6240, i32 7776, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1lr_pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1l_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1l_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1r_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_src1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_src2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1l_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1r_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_src_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1l_pga to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in1r_pga to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1adc1l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1adc1r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1adc2l_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif1adc2r_mix to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif2dac2l_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif2dac2r_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac1l_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac1r_mix to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk1l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk1r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk2l_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk2r_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_dapm_widgets to i32), i32 10620, i32 13248, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_servo_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk1l_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_src_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk1r_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk2l_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk2r_src_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_probe._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_probe._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_probe._entry.187 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_probe._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_probe._entry.193 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_aif1_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_aif2_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_aif3_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_set_dai_fmt._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_hw_params._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ratios to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bclk_divs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8995_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8995_set_tristate to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8995_set_tristate.245 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8995_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_modinit() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8995_i2c_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @wm8995_spi_driver) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %do.end7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call2) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8995_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8995_i2c_driver) #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @wm8995_spi_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 272, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8995_regmap, ptr noundef nonnull @wm8995_i2c_probe._key, ptr noundef nonnull @.str.7) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %2) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8995, ptr noundef nonnull @wm8995_dai, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end8.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %do.end14 ], [ %call10, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8995_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 16, label %entry.return_crit_edge6
    i32 17, label %entry.return_crit_edge7
    i32 18, label %entry.return_crit_edge8
    i32 24, label %entry.return_crit_edge9
    i32 25, label %entry.return_crit_edge10
    i32 26, label %entry.return_crit_edge11
    i32 27, label %entry.return_crit_edge12
    i32 28, label %entry.return_crit_edge13
    i32 32, label %entry.return_crit_edge14
    i32 33, label %entry.return_crit_edge15
    i32 40, label %entry.return_crit_edge16
    i32 41, label %entry.return_crit_edge17
    i32 48, label %entry.return_crit_edge18
    i32 49, label %entry.return_crit_edge19
    i32 52, label %entry.return_crit_edge20
    i32 53, label %entry.return_crit_edge21
    i32 56, label %entry.return_crit_edge22
    i32 57, label %entry.return_crit_edge23
    i32 64, label %entry.return_crit_edge24
    i32 69, label %entry.return_crit_edge25
    i32 80, label %entry.return_crit_edge26
    i32 81, label %entry.return_crit_edge27
    i32 82, label %entry.return_crit_edge28
    i32 84, label %entry.return_crit_edge29
    i32 85, label %entry.return_crit_edge30
    i32 86, label %entry.return_crit_edge31
    i32 87, label %entry.return_crit_edge32
    i32 96, label %entry.return_crit_edge33
    i32 97, label %entry.return_crit_edge34
    i32 256, label %entry.return_crit_edge35
    i32 257, label %entry.return_crit_edge36
    i32 258, label %entry.return_crit_edge37
    i32 272, label %entry.return_crit_edge38
    i32 273, label %entry.return_crit_edge39
    i32 512, label %entry.return_crit_edge40
    i32 513, label %entry.return_crit_edge41
    i32 516, label %entry.return_crit_edge42
    i32 517, label %entry.return_crit_edge43
    i32 520, label %entry.return_crit_edge44
    i32 521, label %entry.return_crit_edge45
    i32 528, label %entry.return_crit_edge46
    i32 529, label %entry.return_crit_edge47
    i32 530, label %entry.return_crit_edge48
    i32 544, label %entry.return_crit_edge49
    i32 545, label %entry.return_crit_edge50
    i32 546, label %entry.return_crit_edge51
    i32 547, label %entry.return_crit_edge52
    i32 548, label %entry.return_crit_edge53
    i32 576, label %entry.return_crit_edge54
    i32 577, label %entry.return_crit_edge55
    i32 578, label %entry.return_crit_edge56
    i32 579, label %entry.return_crit_edge57
    i32 580, label %entry.return_crit_edge58
    i32 768, label %entry.return_crit_edge59
    i32 769, label %entry.return_crit_edge60
    i32 770, label %entry.return_crit_edge61
    i32 771, label %entry.return_crit_edge62
    i32 772, label %entry.return_crit_edge63
    i32 773, label %entry.return_crit_edge64
    i32 774, label %entry.return_crit_edge65
    i32 775, label %entry.return_crit_edge66
    i32 784, label %entry.return_crit_edge67
    i32 785, label %entry.return_crit_edge68
    i32 786, label %entry.return_crit_edge69
    i32 787, label %entry.return_crit_edge70
    i32 788, label %entry.return_crit_edge71
    i32 789, label %entry.return_crit_edge72
    i32 790, label %entry.return_crit_edge73
    i32 791, label %entry.return_crit_edge74
    i32 1024, label %entry.return_crit_edge75
    i32 1025, label %entry.return_crit_edge76
    i32 1026, label %entry.return_crit_edge77
    i32 1027, label %entry.return_crit_edge78
    i32 1028, label %entry.return_crit_edge79
    i32 1029, label %entry.return_crit_edge80
    i32 1030, label %entry.return_crit_edge81
    i32 1031, label %entry.return_crit_edge82
    i32 1040, label %entry.return_crit_edge83
    i32 1041, label %entry.return_crit_edge84
    i32 1056, label %entry.return_crit_edge85
    i32 1057, label %entry.return_crit_edge86
    i32 1058, label %entry.return_crit_edge87
    i32 1059, label %entry.return_crit_edge88
    i32 1088, label %entry.return_crit_edge89
    i32 1089, label %entry.return_crit_edge90
    i32 1090, label %entry.return_crit_edge91
    i32 1091, label %entry.return_crit_edge92
    i32 1092, label %entry.return_crit_edge93
    i32 1104, label %entry.return_crit_edge94
    i32 1105, label %entry.return_crit_edge95
    i32 1106, label %entry.return_crit_edge96
    i32 1107, label %entry.return_crit_edge97
    i32 1108, label %entry.return_crit_edge98
    i32 1152, label %entry.return_crit_edge99
    i32 1153, label %entry.return_crit_edge100
    i32 1154, label %entry.return_crit_edge101
    i32 1155, label %entry.return_crit_edge102
    i32 1156, label %entry.return_crit_edge103
    i32 1157, label %entry.return_crit_edge104
    i32 1158, label %entry.return_crit_edge105
    i32 1159, label %entry.return_crit_edge106
    i32 1160, label %entry.return_crit_edge107
    i32 1161, label %entry.return_crit_edge108
    i32 1162, label %entry.return_crit_edge109
    i32 1163, label %entry.return_crit_edge110
    i32 1164, label %entry.return_crit_edge111
    i32 1165, label %entry.return_crit_edge112
    i32 1166, label %entry.return_crit_edge113
    i32 1167, label %entry.return_crit_edge114
    i32 1168, label %entry.return_crit_edge115
    i32 1169, label %entry.return_crit_edge116
    i32 1170, label %entry.return_crit_edge117
    i32 1171, label %entry.return_crit_edge118
    i32 1184, label %entry.return_crit_edge119
    i32 1185, label %entry.return_crit_edge120
    i32 1186, label %entry.return_crit_edge121
    i32 1187, label %entry.return_crit_edge122
    i32 1188, label %entry.return_crit_edge123
    i32 1189, label %entry.return_crit_edge124
    i32 1190, label %entry.return_crit_edge125
    i32 1191, label %entry.return_crit_edge126
    i32 1192, label %entry.return_crit_edge127
    i32 1193, label %entry.return_crit_edge128
    i32 1194, label %entry.return_crit_edge129
    i32 1195, label %entry.return_crit_edge130
    i32 1196, label %entry.return_crit_edge131
    i32 1197, label %entry.return_crit_edge132
    i32 1198, label %entry.return_crit_edge133
    i32 1199, label %entry.return_crit_edge134
    i32 1200, label %entry.return_crit_edge135
    i32 1201, label %entry.return_crit_edge136
    i32 1202, label %entry.return_crit_edge137
    i32 1203, label %entry.return_crit_edge138
    i32 1280, label %entry.return_crit_edge139
    i32 1281, label %entry.return_crit_edge140
    i32 1282, label %entry.return_crit_edge141
    i32 1283, label %entry.return_crit_edge142
    i32 1296, label %entry.return_crit_edge143
    i32 1312, label %entry.return_crit_edge144
    i32 1313, label %entry.return_crit_edge145
    i32 1344, label %entry.return_crit_edge146
    i32 1345, label %entry.return_crit_edge147
    i32 1346, label %entry.return_crit_edge148
    i32 1347, label %entry.return_crit_edge149
    i32 1348, label %entry.return_crit_edge150
    i32 1408, label %entry.return_crit_edge151
    i32 1409, label %entry.return_crit_edge152
    i32 1410, label %entry.return_crit_edge153
    i32 1411, label %entry.return_crit_edge154
    i32 1412, label %entry.return_crit_edge155
    i32 1413, label %entry.return_crit_edge156
    i32 1414, label %entry.return_crit_edge157
    i32 1415, label %entry.return_crit_edge158
    i32 1416, label %entry.return_crit_edge159
    i32 1417, label %entry.return_crit_edge160
    i32 1418, label %entry.return_crit_edge161
    i32 1419, label %entry.return_crit_edge162
    i32 1420, label %entry.return_crit_edge163
    i32 1421, label %entry.return_crit_edge164
    i32 1422, label %entry.return_crit_edge165
    i32 1423, label %entry.return_crit_edge166
    i32 1424, label %entry.return_crit_edge167
    i32 1425, label %entry.return_crit_edge168
    i32 1426, label %entry.return_crit_edge169
    i32 1427, label %entry.return_crit_edge170
    i32 1536, label %entry.return_crit_edge171
    i32 1537, label %entry.return_crit_edge172
    i32 1538, label %entry.return_crit_edge173
    i32 1539, label %entry.return_crit_edge174
    i32 1540, label %entry.return_crit_edge175
    i32 1541, label %entry.return_crit_edge176
    i32 1542, label %entry.return_crit_edge177
    i32 1543, label %entry.return_crit_edge178
    i32 1544, label %entry.return_crit_edge179
    i32 1545, label %entry.return_crit_edge180
    i32 1552, label %entry.return_crit_edge181
    i32 1568, label %entry.return_crit_edge182
    i32 1569, label %entry.return_crit_edge183
    i32 1792, label %entry.return_crit_edge184
    i32 1793, label %entry.return_crit_edge185
    i32 1794, label %entry.return_crit_edge186
    i32 1795, label %entry.return_crit_edge187
    i32 1796, label %entry.return_crit_edge188
    i32 1797, label %entry.return_crit_edge189
    i32 1798, label %entry.return_crit_edge190
    i32 1799, label %entry.return_crit_edge191
    i32 1800, label %entry.return_crit_edge192
    i32 1801, label %entry.return_crit_edge193
    i32 1802, label %entry.return_crit_edge194
    i32 1803, label %entry.return_crit_edge195
    i32 1804, label %entry.return_crit_edge196
    i32 1805, label %entry.return_crit_edge197
    i32 1824, label %entry.return_crit_edge198
    i32 1825, label %entry.return_crit_edge199
    i32 1840, label %entry.return_crit_edge200
    i32 1841, label %entry.return_crit_edge201
    i32 1842, label %entry.return_crit_edge202
    i32 1848, label %entry.return_crit_edge203
    i32 1849, label %entry.return_crit_edge204
    i32 1856, label %entry.return_crit_edge205
    i32 2048, label %entry.return_crit_edge206
    i32 2049, label %entry.return_crit_edge207
    i32 2050, label %entry.return_crit_edge208
    i32 2056, label %entry.return_crit_edge209
    i32 2057, label %entry.return_crit_edge210
    i32 2058, label %entry.return_crit_edge211
  ]

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

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

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8995_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 87, label %entry.return_crit_edge1
    i32 1840, label %entry.return_crit_edge2
    i32 1841, label %entry.return_crit_edge3
    i32 1856, label %entry.return_crit_edge4
    i32 48, label %entry.return_crit_edge5
    i32 49, label %entry.return_crit_edge6
    i32 52, label %entry.return_crit_edge7
    i32 53, label %entry.return_crit_edge8
    i32 530, label %entry.return_crit_edge9
  ]

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

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_probe(ptr noundef %component) #4 align 64 {
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
  %component1 = getelementptr inbounds %struct.wm8995_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %component1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %component1, align 4
  %arrayidx2 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 0
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.196, ptr %arrayidx2, align 4
  %arrayidx2.1 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.197, ptr %arrayidx2.1, align 4
  %arrayidx2.2 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.198, ptr %arrayidx2.2, align 4
  %arrayidx2.3 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.199, ptr %arrayidx2.3, align 4
  %arrayidx2.4 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 4
  %9 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.200, ptr %arrayidx2.4, align 4
  %arrayidx2.5 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 5
  %10 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.201, ptr %arrayidx2.5, align 4
  %arrayidx2.6 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 6
  %11 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.202, ptr %arrayidx2.6, align 4
  %arrayidx2.7 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 7
  %12 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.203, ptr %arrayidx2.7, align 4
  %13 = load ptr, ptr %dev.i, align 4
  %call4 = tail call i32 @devm_regulator_bulk_get(ptr noundef %13, i32 noundef 8, ptr noundef %arrayidx2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.179, i32 noundef %call4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %disable_nb = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %disable_nb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @wm8995_regulator_event_0, ptr %disable_nb, align 4
  %arrayidx8 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @wm8995_regulator_event_1, ptr %arrayidx8, align 4
  %arrayidx11 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @wm8995_regulator_event_2, ptr %arrayidx11, align 4
  %arrayidx14 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 7, i32 3
  %19 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @wm8995_regulator_event_3, ptr %arrayidx14, align 4
  %arrayidx17 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 7, i32 4
  %20 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @wm8995_regulator_event_4, ptr %arrayidx17, align 4
  %arrayidx20 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 7, i32 5
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @wm8995_regulator_event_5, ptr %arrayidx20, align 4
  %arrayidx23 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 7, i32 6
  %22 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @wm8995_regulator_event_6, ptr %arrayidx23, align 4
  %arrayidx26 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 7, i32 7
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @wm8995_regulator_event_7, ptr %arrayidx26, align 4
  %consumer = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 0, i32 1
  %24 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %consumer, align 4
  %call35 = tail call i32 @devm_regulator_register_notifier(ptr noundef %25, ptr noundef %disable_nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end.for.inc43_crit_edge, label %do.end40

if.end.for.inc43_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43

do.end40:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.182, i32 noundef %call35) #11
  br label %for.inc43

for.inc43:                                        ; preds = %do.end40, %if.end.for.inc43_crit_edge
  %consumer.1 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 1, i32 1
  %28 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %consumer.1, align 4
  %call35.1 = tail call i32 @devm_regulator_register_notifier(ptr noundef %29, ptr noundef %arrayidx8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.1)
  %tobool36.not.1 = icmp eq i32 %call35.1, 0
  br i1 %tobool36.not.1, label %for.inc43.for.inc43.1_crit_edge, label %do.end40.1

for.inc43.for.inc43.1_crit_edge:                  ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.1

do.end40.1:                                       ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.182, i32 noundef %call35.1) #11
  br label %for.inc43.1

for.inc43.1:                                      ; preds = %do.end40.1, %for.inc43.for.inc43.1_crit_edge
  %consumer.2 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 2, i32 1
  %32 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %consumer.2, align 4
  %call35.2 = tail call i32 @devm_regulator_register_notifier(ptr noundef %33, ptr noundef %arrayidx11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.2)
  %tobool36.not.2 = icmp eq i32 %call35.2, 0
  br i1 %tobool36.not.2, label %for.inc43.1.for.inc43.2_crit_edge, label %do.end40.2

for.inc43.1.for.inc43.2_crit_edge:                ; preds = %for.inc43.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.2

do.end40.2:                                       ; preds = %for.inc43.1
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.182, i32 noundef %call35.2) #11
  br label %for.inc43.2

for.inc43.2:                                      ; preds = %do.end40.2, %for.inc43.1.for.inc43.2_crit_edge
  %consumer.3 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 3, i32 1
  %36 = ptrtoint ptr %consumer.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %consumer.3, align 4
  %call35.3 = tail call i32 @devm_regulator_register_notifier(ptr noundef %37, ptr noundef %arrayidx14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.3)
  %tobool36.not.3 = icmp eq i32 %call35.3, 0
  br i1 %tobool36.not.3, label %for.inc43.2.for.inc43.3_crit_edge, label %do.end40.3

for.inc43.2.for.inc43.3_crit_edge:                ; preds = %for.inc43.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.3

do.end40.3:                                       ; preds = %for.inc43.2
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.182, i32 noundef %call35.3) #11
  br label %for.inc43.3

for.inc43.3:                                      ; preds = %do.end40.3, %for.inc43.2.for.inc43.3_crit_edge
  %consumer.4 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 4, i32 1
  %40 = ptrtoint ptr %consumer.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %consumer.4, align 4
  %call35.4 = tail call i32 @devm_regulator_register_notifier(ptr noundef %41, ptr noundef %arrayidx17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.4)
  %tobool36.not.4 = icmp eq i32 %call35.4, 0
  br i1 %tobool36.not.4, label %for.inc43.3.for.inc43.4_crit_edge, label %do.end40.4

for.inc43.3.for.inc43.4_crit_edge:                ; preds = %for.inc43.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.4

do.end40.4:                                       ; preds = %for.inc43.3
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.182, i32 noundef %call35.4) #11
  br label %for.inc43.4

for.inc43.4:                                      ; preds = %do.end40.4, %for.inc43.3.for.inc43.4_crit_edge
  %consumer.5 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 5, i32 1
  %44 = ptrtoint ptr %consumer.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %consumer.5, align 4
  %call35.5 = tail call i32 @devm_regulator_register_notifier(ptr noundef %45, ptr noundef %arrayidx20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.5)
  %tobool36.not.5 = icmp eq i32 %call35.5, 0
  br i1 %tobool36.not.5, label %for.inc43.4.for.inc43.5_crit_edge, label %do.end40.5

for.inc43.4.for.inc43.5_crit_edge:                ; preds = %for.inc43.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.5

do.end40.5:                                       ; preds = %for.inc43.4
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.182, i32 noundef %call35.5) #11
  br label %for.inc43.5

for.inc43.5:                                      ; preds = %do.end40.5, %for.inc43.4.for.inc43.5_crit_edge
  %consumer.6 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 6, i32 1
  %48 = ptrtoint ptr %consumer.6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %consumer.6, align 4
  %call35.6 = tail call i32 @devm_regulator_register_notifier(ptr noundef %49, ptr noundef %arrayidx23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.6)
  %tobool36.not.6 = icmp eq i32 %call35.6, 0
  br i1 %tobool36.not.6, label %for.inc43.5.for.inc43.6_crit_edge, label %do.end40.6

for.inc43.5.for.inc43.6_crit_edge:                ; preds = %for.inc43.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.6

do.end40.6:                                       ; preds = %for.inc43.5
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.182, i32 noundef %call35.6) #11
  br label %for.inc43.6

for.inc43.6:                                      ; preds = %do.end40.6, %for.inc43.5.for.inc43.6_crit_edge
  %consumer.7 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 6, i32 7, i32 1
  %52 = ptrtoint ptr %consumer.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %consumer.7, align 4
  %call35.7 = tail call i32 @devm_regulator_register_notifier(ptr noundef %53, ptr noundef %arrayidx26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.7)
  %tobool36.not.7 = icmp eq i32 %call35.7, 0
  br i1 %tobool36.not.7, label %for.inc43.6.for.inc43.7_crit_edge, label %do.end40.7

for.inc43.6.for.inc43.7_crit_edge:                ; preds = %for.inc43.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43.7

do.end40.7:                                       ; preds = %for.inc43.6
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.182, i32 noundef %call35.7) #11
  br label %for.inc43.7

for.inc43.7:                                      ; preds = %do.end40.7, %for.inc43.6.for.inc43.7_crit_edge
  %call48 = tail call i32 @regulator_bulk_enable(i32 noundef 8, ptr noundef %arrayidx2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %for.inc43.7
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.185, i32 noundef %call48) #11
  br label %cleanup

if.end55:                                         ; preds = %for.inc43.7
  %call56 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %if.end63

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.188, i32 noundef %call56) #11
  br label %err_reg_enable

if.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 35221, i32 %call56)
  %cmp64.not = icmp eq i32 %call56, 35221
  br i1 %cmp64.not, label %if.end70, label %do.end68

do.end68:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.191, i32 noundef %call56) #11
  br label %err_reg_enable

if.end70:                                         ; preds = %if.end63
  %call71 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end76, label %if.end78

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.194, i32 noundef %call71) #11
  br label %err_reg_enable

if.end78:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1027, i32 noundef 256, i32 noundef 256) #8
  %call80 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1031, i32 noundef 256, i32 noundef 256) #8
  %call81 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1283, i32 noundef 256, i32 noundef 256) #8
  %call82 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1025, i32 noundef 256, i32 noundef 256) #8
  %call83 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1029, i32 noundef 256, i32 noundef 256) #8
  %call84 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1281, i32 noundef 256, i32 noundef 256) #8
  %call85 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 25, i32 noundef 256, i32 noundef 256) #8
  %call86 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 27, i32 noundef 256, i32 noundef 256) #8
  %call87 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 17, i32 noundef 128, i32 noundef 128) #8
  tail call fastcc void @wm8995_update_class_w(ptr noundef %component)
  br label %cleanup

err_reg_enable:                                   ; preds = %do.end76, %do.end68, %do.end61
  %ret.0 = phi i32 [ %call56, %do.end61 ], [ -22, %do.end68 ], [ %call71, %do.end76 ]
  %call90 = tail call i32 @regulator_bulk_disable(i32 noundef 8, ptr noundef %arrayidx2) #8
  br label %cleanup

cleanup:                                          ; preds = %err_reg_enable, %if.end78, %do.end53, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call48, %do.end53 ], [ %ret.0, %err_reg_enable ], [ 0, %if.end78 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_set_bias_level(ptr noundef %component, i32 noundef %level) #4 align 64 {
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
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %sw.bb1
  %supplies = getelementptr inbounds %struct.wm8995_priv, ptr %3, i32 0, i32 6
  %call3 = tail call i32 @regulator_bulk_enable(i32 noundef 8, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @regcache_sync(ptr noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.204, i32 noundef %call5) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 1, i32 noundef 1) #8
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %supplies13 = getelementptr inbounds %struct.wm8995_priv, ptr %3, i32 0, i32 6
  %call15 = tail call i32 @regulator_bulk_disable(i32 noundef 8, ptr noundef %supplies13) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %if.end8, %do.end, %if.then.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call3, %if.then.cleanup_crit_edge ], [ 0, %sw.bb1.cleanup_crit_edge ], [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb11 ]
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
define internal i32 @clk_sys_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 8, label %entry.cleanup.sink.split_crit_edge5
  ]

entry.cleanup.sink.split_crit_edge5:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %entry.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge5
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %1 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 -176
  tail call fastcc void @configure_clock(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 96) #8
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef 32768, i32 noundef 32768) #8
  tail call void @msleep(i32 noundef 5) #8
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 48, i32 noundef 48) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 4294960) #8
  %or = or i32 %call1, 34
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 96, i32 noundef %or) #8
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 80, i32 noundef 3) #8
  tail call fastcc void @dc_servo_cmd(ptr noundef %add.ptr.i)
  %or6 = or i32 %call1, 238
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 96, i32 noundef %or6) #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 96, i32 noundef 204, i32 noundef 0) #8
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 96, i32 noundef 34, i32 noundef 0) #8
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 80, i32 noundef 0) #8
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 48, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hp_supply_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 48, i32 noundef 48) #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 96, i32 noundef 34, i32 noundef 34) #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef 32768, i32 noundef 0) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @configure_clock(ptr noundef %component) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %5, label %entry.configure_aif_clock.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb5.i
    i32 4, label %sw.bb8.i
  ]

entry.configure_aif_clock.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_aif_clock.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mclk.i = getelementptr inbounds %struct.wm8995_priv, ptr %3, i32 0, i32 2
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4.i = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 2, i32 1
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %out.i = getelementptr inbounds %struct.wm8995_priv, ptr %3, i32 0, i32 4, i32 0, i32 2
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %out12.i = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 4, i32 1, i32 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb8.i, %sw.bb5.i, %sw.bb2.i, %sw.bb.i
  %rate.0.in.i = phi ptr [ %out12.i, %sw.bb8.i ], [ %out.i, %sw.bb5.i ], [ %arrayidx4.i, %sw.bb2.i ], [ %mclk.i, %sw.bb.i ]
  %reg1.0.i = phi i32 [ 24, %sw.bb8.i ], [ 16, %sw.bb5.i ], [ 8, %sw.bb2.i ], [ 0, %sw.bb.i ]
  %7 = ptrtoint ptr %rate.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %rate.0.i = load i32, ptr %rate.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13499999, i32 %rate.0.i)
  %cmp.i = icmp sgt i32 %rate.0.i, 13499999
  br i1 %cmp.i, label %if.then13.i, label %sw.epilog.i.if.end21.i_crit_edge

sw.epilog.i.if.end21.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i

if.then13.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %div23.i = lshr i32 %rate.0.i, 1
  %or14.i = or i32 %reg1.0.i, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_aif_clock.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_clock, %if.then19.i)) #8
          to label %if.end21.i [label %if.then19.i], !srcloc !545

if.then19.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_aif_clock.__UNIQUE_ID_ddebug304, ptr noundef %9, ptr noundef nonnull @.str.122, i32 noundef 1, i32 noundef %div23.i) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %if.then13.i, %sw.epilog.i.if.end21.i_crit_edge
  %rate.1.i = phi i32 [ %div23.i, %if.then19.i ], [ %rate.0.i, %sw.epilog.i.if.end21.i_crit_edge ], [ %div23.i, %if.then13.i ]
  %reg1.1.i = phi i32 [ %or14.i, %if.then19.i ], [ %reg1.0.i, %sw.epilog.i.if.end21.i_crit_edge ], [ %or14.i, %if.then13.i ]
  %arrayidx22.i = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 3, i32 0
  %10 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rate.1.i, ptr %arrayidx22.i, align 4
  %call24.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 512, i32 noundef 26, i32 noundef %reg1.1.i) #8
  br label %configure_aif_clock.exit

configure_aif_clock.exit:                         ; preds = %if.end21.i, %entry.configure_aif_clock.exit_crit_edge
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i2 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i2, align 4
  %arrayidx.i3 = getelementptr %struct.wm8995_priv, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i3, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %16, label %configure_aif_clock.exit.configure_aif_clock.exit26_crit_edge [
    i32 1, label %sw.bb.i5
    i32 2, label %sw.bb2.i7
    i32 3, label %sw.bb5.i9
    i32 4, label %sw.bb8.i11
  ]

configure_aif_clock.exit.configure_aif_clock.exit26_crit_edge: ; preds = %configure_aif_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %configure_aif_clock.exit26

sw.bb.i5:                                         ; preds = %configure_aif_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mclk.i4 = getelementptr inbounds %struct.wm8995_priv, ptr %14, i32 0, i32 2
  br label %sw.epilog.i16

sw.bb2.i7:                                        ; preds = %configure_aif_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4.i6 = getelementptr %struct.wm8995_priv, ptr %14, i32 0, i32 2, i32 1
  br label %sw.epilog.i16

sw.bb5.i9:                                        ; preds = %configure_aif_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %out.i8 = getelementptr inbounds %struct.wm8995_priv, ptr %14, i32 0, i32 4, i32 0, i32 2
  br label %sw.epilog.i16

sw.bb8.i11:                                       ; preds = %configure_aif_clock.exit
  call void @__sanitizer_cov_trace_pc() #10
  %out12.i10 = getelementptr %struct.wm8995_priv, ptr %14, i32 0, i32 4, i32 1, i32 2
  br label %sw.epilog.i16

sw.epilog.i16:                                    ; preds = %sw.bb8.i11, %sw.bb5.i9, %sw.bb2.i7, %sw.bb.i5
  %rate.0.in.i12 = phi ptr [ %out12.i10, %sw.bb8.i11 ], [ %out.i8, %sw.bb5.i9 ], [ %arrayidx4.i6, %sw.bb2.i7 ], [ %mclk.i4, %sw.bb.i5 ]
  %reg1.0.i13 = phi i32 [ 24, %sw.bb8.i11 ], [ 16, %sw.bb5.i9 ], [ 8, %sw.bb2.i7 ], [ 0, %sw.bb.i5 ]
  %18 = ptrtoint ptr %rate.0.in.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %rate.0.i14 = load i32, ptr %rate.0.in.i12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13499999, i32 %rate.0.i14)
  %cmp.i15 = icmp sgt i32 %rate.0.i14, 13499999
  br i1 %cmp.i15, label %if.then13.i19, label %sw.epilog.i16.if.end21.i25_crit_edge

sw.epilog.i16.if.end21.i25_crit_edge:             ; preds = %sw.epilog.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i25

if.then13.i19:                                    ; preds = %sw.epilog.i16
  call void @__sanitizer_cov_trace_pc() #10
  %div23.i17 = lshr i32 %rate.0.i14, 1
  %or14.i18 = or i32 %reg1.0.i13, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configure_aif_clock.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configure_clock, %if.then19.i20)) #8
          to label %if.end21.i25 [label %if.then19.i20], !srcloc !545

if.then19.i20:                                    ; preds = %if.then13.i19
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @configure_aif_clock.__UNIQUE_ID_ddebug304, ptr noundef %20, ptr noundef nonnull @.str.122, i32 noundef 2, i32 noundef %div23.i17) #8
  br label %if.end21.i25

if.end21.i25:                                     ; preds = %if.then19.i20, %if.then13.i19, %sw.epilog.i16.if.end21.i25_crit_edge
  %rate.1.i21 = phi i32 [ %div23.i17, %if.then19.i20 ], [ %rate.0.i14, %sw.epilog.i16.if.end21.i25_crit_edge ], [ %div23.i17, %if.then13.i19 ]
  %reg1.1.i22 = phi i32 [ %or14.i18, %if.then19.i20 ], [ %reg1.0.i13, %sw.epilog.i16.if.end21.i25_crit_edge ], [ %or14.i18, %if.then13.i19 ]
  %arrayidx22.i23 = getelementptr %struct.wm8995_priv, ptr %14, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %arrayidx22.i23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %rate.1.i21, ptr %arrayidx22.i23, align 4
  %call24.i24 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 516, i32 noundef 26, i32 noundef %reg1.1.i22) #8
  br label %configure_aif_clock.exit26

configure_aif_clock.exit26:                       ; preds = %if.end21.i25, %configure_aif_clock.exit.configure_aif_clock.exit26_crit_edge
  %aifclk = getelementptr inbounds %struct.wm8995_priv, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %aifclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %aifclk, align 4
  %arrayidx5 = getelementptr %struct.wm8995_priv, ptr %3, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp = icmp eq i32 %23, %25
  br i1 %cmp, label %configure_aif_clock.exit26.cleanup_crit_edge, label %if.end

configure_aif_clock.exit26.cleanup_crit_edge:     ; preds = %configure_aif_clock.exit26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %configure_aif_clock.exit26
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp10 = icmp slt i32 %23, %25
  %. = zext i1 %cmp10 to i32
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 520, i32 noundef 1, i32 noundef %.) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %configure_aif_clock.exit26.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_put_class_w(ptr noundef %kcontrol, ptr noundef %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #8
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 -176
  %call1 = tail call i32 @snd_soc_dapm_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #8
  tail call fastcc void @wm8995_update_class_w(ptr noundef %add.ptr.i.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm8995_update_class_w(ptr noundef %component) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1537) #8
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %call, label %do.body40 [
    i32 4, label %do.body
    i32 2, label %do.body5
    i32 1, label %do.body23
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_update_class_w, %if.then)) #8
          to label %sw.epilog [label %if.then], !srcloc !545

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_update_class_w.__UNIQUE_ID_ddebug296, ptr noundef %2, ptr noundef nonnull @.str.156) #8
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_update_class_w, %if.then17)) #8
          to label %sw.epilog [label %if.then17], !srcloc !545

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #10
  %dev18 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %3 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_update_class_w.__UNIQUE_ID_ddebug297, ptr noundef %4, ptr noundef nonnull @.str.157) #8
  br label %sw.epilog

do.body23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_update_class_w, %if.then35)) #8
          to label %sw.epilog [label %if.then35], !srcloc !545

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #10
  %dev36 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %5 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_update_class_w.__UNIQUE_ID_ddebug298, ptr noundef %6, ptr noundef nonnull @.str.158) #8
  br label %sw.epilog

do.body40:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_update_class_w, %if.then52)) #8
          to label %sw.epilog [label %if.then52], !srcloc !545

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %dev53 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %7 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_update_class_w.__UNIQUE_ID_ddebug299, ptr noundef %8, ptr noundef nonnull @.str.159, i32 noundef %call) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then52, %do.body40, %if.then35, %do.body23, %if.then17, %do.body5, %if.then, %do.body
  %source.0 = phi i32 [ 513, %if.then ], [ 257, %if.then17 ], [ 1, %if.then35 ], [ 1, %if.then52 ], [ 513, %do.body ], [ 257, %do.body5 ], [ 1, %do.body23 ], [ 1, %do.body40 ]
  %enable.0 = phi i32 [ 1, %if.then ], [ 1, %if.then17 ], [ 1, %if.then35 ], [ 0, %if.then52 ], [ 1, %do.body ], [ 1, %do.body5 ], [ 1, %do.body23 ], [ 0, %do.body40 ]
  %call57 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1538) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call57, i32 %call)
  %cmp.not = icmp eq i32 %call57, %call
  br i1 %cmp.not, label %sw.epilog.if.end76_crit_edge, label %do.body59

sw.epilog.if.end76_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

do.body59:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_update_class_w, %if.end76.thread)) #8
          to label %if.end76 [label %if.end76.thread], !srcloc !545

if.end76.thread:                                  ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #10
  %dev72 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %9 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev72, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_update_class_w.__UNIQUE_ID_ddebug300, ptr noundef %10, ptr noundef nonnull @.str.160) #8
  br label %do.body97

if.end76:                                         ; preds = %do.body59, %sw.epilog.if.end76_crit_edge
  %enable.1 = phi i32 [ %enable.0, %sw.epilog.if.end76_crit_edge ], [ 0, %do.body59 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable.1)
  %tobool77.not = icmp eq i32 %enable.1, 0
  br i1 %tobool77.not, label %if.end76.do.body97_crit_edge, label %do.body79

if.end76.do.body97_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body97

do.body79:                                        ; preds = %if.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_update_class_w, %if.then91)) #8
          to label %do.end95 [label %if.then91], !srcloc !545

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %dev92 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %11 = ptrtoint ptr %dev92 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev92, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_update_class_w.__UNIQUE_ID_ddebug301, ptr noundef %12, ptr noundef nonnull @.str.161) #8
  br label %do.end95

do.end95:                                         ; preds = %if.then91, %do.body79
  %call96 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 69, i32 noundef 769, i32 noundef %source.0) #8
  br label %if.end115

do.body97:                                        ; preds = %if.end76.do.body97_crit_edge, %if.end76.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_update_class_w, %if.then109)) #8
          to label %do.end113 [label %if.then109], !srcloc !545

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #10
  %dev110 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %13 = ptrtoint ptr %dev110 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev110, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_update_class_w.__UNIQUE_ID_ddebug302, ptr noundef %14, ptr noundef nonnull @.str.162) #8
  br label %do.end113

do.end113:                                        ; preds = %if.then109, %do.body97
  %call114 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 69, i32 noundef 1, i32 noundef 0) #8
  br label %if.end115

if.end115:                                        ; preds = %do.end113, %do.end95
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dc_servo_cmd(ptr noundef %component) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dc_servo_cmd.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dc_servo_cmd, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !545

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dc_servo_cmd.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.172, i32 noundef 81, i32 noundef 48, i32 noundef 3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 81, i32 noundef 48) #8
  tail call void @msleep(i32 noundef 10) #8
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and = and i32 %call5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp = icmp eq i32 %and, 3
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %while.cond.1

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.1:                                     ; preds = %do.end
  tail call void @msleep(i32 noundef 10) #8
  %call5.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and.1 = and i32 %call5.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.1)
  %cmp.1 = icmp eq i32 %and.1, 3
  br i1 %cmp.1, label %while.cond.1.cleanup_crit_edge, label %while.cond.2

while.cond.1.cleanup_crit_edge:                   ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.2:                                     ; preds = %while.cond.1
  tail call void @msleep(i32 noundef 10) #8
  %call5.2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and.2 = and i32 %call5.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.2)
  %cmp.2 = icmp eq i32 %and.2, 3
  br i1 %cmp.2, label %while.cond.2.cleanup_crit_edge, label %while.cond.3

while.cond.2.cleanup_crit_edge:                   ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.3:                                     ; preds = %while.cond.2
  tail call void @msleep(i32 noundef 10) #8
  %call5.3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and.3 = and i32 %call5.3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.3)
  %cmp.3 = icmp eq i32 %and.3, 3
  br i1 %cmp.3, label %while.cond.3.cleanup_crit_edge, label %while.cond.4

while.cond.3.cleanup_crit_edge:                   ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.4:                                     ; preds = %while.cond.3
  tail call void @msleep(i32 noundef 10) #8
  %call5.4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and.4 = and i32 %call5.4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.4)
  %cmp.4 = icmp eq i32 %and.4, 3
  br i1 %cmp.4, label %while.cond.4.cleanup_crit_edge, label %while.cond.5

while.cond.4.cleanup_crit_edge:                   ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.5:                                     ; preds = %while.cond.4
  tail call void @msleep(i32 noundef 10) #8
  %call5.5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and.5 = and i32 %call5.5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.5)
  %cmp.5 = icmp eq i32 %and.5, 3
  br i1 %cmp.5, label %while.cond.5.cleanup_crit_edge, label %while.cond.6

while.cond.5.cleanup_crit_edge:                   ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.6:                                     ; preds = %while.cond.5
  tail call void @msleep(i32 noundef 10) #8
  %call5.6 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and.6 = and i32 %call5.6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.6)
  %cmp.6 = icmp eq i32 %and.6, 3
  br i1 %cmp.6, label %while.cond.6.cleanup_crit_edge, label %while.cond.7

while.cond.6.cleanup_crit_edge:                   ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.7:                                     ; preds = %while.cond.6
  tail call void @msleep(i32 noundef 10) #8
  %call5.7 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and.7 = and i32 %call5.7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.7)
  %cmp.7 = icmp eq i32 %and.7, 3
  br i1 %cmp.7, label %while.cond.7.cleanup_crit_edge, label %while.cond.8

while.cond.7.cleanup_crit_edge:                   ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.8:                                     ; preds = %while.cond.7
  tail call void @msleep(i32 noundef 10) #8
  %call5.8 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and.8 = and i32 %call5.8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.8)
  %cmp.8 = icmp eq i32 %and.8, 3
  br i1 %cmp.8, label %while.cond.8.cleanup_crit_edge, label %while.cond.9

while.cond.8.cleanup_crit_edge:                   ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.9:                                     ; preds = %while.cond.8
  tail call void @msleep(i32 noundef 10) #8
  %call5.9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 87) #8
  %and.9 = and i32 %call5.9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.9)
  %cmp.9 = icmp eq i32 %and.9, 3
  br i1 %cmp.9, label %while.cond.9.cleanup_crit_edge, label %do.end10

while.cond.9.cleanup_crit_edge:                   ; preds = %while.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end10:                                         ; preds = %while.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  %dev11 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %2 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.174) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %while.cond.9.cleanup_crit_edge, %while.cond.8.cleanup_crit_edge, %while.cond.7.cleanup_crit_edge, %while.cond.6.cleanup_crit_edge, %while.cond.5.cleanup_crit_edge, %while.cond.4.cleanup_crit_edge, %while.cond.3.cleanup_crit_edge, %while.cond.2.cleanup_crit_edge, %while.cond.1.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_clk_sys(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 520) #8
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %.str.62..str.63 = select i1 %tobool.not, ptr @.str.62, ptr @.str.63
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call2 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(8) %.str.62..str.63) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %lnot.ext = zext i1 %tobool3.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_regulator_event_0(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -172
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_regulator_event_1(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -184
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_regulator_event_2(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -196
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_regulator_event_3(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -208
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_regulator_event_4(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -220
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_regulator_event_5(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -232
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_regulator_event_6(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -244
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_regulator_event_7(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %nb, i32 -256
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @regcache_mark_dirty(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #4 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %switch = icmp ult i32 %7, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %8 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %clk_id, label %do.end84 [
    i32 1, label %sw.bb2
    i32 2, label %sw.bb9
    i32 3, label %sw.bb34
    i32 4, label %sw.bb57
  ]

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.wm8995_priv, ptr %5, i32 0, i32 1, i32 %7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arrayidx, align 4
  %mclk = getelementptr inbounds %struct.wm8995_priv, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %freq, ptr %mclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_set_dai_sysclk, %if.then)) #8
          to label %sw.epilog86 [label %if.then], !srcloc !545

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %add = add i32 %14, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug318, ptr noundef %12, ptr noundef nonnull @.str.214, i32 noundef %add, i32 noundef %freq) #8
  br label %sw.epilog86

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12 = getelementptr %struct.wm8995_priv, ptr %5, i32 0, i32 1, i32 %7
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.wm8995_priv, ptr %5, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %freq, ptr %arrayidx14, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_set_dai_sysclk, %if.then27)) #8
          to label %sw.epilog86 [label %if.then27], !srcloc !545

if.then27:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %dev28 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %17 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev28, align 4
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %add30 = add i32 %20, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug319, ptr noundef %18, ptr noundef nonnull @.str.215, i32 noundef %add30, i32 noundef %freq) #8
  br label %sw.epilog86

sw.bb34:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx37 = getelementptr %struct.wm8995_priv, ptr %5, i32 0, i32 1, i32 %7
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %arrayidx37, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_set_dai_sysclk, %if.then50)) #8
          to label %sw.epilog86 [label %if.then50], !srcloc !545

if.then50:                                        ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  %dev51 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %22 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev51, align 4
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %add53 = add i32 %25, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug320, ptr noundef %23, ptr noundef nonnull @.str.216, i32 noundef %add53) #8
  br label %sw.epilog86

sw.bb57:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx60 = getelementptr %struct.wm8995_priv, ptr %5, i32 0, i32 1, i32 %7
  %26 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %arrayidx60, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_set_dai_sysclk, %if.then73)) #8
          to label %sw.epilog86 [label %if.then73], !srcloc !545

if.then73:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #10
  %dev74 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %27 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev74, align 4
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %add76 = add i32 %30, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug321, ptr noundef %28, ptr noundef nonnull @.str.217, i32 noundef %add76) #8
  br label %sw.epilog86

do.end84:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev85 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %31 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.218, i32 noundef %clk_id) #11
  br label %cleanup

sw.epilog86:                                      ; preds = %if.then73, %sw.bb57, %if.then50, %sw.bb34, %if.then27, %sw.bb9, %if.then, %sw.bb2
  tail call fastcc void @configure_clock(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog86, %do.end84, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end84 ], [ 0, %sw.epilog86 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_set_fll(ptr nocapture noundef readonly %dai, i32 noundef %id, i32 noundef %src, i32 noundef %freq_in, i32 noundef %freq_out) #4 align 64 {
entry:
  %fll = alloca %struct.fll_div, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %fll) #8
  %0 = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 3
  %3 = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 4
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %4 = call ptr @memset(ptr %fll, i32 255, i32 10)
  %5 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 512) #8
  %conv = and i32 %call2, 1
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %6, i32 noundef 516) #8
  %conv5 = and i32 %call3, 1
  %11 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %id, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %entry.sw.epilog_crit_edge
  %id.addr.0 = phi i32 [ 1, %sw.bb6 ], [ 0, %entry.sw.epilog_crit_edge ]
  %reg_offset.0 = phi i32 [ 32, %sw.bb6 ], [ 0, %entry.sw.epilog_crit_edge ]
  %12 = zext i32 %src to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %src, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb7
    i32 1, label %sw.epilog.sw.epilog10_crit_edge
    i32 2, label %sw.epilog.sw.epilog10_crit_edge132
    i32 3, label %sw.epilog.sw.epilog10_crit_edge133
    i32 4, label %sw.epilog.sw.epilog10_crit_edge134
  ]

sw.epilog.sw.epilog10_crit_edge134:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10

sw.epilog.sw.epilog10_crit_edge133:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10

sw.epilog.sw.epilog10_crit_edge132:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10

sw.epilog.sw.epilog10_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool.not = icmp eq i32 %freq_out, 0
  br i1 %tobool.not, label %sw.bb7.sw.epilog10_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7.sw.epilog10_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb7.sw.epilog10_crit_edge, %sw.epilog.sw.epilog10_crit_edge, %sw.epilog.sw.epilog10_crit_edge132, %sw.epilog.sw.epilog10_crit_edge133, %sw.epilog.sw.epilog10_crit_edge134
  %arrayidx = getelementptr %struct.wm8995_priv, ptr %10, i32 0, i32 4, i32 %id.addr.0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %src)
  %cmp = icmp eq i32 %14, %src
  br i1 %cmp, label %land.lhs.true, label %sw.epilog10.if.end24_crit_edge

sw.epilog10.if.end24_crit_edge:                   ; preds = %sw.epilog10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true:                                    ; preds = %sw.epilog10
  %in = getelementptr %struct.wm8995_priv, ptr %10, i32 0, i32 4, i32 %id.addr.0, i32 1
  %15 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %freq_in)
  %cmp16 = icmp eq i32 %16, %freq_in
  br i1 %cmp16, label %land.lhs.true18, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true18:                                  ; preds = %land.lhs.true
  %out = getelementptr %struct.wm8995_priv, ptr %10, i32 0, i32 4, i32 %id.addr.0, i32 2
  %17 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %freq_out)
  %cmp21 = icmp eq i32 %18, %freq_out
  br i1 %cmp21, label %land.lhs.true18.cleanup_crit_edge, label %land.lhs.true18.if.end24_crit_edge

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

land.lhs.true18.cleanup_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %land.lhs.true18.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %sw.epilog10.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool25.not = icmp eq i32 %freq_out, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call fastcc i32 @wm8995_get_fll_config(ptr noundef nonnull %fll, i32 noundef %freq_in, i32 noundef %freq_out)
  br label %if.end35

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %in30 = getelementptr %struct.wm8995_priv, ptr %10, i32 0, i32 4, i32 %id.addr.0, i32 1
  %19 = ptrtoint ptr %in30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %in30, align 4
  %out33 = getelementptr %struct.wm8995_priv, ptr %10, i32 0, i32 4, i32 %id.addr.0, i32 2
  %21 = ptrtoint ptr %out33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %out33, align 4
  %call34 = call fastcc i32 @wm8995_get_fll_config(ptr noundef nonnull %fll, i32 noundef %20, i32 noundef %22)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then26
  %ret.0 = phi i32 [ %call27, %if.then26 ], [ %call34, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp36 = icmp slt i32 %ret.0, 0
  br i1 %cmp36, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  %call40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 512, i32 noundef 1, i32 noundef 0) #8
  %call41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 516, i32 noundef 1, i32 noundef 0) #8
  %add = add nuw nsw i32 %reg_offset.0, 544
  %call42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %add, i32 noundef 1, i32 noundef 0) #8
  %23 = ptrtoint ptr %fll to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %fll, align 2
  %shl = shl i16 %24, 8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %3, align 2
  %or = or i16 %shl, %26
  %add47 = add nuw nsw i32 %reg_offset.0, 545
  %conv48 = zext i16 %or to i32
  %call49 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %add47, i32 noundef 16135, i32 noundef %conv48) #8
  %add50 = add nuw nsw i32 %reg_offset.0, 546
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %1, align 2
  %conv51 = zext i16 %28 to i32
  %call52 = tail call i32 @snd_soc_component_write(ptr noundef %6, i32 noundef %add50, i32 noundef %conv51) #8
  %add53 = add nuw nsw i32 %reg_offset.0, 547
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %0, align 2
  %conv54 = zext i16 %30 to i32
  %shl55 = shl nuw nsw i32 %conv54, 5
  %call56 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %add53, i32 noundef 32736, i32 noundef %shl55) #8
  %add57 = add nuw nsw i32 %reg_offset.0, 548
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %2, align 2
  %conv58 = zext i16 %32 to i32
  %shl59 = shl nuw nsw i32 %conv58, 3
  %sub = add nsw i32 %src, -1
  %or60 = or i32 %shl59, %sub
  %call61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %add57, i32 noundef 27, i32 noundef %or60) #8
  br i1 %tobool25.not, label %if.end39.if.end66_crit_edge, label %if.then63

if.end39.if.end66_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then63:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %call65 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef %add, i32 noundef 1, i32 noundef 1) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end39.if.end66_crit_edge
  %in69 = getelementptr %struct.wm8995_priv, ptr %10, i32 0, i32 4, i32 %id.addr.0, i32 1
  %33 = ptrtoint ptr %in69 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %freq_in, ptr %in69, align 4
  %out72 = getelementptr %struct.wm8995_priv, ptr %10, i32 0, i32 4, i32 %id.addr.0, i32 2
  %34 = ptrtoint ptr %out72 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %freq_out, ptr %out72, align 4
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %src, ptr %arrayidx, align 4
  %call77 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 512, i32 noundef 1, i32 noundef %conv) #8
  %call79 = tail call i32 @snd_soc_component_update_bits(ptr noundef %6, i32 noundef 516, i32 noundef 1, i32 noundef %conv5) #8
  tail call fastcc void @configure_clock(ptr noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end35.cleanup_crit_edge, %land.lhs.true18.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %land.lhs.true18.cleanup_crit_edge ], [ %ret.0, %if.end35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %fll) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = trunc i32 %fmt to i16
  %trunc = and i16 %2, -4096
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.257)
  switch i16 %trunc, label %do.end [
    i16 16384, label %entry.sw.epilog_crit_edge
    i16 4096, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.226) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %master.0 = phi i32 [ 16384, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %and2 = and i32 %fmt, 15
  %6 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %and2, label %do.end13 [
    i32 5, label %sw.bb3
    i32 4, label %sw.epilog.sw.bb17_crit_edge
    i32 1, label %sw.bb6
    i32 2, label %sw.epilog.sw.bb23_crit_edge
    i32 3, label %sw.bb8
  ]

sw.epilog.sw.bb23_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23

sw.epilog.sw.bb17_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23

do.end13:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %dev14 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %7 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.229) #11
  br label %cleanup

sw.bb17:                                          ; preds = %sw.bb3, %sw.epilog.sw.bb17_crit_edge
  %aif.0 = phi i32 [ 24, %sw.epilog.sw.bb17_crit_edge ], [ 152, %sw.bb3 ]
  %and18 = and i32 %fmt, 3840
  %9 = zext i32 %and18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %and18, label %sw.bb17.cleanup_crit_edge [
    i32 0, label %sw.bb17.sw.epilog34_crit_edge
    i32 768, label %sw.bb19
  ]

sw.bb17.sw.epilog34_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog34

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %or20 = or i32 %aif.0, 256
  br label %sw.epilog34

sw.bb23:                                          ; preds = %sw.bb8, %sw.bb6, %sw.epilog.sw.bb23_crit_edge
  %aif.1.ph = phi i32 [ 16, %sw.bb6 ], [ 0, %sw.epilog.sw.bb23_crit_edge ], [ 8, %sw.bb8 ]
  %and24 = lshr i32 %fmt, 8
  %10 = and i32 %and24, 15
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %10, label %sw.bb23.cleanup_crit_edge [
    i32 0, label %sw.bb23.sw.epilog34_crit_edge
    i32 4, label %sw.bb25
    i32 3, label %sw.bb27
    i32 2, label %sw.bb29
  ]

sw.bb23.sw.epilog34_crit_edge:                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog34

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  %or26 = or i32 %aif.1.ph, 384
  br label %sw.epilog34

sw.bb27:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  %or28 = or i32 %aif.1.ph, 256
  br label %sw.epilog34

sw.bb29:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  %or30 = or i32 %aif.1.ph, 128
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23.sw.epilog34_crit_edge, %sw.bb19, %sw.bb17.sw.epilog34_crit_edge
  %aif.2 = phi i32 [ %or30, %sw.bb29 ], [ %or28, %sw.bb27 ], [ %or26, %sw.bb25 ], [ %aif.1.ph, %sw.bb23.sw.epilog34_crit_edge ], [ %or20, %sw.bb19 ], [ %aif.0, %sw.bb17.sw.epilog34_crit_edge ]
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 768, i32 noundef 408, i32 noundef %aif.2) #8
  %call35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 770, i32 noundef 16384, i32 noundef %master.0) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog34, %sw.bb23.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ 0, %sw.epilog34 ], [ -22, %sw.bb17.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_set_tristate(ptr nocapture noundef readonly %codec_dai, i32 noundef %tristate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %3 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %component1, align 4
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.wm8995_set_tristate, i32 0, i32 %1
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep9 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8995_set_tristate.245, i32 0, i32 %1
  %6 = ptrtoint ptr %switch.gep9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load10 = load i32, ptr %switch.gep9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %.mask.0 = select i1 %tobool.not, i32 0, i32 %switch.load10
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef %switch.load, i32 noundef %switch.load10, i32 noundef %.mask.0) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_aif_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %mute_reg.0 = phi i32 [ 1312, %sw.bb2 ], [ 1056, %entry.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %shl = select i1 %tobool.not, i32 0, i32 512
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %mute_reg.0, i32 noundef 512, i32 noundef %shl) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_hw_params(ptr nocapture noundef readonly %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #4 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %9 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.else

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_hw_params.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_hw_params, %if.then5)) #8
          to label %sw.epilog [label %if.then5], !srcloc !545

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_hw_params.__UNIQUE_ID_ddebug305, ptr noundef %12, ptr noundef nonnull @.str.232) #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %stream8 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %13 = ptrtoint ptr %stream8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stream8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp9 = icmp eq i32 %14, 0
  br i1 %cmp9, label %sw.bb7.sw.epilog_crit_edge, label %if.else11

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.else11:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_hw_params.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_hw_params, %if.then24)) #8
          to label %sw.epilog [label %if.then24], !srcloc !545

if.then24:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_hw_params.__UNIQUE_ID_ddebug306, ptr noundef %16, ptr noundef nonnull @.str.233) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then24, %if.else11, %sw.bb7.sw.epilog_crit_edge, %if.then5, %if.else, %sw.bb.sw.epilog_crit_edge
  %rate_reg.0 = phi i32 [ 529, %if.then24 ], [ 528, %if.then5 ], [ 528, %sw.bb.sw.epilog_crit_edge ], [ 529, %sw.bb7.sw.epilog_crit_edge ], [ 528, %if.else ], [ 529, %if.else11 ]
  %lrclk_reg.0 = phi i32 [ 788, %if.then24 ], [ 772, %if.then5 ], [ 773, %sw.bb.sw.epilog_crit_edge ], [ 789, %sw.bb7.sw.epilog_crit_edge ], [ 772, %if.else ], [ 788, %if.else11 ]
  %bclk_reg.0 = phi i32 [ 787, %if.then24 ], [ 771, %if.then5 ], [ 771, %sw.bb.sw.epilog_crit_edge ], [ 787, %sw.bb7.sw.epilog_crit_edge ], [ 771, %if.else ], [ 787, %if.else11 ]
  %aif1_reg.0 = phi i32 [ 784, %if.then24 ], [ 768, %if.then5 ], [ 768, %sw.bb.sw.epilog_crit_edge ], [ 784, %sw.bb7.sw.epilog_crit_edge ], [ 768, %if.else ], [ 784, %if.else11 ]
  %call30 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %sw.epilog.cleanup_crit_edge, label %if.end33

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %sw.epilog
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end33.if.then.i.i.i_crit_edge

if.end33.if.then.i.i.i_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end33.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end33.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %18, %if.end33.if.then.i.i.i_crit_edge ], [ %21, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %19 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !546
  %add.i.i.i = or i32 %19, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end33
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.1.i.i.i = icmp eq i32 %21, 0
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
  %22 = add i32 %call1.i, -16
  %23 = tail call i32 @llvm.fshl.i32(i32 %22, i32 %22, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %24 = icmp ult i32 %23, 5
  br i1 %24, label %switch.hole_check, label %params_width.exit.do.end43_crit_edge

params_width.exit.do.end43_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

do.end43:                                         ; preds = %switch.hole_check.do.end43_crit_edge, %params_width.exit.do.end43_crit_edge
  %dev44 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %25 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev44, align 4
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i.i.i317 = icmp eq i32 %28, 0
  br i1 %tobool.not.i.i.i317, label %for.inc.i.i.i324, label %do.end43.if.then.i.i.i321_crit_edge

do.end43.if.then.i.i.i321_crit_edge:              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i321

if.then.i.i.i321:                                 ; preds = %for.inc.i.i.i324.if.then.i.i.i321_crit_edge, %do.end43.if.then.i.i.i321_crit_edge
  %i.09.lcssa.i.i.i318 = phi i32 [ 0, %do.end43.if.then.i.i.i321_crit_edge ], [ 32, %for.inc.i.i.i324.if.then.i.i.i321_crit_edge ]
  %.lcssa.i.i.i319 = phi i32 [ %28, %do.end43.if.then.i.i.i321_crit_edge ], [ %31, %for.inc.i.i.i324.if.then.i.i.i321_crit_edge ]
  %29 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i319, i1 true) #8, !range !546
  %add.i.i.i320 = or i32 %29, %i.09.lcssa.i.i.i318
  br label %params_width.exit327

for.inc.i.i.i324:                                 ; preds = %do.end43
  %arrayidx.1.i.i.i322 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx.1.i.i.i322 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i.i322, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.i.i.i323 = icmp eq i32 %31, 0
  br i1 %tobool.not.1.i.i.i323, label %for.inc.i.i.i324.params_width.exit327_crit_edge, label %for.inc.i.i.i324.if.then.i.i.i321_crit_edge

for.inc.i.i.i324.if.then.i.i.i321_crit_edge:      ; preds = %for.inc.i.i.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i321

for.inc.i.i.i324.params_width.exit327_crit_edge:  ; preds = %for.inc.i.i.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_width.exit327

params_width.exit327:                             ; preds = %for.inc.i.i.i324.params_width.exit327_crit_edge, %if.then.i.i.i321
  %retval.0.i.i.i325 = phi i32 [ %add.i.i.i320, %if.then.i.i.i321 ], [ 0, %for.inc.i.i.i324.params_width.exit327_crit_edge ]
  %call1.i326 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i325) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.234, i32 noundef %call1.i326) #11
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %23 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %32 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %switch.lobit.not = icmp eq i8 %32, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end43_crit_edge, label %switch.lookup

switch.hole_check.do.end43_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8995_hw_params, i32 0, i32 %23
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %35, label %do.end56 [
    i32 8000, label %switch.lookup.if.end59_crit_edge
    i32 11025, label %if.end59.fold.split
    i32 12000, label %if.end59.fold.split349
    i32 16000, label %if.end59.fold.split350
    i32 22050, label %if.end59.fold.split351
    i32 24000, label %if.end59.fold.split352
    i32 32000, label %if.end59.fold.split353
    i32 44100, label %if.end59.fold.split354
    i32 48000, label %if.end59.fold.split355
    i32 88200, label %if.end59.fold.split356
    i32 96000, label %if.end59.fold.split357
  ]

switch.lookup.if.end59_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end56:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %dev57 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %37 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev57, align 4
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.236, i32 noundef %40) #11
  br label %cleanup

if.end59.fold.split:                              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59.fold.split349:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59.fold.split350:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59.fold.split351:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59.fold.split352:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59.fold.split353:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59.fold.split354:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59.fold.split355:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59.fold.split356:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59.fold.split357:                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59:                                         ; preds = %if.end59.fold.split357, %if.end59.fold.split356, %if.end59.fold.split355, %if.end59.fold.split354, %if.end59.fold.split353, %if.end59.fold.split352, %if.end59.fold.split351, %if.end59.fold.split350, %if.end59.fold.split349, %if.end59.fold.split, %switch.lookup.if.end59_crit_edge
  %i.0342.lcssa = phi i32 [ 0, %switch.lookup.if.end59_crit_edge ], [ 1, %if.end59.fold.split ], [ 2, %if.end59.fold.split349 ], [ 3, %if.end59.fold.split350 ], [ 4, %if.end59.fold.split351 ], [ 5, %if.end59.fold.split352 ], [ 6, %if.end59.fold.split353 ], [ 7, %if.end59.fold.split354 ], [ 8, %if.end59.fold.split355 ], [ 9, %if.end59.fold.split356 ], [ 10, %if.end59.fold.split357 ]
  %shl = shl nuw nsw i32 %i.0342.lcssa, 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_hw_params.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_hw_params, %if.then72)) #8
          to label %do.body78 [label %if.then72], !srcloc !545

if.then72:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %dev73 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %41 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev73, align 4
  %arrayidx74 = getelementptr [11 x i32], ptr @srs, i32 0, i32 %i.0342.lcssa
  %43 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_hw_params.__UNIQUE_ID_ddebug307, ptr noundef %42, ptr noundef nonnull @.str.238, i32 noundef %44) #8
  br label %do.body78

do.body78:                                        ; preds = %if.then72, %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_hw_params.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_hw_params, %if.then90)) #8
          to label %do.end97 [label %if.then90], !srcloc !545

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  %dev91 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %45 = ptrtoint ptr %dev91 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev91, align 4
  %47 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id, align 4
  %add = add i32 %48, 1
  %arrayidx94 = getelementptr %struct.wm8995_priv, ptr %5, i32 0, i32 3, i32 %48
  %49 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx94, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_hw_params.__UNIQUE_ID_ddebug308, ptr noundef %46, ptr noundef nonnull @.str.239, i32 noundef %add, i32 noundef %50, i32 noundef %call30) #8
  br label %do.end97

do.end97:                                         ; preds = %if.then90, %do.body78
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %52, 7
  %53 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id, align 4
  %arrayidx101 = getelementptr %struct.wm8995_priv, ptr %5, i32 0, i32 3, i32 %54
  %55 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx101, align 4
  %sub = sub i32 %mul, %56
  %57 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %mul111 = mul i32 %52, 192
  %sub115 = sub i32 %mul111, %56
  %58 = tail call i32 @llvm.abs.i32(i32 %sub115, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %57)
  %cmp123.not = icmp slt i32 %58, %57
  %59 = tail call i32 @llvm.smin.i32(i32 %58, i32 %57)
  %best.1 = select i1 %cmp123.not, i32 2, i32 1
  %mul111.1 = shl i32 %52, 8
  %sub115.1 = sub i32 %mul111.1, %56
  %60 = tail call i32 @llvm.abs.i32(i32 %sub115.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %59)
  %cmp123.not.1 = icmp slt i32 %60, %59
  %61 = tail call i32 @llvm.smin.i32(i32 %60, i32 %59)
  %best.1.1 = select i1 %cmp123.not.1, i32 3, i32 %best.1
  %mul111.2 = mul i32 %52, 384
  %sub115.2 = sub i32 %mul111.2, %56
  %62 = tail call i32 @llvm.abs.i32(i32 %sub115.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %61)
  %cmp123.not.2 = icmp slt i32 %62, %61
  %63 = tail call i32 @llvm.smin.i32(i32 %62, i32 %61)
  %best.1.2 = select i1 %cmp123.not.2, i32 4, i32 %best.1.1
  %mul111.3 = shl i32 %52, 9
  %sub115.3 = sub i32 %mul111.3, %56
  %64 = tail call i32 @llvm.abs.i32(i32 %sub115.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %63)
  %cmp123.not.3 = icmp slt i32 %64, %63
  %65 = tail call i32 @llvm.smin.i32(i32 %64, i32 %63)
  %best.1.3 = select i1 %cmp123.not.3, i32 5, i32 %best.1.2
  %mul111.4 = mul i32 %52, 768
  %sub115.4 = sub i32 %mul111.4, %56
  %66 = tail call i32 @llvm.abs.i32(i32 %sub115.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %65)
  %cmp123.not.4 = icmp slt i32 %66, %65
  %67 = tail call i32 @llvm.smin.i32(i32 %66, i32 %65)
  %best.1.4 = select i1 %cmp123.not.4, i32 6, i32 %best.1.3
  %mul111.5 = shl i32 %52, 10
  %sub115.5 = sub i32 %mul111.5, %56
  %68 = tail call i32 @llvm.abs.i32(i32 %sub115.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %67)
  %cmp123.not.5 = icmp slt i32 %68, %67
  %69 = tail call i32 @llvm.smin.i32(i32 %68, i32 %67)
  %best.1.5 = select i1 %cmp123.not.5, i32 7, i32 %best.1.4
  %mul111.6 = mul i32 %52, 1408
  %sub115.6 = sub i32 %mul111.6, %56
  %70 = tail call i32 @llvm.abs.i32(i32 %sub115.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %69)
  %cmp123.not.6 = icmp slt i32 %70, %69
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 %69)
  %best.1.6 = select i1 %cmp123.not.6, i32 8, i32 %best.1.5
  %mul111.7 = mul i32 %52, 1536
  %sub115.7 = sub i32 %mul111.7, %56
  %72 = tail call i32 @llvm.abs.i32(i32 %sub115.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %71)
  %cmp123.not.7 = icmp slt i32 %72, %71
  %best.1.7 = select i1 %cmp123.not.7, i32 9, i32 %best.1.6
  %or129 = or i32 %best.1.7, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_hw_params.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_hw_params, %if.then142)) #8
          to label %do.end149 [label %if.then142], !srcloc !545

if.then142:                                       ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #10
  %dev143 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %73 = ptrtoint ptr %dev143 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev143, align 4
  %75 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %id, align 4
  %add145 = add i32 %76, 1
  %arrayidx146 = getelementptr [10 x i32], ptr @fs_ratios, i32 0, i32 %best.1.7
  %77 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx146, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_hw_params.__UNIQUE_ID_ddebug309, ptr noundef %74, ptr noundef nonnull @.str.240, i32 noundef %add145, i32 noundef %78) #8
  br label %do.end149

do.end149:                                        ; preds = %if.then142, %do.end97
  %79 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %id, align 4
  %arrayidx155 = getelementptr %struct.wm8995_priv, ptr %5, i32 0, i32 3, i32 %80
  %81 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx155, align 4
  %mul156 = mul i32 %82, 10
  %div = sdiv i32 %mul156, 10
  %sub158 = sub i32 %div, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158)
  %cmp159 = icmp slt i32 %sub158, 0
  br i1 %cmp159, label %do.end149.for.end164_crit_edge, label %for.cond150

do.end149.for.end164_crit_edge:                   ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150:                                      ; preds = %do.end149
  %div.1 = sdiv i32 %mul156, 15
  %sub158.1 = sub i32 %div.1, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.1)
  %cmp159.1 = icmp slt i32 %sub158.1, 0
  br i1 %cmp159.1, label %for.cond150.for.end164_crit_edge, label %for.cond150.1

for.cond150.for.end164_crit_edge:                 ; preds = %for.cond150
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.1:                                    ; preds = %for.cond150
  %div.2 = sdiv i32 %mul156, 20
  %sub158.2 = sub i32 %div.2, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.2)
  %cmp159.2 = icmp slt i32 %sub158.2, 0
  br i1 %cmp159.2, label %for.cond150.1.for.end164_crit_edge, label %for.cond150.2

for.cond150.1.for.end164_crit_edge:               ; preds = %for.cond150.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.2:                                    ; preds = %for.cond150.1
  %div.3 = sdiv i32 %mul156, 30
  %sub158.3 = sub i32 %div.3, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.3)
  %cmp159.3 = icmp slt i32 %sub158.3, 0
  br i1 %cmp159.3, label %for.cond150.2.for.end164_crit_edge, label %for.cond150.3

for.cond150.2.for.end164_crit_edge:               ; preds = %for.cond150.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.3:                                    ; preds = %for.cond150.2
  %div.4 = sdiv i32 %mul156, 40
  %sub158.4 = sub i32 %div.4, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.4)
  %cmp159.4 = icmp slt i32 %sub158.4, 0
  br i1 %cmp159.4, label %for.cond150.3.for.end164_crit_edge, label %for.cond150.4

for.cond150.3.for.end164_crit_edge:               ; preds = %for.cond150.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.4:                                    ; preds = %for.cond150.3
  %div.5 = sdiv i32 %mul156, 55
  %sub158.5 = sub i32 %div.5, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.5)
  %cmp159.5 = icmp slt i32 %sub158.5, 0
  br i1 %cmp159.5, label %for.cond150.4.for.end164_crit_edge, label %for.cond150.5

for.cond150.4.for.end164_crit_edge:               ; preds = %for.cond150.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.5:                                    ; preds = %for.cond150.4
  %div.6 = sdiv i32 %mul156, 60
  %sub158.6 = sub i32 %div.6, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.6)
  %cmp159.6 = icmp slt i32 %sub158.6, 0
  br i1 %cmp159.6, label %for.cond150.5.for.end164_crit_edge, label %for.cond150.6

for.cond150.5.for.end164_crit_edge:               ; preds = %for.cond150.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.6:                                    ; preds = %for.cond150.5
  %div.7 = sdiv i32 %mul156, 80
  %sub158.7 = sub i32 %div.7, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.7)
  %cmp159.7 = icmp slt i32 %sub158.7, 0
  br i1 %cmp159.7, label %for.cond150.6.for.end164_crit_edge, label %for.cond150.7

for.cond150.6.for.end164_crit_edge:               ; preds = %for.cond150.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.7:                                    ; preds = %for.cond150.6
  %div.8 = sdiv i32 %mul156, 110
  %sub158.8 = sub i32 %div.8, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.8)
  %cmp159.8 = icmp slt i32 %sub158.8, 0
  br i1 %cmp159.8, label %for.cond150.7.for.end164_crit_edge, label %for.cond150.8

for.cond150.7.for.end164_crit_edge:               ; preds = %for.cond150.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.8:                                    ; preds = %for.cond150.7
  %div.9 = sdiv i32 %mul156, 120
  %sub158.9 = sub i32 %div.9, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.9)
  %cmp159.9 = icmp slt i32 %sub158.9, 0
  br i1 %cmp159.9, label %for.cond150.8.for.end164_crit_edge, label %for.cond150.9

for.cond150.8.for.end164_crit_edge:               ; preds = %for.cond150.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.9:                                    ; preds = %for.cond150.8
  %div.10 = sdiv i32 %mul156, 160
  %sub158.10 = sub i32 %div.10, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.10)
  %cmp159.10 = icmp slt i32 %sub158.10, 0
  br i1 %cmp159.10, label %for.cond150.9.for.end164_crit_edge, label %for.cond150.10

for.cond150.9.for.end164_crit_edge:               ; preds = %for.cond150.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.10:                                   ; preds = %for.cond150.9
  %div.11 = sdiv i32 %mul156, 220
  %sub158.11 = sub i32 %div.11, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.11)
  %cmp159.11 = icmp slt i32 %sub158.11, 0
  br i1 %cmp159.11, label %for.cond150.10.for.end164_crit_edge, label %for.cond150.11

for.cond150.10.for.end164_crit_edge:              ; preds = %for.cond150.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.11:                                   ; preds = %for.cond150.10
  %div.12 = sdiv i32 %mul156, 240
  %sub158.12 = sub i32 %div.12, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.12)
  %cmp159.12 = icmp slt i32 %sub158.12, 0
  br i1 %cmp159.12, label %for.cond150.11.for.end164_crit_edge, label %for.cond150.12

for.cond150.11.for.end164_crit_edge:              ; preds = %for.cond150.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.12:                                   ; preds = %for.cond150.11
  %div.13 = sdiv i32 %mul156, 320
  %sub158.13 = sub i32 %div.13, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.13)
  %cmp159.13 = icmp slt i32 %sub158.13, 0
  br i1 %cmp159.13, label %for.cond150.12.for.end164_crit_edge, label %for.cond150.13

for.cond150.12.for.end164_crit_edge:              ; preds = %for.cond150.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.13:                                   ; preds = %for.cond150.12
  %div.14 = sdiv i32 %mul156, 440
  %sub158.14 = sub i32 %div.14, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.14)
  %cmp159.14 = icmp slt i32 %sub158.14, 0
  br i1 %cmp159.14, label %for.cond150.13.for.end164_crit_edge, label %for.cond150.14

for.cond150.13.for.end164_crit_edge:              ; preds = %for.cond150.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end164

for.cond150.14:                                   ; preds = %for.cond150.13
  call void @__sanitizer_cov_trace_pc() #10
  %div.15 = sdiv i32 %mul156, 480
  %sub158.15 = sub i32 %div.15, %call30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub158.15)
  %cmp159.15 = icmp slt i32 %sub158.15, 0
  %spec.select = select i1 %cmp159.15, i32 14, i32 15
  br label %for.end164

for.end164:                                       ; preds = %for.cond150.14, %for.cond150.13.for.end164_crit_edge, %for.cond150.12.for.end164_crit_edge, %for.cond150.11.for.end164_crit_edge, %for.cond150.10.for.end164_crit_edge, %for.cond150.9.for.end164_crit_edge, %for.cond150.8.for.end164_crit_edge, %for.cond150.7.for.end164_crit_edge, %for.cond150.6.for.end164_crit_edge, %for.cond150.5.for.end164_crit_edge, %for.cond150.4.for.end164_crit_edge, %for.cond150.3.for.end164_crit_edge, %for.cond150.2.for.end164_crit_edge, %for.cond150.1.for.end164_crit_edge, %for.cond150.for.end164_crit_edge, %do.end149.for.end164_crit_edge
  %best.2.lcssa = phi i32 [ 0, %do.end149.for.end164_crit_edge ], [ 0, %for.cond150.for.end164_crit_edge ], [ 1, %for.cond150.1.for.end164_crit_edge ], [ 2, %for.cond150.2.for.end164_crit_edge ], [ 3, %for.cond150.3.for.end164_crit_edge ], [ 4, %for.cond150.4.for.end164_crit_edge ], [ 5, %for.cond150.5.for.end164_crit_edge ], [ 6, %for.cond150.6.for.end164_crit_edge ], [ 7, %for.cond150.7.for.end164_crit_edge ], [ 8, %for.cond150.8.for.end164_crit_edge ], [ 9, %for.cond150.9.for.end164_crit_edge ], [ 10, %for.cond150.10.for.end164_crit_edge ], [ 11, %for.cond150.11.for.end164_crit_edge ], [ 12, %for.cond150.12.for.end164_crit_edge ], [ 13, %for.cond150.13.for.end164_crit_edge ], [ %spec.select, %for.cond150.14 ]
  %shl165 = shl nuw nsw i32 %best.2.lcssa, 4
  %83 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id, align 4
  %arrayidx169 = getelementptr %struct.wm8995_priv, ptr %5, i32 0, i32 3, i32 %84
  %85 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx169, align 4
  %mul170 = mul i32 %86, 10
  %arrayidx171 = getelementptr [16 x i32], ptr @bclk_divs, i32 0, i32 %best.2.lcssa
  %87 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx171, align 4
  %div172 = sdiv i32 %mul170, %88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_hw_params.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_hw_params, %if.then185)) #8
          to label %do.end190 [label %if.then185], !srcloc !545

if.then185:                                       ; preds = %for.end164
  call void @__sanitizer_cov_trace_pc() #10
  %dev186 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %89 = ptrtoint ptr %dev186 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev186, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_hw_params.__UNIQUE_ID_ddebug310, ptr noundef %90, ptr noundef nonnull @.str.241, i32 noundef %88, i32 noundef %div172) #8
  br label %do.end190

do.end190:                                        ; preds = %if.then185, %for.end164
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i, align 4
  %div192 = udiv i32 %div172, %92
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_hw_params.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_hw_params, %if.then205)) #8
          to label %do.end210 [label %if.then205], !srcloc !545

if.then205:                                       ; preds = %do.end190
  call void @__sanitizer_cov_trace_pc() #10
  %dev206 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %93 = ptrtoint ptr %dev206 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev206, align 4
  %div207 = sdiv i32 %div172, %div192
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8995_hw_params.__UNIQUE_ID_ddebug311, ptr noundef %94, ptr noundef nonnull @.str.242, i32 noundef %div192, i32 noundef %div207) #8
  br label %do.end210

do.end210:                                        ; preds = %if.then205, %do.end190
  %call211 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %aif1_reg.0, i32 noundef 96, i32 noundef %switch.load) #8
  %call212 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %bclk_reg.0, i32 noundef 240, i32 noundef %shl165) #8
  %call213 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %lrclk_reg.0, i32 noundef 2047, i32 noundef %div192) #8
  %call214 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %rate_reg.0, i32 noundef 255, i32 noundef %or129) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end210, %do.end56, %params_width.exit327, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %params_width.exit327 ], [ -22, %do.end56 ], [ 0, %do.end210 ], [ -22, %entry.cleanup_crit_edge ], [ %call30, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm8995_get_fll_config(ptr nocapture noundef %fll, i32 noundef %freq_in, i32 noundef %freq_out) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_get_fll_config, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !545

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wm8995_get_fll_config.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.220, i32 noundef %freq_in, i32 noundef %freq_out) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %clk_ref_div = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 3
  %0 = ptrtoint ptr %clk_ref_div to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %clk_ref_div, align 2
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.end
  %freq_in.addr.0 = phi i32 [ %freq_in, %do.end ], [ %div524528, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500000, i32 %freq_in.addr.0)
  %cmp = icmp sgt i32 %freq_in.addr.0, 13500000
  br i1 %cmp, label %while.body, label %do.body9

while.body:                                       ; preds = %while.cond
  %1 = ptrtoint ptr %clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %clk_ref_div, align 2
  %inc = add i16 %2, 1
  store i16 %inc, ptr %clk_ref_div, align 2
  %div524528 = lshr i32 %freq_in.addr.0, 1
  %cmp5 = icmp ugt i16 %inc, 3
  br i1 %cmp5, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body9:                                         ; preds = %while.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_get_fll_config, %if.then21)) #8
          to label %do.end26 [label %if.then21], !srcloc !545

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %clk_ref_div to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %clk_ref_div, align 2
  %conv23 = zext i16 %4 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wm8995_get_fll_config.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.221, i32 noundef %conv23, i32 noundef %freq_in.addr.0) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then21, %do.body9
  %5 = ptrtoint ptr %fll to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 3, ptr %fll, align 2
  br label %while.cond27

while.cond27:                                     ; preds = %while.body32.while.cond27_crit_edge, %do.end26
  %inc34533 = phi i16 [ %inc34, %while.body32.while.cond27_crit_edge ], [ 3, %do.end26 ]
  %narrow = add nuw nsw i16 %inc34533, 1
  %add = zext i16 %narrow to i32
  %mul = mul i32 %add, %freq_out
  call void @__sanitizer_cov_trace_const_cmp4(i32 90000000, i32 %mul)
  %cmp30 = icmp slt i32 %mul, 90000000
  br i1 %cmp30, label %while.body32, label %while.end41

while.body32:                                     ; preds = %while.cond27
  %inc34 = add nuw nsw i16 %inc34533, 1
  %6 = ptrtoint ptr %fll to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %inc34, ptr %fll, align 2
  %cmp37 = icmp ugt i16 %inc34533, 62
  br i1 %cmp37, label %while.body32.cleanup_crit_edge, label %while.body32.while.cond27_crit_edge

while.body32.while.cond27_crit_edge:              ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond27

while.body32.cleanup_crit_edge:                   ; preds = %while.body32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.end41:                                      ; preds = %while.cond27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_get_fll_config, %if.then58)) #8
          to label %do.end63 [label %if.then58], !srcloc !545

if.then58:                                        ; preds = %while.end41
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %fll to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fll, align 2
  %conv60 = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wm8995_get_fll_config.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.222, i32 noundef %conv60, i32 noundef %mul) #8
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %while.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %freq_in.addr.0)
  %cmp64 = icmp sgt i32 %freq_in.addr.0, 1000000
  br i1 %cmp64, label %if.then66, label %if.else

if.then66:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  %fll_fratio = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 4
  %9 = ptrtoint ptr %fll_fratio to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %fll_fratio, align 2
  br label %do.body91

if.else:                                          ; preds = %do.end63
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %freq_in.addr.0)
  %cmp67 = icmp sgt i32 %freq_in.addr.0, 256000
  br i1 %cmp67, label %if.then69, label %if.else72

if.then69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %fll_fratio70 = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 4
  %10 = ptrtoint ptr %fll_fratio70 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %fll_fratio70, align 2
  %mul71 = shl nuw nsw i32 %freq_in.addr.0, 1
  br label %do.body91

if.else72:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %freq_in.addr.0)
  %cmp73 = icmp sgt i32 %freq_in.addr.0, 128000
  br i1 %cmp73, label %if.then75, label %if.else78

if.then75:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #10
  %fll_fratio76 = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 4
  %11 = ptrtoint ptr %fll_fratio76 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %fll_fratio76, align 2
  %mul77 = shl nuw nsw i32 %freq_in.addr.0, 2
  br label %do.body91

if.else78:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %freq_in.addr.0)
  %cmp79 = icmp sgt i32 %freq_in.addr.0, 64000
  %fll_fratio82 = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 4
  br i1 %cmp79, label %if.then81, label %if.else84

if.then81:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %fll_fratio82 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 3, ptr %fll_fratio82, align 2
  %mul83 = shl nuw nsw i32 %freq_in.addr.0, 3
  br label %do.body91

if.else84:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %fll_fratio82 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 4, ptr %fll_fratio82, align 2
  %mul86 = shl i32 %freq_in.addr.0, 4
  br label %do.body91

do.body91:                                        ; preds = %if.else84, %if.then81, %if.then75, %if.then69, %if.then66
  %freq_in.addr.1 = phi i32 [ %freq_in.addr.0, %if.then66 ], [ %mul71, %if.then69 ], [ %mul77, %if.then75 ], [ %mul83, %if.then81 ], [ %mul86, %if.else84 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_get_fll_config, %if.then103)) #8
          to label %do.end108 [label %if.then103], !srcloc !545

if.then103:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #10
  %fll_fratio104 = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 4
  %14 = ptrtoint ptr %fll_fratio104 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %fll_fratio104, align 2
  %conv105 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wm8995_get_fll_config.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.223, i32 noundef %conv105, i32 noundef %freq_in.addr.1) #8
  br label %do.end108

do.end108:                                        ; preds = %if.then103, %do.body91
  %mul.frozen = freeze i32 %mul
  %freq_in.addr.1.frozen = freeze i32 %freq_in.addr.1
  %div109 = sdiv i32 %mul.frozen, %freq_in.addr.1.frozen
  %conv110 = trunc i32 %div109 to i16
  %n = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv110, ptr %n, align 2
  %17 = mul i32 %div109, %freq_in.addr.1.frozen
  %rem.decomposed = sub i32 %mul.frozen, %17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_get_fll_config, %if.then123)) #8
          to label %do.end126 [label %if.then123], !srcloc !545

if.then123:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wm8995_get_fll_config.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.224, i32 noundef %rem.decomposed) #8
  br label %do.end126

do.end126:                                        ; preds = %if.then123, %do.end108
  %conv127 = zext i32 %rem.decomposed to i64
  %mul128 = mul nuw nsw i64 %conv127, 655360
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul128)
  %cmp305 = icmp ult i64 %mul128, 4294967296
  br i1 %cmp305, label %if.then313, label %if.else319, !prof !547

if.then313:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #10
  %conv314 = trunc i64 %mul128 to i32
  %div317 = udiv i32 %conv314, %freq_in.addr.1
  br label %if.end323

if.else319:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #10
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %freq_in.addr.1, i64 %mul128) #13, !srcloc !548
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %extract.t526 = trunc i64 %asmresult1.i to i32
  br label %if.end323

if.end323:                                        ; preds = %if.else319, %if.then313
  %Kpart.0.off0 = phi i32 [ %div317, %if.then313 ], [ %extract.t526, %if.else319 ]
  %rem327 = urem i32 %Kpart.0.off0, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem327)
  %cmp328 = icmp ugt i32 %rem327, 4
  %add331 = add i32 %Kpart.0.off0, 5
  %spec.select = select i1 %cmp328, i32 %add331, i32 %Kpart.0.off0
  %div333 = udiv i32 %spec.select, 10
  %conv334 = trunc i32 %div333 to i16
  %k = getelementptr inbounds %struct.fll_div, ptr %fll, i32 0, i32 2
  %19 = ptrtoint ptr %k to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv334, ptr %k, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8995_get_fll_config, %if.then347)) #8
          to label %cleanup [label %if.then347], !srcloc !545

if.then347:                                       ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %n to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %n, align 2
  %conv349 = zext i16 %21 to i32
  %22 = ptrtoint ptr %k to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %k, align 2
  %conv351 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wm8995_get_fll_config.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.225, i32 noundef %conv349, i32 noundef %conv351) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then347, %if.end323, %while.body32.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then347 ], [ 0, %if.end323 ], [ -22, %while.body32.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8995_spi_probe(ptr noundef %spi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 272, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @wm8995_regmap, ptr noundef nonnull @wm8995_spi_probe._key, ptr noundef nonnull @.str.243) #8
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %2) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 @devm_snd_soc_register_component(ptr noundef %spi, ptr noundef nonnull @soc_component_dev_wm8995, ptr noundef nonnull @wm8995_dai, i32 noundef 3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %call10, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 305)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 305)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !254, !255, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !341, !342, !344, !345, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !377, !378, !379, !381, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !395, !397, !398, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !420, !421, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !443, !444, !446, !447, !449, !450, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !466, !467, !469, !470, !472, !473, !475, !476, !478, !479, !480, !481, !483, !484, !485, !487, !488, !489, !491, !492, !494, !495, !496, !498, !499, !500, !502, !503, !505, !506, !508, !509, !511, !512, !514, !515, !517, !519, !521, !523, !525, !527, !529, !531, !532, !534, !535}
!llvm.module.flags = !{!536, !537, !538, !539, !540, !541, !542, !543}
!llvm.ident = !{!544}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8995__322_2299_wm8995_modinit6, !1, !"__initcall__kmod_snd_soc_wm8995__322_2299_wm8995_modinit6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8995.c", i32 2299, i32 1}
!2 = !{ptr @__exitcall_wm8995_exit, !3, !"__exitcall_wm8995_exit", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/wm8995.c", i32 2311, i32 1}
!4 = !{ptr @__UNIQUE_ID_description323, !5, !"__UNIQUE_ID_description323", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/wm8995.c", i32 2313, i32 1}
!6 = !{ptr @__UNIQUE_ID_author324, !7, !"__UNIQUE_ID_author324", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/wm8995.c", i32 2314, i32 1}
!8 = !{ptr @__UNIQUE_ID_file325, !9, !"__UNIQUE_ID_file325", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/wm8995.c", i32 2315, i32 1}
!10 = !{ptr @__UNIQUE_ID_license326, !9, !"__UNIQUE_ID_license326", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/wm8995.c", i32 2285, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wm8995_modinit._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @wm8995_modinit._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm8995.c", i32 2292, i32 3}
!19 = !{ptr @wm8995_modinit._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @wm8995_modinit._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/wm8995.c", i32 2271, i32 11}
!23 = !{ptr @wm8995_i2c_driver, !24, !"wm8995_i2c_driver", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/wm8995.c", i32 2269, i32 26}
!25 = !{ptr @wm8995_i2c_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wm8995.c", i32 2246, i32 19}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/wm8995.c", i32 2249, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wm8995_i2c_probe._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @wm8995_i2c_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wm8995.c", i32 2257, i32 3}
!37 = !{ptr @wm8995_i2c_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @wm8995_i2c_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @wm8995_regmap, !40, !"wm8995_regmap", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/wm8995.c", i32 2188, i32 35}
!41 = !{ptr @wm8995_reg_defaults, !42, !"wm8995_reg_defaults", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wm8995.c", i32 44, i32 33}
!43 = !{ptr @soc_component_dev_wm8995, !44, !"soc_component_dev_wm8995", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wm8995.c", i32 2174, i32 46}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/wm8995.c", i32 443, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wm8995.c", i32 445, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/wm8995.c", i32 448, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/wm8995.c", i32 450, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/wm8995.c", i32 453, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/wm8995.c", i32 455, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wm8995.c", i32 457, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/wm8995.c", i32 460, i32 2}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/wm8995.c", i32 463, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/wm8995.c", i32 466, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/wm8995.c", i32 467, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/wm8995.c", i32 469, i32 2}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/wm8995.c", i32 470, i32 2}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/wm8995.c", i32 472, i32 2}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wm8995.c", i32 474, i32 2}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/wm8995.c", i32 477, i32 2}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wm8995.c", i32 479, i32 2}
!79 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wm8995.c", i32 481, i32 2}
!81 = !{ptr @wm8995_snd_controls, !82, !"wm8995_snd_controls", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wm8995.c", i32 442, i32 38}
!83 = !{ptr @digital_tlv, !84, !"digital_tlv", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm8995.c", i32 414, i32 14}
!85 = !{ptr @in1lr_pga_tlv, !86, !"in1lr_pga_tlv", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wm8995.c", i32 415, i32 14}
!87 = !{ptr @in1l_boost_tlv, !88, !"in1l_boost_tlv", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm8995.c", i32 416, i32 14}
!89 = !{ptr @in1l_enum, !90, !"in1l_enum", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wm8995.c", i32 423, i32 8}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/wm8995.c", i32 420, i32 2}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/wm8995.c", i32 420, i32 18}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm8995.c", i32 420, i32 40}
!97 = !{ptr @in1l_text, !98, !"in1l_text", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8995.c", i32 419, i32 20}
!99 = !{ptr @in1r_enum, !100, !"in1r_enum", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm8995.c", i32 430, i32 8}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm8995.c", i32 427, i32 18}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm8995.c", i32 427, i32 40}
!105 = !{ptr @in1r_text, !106, !"in1r_text", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm8995.c", i32 426, i32 20}
!107 = !{ptr @dmic_src1_enum, !108, !"dmic_src1_enum", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm8995.c", i32 437, i32 8}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm8995.c", i32 434, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/wm8995.c", i32 434, i32 14}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/wm8995.c", i32 434, i32 26}
!115 = !{ptr @dmic_src_text, !116, !"dmic_src_text", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/wm8995.c", i32 433, i32 20}
!117 = !{ptr @dmic_src2_enum, !118, !"dmic_src2_enum", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/wm8995.c", i32 439, i32 8}
!119 = !{ptr @sidetone_tlv, !120, !"sidetone_tlv", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/wm8995.c", i32 417, i32 14}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/wm8995.c", i32 910, i32 2}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/wm8995.c", i32 911, i32 2}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/wm8995.c", i32 913, i32 2}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/wm8995.c", i32 914, i32 2}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/wm8995.c", i32 916, i32 2}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/wm8995.c", i32 918, i32 2}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm8995.c", i32 921, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/wm8995.c", i32 923, i32 2}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm8995.c", i32 926, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wm8995.c", i32 927, i32 2}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/wm8995.c", i32 928, i32 2}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/wm8995.c", i32 929, i32 2}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/wm8995.c", i32 930, i32 2}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/wm8995.c", i32 931, i32 2}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/wm8995.c", i32 934, i32 2}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wm8995.c", i32 936, i32 2}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm8995.c", i32 938, i32 2}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8995.c", i32 940, i32 2}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8995.c", i32 942, i32 2}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8995.c", i32 945, i32 2}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8995.c", i32 946, i32 2}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/wm8995.c", i32 948, i32 2}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm8995.c", i32 949, i32 2}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8995.c", i32 950, i32 2}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8995.c", i32 951, i32 2}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8995.c", i32 953, i32 2}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm8995.c", i32 954, i32 2}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8995.c", i32 956, i32 2}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8995.c", i32 958, i32 2}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/wm8995.c", i32 960, i32 2}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/wm8995.c", i32 962, i32 2}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/wm8995.c", i32 965, i32 2}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wm8995.c", i32 967, i32 2}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/wm8995.c", i32 969, i32 2}
!190 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/wm8995.c", i32 972, i32 2}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/wm8995.c", i32 974, i32 2}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/wm8995.c", i32 977, i32 2}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/wm8995.c", i32 979, i32 2}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/wm8995.c", i32 982, i32 2}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/wm8995.c", i32 983, i32 2}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/wm8995.c", i32 984, i32 2}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/wm8995.c", i32 985, i32 2}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/wm8995.c", i32 987, i32 2}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/wm8995.c", i32 989, i32 2}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/wm8995.c", i32 992, i32 2}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/wm8995.c", i32 993, i32 2}
!215 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/wm8995.c", i32 995, i32 2}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/wm8995.c", i32 998, i32 2}
!219 = !{ptr @.str.104, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/wm8995.c", i32 1001, i32 2}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/wm8995.c", i32 1003, i32 2}
!223 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/wm8995.c", i32 1005, i32 2}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/wm8995.c", i32 1007, i32 2}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/wm8995.c", i32 1010, i32 2}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/wm8995.c", i32 1012, i32 2}
!231 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/wm8995.c", i32 1013, i32 2}
!233 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/wm8995.c", i32 1014, i32 2}
!235 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/wm8995.c", i32 1015, i32 2}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/wm8995.c", i32 1016, i32 2}
!239 = !{ptr @.str.114, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/wm8995.c", i32 1017, i32 2}
!241 = !{ptr @wm8995_dapm_widgets, !242, !"wm8995_dapm_widgets", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/wm8995.c", i32 909, i32 41}
!243 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/wm8995.c", i32 869, i32 2}
!245 = !{ptr @in1l_pga, !246, !"in1l_pga", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/wm8995.c", i32 868, i32 38}
!247 = !{ptr @.str.118, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/wm8995.c", i32 872, i32 2}
!249 = !{ptr @in1r_pga, !250, !"in1r_pga", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/wm8995.c", i32 871, i32 38}
!251 = !{ptr @.str.120, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/wm8995.c", i32 707, i32 3}
!253 = !{ptr @.str.121, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @configure_aif_clock.__UNIQUE_ID_ddebug304, !252, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!256 = !{ptr @adcl_mux, !257, !"adcl_mux", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/wm8995.c", i32 881, i32 38}
!258 = !{ptr @adc_enum, !259, !"adc_enum", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/wm8995.c", i32 879, i32 8}
!260 = !{ptr @.str.123, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/wm8995.c", i32 875, i32 2}
!262 = !{ptr @.str.124, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/wm8995.c", i32 876, i32 2}
!264 = !{ptr @adc_mux_text, !265, !"adc_mux_text", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/wm8995.c", i32 874, i32 20}
!266 = !{ptr @adcr_mux, !267, !"adcr_mux", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/wm8995.c", i32 884, i32 38}
!268 = !{ptr @.str.125, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/wm8995.c", i32 789, i32 2}
!270 = !{ptr @.str.127, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/wm8995.c", i32 791, i32 2}
!272 = !{ptr @aif1adc1l_mix, !273, !"aif1adc1l_mix", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/wm8995.c", i32 788, i32 38}
!274 = !{ptr @aif1adc1r_mix, !275, !"aif1adc1r_mix", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/wm8995.c", i32 795, i32 38}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/wm8995.c", i32 803, i32 2}
!278 = !{ptr @aif1adc2l_mix, !279, !"aif1adc2l_mix", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/wm8995.c", i32 802, i32 38}
!280 = !{ptr @aif1adc2r_mix, !281, !"aif1adc2r_mix", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/wm8995.c", i32 809, i32 38}
!282 = !{ptr @.str.136, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/wm8995.c", i32 843, i32 2}
!284 = !{ptr @.str.138, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/wm8995.c", i32 845, i32 2}
!286 = !{ptr @.str.141, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/wm8995.c", i32 849, i32 2}
!288 = !{ptr @.str.143, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/wm8995.c", i32 851, i32 2}
!290 = !{ptr @aif2dac2l_mix, !291, !"aif2dac2l_mix", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/wm8995.c", i32 842, i32 38}
!292 = !{ptr @aif2dac2r_mix, !293, !"aif2dac2r_mix", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/wm8995.c", i32 855, i32 38}
!294 = !{ptr @dac1l_mix, !295, !"dac1l_mix", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/wm8995.c", i32 816, i32 38}
!296 = !{ptr @.str.155, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/wm8995.c", i32 495, i32 3}
!298 = !{ptr @.str.156, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug296, !297, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!300 = !{ptr @.str.157, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/wm8995.c", i32 499, i32 3}
!302 = !{ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug297, !301, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!303 = !{ptr @.str.158, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/wm8995.c", i32 503, i32 3}
!305 = !{ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug298, !304, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!306 = !{ptr @.str.159, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/wm8995.c", i32 507, i32 3}
!308 = !{ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug299, !307, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!309 = !{ptr @.str.160, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/wm8995.c", i32 514, i32 3}
!311 = !{ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug300, !310, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!312 = !{ptr @.str.161, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/wm8995.c", i32 519, i32 3}
!314 = !{ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug301, !313, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!315 = !{ptr @.str.162, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/wm8995.c", i32 525, i32 3}
!317 = !{ptr @wm8995_update_class_w.__UNIQUE_ID_ddebug302, !316, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!318 = !{ptr @dac1r_mix, !319, !"dac1r_mix", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/wm8995.c", i32 829, i32 38}
!320 = !{ptr @.str.168, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/wm8995.c", i32 781, i32 2}
!322 = !{ptr @sidetone1_mux, !323, !"sidetone1_mux", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/wm8995.c", i32 780, i32 38}
!324 = !{ptr @sidetone1_enum, !325, !"sidetone1_enum", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/wm8995.c", i32 778, i32 8}
!326 = !{ptr @.str.169, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/wm8995.c", i32 775, i32 2}
!328 = !{ptr @.str.170, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/wm8995.c", i32 775, i32 15}
!330 = !{ptr @sidetone_text, !331, !"sidetone_text", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/wm8995.c", i32 774, i32 20}
!332 = !{ptr @.str.171, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/wm8995.c", i32 786, i32 2}
!334 = !{ptr @sidetone2_mux, !335, !"sidetone2_mux", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/wm8995.c", i32 785, i32 38}
!336 = !{ptr @sidetone2_enum, !337, !"sidetone2_enum", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/wm8995.c", i32 783, i32 8}
!338 = !{ptr @.str.172, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/wm8995.c", i32 593, i32 2}
!340 = !{ptr @.str.173, !339, !"<string literal>", i1 false, i1 false}
!341 = !{ptr @dc_servo_cmd.__UNIQUE_ID_ddebug303, !339, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!342 = !{ptr @.str.174, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/wm8995.c", i32 604, i32 2}
!344 = !{ptr @dc_servo_cmd._entry, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @dc_servo_cmd._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.175, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/wm8995.c", i32 901, i32 2}
!348 = !{ptr @spk1l_mux, !349, !"spk1l_mux", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/wm8995.c", i32 900, i32 38}
!350 = !{ptr @spk1l_src_enum, !351, !"spk1l_src_enum", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/wm8995.c", i32 891, i32 8}
!352 = !{ptr @spk_src_text, !353, !"spk_src_text", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/wm8995.c", i32 887, i32 20}
!354 = !{ptr @.str.176, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/wm8995.c", i32 903, i32 2}
!356 = !{ptr @spk1r_mux, !357, !"spk1r_mux", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/wm8995.c", i32 902, i32 38}
!358 = !{ptr @spk1r_src_enum, !359, !"spk1r_src_enum", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/wm8995.c", i32 893, i32 8}
!360 = !{ptr @.str.177, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/wm8995.c", i32 905, i32 2}
!362 = !{ptr @spk2l_mux, !363, !"spk2l_mux", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/wm8995.c", i32 904, i32 38}
!364 = !{ptr @spk2l_src_enum, !365, !"spk2l_src_enum", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/wm8995.c", i32 895, i32 8}
!366 = !{ptr @.str.178, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/wm8995.c", i32 907, i32 2}
!368 = !{ptr @spk2r_mux, !369, !"spk2r_mux", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/wm8995.c", i32 906, i32 38}
!370 = !{ptr @spk2r_src_enum, !371, !"spk2r_src_enum", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/wm8995.c", i32 897, i32 8}
!372 = !{ptr @wm8995_intercon, !373, !"wm8995_intercon", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/wm8995.c", i32 1020, i32 40}
!374 = !{ptr @.str.179, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/wm8995.c", i32 2011, i32 3}
!376 = !{ptr @.str.180, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @wm8995_probe._entry, !375, !"_entry", i1 false, i1 false}
!378 = !{ptr @wm8995_probe._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.182, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/wm8995.c", i32 2030, i32 4}
!381 = !{ptr @wm8995_probe._entry.181, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @wm8995_probe._entry_ptr.183, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.185, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/wm8995.c", i32 2039, i32 3}
!385 = !{ptr @wm8995_probe._entry.184, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @wm8995_probe._entry_ptr.186, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.188, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/wm8995.c", i32 2045, i32 3}
!389 = !{ptr @wm8995_probe._entry.187, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @wm8995_probe._entry_ptr.189, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.191, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/wm8995.c", i32 2050, i32 3}
!393 = !{ptr @wm8995_probe._entry.190, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @wm8995_probe._entry_ptr.192, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.194, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/wm8995.c", i32 2057, i32 3}
!397 = !{ptr @wm8995_probe._entry.193, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @wm8995_probe._entry_ptr.195, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.196, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/wm8995.c", i32 34, i32 2}
!401 = !{ptr @.str.197, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/wm8995.c", i32 35, i32 2}
!403 = !{ptr @.str.198, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/wm8995.c", i32 36, i32 2}
!405 = !{ptr @.str.199, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/wm8995.c", i32 37, i32 2}
!407 = !{ptr @.str.200, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/wm8995.c", i32 38, i32 2}
!409 = !{ptr @.str.201, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/wm8995.c", i32 39, i32 2}
!411 = !{ptr @.str.202, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/wm8995.c", i32 40, i32 2}
!413 = !{ptr @.str.203, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/wm8995.c", i32 41, i32 2}
!415 = distinct !{null, !416, !"wm8995_supply_names", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/wm8995.c", i32 33, i32 20}
!417 = !{ptr @.str.204, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/wm8995.c", i32 1975, i32 5}
!419 = !{ptr @.str.205, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @wm8995_set_bias_level._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @wm8995_set_bias_level._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.206, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/wm8995.c", i32 2119, i32 11}
!424 = !{ptr @.str.207, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/wm8995.c", i32 2137, i32 11}
!426 = !{ptr @.str.208, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/wm8995.c", i32 2146, i32 19}
!428 = !{ptr @.str.209, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/wm8995.c", i32 2139, i32 19}
!430 = !{ptr @.str.210, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/wm8995.c", i32 2155, i32 11}
!432 = !{ptr @.str.211, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/wm8995.c", i32 2164, i32 19}
!434 = !{ptr @.str.212, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/wm8995.c", i32 2157, i32 19}
!436 = !{ptr @wm8995_dai, !437, !"wm8995_dai", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/wm8995.c", i32 2117, i32 34}
!438 = !{ptr @wm8995_aif1_dai_ops, !439, !"wm8995_aif1_dai_ops", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/wm8995.c", i32 2093, i32 37}
!440 = !{ptr @.str.213, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/wm8995.c", i32 1927, i32 3}
!442 = !{ptr @.str.214, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug318, !441, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!444 = !{ptr @.str.215, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/wm8995.c", i32 1933, i32 3}
!446 = !{ptr @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug319, !445, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!447 = !{ptr @.str.216, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/wm8995.c", i32 1938, i32 3}
!449 = !{ptr @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug320, !448, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!450 = !{ptr @.str.217, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/wm8995.c", i32 1942, i32 3}
!452 = !{ptr @wm8995_set_dai_sysclk.__UNIQUE_ID_ddebug321, !451, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!453 = !{ptr @.str.218, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/wm8995.c", i32 1946, i32 3}
!455 = !{ptr @wm8995_set_dai_sysclk._entry, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @wm8995_set_dai_sysclk._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.219, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/wm8995.c", i32 1729, i32 2}
!459 = !{ptr @.str.220, !458, !"<string literal>", i1 false, i1 false}
!460 = !{ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug312, !458, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!461 = !{ptr @.str.221, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/wm8995.c", i32 1740, i32 2}
!463 = !{ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug313, !462, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!464 = !{ptr @.str.222, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/wm8995.c", i32 1750, i32 2}
!466 = !{ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug314, !465, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!467 = !{ptr @.str.223, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/wm8995.c", i32 1767, i32 2}
!469 = !{ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug315, !468, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!470 = !{ptr @.str.224, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/wm8995.c", i32 1774, i32 2}
!472 = !{ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug316, !471, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!473 = !{ptr @.str.225, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/wm8995.c", i32 1789, i32 2}
!475 = !{ptr @wm8995_get_fll_config.__UNIQUE_ID_ddebug317, !474, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!476 = !{ptr @.str.226, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/wm8995.c", i32 1457, i32 3}
!478 = !{ptr @.str.227, !477, !"<string literal>", i1 false, i1 false}
!479 = !{ptr @wm8995_set_dai_fmt._entry, !477, !"_entry", i1 false, i1 false}
!480 = !{ptr @wm8995_set_dai_fmt._entry_ptr, !477, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.229, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/wm8995.c", i32 1478, i32 3}
!483 = !{ptr @wm8995_set_dai_fmt._entry.228, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @wm8995_set_dai_fmt._entry_ptr.230, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.231, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/wm8995.c", i32 1571, i32 4}
!487 = !{ptr @.str.232, !486, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @wm8995_hw_params.__UNIQUE_ID_ddebug305, !486, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!489 = !{ptr @.str.233, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/wm8995.c", i32 1583, i32 4}
!491 = !{ptr @wm8995_hw_params.__UNIQUE_ID_ddebug306, !490, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!492 = !{ptr @.str.234, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/wm8995.c", i32 1608, i32 3}
!494 = !{ptr @wm8995_hw_params._entry, !493, !"_entry", i1 false, i1 false}
!495 = !{ptr @wm8995_hw_params._entry_ptr, !493, !"_entry_ptr", i1 false, i1 false}
!496 = !{ptr @.str.236, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/wm8995.c", i32 1618, i32 3}
!498 = !{ptr @wm8995_hw_params._entry.235, !497, !"_entry", i1 false, i1 false}
!499 = !{ptr @wm8995_hw_params._entry_ptr.237, !497, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.238, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/wm8995.c", i32 1624, i32 2}
!502 = !{ptr @wm8995_hw_params.__UNIQUE_ID_ddebug307, !501, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!503 = !{ptr @.str.239, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/wm8995.c", i32 1625, i32 2}
!505 = !{ptr @wm8995_hw_params.__UNIQUE_ID_ddebug308, !504, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!506 = !{ptr @.str.240, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/wm8995.c", i32 1642, i32 2}
!508 = !{ptr @wm8995_hw_params.__UNIQUE_ID_ddebug309, !507, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!509 = !{ptr @.str.241, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/wm8995.c", i32 1662, i32 2}
!511 = !{ptr @wm8995_hw_params.__UNIQUE_ID_ddebug310, !510, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!512 = !{ptr @.str.242, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/wm8995.c", i32 1666, i32 2}
!514 = !{ptr @wm8995_hw_params.__UNIQUE_ID_ddebug311, !513, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!515 = !{ptr @srs, !516, !"srs", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/wm8995.c", i32 1529, i32 18}
!517 = !{ptr @fs_ratios, !518, !"fs_ratios", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/wm8995.c", i32 1534, i32 18}
!519 = !{ptr @bclk_divs, !520, !"bclk_divs", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/wm8995.c", i32 1539, i32 18}
!521 = !{ptr @wm8995_aif2_dai_ops, !522, !"wm8995_aif2_dai_ops", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/wm8995.c", i32 2103, i32 37}
!523 = !{ptr @wm8995_aif3_dai_ops, !524, !"wm8995_aif3_dai_ops", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/wm8995.c", i32 2113, i32 37}
!525 = !{ptr @wm8995_i2c_id, !526, !"wm8995_i2c_id", i1 false, i1 false}
!526 = !{!"../sound/soc/codecs/wm8995.c", i32 2262, i32 35}
!527 = !{ptr @wm8995_spi_driver, !528, !"wm8995_spi_driver", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/wm8995.c", i32 2225, i32 26}
!529 = !{ptr @wm8995_spi_probe._key, !530, !"_key", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/wm8995.c", i32 2212, i32 19}
!531 = !{ptr @.str.243, !530, !"<string literal>", i1 false, i1 false}
!532 = !{ptr @.str.244, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/wm8995.c", i32 2215, i32 3}
!534 = !{ptr @wm8995_spi_probe._entry, !533, !"_entry", i1 false, i1 false}
!535 = !{ptr @wm8995_spi_probe._entry_ptr, !533, !"_entry_ptr", i1 false, i1 false}
!536 = !{i32 1, !"wchar_size", i32 2}
!537 = !{i32 1, !"min_enum_size", i32 4}
!538 = !{i32 8, !"branch-target-enforcement", i32 0}
!539 = !{i32 8, !"sign-return-address", i32 0}
!540 = !{i32 8, !"sign-return-address-all", i32 0}
!541 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!542 = !{i32 7, !"uwtable", i32 1}
!543 = !{i32 7, !"frame-pointer", i32 2}
!544 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!545 = !{i64 2149014240, i64 2149014245, i64 2149014258, i64 2149014302, i64 2149014336, i64 2149014357}
!546 = !{i32 0, i32 33}
!547 = !{!"branch_weights", i32 2000, i32 1}
!548 = !{i64 2148247287, i64 2148247567, i64 2148247901, i64 2148248235}
