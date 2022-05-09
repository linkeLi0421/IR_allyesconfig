; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tlv320adc3xxx.c_pt.bc'
source_filename = "../sound/soc/codecs/tlv320adc3xxx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.108, ptr }
%union.anon.108 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.100, i32 }
%union.anon.100 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.adc3xxx_rate_divs = type { i32, i32, i8, i8, i8, i16, i8, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.adc3xxx = type { ptr, i32, ptr, ptr, ptr, i32, i32, [2 x i32], [2 x i32], i32, i8, i32, %struct.gpio_chip }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tlv320adc3xxx__297_1313_adc3xxx_i2c_driver_init6 = internal global ptr @adc3xxx_i2c_driver_init, section ".initcall6.init", align 4
@adc3xxx_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adc3xxx_i2c_probe, ptr @adc3xxx_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tlv320adc3xxx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adc3xxx_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adc3xxx_i2c_driver_exit = internal global ptr @adc3xxx_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [66 x i8] c"snd_soc_tlv320adc3xxx.description=ASoC TLV320ADC3xxx codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [60 x i8] c"snd_soc_tlv320adc3xxx.author=shahina.s@mistralsolutions.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [66 x i8] c"snd_soc_tlv320adc3xxx.file=sound/soc/codecs/snd-soc-tlv320adc3xxx\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [37 x i8] c"snd_soc_tlv320adc3xxx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tlv320adc3xxx-codec\00", [44 x i8] zeroinitializer }, align 32
@tlv320adc3xxx_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320adc3001\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320adc3101\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@adc3xxx_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tlv320adc3001\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tlv320adc3101\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request rst_pin\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to acquire MCLK\0A\00", [40 x i8] zeroinitializer }, align 32
@adc3xxx_i2c_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 1, i8 51, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_tlv320adc3xxx\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adc3xxx_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/codecs/tlv320adc3xxx.c\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enabled MCLK, freq %lu Hz\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,dmdin-gpio1\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,dmclk-gpio2\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,micbias1-vg\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,micbias2-vg\00", [17 x i8] zeroinitializer }, align 32
@adc3xxx_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adc3xxx_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @adc3xxx_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 256, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adc3xxx_defaults, i32 192, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @adc3xxx_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"tlv320adc3xxx:1246:(&adc3xxx_regmap)->lock\00", [53 x i8] zeroinitializer }, align 32
@soc_component_dev_adc3xxx = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @adc3xxx_snd_controls, i32 37, ptr @adc3xxx_dapm_widgets, i32 27, ptr @adc3xxx_intercon, i32 28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@adc3xxx_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.177, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @adc3xxx_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.144, i64 73014445060, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@adc3xxx_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1267, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register codec: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adc3xxx_i2c_probe._entry_ptr = internal global ptr @adc3xxx_i2c_probe._entry, section ".printk_index", align 4
@adc3xxx_parse_dt_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 942, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid property value for '%s'\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adc3xxx_parse_dt_gpio\00", [42 x i8] zeroinitializer }, align 32
@adc3xxx_parse_dt_gpio._entry_ptr = internal global ptr @adc3xxx_parse_dt_gpio._entry, section ".printk_index", align 4
@adc3xxx_parse_dt_gpio._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.6, i32 946, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"GPIO Input read not yet implemented\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adc3xxx_parse_dt_gpio._entry_ptr.21 = internal global ptr @adc3xxx_parse_dt_gpio._entry.18, section ".printk_index", align 4
@adc3xxx_parse_dt_micbias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.22, ptr @.str.6, i32 961, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adc3xxx_parse_dt_micbias\00", [39 x i8] zeroinitializer }, align 32
@adc3xxx_parse_dt_micbias._entry_ptr = internal global ptr @adc3xxx_parse_dt_micbias._entry, section ".printk_index", align 4
@adc3xxx_defaults = internal constant { [192 x %struct.reg_default], [384 x i8] } { [192 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 17 }, %struct.reg_default { i32 6, i32 4 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 1 }, %struct.reg_default { i32 19, i32 1 }, %struct.reg_default { i32 20, i32 128 }, %struct.reg_default { i32 21, i32 128 }, %struct.reg_default { i32 22, i32 4 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 1 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 2 }, %struct.reg_default { i32 30, i32 1 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 16 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 2 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 18 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 68 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 1 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 0 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 136 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 84, i32 0 }, %struct.reg_default { i32 85, i32 0 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 127 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 96, i32 127 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 113, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 121, i32 0 }, %struct.reg_default { i32 122, i32 0 }, %struct.reg_default { i32 123, i32 0 }, %struct.reg_default { i32 124, i32 0 }, %struct.reg_default { i32 125, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 0 }, %struct.reg_default { i32 129, i32 0 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 137, i32 0 }, %struct.reg_default { i32 138, i32 0 }, %struct.reg_default { i32 139, i32 0 }, %struct.reg_default { i32 140, i32 0 }, %struct.reg_default { i32 141, i32 0 }, %struct.reg_default { i32 142, i32 0 }, %struct.reg_default { i32 143, i32 0 }, %struct.reg_default { i32 144, i32 0 }, %struct.reg_default { i32 145, i32 0 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 0 }, %struct.reg_default { i32 150, i32 0 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 0 }, %struct.reg_default { i32 154, i32 0 }, %struct.reg_default { i32 155, i32 0 }, %struct.reg_default { i32 156, i32 0 }, %struct.reg_default { i32 157, i32 0 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 0 }, %struct.reg_default { i32 160, i32 0 }, %struct.reg_default { i32 161, i32 0 }, %struct.reg_default { i32 162, i32 0 }, %struct.reg_default { i32 163, i32 0 }, %struct.reg_default { i32 164, i32 0 }, %struct.reg_default { i32 165, i32 0 }, %struct.reg_default { i32 166, i32 0 }, %struct.reg_default { i32 167, i32 0 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 169, i32 0 }, %struct.reg_default { i32 170, i32 0 }, %struct.reg_default { i32 171, i32 0 }, %struct.reg_default { i32 172, i32 0 }, %struct.reg_default { i32 173, i32 0 }, %struct.reg_default { i32 174, i32 0 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 177, i32 0 }, %struct.reg_default { i32 178, i32 0 }, %struct.reg_default { i32 179, i32 0 }, %struct.reg_default { i32 180, i32 255 }, %struct.reg_default { i32 181, i32 0 }, %struct.reg_default { i32 182, i32 63 }, %struct.reg_default { i32 183, i32 255 }, %struct.reg_default { i32 184, i32 0 }, %struct.reg_default { i32 185, i32 63 }, %struct.reg_default { i32 186, i32 0 }, %struct.reg_default { i32 187, i32 128 }, %struct.reg_default { i32 188, i32 128 }, %struct.reg_default { i32 189, i32 0 }, %struct.reg_default { i32 190, i32 0 }, %struct.reg_default { i32 191, i32 0 }], [384 x i8] zeroinitializer }, align 32
@adc3xxx_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 256, i32 0, i32 255, i32 0, i32 0, i32 128 }], [32 x i8] zeroinitializer }, align 32
@adc3xxx_gpio_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr @adc3xxx_gpio_request, ptr null, ptr null, ptr null, ptr @adc3xxx_gpio_direction_out, ptr @adc3xxx_gpio_get, ptr null, ptr @adc3xxx_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@adc3xxx_init_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adc3xxx_init_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adc3xxx_init_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.6, i32 904, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add gpios: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adc3xxx_init_gpio\00", [46 x i8] zeroinitializer }, align 32
@adc3xxx_init_gpio._entry_ptr = internal global ptr @adc3xxx_init_gpio._entry, section ".printk_index", align 4
@adc3xxx_gpio_ctrl_reg = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 52, i32 51], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adc3xxx\00", [24 x i8] zeroinitializer }, align 32
@adc3xxx_snd_controls = internal constant { [37 x %struct.snd_kcontrol_new], [432 x i8] } { [37 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @agc_target_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @agc_thresh_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @agc_hysteresis_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @agc_max_tlv }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @left_agc_attack_mult_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @right_agc_attack_mult_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @left_agc_decay_mult_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @right_agc_decay_mult_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @adc_softstepping_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @input_attenuation_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 { ptr @adc_fine_tlv }, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @dither_dc_offset_enum to i32) }], [432 x i8] zeroinitializer }, align 32
@adc3xxx_intercon = internal constant { [28 x %struct.snd_soc_dapm_route], [368 x i8] } { [28 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.150, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.152, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.154, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.156, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.158, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.160, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr @.str.162, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.119, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.162, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.165, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.167, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.160, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.158, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.156, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.120, ptr @.str.150, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.120, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.123, ptr @.str.173, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.124, ptr @.str.175, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.125, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }], [368 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PGA Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 80, i32 80, i32 187, i32 188, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PGA Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 7, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AGC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 94, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AGC Target Level Capture Volume\00", [32 x i8] zeroinitializer }, align 32
@agc_target_tlv = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 96, i32 0, i32 0, i32 1, i32 8, i32 -2400, i32 0, i32 1, i32 3, i32 1, i32 8, i32 -2000, i32 300, i32 4, i32 6, i32 1, i32 8, i32 -1200, i32 200, i32 7, i32 7, i32 1, i32 8, i32 -550, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 86, i32 95, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AGC Noise Threshold Capture Volume\00", [61 x i8] zeroinitializer }, align 32
@agc_thresh_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 30, i32 1, i32 8, i32 -9000, i32 200, i32 31, i32 31, i32 1, i32 8, i32 0, i32 65536], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 87, i32 95, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"AGC Hysteresis Capture Volume\00", [34 x i8] zeroinitializer }, align 32
@agc_hysteresis_tlv = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 3, i32 72, i32 0, i32 1, i32 1, i32 8, i32 100, i32 100, i32 2, i32 2, i32 1, i32 8, i32 400, i32 0, i32 3, i32 3, i32 1, i32 8, i32 0, i32 65536], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 87, i32 95, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AGC Clip Stepping Capture Switch\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 87, i32 95, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AGC Maximum Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@agc_max_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 80, i32 80, i32 88, i32 96, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AGC Attack Time\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 89, i32 97, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AGC Left Attack Time Multiplier\00", [32 x i8] zeroinitializer }, align 32
@left_agc_attack_mult_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 89, i8 0, i8 0, i32 8, i32 7, ptr @multiplier_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"AGC Right Attack Time Multiplier\00", [63 x i8] zeroinitializer }, align 32
@right_agc_attack_mult_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 97, i8 0, i8 0, i32 8, i32 7, ptr @multiplier_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AGC Decay Time\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 90, i32 98, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"AGC Left Decay Time Multiplier\00", [33 x i8] zeroinitializer }, align 32
@left_agc_decay_mult_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 90, i8 0, i8 0, i32 8, i32 7, ptr @multiplier_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"AGC Right Decay Time Multiplier\00", [32 x i8] zeroinitializer }, align 32
@right_agc_decay_mult_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 98, i8 0, i8 0, i32 8, i32 7, ptr @multiplier_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AGC Noise Debounce\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 91, i32 99, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AGC Signal Debounce\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 92, i32 100, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AGC Applied Capture Volume\00", [37 x i8] zeroinitializer }, align 32
@adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -24, i32 40, i32 40, i32 93, i32 101, i32 0, i32 0, i32 6, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADC Soft Stepping\00", [46 x i8] zeroinitializer }, align 32
@adc_softstepping_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 81, i8 0, i8 0, i32 3, i32 3, ptr @adc_softstepping_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Left Input IN_1L Capture Volume\00", [32 x i8] zeroinitializer }, align 32
@input_attenuation_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Left Input IN_2L Capture Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Left Input IN_3L Capture Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Left Input IN_1R Capture Volume\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 182, i32 182, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Left Input DIF_2L_3L Capture Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Left Input DIF_1L_1R Capture Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 182, i32 182, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Left Input DIF_2R_3R Capture Volume\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 182, i32 182, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Right Input IN_1R Capture Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 183, i32 183, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Right Input IN_2R Capture Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 183, i32 183, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Right Input IN_3R Capture Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 183, i32 183, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Right Input IN_1L Capture Volume\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 185, i32 185, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Right Input DIF_2R_3R Capture Volume\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 183, i32 183, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Right Input DIF_1L_1R Capture Volume\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 185, i32 185, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Right Input DIF_2L_3L Capture Volume\00", [59 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 185, i32 185, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ADC Volume Control Capture Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -24, i32 40, i32 40, i32 83, i32 84, i32 0, i32 0, i32 6, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ADC Fine Volume Control Capture Volume\00", [57 x i8] zeroinitializer }, align 32
@adc_fine_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -40, i32 10], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 82, i32 82, i32 4, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Left ADC Unselected CM Bias Capture Switch\00", [53 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 182, i32 182, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Right ADC Unselected CM Bias Capture Switch\00", [52 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 185, i32 185, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Dither Control DC Offset\00", [39 x i8] zeroinitializer }, align 32
@dither_dc_offset_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 154, i8 4, i8 0, i32 15, i32 15, ptr @dither_dc_offset_text, ptr @dither_dc_offset_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@multiplier_text = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100], [32 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"128\00", [28 x i8] zeroinitializer }, align 32
@adc_softstepping_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.103], [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1 step\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2 step\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@dither_dc_offset_text = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], [36 x i8] zeroinitializer }, align 32
@dither_dc_offset_values = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], [36 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0mV\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"15mV\00", [27 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"30mV\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"45mV\00", [27 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"60mV\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"75mV\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"90mV\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"105mV\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-15mV\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-30mV\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-45mV\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-60mV\00", [26 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-75mV\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"-90mV\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"-105mV\00", [25 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Left Input\00", [21 x i8] zeroinitializer }, align 32
@left_input_mixer_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Right Input\00", [20 x i8] zeroinitializer }, align 32
@right_input_mixer_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.165, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.167, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.170 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right PGA\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Left DMic Input\00", [16 x i8] zeroinitializer }, align 32
@left_input_dmic_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Right DMic Input\00", [47 x i8] zeroinitializer }, align 32
@right_input_dmic_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.100 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN_1L\00", [26 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN_1R\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN_2L\00", [26 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN_2R\00", [26 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN_3L\00", [26 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IN_3R\00", [26 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DIFL_1L_1R\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DIFL_2L_3L\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DIFL_2R_3R\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DIFR_1L_1R\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DIFR_2L_3L\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DIFR_2R_3R\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMic_L\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMic_R\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF_OUT\00", [24 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PLL_CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC_CLK\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC_MOD_CLK\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BCLK\00", [27 x i8] zeroinitializer }, align 32
@adc3xxx_dapm_widgets = internal constant { [27 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1188 x i8] } { [27 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.119, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @left_input_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.120, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @right_input_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 187, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 188, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @left_input_dmic_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @right_input_dmic_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.125, ptr @.str.126, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 81, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.127, ptr @.str.128, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 81, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.143, ptr @.str.144, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @adc3xxx_pll_delay, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 18, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 19, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 30, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1188 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IN_1L Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IN_2L Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IN_3L Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DIF_2L_3L Capture Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 180, i32 180, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DIF_1L_1R Capture Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 182, i32 182, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DIF_2R_3R Capture Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 182, i32 182, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IN_1R Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 182, i32 182, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 183, i32 183, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IN_2R Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 183, i32 183, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IN_3R Capture Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 183, i32 183, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 183, i32 183, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.170 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 185, i32 185, i32 5, i32 5, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 185, i32 185, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 185, i32 185, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Left ADC Capture Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Right ADC Capture Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 81, i32 81, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlv320adc3xxx-hifi\00", [45 x i8] zeroinitializer }, align 32
@adc3xxx_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @adc3xxx_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @adc3xxx_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adc3xxx_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@adc3xxx_set_dai_sysclk.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.178, ptr @.str.6, ptr @.str.179, i8 1, i8 19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adc3xxx_set_dai_sysclk\00", [41 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set sysclk to %u Hz, %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLL auto\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PLL enable\00", [21 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PLL bypass\00", [21 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PLL unknown\00", [20 x i8] zeroinitializer }, align 32
@adc3xxx_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.185, ptr @.str.6, i32 1125, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid DAI clock setup\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adc3xxx_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@adc3xxx_set_dai_fmt._entry_ptr = internal global ptr @adc3xxx_set_dai_fmt._entry, section ".printk_index", align 4
@adc3xxx_set_dai_fmt._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.185, ptr @.str.6, i32 1150, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid DAI format\0A\00", [44 x i8] zeroinitializer }, align 32
@adc3xxx_set_dai_fmt._entry_ptr.188 = internal global ptr @adc3xxx_set_dai_fmt._entry.186, section ".printk_index", align 4
@adc3xxx_bclk_out_intercon = internal constant { [1 x %struct.snd_soc_dapm_route], [44 x i8] } { [1 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@adc3xxx_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.190, ptr @.str.6, i32 1034, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unsupported serial data format\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adc3xxx_hw_params\00", [46 x i8] zeroinitializer }, align 32
@adc3xxx_hw_params._entry_ptr = internal global ptr @adc3xxx_hw_params._entry, section ".printk_index", align 4
@adc3xxx_divs = internal constant { [15 x %struct.adc3xxx_rate_divs], [84 x i8] } { [15 x %struct.adc3xxx_rate_divs] [%struct.adc3xxx_rate_divs { i32 12000000, i32 8000, i8 1, i8 1, i8 7, i16 1680, i8 42, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12288000, i32 8000, i8 1, i8 1, i8 7, i16 0, i8 42, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12000000, i32 11025, i8 1, i8 1, i8 6, i16 8208, i8 29, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12000000, i32 16000, i8 1, i8 1, i8 7, i16 1680, i8 21, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12288000, i32 16000, i8 1, i8 1, i8 7, i16 0, i8 21, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12000000, i32 22050, i8 1, i8 1, i8 7, i16 560, i8 15, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12000000, i32 32000, i8 1, i8 1, i8 8, i16 1920, i8 12, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12288000, i32 32000, i8 1, i8 1, i8 8, i16 0, i8 12, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12000000, i32 44100, i8 1, i8 1, i8 7, i16 5264, i8 8, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12000000, i32 48000, i8 1, i8 1, i8 7, i16 1680, i8 7, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12288000, i32 48000, i8 1, i8 1, i8 7, i16 0, i8 7, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 24576000, i32 48000, i8 1, i8 1, i8 3, i16 5000, i8 7, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 24576000, i32 48000, i8 0, i8 0, i8 0, i16 0, i8 2, i8 2, i8 -128 }, %struct.adc3xxx_rate_divs { i32 12000000, i32 88200, i8 1, i8 1, i8 7, i16 5264, i8 4, i8 4, i8 64 }, %struct.adc3xxx_rate_divs { i32 12000000, i32 96000, i8 1, i8 1, i8 8, i16 1920, i8 4, i8 4, i8 64 }], [84 x i8] zeroinitializer }, align 32
@adc3xxx_pll_intercon = internal constant { [1 x %struct.snd_soc_dapm_route], [44 x i8] } { [1 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }], [44 x i8] zeroinitializer }, align 32
@adc3xxx_get_divs.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.4, ptr @.str.191, ptr @.str.6, ptr @.str.192, i8 0, i8 117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.191 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adc3xxx_get_divs\00", [47 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mclk = %d, rate = %d, clock mode %u\0A\00", [59 x i8] zeroinitializer }, align 32
@adc3xxx_get_divs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.191, ptr @.str.6, i32 485, ptr @.str.194, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Master clock rate %d and sample rate %d is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adc3xxx_get_divs._entry_ptr = internal global ptr @adc3xxx_get_divs._entry, section ".printk_index", align 4
@switch.table.adc3xxx_set_dai_sysclk = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.180, ptr @.str.181, ptr @.str.182], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.195 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 772, i64 773]
@__sancov_gen_cov_switch_values.196 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 6, i64 10, i64 36]
@___asan_gen_.197 = private unnamed_addr constant [19 x i8] c"adc3xxx_i2c_driver\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1303, i32 26 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1305, i32 14 }
@___asan_gen_.203 = private unnamed_addr constant [23 x i8] c"tlv320adc3xxx_of_match\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1289, i32 34 }
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"adc3xxx_i2c_id\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1296, i32 35 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1209, i32 41 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1212, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1225, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1230, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1233, i32 39 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1236, i32 39 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1239, i32 42 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1242, i32 42 }
@___asan_gen_.242 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [15 x i8] c"adc3xxx_regmap\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 400, i32 35 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1246, i32 20 }
@___asan_gen_.251 = private unnamed_addr constant [26 x i8] c"soc_component_dev_adc3xxx\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1188, i32 46 }
@___asan_gen_.254 = private unnamed_addr constant [12 x i8] c"adc3xxx_dai\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1176, i32 34 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1267, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 942, i32 4 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 946, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 961, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [17 x i8] c"adc3xxx_defaults\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 324, i32 33 }
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"adc3xxx_ranges\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 388, i32 38 }
@___asan_gen_.299 = private unnamed_addr constant [18 x i8] c"adc3xxx_gpio_chip\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 877, i32 31 }
@___asan_gen_.302 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 902, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 904, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant [22 x i8] c"adc3xxx_gpio_ctrl_reg\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 314, i32 27 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 878, i32 13 }
@___asan_gen_.323 = private unnamed_addr constant [21 x i8] c"adc3xxx_snd_controls\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 557, i32 38 }
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"adc3xxx_intercon\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 753, i32 40 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 558, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [8 x i8] c"pga_tlv\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 526, i32 14 }
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 560, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 561, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 563, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [15 x i8] c"agc_target_tlv\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 536, i32 14 }
@___asan_gen_.350 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 565, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [15 x i8] c"agc_thresh_tlv\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 545, i32 14 }
@___asan_gen_.357 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 567, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [19 x i8] c"agc_hysteresis_tlv\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 549, i32 14 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 569, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 579, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [12 x i8] c"agc_max_tlv\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 553, i32 14 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 581, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 586, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [26 x i8] c"left_agc_attack_mult_enum\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 505, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 587, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant [27 x i8] c"right_agc_attack_mult_enum\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 507, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 588, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 590, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [25 x i8] c"left_agc_decay_mult_enum\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 509, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 591, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [26 x i8] c"right_agc_decay_mult_enum\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 511, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 592, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 594, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 597, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [8 x i8] c"adc_tlv\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 527, i32 14 }
@___asan_gen_.422 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 600, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant [22 x i8] c"adc_softstepping_enum\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 501, i32 8 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 602, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant [22 x i8] c"input_attenuation_tlv\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 555, i32 14 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 604, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 606, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 608, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 610, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 612, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 614, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 616, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 618, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 620, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 622, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 624, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 626, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 628, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 630, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 636, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [13 x i8] c"adc_fine_tlv\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 528, i32 14 }
@___asan_gen_.498 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 638, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 640, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 642, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [22 x i8] c"dither_dc_offset_enum\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 521, i32 8 }
@___asan_gen_.513 = private unnamed_addr constant [16 x i8] c"multiplier_text\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 504, i32 27 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 504, i32 49 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 504, i32 54 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 504, i32 59 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 504, i32 64 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 504, i32 69 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 504, i32 75 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 504, i32 81 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 504, i32 87 }
@___asan_gen_.540 = private unnamed_addr constant [22 x i8] c"adc_softstepping_text\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 500, i32 27 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 500, i32 55 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 500, i32 65 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 500, i32 75 }
@___asan_gen_.552 = private unnamed_addr constant [22 x i8] c"dither_dc_offset_text\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 514, i32 27 }
@___asan_gen_.555 = private unnamed_addr constant [24 x i8] c"dither_dc_offset_values\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 518, i32 27 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 515, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 515, i32 9 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 515, i32 17 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 515, i32 25 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 515, i32 33 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 515, i32 41 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 515, i32 49 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 515, i32 57 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 516, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 516, i32 11 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 516, i32 20 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 516, i32 29 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 516, i32 38 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 516, i32 47 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 516, i32 56 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 697, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [26 x i8] c"left_input_mixer_controls\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 646, i32 38 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 701, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant [27 x i8] c"right_input_mixer_controls\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 664, i32 38 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 705, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 706, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 709, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [25 x i8] c"left_input_dmic_controls\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 682, i32 38 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 712, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant [26 x i8] c"right_input_dmic_controls\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 688, i32 38 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 717, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 718, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 721, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 722, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 723, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 724, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 725, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 726, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 727, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 728, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 729, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 730, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 731, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 732, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 733, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 734, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 737, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 740, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 743, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 745, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 749, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant [21 x i8] c"adc3xxx_dapm_widgets\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 694, i32 41 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 647, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 649, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 651, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 653, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 655, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 657, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 659, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.736 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 667, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 669, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.745 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.746 = private unnamed_addr constant [21 x i8] c".compoundliteral.170\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.748 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 683, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 689, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1177, i32 10 }
@___asan_gen_.760 = private unnamed_addr constant [16 x i8] c"adc3xxx_dai_ops\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1170, i32 37 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1102, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1078, i32 10 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1080, i32 10 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1082, i32 10 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1087, i32 9 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1125, i32 3 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1150, i32 3 }
@___asan_gen_.796 = private unnamed_addr constant [26 x i8] c"adc3xxx_bclk_out_intercon\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 812, i32 40 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 1034, i32 3 }
@___asan_gen_.808 = private unnamed_addr constant [13 x i8] c"adc3xxx_divs\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 435, i32 39 }
@___asan_gen_.811 = private unnamed_addr constant [21 x i8] c"adc3xxx_pll_intercon\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 808, i32 40 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 467, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.826 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.827 = private constant [36 x i8] c"../sound/soc/codecs/tlv320adc3xxx.c\00", align 1
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.827, i32 484, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [36 x i8] c"switch.table.adc3xxx_set_dai_sysclk\00", align 1
@llvm.compiler.used = appending global [260 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_adc3xxx_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_tlv320adc3xxx__297_1313_adc3xxx_i2c_driver_init6, ptr @adc3xxx_get_divs._entry, ptr @adc3xxx_get_divs._entry_ptr, ptr @adc3xxx_hw_params._entry, ptr @adc3xxx_hw_params._entry_ptr, ptr @adc3xxx_i2c_driver_exit, ptr @adc3xxx_i2c_probe._entry, ptr @adc3xxx_i2c_probe._entry_ptr, ptr @adc3xxx_i2c_remove, ptr @adc3xxx_init_gpio._entry, ptr @adc3xxx_init_gpio._entry_ptr, ptr @adc3xxx_parse_dt_gpio._entry, ptr @adc3xxx_parse_dt_gpio._entry.18, ptr @adc3xxx_parse_dt_gpio._entry_ptr, ptr @adc3xxx_parse_dt_gpio._entry_ptr.21, ptr @adc3xxx_parse_dt_micbias._entry, ptr @adc3xxx_parse_dt_micbias._entry_ptr, ptr @adc3xxx_set_dai_fmt._entry, ptr @adc3xxx_set_dai_fmt._entry.186, ptr @adc3xxx_set_dai_fmt._entry_ptr, ptr @adc3xxx_set_dai_fmt._entry_ptr.188, ptr @adc3xxx_i2c_driver, ptr @.str, ptr @tlv320adc3xxx_of_match, ptr @adc3xxx_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @adc3xxx_i2c_probe._key, ptr @adc3xxx_regmap, ptr @.str.12, ptr @soc_component_dev_adc3xxx, ptr @adc3xxx_dai, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @adc3xxx_defaults, ptr @adc3xxx_ranges, ptr @adc3xxx_gpio_chip, ptr @adc3xxx_init_gpio.lock_key, ptr @adc3xxx_init_gpio.request_key, ptr @.str.23, ptr @.str.24, ptr @adc3xxx_gpio_ctrl_reg, ptr @.str.25, ptr @adc3xxx_snd_controls, ptr @adc3xxx_intercon, ptr @.str.26, ptr @pga_tlv, ptr @.compoundliteral, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @agc_target_tlv, ptr @.compoundliteral.32, ptr @.str.33, ptr @agc_thresh_tlv, ptr @.compoundliteral.34, ptr @.str.35, ptr @agc_hysteresis_tlv, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @agc_max_tlv, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @left_agc_attack_mult_enum, ptr @.str.44, ptr @right_agc_attack_mult_enum, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @left_agc_decay_mult_enum, ptr @.str.48, ptr @right_agc_decay_mult_enum, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @adc_tlv, ptr @.compoundliteral.54, ptr @.str.55, ptr @adc_softstepping_enum, ptr @.str.56, ptr @input_attenuation_tlv, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @adc_fine_tlv, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @dither_dc_offset_enum, ptr @multiplier_text, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @adc_softstepping_text, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @dither_dc_offset_text, ptr @dither_dc_offset_values, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @left_input_mixer_controls, ptr @.str.120, ptr @right_input_mixer_controls, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @left_input_dmic_controls, ptr @.str.124, ptr @right_input_dmic_controls, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @adc3xxx_dapm_widgets, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.str.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.str.167, ptr @.compoundliteral.168, ptr @.compoundliteral.169, ptr @.compoundliteral.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @adc3xxx_dai_ops, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.187, ptr @adc3xxx_bclk_out_intercon, ptr @.str.189, ptr @.str.190, ptr @adc3xxx_divs, ptr @adc3xxx_pll_intercon, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @switch.table.adc3xxx_set_dai_sysclk], section "llvm.metadata"
@0 = internal global [243 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320adc3xxx_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_adc3xxx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_parse_dt_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_parse_dt_gpio._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_parse_dt_micbias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_defaults to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_init_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_init_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_init_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_gpio_ctrl_reg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_snd_controls to i32), i32 1776, i32 2208, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_intercon to i32), i32 1456, i32 1824, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agc_target_tlv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agc_thresh_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agc_hysteresis_tlv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @agc_max_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_agc_attack_mult_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_agc_attack_mult_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_agc_decay_mult_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_agc_decay_mult_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_softstepping_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_attenuation_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_fine_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dither_dc_offset_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @multiplier_text to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_softstepping_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dither_dc_offset_text to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dither_dc_offset_values to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_input_mixer_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_input_mixer_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_input_dmic_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_input_dmic_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_dapm_widgets to i32), i32 4860, i32 6048, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.170 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_set_dai_fmt._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_bclk_out_intercon to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_divs to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_pll_intercon to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3xxx_get_divs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adc3xxx_set_dai_sysclk to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_i2c_remove(ptr noundef %client) #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mclk = getelementptr inbounds %struct.adc3xxx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %3) #7
  tail call void @clk_unprepare(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gpio_chip.i = getelementptr inbounds %struct.adc3xxx, ptr %1, i32 0, i32 12
  tail call void @gpiochip_remove(ptr noundef %gpio_chip.i) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adc3xxx_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adc3xxx_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @adc3xxx_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #3 align 64 {
entry:
  %val.i153 = alloca i32, align 4
  %val.i144 = alloca i32, align 4
  %val.i128 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 404, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #7
  %rst_pin = getelementptr inbounds %struct.adc3xxx, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %rst_pin to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %rst_pin, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call3 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %2, ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %mclk = getelementptr inbounds %struct.adc3xxx, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %mclk, align 4
  %cmp.i121 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call11 to i32
  %call17 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %4, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.else:                                          ; preds = %if.end10
  %tobool19.not = icmp eq ptr %call11, null
  br i1 %tobool19.not, label %if.else.if.end34_crit_edge, label %if.then20

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then20:                                        ; preds = %if.else
  %call.i122 = tail call i32 @clk_prepare(ptr noundef nonnull %call11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool.not.i = icmp eq i32 %call.i122, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then20.clk_prepare_enable.exit_crit_edge

if.then20.clk_prepare_enable.exit_crit_edge:      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.then20
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %call11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.do.body_crit_edge, label %if.then3.i

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef nonnull %call11) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.then20.clk_prepare_enable.exit_crit_edge
  %retval.0.i123 = phi i32 [ %call.i122, %if.then20.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i123)
  %cmp = icmp slt i32 %retval.0.i123, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.do.body_crit_edge

clk_prepare_enable.exit.do.body_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %clk_prepare_enable.exit.do.body_crit_edge, %if.end.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adc3xxx_i2c_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adc3xxx_i2c_probe, %if.then29)) #7
          to label %if.end34 [label %if.then29], !srcloc !396

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mclk, align 4
  %call31 = tail call i32 @clk_get_rate(ptr noundef %6) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adc3xxx_i2c_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call31) #7
  br label %if.end34

if.end34:                                         ; preds = %if.then29, %do.body, %if.else.if.end34_crit_edge
  %gpio_cfg = getelementptr inbounds %struct.adc3xxx, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !397
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i124 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i124, label %if.then.i, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then.i:                                        ; preds = %if.end34
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %13)
  %cmp.i125 = icmp eq i32 %13, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %13)
  %cmp4.i = icmp ugt i32 %13, 10
  %or.cond18.i = or i1 %cmp4.i, %cmp.i125
  br i1 %or.cond18.i, label %adc3xxx_parse_dt_gpio.exit, label %if.end.i126

if.end.i126:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp6.i = icmp eq i32 %13, 2
  br i1 %cmp6.i, label %do.end10.i, label %if.end.i126.if.end11.i_crit_edge

if.end.i126.if.end11.i_crit_edge:                 ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

do.end10.i:                                       ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.19) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end10.i, %if.end.i126.if.end11.i_crit_edge
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val.i, align 4
  %add.i = add i32 %15, 1
  %16 = ptrtoint ptr %gpio_cfg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %gpio_cfg, align 4
  br label %if.end38

adc3xxx_parse_dt_gpio.exit:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.8) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %err_unprepare_mclk

if.end38:                                         ; preds = %if.end11.i, %if.end34.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %arrayidx40 = getelementptr %struct.adc3xxx, ptr %call.i, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %of_node.i129 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 27
  %19 = ptrtoint ptr %of_node.i129 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i129, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i128) #7
  %21 = ptrtoint ptr %val.i128 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i128, align 4, !annotation !397
  %call.i.i.i130 = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.9, ptr noundef nonnull %val.i128, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i130)
  %tobool.not.i131 = icmp sgt i32 %call.i.i.i130, -1
  br i1 %tobool.not.i131, label %if.then.i135, label %if.end38.if.end44_crit_edge

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then.i135:                                     ; preds = %if.end38
  %22 = ptrtoint ptr %val.i128 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %23)
  %cmp.i132 = icmp eq i32 %23, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %23)
  %cmp4.i133 = icmp ugt i32 %23, 10
  %or.cond18.i134 = or i1 %cmp4.i133, %cmp.i132
  br i1 %or.cond18.i134, label %adc3xxx_parse_dt_gpio.exit143, label %if.end.i138

if.end.i138:                                      ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp6.i137 = icmp eq i32 %23, 2
  br i1 %cmp6.i137, label %do.end10.i139, label %if.end.i138.if.end11.i141_crit_edge

if.end.i138.if.end11.i141_crit_edge:              ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i141

do.end10.i139:                                    ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.19) #10
  br label %if.end11.i141

if.end11.i141:                                    ; preds = %do.end10.i139, %if.end.i138.if.end11.i141_crit_edge
  %24 = ptrtoint ptr %val.i128 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i128, align 4
  %add.i140 = add i32 %25, 1
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add.i140, ptr %arrayidx40, align 4
  br label %if.end44

adc3xxx_parse_dt_gpio.exit143:                    ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i128) #7
  br label %err_unprepare_mclk

if.end44:                                         ; preds = %if.end11.i141, %if.end38.if.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i128) #7
  %micbias_vg = getelementptr inbounds %struct.adc3xxx, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %of_node.i145 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %of_node.i145 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node.i145, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i144) #7
  %31 = ptrtoint ptr %val.i144 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %val.i144, align 4, !annotation !397
  %call.i.i.i146 = call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.10, ptr noundef nonnull %val.i144, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i146)
  %tobool.not.i147 = icmp sgt i32 %call.i.i.i146, -1
  br i1 %tobool.not.i147, label %if.then.i149, label %if.end44.if.end49_crit_edge

if.end44.if.end49_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then.i149:                                     ; preds = %if.end44
  %32 = ptrtoint ptr %val.i144 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp.i148 = icmp ugt i32 %33, 2
  br i1 %cmp.i148, label %adc3xxx_parse_dt_micbias.exit, label %if.end.i151

if.end.i151:                                      ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %micbias_vg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %micbias_vg, align 4
  br label %if.end49

adc3xxx_parse_dt_micbias.exit:                    ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i144) #7
  br label %err_unprepare_mclk

if.end49:                                         ; preds = %if.end.i151, %if.end44.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i144) #7
  %arrayidx51 = getelementptr %struct.adc3xxx, ptr %call.i, i32 0, i32 8, i32 1
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %of_node.i154 = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %of_node.i154 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node.i154, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i153) #7
  %39 = ptrtoint ptr %val.i153 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %val.i153, align 4, !annotation !397
  %call.i.i.i155 = call i32 @of_property_read_variable_u32_array(ptr noundef %38, ptr noundef nonnull @.str.11, ptr noundef nonnull %val.i153, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i155)
  %tobool.not.i156 = icmp sgt i32 %call.i.i.i155, -1
  br i1 %tobool.not.i156, label %if.then.i158, label %if.end49.if.end55_crit_edge

if.end49.if.end55_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then.i158:                                     ; preds = %if.end49
  %40 = ptrtoint ptr %val.i153 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp.i157 = icmp ugt i32 %41, 2
  br i1 %cmp.i157, label %adc3xxx_parse_dt_micbias.exit162, label %if.end.i160

if.end.i160:                                      ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx51, align 4
  br label %if.end55

adc3xxx_parse_dt_micbias.exit162:                 ; preds = %if.then.i158
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i153) #7
  br label %err_unprepare_mclk

if.end55:                                         ; preds = %if.end.i160, %if.end49.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i153) #7
  %call57 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @adc3xxx_regmap, ptr noundef nonnull @adc3xxx_i2c_probe._key, ptr noundef nonnull @.str.12) #7
  %regmap = getelementptr inbounds %struct.adc3xxx, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call57, ptr %regmap, align 4
  %cmp.i163 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then60, label %if.end63

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %call57 to i32
  br label %err_unprepare_mclk

if.end63:                                         ; preds = %if.end55
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %46 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.adc3xxx, ptr %call.i, i32 0, i32 1
  %48 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %type, align 4
  %49 = ptrtoint ptr %rst_pin to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rst_pin, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %50, i32 noundef 1) #7
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 100000, i32 noundef 2) #7
  %51 = ptrtoint ptr %rst_pin to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rst_pin, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %52, i32 noundef 0) #7
  call fastcc void @adc3xxx_init_gpio(ptr noundef nonnull %call.i)
  %call66 = call i32 @snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_adc3xxx, ptr noundef nonnull @adc3xxx_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end71, label %if.end63.cleanup_crit_edge

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call66) #10
  br label %err_unprepare_mclk

err_unprepare_mclk:                               ; preds = %do.end71, %if.then60, %adc3xxx_parse_dt_micbias.exit162, %adc3xxx_parse_dt_micbias.exit, %adc3xxx_parse_dt_gpio.exit143, %adc3xxx_parse_dt_gpio.exit
  %ret.0 = phi i32 [ -22, %adc3xxx_parse_dt_gpio.exit ], [ -22, %adc3xxx_parse_dt_gpio.exit143 ], [ -22, %adc3xxx_parse_dt_micbias.exit ], [ -22, %adc3xxx_parse_dt_micbias.exit162 ], [ %44, %if.then60 ], [ %call66, %do.end71 ]
  %53 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mclk, align 4
  call void @clk_disable(ptr noundef %54) #7
  call void @clk_unprepare(ptr noundef %54) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unprepare_mclk, %if.end63.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ %call17, %if.then14 ], [ %ret.0, %err_unprepare_mclk ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i123, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adc3xxx_init_gpio(ptr noundef %adc3xxx) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_chip = getelementptr inbounds %struct.adc3xxx, ptr %adc3xxx, i32 0, i32 12
  %0 = call ptr @memcpy(ptr %gpio_chip, ptr @adc3xxx_gpio_chip, i32 348)
  %ngpio = getelementptr inbounds %struct.adc3xxx, ptr %adc3xxx, i32 0, i32 12, i32 20
  %1 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 2, ptr %ngpio, align 4
  %2 = ptrtoint ptr %adc3xxx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adc3xxx, align 4
  %parent = getelementptr inbounds %struct.adc3xxx, ptr %adc3xxx, i32 0, i32 12, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %parent, align 4
  %base = getelementptr inbounds %struct.adc3xxx, ptr %adc3xxx, i32 0, i32 12, i32 19
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %base, align 4
  %call = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip, ptr noundef %adc3xxx, ptr noundef nonnull @adc3xxx_init_gpio.lock_key, ptr noundef nonnull @adc3xxx_init_gpio.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %adc3xxx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adc3xxx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.23, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.adc3xxx, ptr %adc3xxx, i32 0, i32 3
  %arrayidx = getelementptr %struct.adc3xxx, ptr %adc3xxx, i32 0, i32 7, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %dec = shl i32 %9, 2
  %shl = add i32 %dec, -4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 52, i32 noundef 60, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %arrayidx.1 = getelementptr %struct.adc3xxx, ptr %adc3xxx, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.1 = icmp eq i32 %13, 0
  br i1 %tobool6.not.1, label %if.end10.if.end10.1_crit_edge, label %if.then7.1

if.end10.if.end10.1_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.1

if.then7.1:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %dec.1 = shl i32 %13, 2
  %shl.1 = add i32 %dec.1, -4
  %call.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 51, i32 noundef 60, i32 noundef %shl.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end10.1

if.end10.1:                                       ; preds = %if.then7.1, %if.end10.if.end10.1_crit_edge
  %arrayidx14 = getelementptr %struct.adc3xxx, ptr %adc3xxx, i32 0, i32 8, i32 0
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %shl19 = shl i32 %17, 5
  %call.i45 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 179, i32 noundef 64, i32 noundef %shl19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx14.1 = getelementptr %struct.adc3xxx, ptr %adc3xxx, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.1, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %shl19.1 = shl i32 %21, 3
  %call.i45.1 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 179, i32 noundef 16, i32 noundef %shl19.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adc3xxx_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg)
  %cond = icmp eq i32 %reg, 1
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_gpio_request(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %offset)
  %cmp = icmp ugt i32 %offset, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.adc3xxx, ptr %call, i32 0, i32 7, i32 %offset
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %switch.and = and i32 %1, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %2 = select i1 %switch.selectcmp, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %2, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_gpio_direction_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %regmap = getelementptr inbounds %struct.adc3xxx, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [2 x i32], ptr @adc3xxx_gpio_ctrl_reg, i32 0, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %lnot.ext = zext i1 %tobool to i32
  %or = or i32 %lnot.ext, 12
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 61, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_gpio_get(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !397
  %regmap = getelementptr inbounds %struct.adc3xxx, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [2 x i32], ptr @adc3xxx_gpio_ctrl_reg, i32 0, i32 %offset
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %and = and i32 %6, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adc3xxx_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %regmap.i = getelementptr inbounds %struct.adc3xxx, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %arrayidx.i = getelementptr [2 x i32], ptr @adc3xxx_gpio_ctrl_reg, i32 0, i32 %offset
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.i = icmp ne i32 %value, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %or.i = or i32 %lnot.ext.i, 12
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef 61, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_pll_delay(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #3 align 64 {
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
  %pll_mode = getelementptr inbounds %struct.adc3xxx, ptr %5, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %clk_id)
  %switch.i = icmp ult i32 %clk_id, 3
  br i1 %switch.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %pll_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %clk_id, ptr %pll_mode, align 4
  %sysclk = getelementptr inbounds %struct.adc3xxx, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %sysclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adc3xxx_set_dai_sysclk.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adc3xxx_set_dai_sysclk, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !396

if.then6:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %pll_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %switch.lookup, label %if.then6.adc3xxx_pll_mode_text.exit_crit_edge

if.then6.adc3xxx_pll_mode_text.exit_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %adc3xxx_pll_mode_text.exit

switch.lookup:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.adc3xxx_set_dai_sysclk, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %adc3xxx_pll_mode_text.exit

adc3xxx_pll_mode_text.exit:                       ; preds = %switch.lookup, %if.then6.adc3xxx_pll_mode_text.exit_crit_edge
  %retval.0.i18 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.183, %if.then6.adc3xxx_pll_mode_text.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adc3xxx_set_dai_sysclk.__UNIQUE_ID_ddebug295, ptr noundef %9, ptr noundef nonnull @.str.179, i32 noundef %freq, ptr noundef nonnull %retval.0.i18) #7
  br label %cleanup

cleanup:                                          ; preds = %adc3xxx_pll_mode_text.exit, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %adc3xxx_pll_mode_text.exit ], [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
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
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %do.end [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.184) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %clkdir.0 = phi i32 [ 0, %sw.bb3 ], [ 12, %entry.sw.epilog_crit_edge ]
  %tobool.not = phi i1 [ true, %sw.bb3 ], [ false, %entry.sw.epilog_crit_edge ]
  %master.0 = phi i32 [ 0, %sw.bb3 ], [ 1, %entry.sw.epilog_crit_edge ]
  %and4 = and i32 %fmt, 3855
  %8 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %and4, label %do.end13 [
    i32 1, label %sw.epilog.sw.epilog15_crit_edge
    i32 772, label %sw.bb6
    i32 773, label %sw.bb7
    i32 2, label %sw.bb8
    i32 3, label %sw.bb9
  ]

sw.epilog.sw.epilog15_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15

sw.bb7:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15

do.end13:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.187) #10
  br label %cleanup

sw.epilog15:                                      ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.epilog.sw.epilog15_crit_edge
  %format.0 = phi i32 [ 192, %sw.bb9 ], [ 128, %sw.bb8 ], [ 64, %sw.bb7 ], [ 64, %sw.bb6 ], [ 0, %sw.epilog.sw.epilog15_crit_edge ]
  %master21 = getelementptr inbounds %struct.adc3xxx, ptr %5, i32 0, i32 9
  %9 = ptrtoint ptr %master21 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %master21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %land.lhs.true20.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.epilog15
  br i1 %tobool22.not, label %if.then, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @adc3xxx_bclk_out_intercon, i32 noundef 1) #7
  br label %if.end25

land.lhs.true20.critedge:                         ; preds = %sw.epilog15
  br i1 %tobool22.not, label %land.lhs.true20.critedge.if.end25_crit_edge, label %if.then23

land.lhs.true20.critedge.if.end25_crit_edge:      ; preds = %land.lhs.true20.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true20.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 @snd_soc_dapm_del_routes(ptr noundef %dapm.i, ptr noundef nonnull @adc3xxx_bclk_out_intercon, i32 noundef 1) #7
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true20.critedge.if.end25_crit_edge, %if.then, %land.lhs.true.if.end25_crit_edge
  %master26 = getelementptr inbounds %struct.adc3xxx, ptr %5, i32 0, i32 9
  %11 = ptrtoint ptr %master26 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %master.0, ptr %master26, align 4
  %or = or i32 %format.0, %clkdir.0
  %call28 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 204, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end13 ], [ %call28, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc3xxx_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %sysclk = getelementptr inbounds %struct.adc3xxx, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %pll_mode = getelementptr inbounds %struct.adc3xxx, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %pll_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pll_mode, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adc3xxx_get_divs.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adc3xxx_hw_params, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !396

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adc3xxx_get_divs.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.192, i32 noundef %7, i32 noundef %9, i32 noundef %11) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp3.i = icmp ne i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp5.i = icmp eq i32 %11, 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i
  %i.045.i = phi i32 [ 0, %do.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [15 x %struct.adc3xxx_rate_divs], ptr @adc3xxx_divs, i32 0, i32 %i.045.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %i.045.i)
  %tobool4.not.i = icmp eq i32 %i.045.i, 12
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %tobool4.not.i
  %or.cond.not.i = xor i1 %or.cond.i, true
  %or.cond38.i = select i1 %cmp5.i, i1 %tobool4.not.i, i1 false
  %or.cond43.i = select i1 %or.cond.not.i, i1 true, i1 %or.cond38.i
  br i1 %or.cond43.i, label %for.body.i.for.inc.i_crit_edge, label %if.end11.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  %rate12.i = getelementptr [15 x %struct.adc3xxx_rate_divs], ptr @adc3xxx_divs, i32 0, i32 %i.045.i, i32 1
  %12 = ptrtoint ptr %rate12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate12.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp13.i = icmp eq i32 %13, %9
  br i1 %cmp13.i, label %land.lhs.true15.i, label %if.end11.i.for.inc.i_crit_edge

if.end11.i.for.inc.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true15.i:                                ; preds = %if.end11.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp17.i = icmp eq i32 %15, %7
  br i1 %cmp17.i, label %if.end, label %land.lhs.true15.i.for.inc.i_crit_edge

land.lhs.true15.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true15.i.for.inc.i_crit_edge, %if.end11.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %adc3xxx_get_divs.exit.thread, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

adc3xxx_get_divs.exit.thread:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.193, i32 noundef %7, i32 noundef %9) #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true15.i
  %arrayidx.i.i78 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i78 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.end.params_format.exit_crit_edge

if.end.params_format.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.end
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.do.end_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i.do.end_crit_edge:                     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.end.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.end.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %17, %if.end.params_format.exit_crit_edge ], [ %19, %for.inc.i.i.params_format.exit_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !398
  %add.i.i = or i32 %20, %i.09.lcssa.i.i
  %21 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %add.i.i, label %params_format.exit.do.end_crit_edge [
    i32 2, label %params_format.exit.sw.epilog_crit_edge
    i32 36, label %sw.bb7
    i32 6, label %sw.bb8
    i32 10, label %sw.bb9
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

params_format.exit.do.end_crit_edge:              ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb7:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %params_format.exit.do.end_crit_edge, %for.inc.i.i.do.end_crit_edge
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.189) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %params_format.exit.sw.epilog_crit_edge
  %width.0 = phi i16 [ 64, %sw.bb9 ], [ 48, %sw.bb8 ], [ 40, %sw.bb7 ], [ 32, %params_format.exit.sw.epilog_crit_edge ]
  %iface_len.0 = phi i32 [ 48, %sw.bb9 ], [ 32, %sw.bb8 ], [ 16, %sw.bb7 ], [ 0, %params_format.exit.sw.epilog_crit_edge ]
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 48, i32 noundef %iface_len.0) #7
  %24 = and i32 %i.045.i, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %24)
  %tobool.not = icmp eq i32 %24, 12
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %sw.epilog
  %pll_p.i = getelementptr [15 x %struct.adc3xxx_rate_divs], ptr @adc3xxx_divs, i32 0, i32 %i.045.i, i32 2
  %25 = ptrtoint ptr %pll_p.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pll_p.i, align 4
  %conv.i = zext i8 %26 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %pll_r.i = getelementptr [15 x %struct.adc3xxx_rate_divs], ptr @adc3xxx_divs, i32 0, i32 %i.045.i, i32 3
  %27 = ptrtoint ptr %pll_r.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pll_r.i, align 1
  %conv2.i = zext i8 %28 to i32
  %or.i = or i32 %shl.i, %conv2.i
  %call.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 5, i32 noundef %or.i) #7
  %pll_j.i = getelementptr [15 x %struct.adc3xxx_rate_divs], ptr @adc3xxx_divs, i32 0, i32 %i.045.i, i32 4
  %29 = ptrtoint ptr %pll_j.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pll_j.i, align 2
  %31 = and i8 %30, 63
  %and.i = zext i8 %31 to i32
  %call6.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %and.i) #7
  %pll_d.i = getelementptr [15 x %struct.adc3xxx_rate_divs], ptr @adc3xxx_divs, i32 0, i32 %i.045.i, i32 5
  %32 = ptrtoint ptr %pll_d.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pll_d.i, align 4
  %34 = and i16 %33, 255
  %and9.i = zext i16 %34 to i32
  %call10.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 8, i32 noundef %and9.i) #7
  %35 = lshr i16 %33, 8
  %36 = and i16 %35, 63
  %and14.i = zext i16 %36 to i32
  %call15.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 7, i32 noundef %and14.i) #7
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef 3) #7
  %use_pll = getelementptr inbounds %struct.adc3xxx, ptr %5, i32 0, i32 11
  %37 = ptrtoint ptr %use_pll to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %use_pll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool14.not = icmp eq i32 %38, 0
  br i1 %tobool14.not, label %if.then15, label %if.then12.if.end26_crit_edge

if.then12.if.end26_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef nonnull @adc3xxx_pll_intercon, i32 noundef 1) #7
  %39 = ptrtoint ptr %use_pll to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %use_pll, align 4
  br label %if.end26

if.else:                                          ; preds = %sw.epilog
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef 12) #7
  %use_pll20 = getelementptr inbounds %struct.adc3xxx, ptr %5, i32 0, i32 11
  %40 = ptrtoint ptr %use_pll20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %use_pll20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool21.not = icmp eq i32 %41, 0
  br i1 %tobool21.not, label %if.else.if.end26_crit_edge, label %if.then22

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @snd_soc_dapm_del_routes(ptr noundef %dapm.i, ptr noundef nonnull @adc3xxx_pll_intercon, i32 noundef 1) #7
  %42 = ptrtoint ptr %use_pll20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %use_pll20, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.else.if.end26_crit_edge, %if.then15, %if.then12.if.end26_crit_edge
  %nadc = getelementptr [15 x %struct.adc3xxx_rate_divs], ptr @adc3xxx_divs, i32 0, i32 %i.045.i, i32 6
  %43 = ptrtoint ptr %nadc to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %nadc, align 2
  %conv28 = zext i8 %44 to i32
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 18, i32 noundef 127, i32 noundef %conv28) #7
  %madc = getelementptr [15 x %struct.adc3xxx_rate_divs], ptr @adc3xxx_divs, i32 0, i32 %i.045.i, i32 7
  %45 = ptrtoint ptr %madc to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %madc, align 1
  %conv31 = zext i8 %46 to i32
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 19, i32 noundef 127, i32 noundef %conv31) #7
  %aosr = getelementptr [15 x %struct.adc3xxx_rate_divs], ptr @adc3xxx_divs, i32 0, i32 %i.045.i, i32 8
  %47 = ptrtoint ptr %aosr to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %aosr, align 4
  %conv34 = zext i8 %48 to i32
  %call35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 20, i32 noundef 255, i32 noundef %conv34) #7
  %conv38 = zext i8 %48 to i16
  %conv41 = zext i8 %46 to i16
  %mul = mul nuw i16 %conv38, %conv41
  %div = udiv i16 %mul, %width.0
  %49 = and i16 %div, 255
  %conv44 = zext i16 %49 to i32
  %call45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 30, i32 noundef 127, i32 noundef %conv44) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end, %adc3xxx_get_divs.exit.thread
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end26 ], [ -22, %adc3xxx_get_divs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_del_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 243)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 243)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !260, !262, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !345, !346, !348, !350, !352, !354, !356, !357, !358, !359, !361, !362, !363, !365, !367, !368, !369, !370, !372, !373, !374, !376, !377, !378, !379, !381, !383, !385}
!llvm.module.flags = !{!387, !388, !389, !390, !391, !392, !393, !394}
!llvm.ident = !{!395}

!0 = !{ptr @__initcall__kmod_snd_soc_tlv320adc3xxx__297_1313_adc3xxx_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_tlv320adc3xxx__297_1313_adc3xxx_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1313, i32 1}
!2 = !{ptr @__exitcall_adc3xxx_i2c_driver_exit, !1, !"__exitcall_adc3xxx_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description298, !4, !"__UNIQUE_ID_description298", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1315, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1316, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1317, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1305, i32 14}
!12 = !{ptr @adc3xxx_i2c_driver, !13, !"adc3xxx_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1303, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1209, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1212, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1225, i32 10}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1230, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @adc3xxx_i2c_probe.__UNIQUE_ID_ddebug296, !21, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1233, i32 39}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1236, i32 39}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1239, i32 42}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1242, i32 42}
!34 = !{ptr @adc3xxx_i2c_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1246, i32 20}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1267, i32 3}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @adc3xxx_i2c_probe._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @adc3xxx_i2c_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 942, i32 4}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @adc3xxx_parse_dt_gpio._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @adc3xxx_parse_dt_gpio._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 946, i32 4}
!50 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @adc3xxx_parse_dt_gpio._entry.18, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @adc3xxx_parse_dt_gpio._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 961, i32 4}
!55 = !{ptr @adc3xxx_parse_dt_micbias._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @adc3xxx_parse_dt_micbias._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @adc3xxx_regmap, !58, !"adc3xxx_regmap", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 400, i32 35}
!59 = !{ptr @adc3xxx_defaults, !60, !"adc3xxx_defaults", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 324, i32 33}
!61 = !{ptr @adc3xxx_ranges, !62, !"adc3xxx_ranges", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 388, i32 38}
!63 = !{ptr @adc3xxx_init_gpio.lock_key, !64, !"lock_key", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 902, i32 8}
!65 = !{ptr @adc3xxx_init_gpio.request_key, !64, !"request_key", i1 false, i1 false}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 904, i32 3}
!68 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @adc3xxx_init_gpio._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @adc3xxx_init_gpio._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 878, i32 13}
!73 = !{ptr @adc3xxx_gpio_chip, !74, !"adc3xxx_gpio_chip", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 877, i32 31}
!75 = !{ptr @adc3xxx_gpio_ctrl_reg, !76, !"adc3xxx_gpio_ctrl_reg", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 314, i32 27}
!77 = distinct !{null, !78, !"adc3xxx_micbias_shift", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 319, i32 27}
!79 = !{ptr @soc_component_dev_adc3xxx, !80, !"soc_component_dev_adc3xxx", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1188, i32 46}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 558, i32 2}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 560, i32 2}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 561, i32 2}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 563, i32 2}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 565, i32 2}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 567, i32 2}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 569, i32 2}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 579, i32 2}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 581, i32 2}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 586, i32 2}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 587, i32 2}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 588, i32 2}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 590, i32 2}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 591, i32 2}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 592, i32 2}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 594, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 597, i32 2}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 600, i32 2}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 602, i32 2}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 604, i32 2}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 606, i32 2}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 608, i32 2}
!125 = !{ptr @.str.64, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 610, i32 2}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 612, i32 2}
!129 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 614, i32 2}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 616, i32 2}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 618, i32 2}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 620, i32 2}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 622, i32 2}
!139 = !{ptr @.str.78, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 624, i32 2}
!141 = !{ptr @.str.80, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 626, i32 2}
!143 = !{ptr @.str.82, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 628, i32 2}
!145 = !{ptr @.str.84, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 630, i32 2}
!147 = !{ptr @.str.86, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 636, i32 2}
!149 = !{ptr @.str.88, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 638, i32 2}
!151 = !{ptr @.str.90, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 640, i32 2}
!153 = !{ptr @.str.92, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 642, i32 2}
!155 = !{ptr @adc3xxx_snd_controls, !156, !"adc3xxx_snd_controls", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 557, i32 38}
!157 = !{ptr @pga_tlv, !158, !"pga_tlv", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 526, i32 14}
!159 = !{ptr @agc_target_tlv, !160, !"agc_target_tlv", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 536, i32 14}
!161 = !{ptr @agc_thresh_tlv, !162, !"agc_thresh_tlv", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 545, i32 14}
!163 = !{ptr @agc_hysteresis_tlv, !164, !"agc_hysteresis_tlv", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 549, i32 14}
!165 = !{ptr @agc_max_tlv, !166, !"agc_max_tlv", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 553, i32 14}
!167 = !{ptr @left_agc_attack_mult_enum, !168, !"left_agc_attack_mult_enum", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 505, i32 8}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 504, i32 49}
!171 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 504, i32 54}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 504, i32 59}
!175 = !{ptr @.str.96, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 504, i32 64}
!177 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 504, i32 69}
!179 = !{ptr @.str.98, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 504, i32 75}
!181 = !{ptr @.str.99, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 504, i32 81}
!183 = !{ptr @.str.100, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 504, i32 87}
!185 = !{ptr @multiplier_text, !186, !"multiplier_text", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 504, i32 27}
!187 = !{ptr @right_agc_attack_mult_enum, !188, !"right_agc_attack_mult_enum", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 507, i32 8}
!189 = !{ptr @left_agc_decay_mult_enum, !190, !"left_agc_decay_mult_enum", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 509, i32 8}
!191 = !{ptr @right_agc_decay_mult_enum, !192, !"right_agc_decay_mult_enum", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 511, i32 8}
!193 = !{ptr @adc_tlv, !194, !"adc_tlv", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 527, i32 14}
!195 = !{ptr @adc_softstepping_enum, !196, !"adc_softstepping_enum", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 501, i32 8}
!197 = !{ptr @.str.101, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 500, i32 55}
!199 = !{ptr @.str.102, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 500, i32 65}
!201 = !{ptr @.str.103, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 500, i32 75}
!203 = !{ptr @adc_softstepping_text, !204, !"adc_softstepping_text", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 500, i32 27}
!205 = !{ptr @input_attenuation_tlv, !206, !"input_attenuation_tlv", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 555, i32 14}
!207 = !{ptr @adc_fine_tlv, !208, !"adc_fine_tlv", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 528, i32 14}
!209 = !{ptr @dither_dc_offset_enum, !210, !"dither_dc_offset_enum", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 521, i32 8}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 515, i32 2}
!213 = !{ptr @.str.105, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 515, i32 9}
!215 = !{ptr @.str.106, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 515, i32 17}
!217 = !{ptr @.str.107, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 515, i32 25}
!219 = !{ptr @.str.108, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 515, i32 33}
!221 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 515, i32 41}
!223 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 515, i32 49}
!225 = !{ptr @.str.111, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 515, i32 57}
!227 = !{ptr @.str.112, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 516, i32 2}
!229 = !{ptr @.str.113, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 516, i32 11}
!231 = !{ptr @.str.114, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 516, i32 20}
!233 = !{ptr @.str.115, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 516, i32 29}
!235 = !{ptr @.str.116, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 516, i32 38}
!237 = !{ptr @.str.117, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 516, i32 47}
!239 = !{ptr @.str.118, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 516, i32 56}
!241 = !{ptr @dither_dc_offset_text, !242, !"dither_dc_offset_text", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 514, i32 27}
!243 = !{ptr @dither_dc_offset_values, !244, !"dither_dc_offset_values", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 518, i32 27}
!245 = !{ptr @.str.119, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 697, i32 2}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 701, i32 2}
!249 = !{ptr @.str.121, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 705, i32 2}
!251 = !{ptr @.str.122, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 706, i32 2}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 709, i32 2}
!255 = !{ptr @.str.124, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 712, i32 2}
!257 = !{ptr @.str.125, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 717, i32 2}
!259 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.127, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 718, i32 2}
!262 = !{ptr @.str.128, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 721, i32 2}
!265 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 722, i32 2}
!267 = !{ptr @.str.131, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 723, i32 2}
!269 = !{ptr @.str.132, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 724, i32 2}
!271 = !{ptr @.str.133, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 725, i32 2}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 726, i32 2}
!275 = !{ptr @.str.135, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 727, i32 2}
!277 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 728, i32 2}
!279 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 729, i32 2}
!281 = !{ptr @.str.138, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 730, i32 2}
!283 = !{ptr @.str.139, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 731, i32 2}
!285 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 732, i32 2}
!287 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 733, i32 2}
!289 = !{ptr @.str.142, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 734, i32 2}
!291 = !{ptr @.str.143, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 737, i32 2}
!293 = !{ptr @.str.144, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.145, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 740, i32 2}
!296 = !{ptr @.str.146, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 743, i32 2}
!298 = !{ptr @.str.147, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 745, i32 2}
!300 = !{ptr @.str.148, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 749, i32 2}
!302 = !{ptr @adc3xxx_dapm_widgets, !303, !"adc3xxx_dapm_widgets", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 694, i32 41}
!304 = !{ptr @.str.150, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 647, i32 2}
!306 = !{ptr @.str.152, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 649, i32 2}
!308 = !{ptr @.str.154, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 651, i32 2}
!310 = !{ptr @.str.156, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 653, i32 2}
!312 = !{ptr @.str.158, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 655, i32 2}
!314 = !{ptr @.str.160, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 657, i32 2}
!316 = !{ptr @.str.162, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 659, i32 2}
!318 = !{ptr @left_input_mixer_controls, !319, !"left_input_mixer_controls", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 646, i32 38}
!320 = !{ptr @.str.165, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 667, i32 2}
!322 = !{ptr @.str.167, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 669, i32 2}
!324 = !{ptr @right_input_mixer_controls, !325, !"right_input_mixer_controls", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 664, i32 38}
!326 = !{ptr @.str.173, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 683, i32 2}
!328 = !{ptr @left_input_dmic_controls, !329, !"left_input_dmic_controls", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 682, i32 38}
!330 = !{ptr @.str.175, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 689, i32 2}
!332 = !{ptr @right_input_dmic_controls, !333, !"right_input_dmic_controls", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 688, i32 38}
!334 = !{ptr @adc3xxx_intercon, !335, !"adc3xxx_intercon", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 753, i32 40}
!336 = !{ptr @.str.177, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1177, i32 10}
!338 = !{ptr @adc3xxx_dai, !339, !"adc3xxx_dai", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1176, i32 34}
!340 = !{ptr @adc3xxx_dai_ops, !341, !"adc3xxx_dai_ops", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1170, i32 37}
!342 = !{ptr @.str.178, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1102, i32 2}
!344 = !{ptr @.str.179, !343, !"<string literal>", i1 false, i1 false}
!345 = !{ptr @adc3xxx_set_dai_sysclk.__UNIQUE_ID_ddebug295, !343, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!346 = !{ptr @.str.180, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1078, i32 10}
!348 = !{ptr @.str.181, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1080, i32 10}
!350 = !{ptr @.str.182, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1082, i32 10}
!352 = !{ptr @.str.183, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1087, i32 9}
!354 = !{ptr @.str.184, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1125, i32 3}
!356 = !{ptr @.str.185, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @adc3xxx_set_dai_fmt._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @adc3xxx_set_dai_fmt._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.187, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1150, i32 3}
!361 = !{ptr @adc3xxx_set_dai_fmt._entry.186, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @adc3xxx_set_dai_fmt._entry_ptr.188, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @adc3xxx_bclk_out_intercon, !364, !"adc3xxx_bclk_out_intercon", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 812, i32 40}
!365 = !{ptr @.str.189, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1034, i32 3}
!367 = !{ptr @.str.190, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @adc3xxx_hw_params._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @adc3xxx_hw_params._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.191, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 467, i32 2}
!372 = !{ptr @.str.192, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @adc3xxx_get_divs.__UNIQUE_ID_ddebug294, !371, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!374 = !{ptr @.str.193, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 484, i32 2}
!376 = !{ptr @.str.194, !375, !"<string literal>", i1 false, i1 false}
!377 = !{ptr @adc3xxx_get_divs._entry, !375, !"_entry", i1 false, i1 false}
!378 = !{ptr @adc3xxx_get_divs._entry_ptr, !375, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @adc3xxx_divs, !380, !"adc3xxx_divs", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 435, i32 39}
!381 = !{ptr @adc3xxx_pll_intercon, !382, !"adc3xxx_pll_intercon", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 808, i32 40}
!383 = !{ptr @tlv320adc3xxx_of_match, !384, !"tlv320adc3xxx_of_match", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1289, i32 34}
!385 = !{ptr @adc3xxx_i2c_id, !386, !"adc3xxx_i2c_id", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/tlv320adc3xxx.c", i32 1296, i32 35}
!387 = !{i32 1, !"wchar_size", i32 2}
!388 = !{i32 1, !"min_enum_size", i32 4}
!389 = !{i32 8, !"branch-target-enforcement", i32 0}
!390 = !{i32 8, !"sign-return-address", i32 0}
!391 = !{i32 8, !"sign-return-address-all", i32 0}
!392 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!393 = !{i32 7, !"uwtable", i32 1}
!394 = !{i32 7, !"frame-pointer", i32 2}
!395 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!396 = !{i64 2148766210, i64 2148766215, i64 2148766228, i64 2148766272, i64 2148766306, i64 2148766327}
!397 = !{!"auto-init"}
!398 = !{i32 0, i32 33}
