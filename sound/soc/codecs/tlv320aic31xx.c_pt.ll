; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tlv320aic31xx.c_pt.bc'
source_filename = "../sound/soc/codecs/tlv320aic31xx.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.aic31xx_rate_divs = type { i32, i32, i8, i8, i16, i16, i8, i8, i8, i8, i8 }
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
%struct.aic31xx_priv = type { ptr, i8, ptr, ptr, i32, ptr, i32, %struct.aic31xx_pdata, [6 x %struct.regulator_bulk_data], [6 x %struct.aic31xx_disable_nb], ptr, i32, i32, i8, i32, i8, i32, i8 }
%struct.aic31xx_pdata = type { i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.aic31xx_disable_nb = type { %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tlv320aic31xx__307_1754_aic31xx_i2c_driver_init6 = internal global ptr @aic31xx_i2c_driver_init, section ".initcall6.init", align 4
@aic31xx_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @aic31xx_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tlv320aic31xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @aic31xx_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_aic31xx_i2c_driver_exit = internal global ptr @aic31xx_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [56 x i8] c"snd_soc_tlv320aic31xx.author=Jyri Sarha <jsarha@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [66 x i8] c"snd_soc_tlv320aic31xx.description=ASoC TLV320AIC31xx CODEC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [66 x i8] c"snd_soc_tlv320aic31xx.file=sound/soc/codecs/snd-soc-tlv320aic31xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [37 x i8] c"snd_soc_tlv320aic31xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tlv320aic31xx-codec\00", [44 x i8] zeroinitializer }, align 32
@tlv320aic31xx_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320aic310x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320aic311x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320aic3100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320aic3110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320aic3120\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320aic3111\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320dac3100\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tlv320dac3101\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@aic31xx_i2c_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tlv320aic310x\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tlv320aic311x\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tlv320aic3100\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tlv320aic3110\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tlv320aic3120\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"tlv320aic3111\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"tlv320dac3100\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"tlv320dac3101\00\00\00\00\00\00\00", i32 10 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@aic31xx_i2c_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_tlv320aic31xx\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aic31xx_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sound/soc/codecs/tlv320aic31xx.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"## %s: %s codec_type = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@aic31xx_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aic31xx_i2c_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @aic31xx_writeable, ptr null, ptr @aic31xx_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1536, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aic31xx_reg_defaults, i32 38, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @aic31xx_ranges, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"tlv320aic31xx:1645:(&aic31xx_i2c_regmap)->lock\00", [49 x i8] zeroinitializer }, align 32
@aic31xx_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 1649, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aic31xx_i2c_probe._entry_ptr = internal global ptr @aic31xx_i2c_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ai31xx-micbias-vg\00", [46 x i8] zeroinitializer }, align 32
@aic31xx_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1671, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Bad ai31xx-micbias-vg value %d\0A\00", [32 x i8] zeroinitializer }, align 32
@aic31xx_i2c_probe._entry_ptr.12 = internal global ptr @aic31xx_i2c_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"not able to acquire gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to request supplies\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aic31xx-irq\00", [20 x i8] zeroinitializer }, align 32
@aic31xx_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1715, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@aic31xx_i2c_probe._entry_ptr.19 = internal global ptr @aic31xx_i2c_probe._entry.17, section ".printk_index", align 4
@soc_codec_driver_aic31xx = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @common31xx_snd_controls, i32 7, ptr @common31xx_dapm_widgets, i32 13, ptr @common31xx_audio_map, i32 14, ptr @aic31xx_codec_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aic31xx_set_jack, ptr null, ptr null, ptr null, ptr null, ptr @aic31xx_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@dac31xx_dai_driver = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.213, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @aic31xx_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.100, i64 73014445124, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@aic31xx_dai_driver = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.241, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @aic31xx_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.174, i64 73014445124, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.100, i64 73014445124, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@aic31xx_reg_defaults = internal constant { [38 x %struct.reg_default], [80 x i8] } { [38 x %struct.reg_default] [%struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 17 }, %struct.reg_default { i32 6, i32 4 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 11, i32 1 }, %struct.reg_default { i32 12, i32 1 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 128 }, %struct.reg_default { i32 18, i32 1 }, %struct.reg_default { i32 19, i32 1 }, %struct.reg_default { i32 20, i32 128 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 1 }, %struct.reg_default { i32 63, i32 20 }, %struct.reg_default { i32 64, i32 12 }, %struct.reg_default { i32 65, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 128 }, %struct.reg_default { i32 83, i32 0 }, %struct.reg_default { i32 159, i32 4 }, %struct.reg_default { i32 160, i32 6 }, %struct.reg_default { i32 163, i32 0 }, %struct.reg_default { i32 164, i32 127 }, %struct.reg_default { i32 165, i32 127 }, %struct.reg_default { i32 166, i32 127 }, %struct.reg_default { i32 167, i32 127 }, %struct.reg_default { i32 168, i32 2 }, %struct.reg_default { i32 169, i32 2 }, %struct.reg_default { i32 170, i32 0 }, %struct.reg_default { i32 171, i32 0 }, %struct.reg_default { i32 174, i32 0 }, %struct.reg_default { i32 175, i32 128 }, %struct.reg_default { i32 176, i32 0 }, %struct.reg_default { i32 177, i32 0 }], [80 x i8] zeroinitializer }, align 32
@aic31xx_ranges = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 1536, i32 0, i32 255, i32 0, i32 0, i32 128 }], [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPRVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPLVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IOVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ai31xx-ocmv\00", [20 x i8] zeroinitializer }, align 32
@aic31xx_configure_ocmv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1615, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Too high supply voltage(s) AVDD: %d, DVDD: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aic31xx_configure_ocmv\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@aic31xx_configure_ocmv._entry_ptr = internal global ptr @aic31xx_configure_ocmv._entry, section ".printk_index", align 4
@aic31xx_configure_ocmv._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.3, i32 1627, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Invalid supply voltage(s) AVDD: %d, DVDD: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@aic31xx_configure_ocmv._entry_ptr.32 = internal global ptr @aic31xx_configure_ocmv._entry.30, section ".printk_index", align 4
@aic31xx_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1502, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read interrupt mask: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aic31xx_irq\00", [20 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr = internal global ptr @aic31xx_irq._entry, section ".printk_index", align 4
@aic31xx_irq._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1512, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Short circuit on Left output is detected\0A\00", [54 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.37 = internal global ptr @aic31xx_irq._entry.35, section ".printk_index", align 4
@aic31xx_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 1514, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Short circuit on Right output is detected\0A\00", [53 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.40 = internal global ptr @aic31xx_irq._entry.38, section ".printk_index", align 4
@aic31xx_irq._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1523, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.42 = internal global ptr @aic31xx_irq._entry.41, section ".printk_index", align 4
@aic31xx_irq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.34, ptr @.str.3, i32 1532, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to read headset type: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.45 = internal global ptr @aic31xx_irq._entry.43, section ".printk_index", align 4
@aic31xx_irq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.34, ptr @.str.3, i32 1556, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unknown DAC interrupt flags: 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.48 = internal global ptr @aic31xx_irq._entry.46, section ".printk_index", align 4
@aic31xx_irq._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.34, ptr @.str.3, i32 1561, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read overflow flag: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.51 = internal global ptr @aic31xx_irq._entry.49, section ".printk_index", align 4
@aic31xx_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.34, ptr @.str.3, i32 1571, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Left-channel DAC overflow has occurred\0A\00", [56 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.54 = internal global ptr @aic31xx_irq._entry.52, section ".printk_index", align 4
@aic31xx_irq._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.34, ptr @.str.3, i32 1573, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Right-channel DAC overflow has occurred\0A\00", [55 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.57 = internal global ptr @aic31xx_irq._entry.55, section ".printk_index", align 4
@aic31xx_irq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.34, ptr @.str.3, i32 1575, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DAC barrel shifter overflow has occurred\0A\00", [54 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.60 = internal global ptr @aic31xx_irq._entry.58, section ".printk_index", align 4
@aic31xx_irq._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.34, ptr @.str.3, i32 1577, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ADC overflow has occurred\0A\00", [37 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.63 = internal global ptr @aic31xx_irq._entry.61, section ".printk_index", align 4
@aic31xx_irq._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.34, ptr @.str.3, i32 1579, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ADC barrel shifter overflow has occurred\0A\00", [54 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.66 = internal global ptr @aic31xx_irq._entry.64, section ".printk_index", align 4
@aic31xx_irq._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.34, ptr @.str.3, i32 1585, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unknown overflow interrupt flags: 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@aic31xx_irq._entry_ptr.69 = internal global ptr @aic31xx_irq._entry.67, section ".printk_index", align 4
@common31xx_snd_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hp_drv_tlv }, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @hp_poweron_time_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @hp_rampup_step_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @vol_soft_step_mode_enum to i32) }], [80 x i8] zeroinitializer }, align 32
@common31xx_audio_map = internal constant { [14 x %struct.snd_soc_dapm_route], [168 x i8] } { [14 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.117, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.118, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr @.str.119, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.117, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.118, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.119, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr null, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.125, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.108, ptr @.str.125, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }], [168 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@dac_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -127, i32 48, i32 48, i32 65, i32 66, i32 0, i32 0, i32 7, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HP Driver Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 168, i32 169, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HP Driver Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@hp_drv_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 168, i32 169, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HP Analog Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@hp_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 164, i32 165, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HP Output Driver Power-On time\00", [33 x i8] zeroinitializer }, align 32
@hp_poweron_time_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 161, i8 3, i8 3, i32 12, i32 15, ptr @hp_poweron_time_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HP Output Driver Ramp-up step\00", [34 x i8] zeroinitializer }, align 32
@hp_rampup_step_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 161, i8 1, i8 1, i32 4, i32 3, ptr @hp_rampup_step_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Volume Soft Stepping\00", [43 x i8] zeroinitializer }, align 32
@vol_soft_step_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 63, i8 0, i8 0, i32 3, i32 3, ptr @vol_soft_step_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hp_poweron_time_text = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], [48 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0us\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"15.3us\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"153us\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.53ms\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"15.3ms\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"76.2ms\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"153ms\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"304ms\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"610ms\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.22s\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.04s\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6.1s\00", [27 x i8] zeroinitializer }, align 32
@hp_rampup_step_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95], [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0ms\00", [28 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.98ms\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.95ms\00", [25 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.9ms\00", [26 x i8] zeroinitializer }, align 32
@vol_soft_step_mode_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.96, ptr @.str.97, ptr @.str.98], [20 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fast\00", [27 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slow\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF IN\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC Left Input\00", [17 x i8] zeroinitializer }, align 32
@ldac_in_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ldac_in_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC Right Input\00", [16 x i8] zeroinitializer }, align 32
@rdac_in_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @rdac_in_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HP Left\00", [24 x i8] zeroinitializer }, align 32
@aic31xx_dapm_hpl_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HP Right\00", [23 x i8] zeroinitializer }, align 32
@aic31xx_dapm_hpr_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPL Driver\00", [21 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPR Driver\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Activate I2S clocks\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@common31xx_dapm_widgets = internal constant { [13 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [604 x i8] } { [13 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.99, ptr @.str.100, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @ldac_in_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rdac_in_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.103, ptr @.str.104, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @aic31xx_dapm_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.105, ptr @.str.106, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 63, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @aic31xx_dapm_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic31xx_dapm_hpl_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic31xx_dapm_hpr_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 159, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @aic31xx_dapm_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 159, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @aic31xx_dapm_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @mic_bias_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [604 x i8] zeroinitializer }, align 32
@ldac_in_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 63, i8 4, i8 4, i32 4, i32 3, ptr @ldac_in_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ldac_in_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119], [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Left Data\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Right Data\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mono\00", [27 x i8] zeroinitializer }, align 32
@rdac_in_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 63, i8 2, i8 2, i32 4, i32 3, ptr @rdac_in_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rdac_in_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.116, ptr @.str.118, ptr @.str.117, ptr @.str.119], [16 x i8] zeroinitializer }, align 32
@aic31xx_dapm_power_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 446, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown widget '%s' calling %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aic31xx_dapm_power_event\00", [39 x i8] zeroinitializer }, align 32
@aic31xx_dapm_power_event._entry_ptr = internal global ptr @aic31xx_dapm_power_event._entry, section ".printk_index", align 4
@aic31xx_dapm_power_event.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.121, ptr @.str.3, ptr @.str.122, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unhandled dapm widget event %d from %s\0A\00", [56 x i8] zeroinitializer }, align 32
@aic31xx_wait_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 400, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Failed! 0x%x was 0x%x expected 0x%x (%d, 0x%x, %d us)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aic31xx_wait_bits\00", [46 x i8] zeroinitializer }, align 32
@aic31xx_wait_bits._entry_ptr = internal global ptr @aic31xx_wait_bits._entry, section ".printk_index", align 4
@.str.125 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 164, i32 164, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 165, i32 165, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@mic_bias_event.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.128, ptr @.str.3, ptr @.str.129, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mic_bias_event\00", [17 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: turned on\0A\00", [17 x i8] zeroinitializer }, align 32
@mic_bias_event.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.128, ptr @.str.3, ptr @.str.130, i8 0, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: turned off\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Output Left\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Output Right\00", [19 x i8] zeroinitializer }, align 32
@aic31xx_codec_probe.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.133, ptr @.str.3, ptr @.str.134, i8 1, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aic31xx_codec_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"## %s\0A\00", [25 x i8] zeroinitializer }, align 32
@aic31xx_codec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.3, i32 1383, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to request regulator notifier: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@aic31xx_codec_probe._entry_ptr = internal global ptr @aic31xx_codec_probe._entry, section ".printk_index", align 4
@aic31xx_regulator_event.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.136, ptr @.str.3, ptr @.str.137, i8 1, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aic31xx_regulator_event\00", [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"## %s: DISABLE received\0A\00", [39 x i8] zeroinitializer }, align 32
@aic31xx_snd_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_fgain_tlv }, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_cgain_tlv }, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mic_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }], [32 x i8] zeroinitializer }, align 32
@aic311x_snd_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @class_D_drv_tlv }, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }], [48 x i8] zeroinitializer }, align 32
@aic310x_snd_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @class_D_drv_tlv }, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sp_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC Fine Capture Volume\00", [40 x i8] zeroinitializer }, align 32
@adc_fgain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 10], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 82, i32 82, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 82, i32 82, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@adc_cgain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2000, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 -24, i32 40, i32 40, i32 83, i32 83, i32 0, i32 0, i32 6, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mic PGA Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@mic_pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 119, i32 119, i32 175, i32 175, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Speaker Driver Playback Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 170, i32 171, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Speaker Driver Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@class_D_drv_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 170, i32 171, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Speaker Analog Playback Volume\00", [33 x i8] zeroinitializer }, align 32
@sp_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6350, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 166, i32 167, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 170, i32 170, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 170, i32 170, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 166, i32 166, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@dac31xx_audio_map = internal constant { [5 x %struct.snd_soc_dapm_route], [92 x i8] } { [5 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.158, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.160, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.162, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.164, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.162, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }], [92 x i8] zeroinitializer }, align 32
@aic31xx_audio_map = internal constant { [23 x %struct.snd_soc_dapm_route], [308 x i8] } { [23 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.179, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.180, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.181, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.179, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.180, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.181, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.179, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.180, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.181, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.179, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.180, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.181, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.158, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.183, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr @.str.185, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.164, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr @.str.185, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }], [308 x i8] zeroinitializer }, align 32
@aic311x_audio_map = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.191, ptr @.str.125, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.191, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.192, ptr @.str.125, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.192, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.194, ptr null, ptr @.str.190, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@aic310x_audio_map = internal constant { [3 x %struct.snd_soc_dapm_route], [36 x i8] } { [3 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.199, ptr @.str.125, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.199, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.198, ptr null, %struct.snd_soc_dobj zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@dac31xx_left_output_switches = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }], [48 x i8] zeroinitializer }, align 32
@dac31xx_right_output_switches = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }], [32 x i8] zeroinitializer }, align 32
@dac31xx_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @dac31xx_left_output_switches, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @dac31xx_right_output_switches, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"From Left DAC\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"From AIN1\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"From AIN2\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"From Right DAC\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIC1LP\00", [25 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIC1RP\00", [25 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIC1LM\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC1LP P-Terminal\00", [46 x i8] zeroinitializer }, align 32
@p_term_mic1lp = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @mic1lp_p_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC1RP P-Terminal\00", [46 x i8] zeroinitializer }, align 32
@p_term_mic1rp = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.171, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @mic1rp_p_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC1LM P-Terminal\00", [46 x i8] zeroinitializer }, align 32
@p_term_mic1lm = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @mic1lm_p_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MIC1LM M-Terminal\00", [46 x i8] zeroinitializer }, align 32
@m_term_mic1lm = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @mic1lm_m_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MIC_GAIN_CTL\00", [19 x i8] zeroinitializer }, align 32
@aic31xx_left_output_switches = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.185, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }], [48 x i8] zeroinitializer }, align 32
@aic31xx_right_output_switches = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.185, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF OUT\00", [24 x i8] zeroinitializer }, align 32
@aic31xx_dapm_widgets = internal constant { [12 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [528 x i8] } { [12 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @p_term_mic1lp, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @p_term_mic1rp, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @p_term_mic1lm, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.173, ptr @.str.174, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 81, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @aic31xx_dapm_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @m_term_mic1lm, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 175, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @aic31xx_left_output_switches, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @aic31xx_right_output_switches, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.177, ptr @.str.174, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [528 x i8] zeroinitializer }, align 32
@mic1lp_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 176, i8 6, i8 6, i32 4, i32 3, ptr @mic_select_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mic_select_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.116, ptr @.str.179, ptr @.str.180, ptr @.str.181], [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FFR 10 Ohm\00", [21 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FFR 20 Ohm\00", [21 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FFR 40 Ohm\00", [21 x i8] zeroinitializer }, align 32
@mic1rp_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 176, i8 4, i8 4, i32 4, i32 3, ptr @mic_select_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mic1lm_p_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 176, i8 2, i8 2, i32 4, i32 3, ptr @mic_select_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mic1lm_m_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 177, i8 4, i8 4, i32 4, i32 3, ptr @mic_select_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"From MIC1LP\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"From MIC1RP\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 163, i32 163, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPL ClassD\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPR ClassD\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Speaker Left\00", [19 x i8] zeroinitializer }, align 32
@aic31xx_dapm_spl_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Speaker Right\00", [18 x i8] zeroinitializer }, align 32
@aic31xx_dapm_spr_switch = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPL\00", [28 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPR\00", [28 x i8] zeroinitializer }, align 32
@aic311x_dapm_widgets = internal constant { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [264 x i8] } { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 160, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @aic31xx_dapm_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 160, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @aic31xx_dapm_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic31xx_dapm_spl_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic31xx_dapm_spr_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [264 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 166, i32 166, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 167, i32 167, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SPK ClassD\00", [21 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SPK\00", [28 x i8] zeroinitializer }, align 32
@aic310x_dapm_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 160, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @aic31xx_dapm_power_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aic31xx_dapm_spl_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@aic31xx_set_bias_level.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.202, ptr @.str.3, ptr @.str.203, i8 1, i8 74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.202 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aic31xx_set_bias_level\00", [41 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"## %s: %d -> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@aic31xx_clk_on.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.204, ptr @.str.3, ptr @.str.205, i8 1, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.204 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aic31xx_clk_on\00", [17 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"codec clock -> on (rate %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@aic31xx_divs = internal constant { [53 x %struct.aic31xx_rate_divs], [284 x i8] } { [53 x %struct.aic31xx_rate_divs] [%struct.aic31xx_rate_divs { i32 512000, i32 8000, i8 4, i8 48, i16 0, i16 128, i8 48, i8 2, i8 -128, i8 48, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 8000, i8 1, i8 8, i16 1920, i16 128, i8 48, i8 2, i8 -128, i8 48, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 8000, i8 1, i8 8, i16 1920, i16 128, i8 32, i8 3, i8 -128, i8 32, i8 3 }, %struct.aic31xx_rate_divs { i32 12500000, i32 8000, i8 1, i8 7, i16 8643, i16 128, i8 48, i8 2, i8 -128, i8 48, i8 2 }, %struct.aic31xx_rate_divs { i32 705600, i32 11025, i8 3, i8 48, i16 0, i16 128, i8 24, i8 3, i8 -128, i8 24, i8 3 }, %struct.aic31xx_rate_divs { i32 12000000, i32 11025, i8 1, i8 7, i16 5264, i16 128, i8 32, i8 2, i8 -128, i8 32, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 11025, i8 1, i8 8, i16 4672, i16 128, i8 24, i8 3, i8 -128, i8 24, i8 3 }, %struct.aic31xx_rate_divs { i32 12500000, i32 11025, i8 1, i8 7, i16 2253, i16 128, i8 32, i8 2, i8 -128, i8 32, i8 2 }, %struct.aic31xx_rate_divs { i32 512000, i32 16000, i8 4, i8 48, i16 0, i16 128, i8 16, i8 3, i8 -128, i8 16, i8 3 }, %struct.aic31xx_rate_divs { i32 1024000, i32 16000, i8 2, i8 48, i16 0, i16 128, i8 16, i8 3, i8 -128, i8 16, i8 3 }, %struct.aic31xx_rate_divs { i32 12000000, i32 16000, i8 1, i8 8, i16 1920, i16 128, i8 24, i8 2, i8 -128, i8 24, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 16000, i8 1, i8 8, i16 1920, i16 128, i8 16, i8 3, i8 -128, i8 16, i8 3 }, %struct.aic31xx_rate_divs { i32 12500000, i32 16000, i8 1, i8 7, i16 8643, i16 128, i8 24, i8 2, i8 -128, i8 24, i8 2 }, %struct.aic31xx_rate_divs { i32 705600, i32 22050, i8 4, i8 36, i16 0, i16 128, i8 12, i8 3, i8 -128, i8 12, i8 3 }, %struct.aic31xx_rate_divs { i32 1411200, i32 22050, i8 2, i8 36, i16 0, i16 128, i8 12, i8 3, i8 -128, i8 12, i8 3 }, %struct.aic31xx_rate_divs { i32 12000000, i32 22050, i8 1, i8 7, i16 5264, i16 128, i8 16, i8 2, i8 -128, i8 16, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 22050, i8 1, i8 8, i16 4672, i16 128, i8 12, i8 3, i8 -128, i8 12, i8 3 }, %struct.aic31xx_rate_divs { i32 12500000, i32 22050, i8 1, i8 7, i16 2253, i16 128, i8 16, i8 2, i8 -128, i8 16, i8 2 }, %struct.aic31xx_rate_divs { i32 1024000, i32 32000, i8 2, i8 48, i16 0, i16 128, i8 12, i8 2, i8 -128, i8 12, i8 2 }, %struct.aic31xx_rate_divs { i32 2048000, i32 32000, i8 1, i8 48, i16 0, i16 128, i8 12, i8 2, i8 -128, i8 12, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 32000, i8 1, i8 8, i16 1920, i16 128, i8 12, i8 2, i8 -128, i8 12, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 32000, i8 1, i8 8, i16 1920, i16 128, i8 8, i8 3, i8 -128, i8 8, i8 3 }, %struct.aic31xx_rate_divs { i32 12500000, i32 32000, i8 1, i8 7, i16 8643, i16 128, i8 12, i8 2, i8 -128, i8 12, i8 2 }, %struct.aic31xx_rate_divs { i32 1411200, i32 44100, i8 2, i8 32, i16 0, i16 128, i8 8, i8 2, i8 -128, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 2822400, i32 44100, i8 1, i8 32, i16 0, i16 128, i8 8, i8 2, i8 -128, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 44100, i8 1, i8 7, i16 5264, i16 128, i8 8, i8 2, i8 -128, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 44100, i8 1, i8 8, i16 4672, i16 128, i8 6, i8 3, i8 -128, i8 6, i8 3 }, %struct.aic31xx_rate_divs { i32 12500000, i32 44100, i8 1, i8 7, i16 2253, i16 128, i8 8, i8 2, i8 -128, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 1536000, i32 48000, i8 2, i8 32, i16 0, i16 128, i8 8, i8 2, i8 -128, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 3072000, i32 48000, i8 1, i8 32, i16 0, i16 128, i8 8, i8 2, i8 -128, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 48000, i8 1, i8 8, i16 1920, i16 128, i8 8, i8 2, i8 -128, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 48000, i8 1, i8 7, i16 6800, i16 96, i8 5, i8 4, i8 96, i8 5, i8 4 }, %struct.aic31xx_rate_divs { i32 12500000, i32 48000, i8 1, i8 7, i16 8643, i16 128, i8 8, i8 2, i8 -128, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 2822400, i32 88200, i8 2, i8 16, i16 0, i16 64, i8 8, i8 2, i8 64, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 5644800, i32 88200, i8 1, i8 16, i16 0, i16 64, i8 8, i8 2, i8 64, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 88200, i8 1, i8 7, i16 5264, i16 64, i8 8, i8 2, i8 64, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 88200, i8 1, i8 8, i16 4672, i16 64, i8 6, i8 3, i8 64, i8 6, i8 3 }, %struct.aic31xx_rate_divs { i32 12500000, i32 88200, i8 1, i8 7, i16 2253, i16 64, i8 8, i8 2, i8 64, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 3072000, i32 96000, i8 2, i8 16, i16 0, i16 64, i8 8, i8 2, i8 64, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 6144000, i32 96000, i8 1, i8 16, i16 0, i16 64, i8 8, i8 2, i8 64, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 96000, i8 1, i8 8, i16 1920, i16 64, i8 8, i8 2, i8 64, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 96000, i8 1, i8 7, i16 6800, i16 48, i8 5, i8 4, i8 48, i8 5, i8 4 }, %struct.aic31xx_rate_divs { i32 12500000, i32 96000, i8 1, i8 7, i16 8643, i16 64, i8 8, i8 2, i8 64, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 5644800, i32 176400, i8 2, i8 8, i16 0, i16 32, i8 8, i8 2, i8 32, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 11289600, i32 176400, i8 1, i8 8, i16 0, i16 32, i8 8, i8 2, i8 32, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 176400, i8 1, i8 7, i16 5264, i16 32, i8 8, i8 2, i8 32, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 176400, i8 1, i8 8, i16 4672, i16 32, i8 6, i8 3, i8 32, i8 6, i8 3 }, %struct.aic31xx_rate_divs { i32 12500000, i32 176400, i8 1, i8 7, i16 2253, i16 32, i8 8, i8 2, i8 32, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 6144000, i32 192000, i8 2, i8 8, i16 0, i16 32, i8 8, i8 2, i8 32, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12288000, i32 192000, i8 1, i8 8, i16 0, i16 32, i8 8, i8 2, i8 32, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 192000, i8 1, i8 8, i16 1920, i16 32, i8 8, i8 2, i8 32, i8 8, i8 2 }, %struct.aic31xx_rate_divs { i32 12000000, i32 192000, i8 1, i8 7, i16 6800, i16 24, i8 5, i8 4, i8 24, i8 5, i8 4 }, %struct.aic31xx_rate_divs { i32 12500000, i32 192000, i8 1, i8 7, i16 8643, i16 32, i8 8, i8 2, i8 32, i8 8, i8 2 }], [284 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aic31xx_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.207, ptr @.str.3, i32 1285, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aic31xx_power_on\00", [47 x i8] zeroinitializer }, align 32
@aic31xx_power_on._entry_ptr = internal global ptr @aic31xx_power_on._entry, section ".printk_index", align 4
@aic31xx_power_on._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.207, ptr @.str.3, i32 1290, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to restore cache: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@aic31xx_power_on._entry_ptr.210 = internal global ptr @aic31xx_power_on._entry.208, section ".printk_index", align 4
@aic31xx_clk_off.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.211, ptr @.str.3, ptr @.str.212, i8 1, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.211 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aic31xx_clk_off\00", [16 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"codec clock -> off\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlv320dac31xx-hifi\00", [45 x i8] zeroinitializer }, align 32
@aic31xx_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @aic31xx_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @aic31xx_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @aic31xx_dac_mute, ptr null, ptr null, ptr @aic31xx_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@aic31xx_set_dai_sysclk.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.214, ptr @.str.3, ptr @.str.215, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.214 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aic31xx_set_dai_sysclk\00", [41 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"## %s: clk_id = %d, freq = %d, dir = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@aic31xx_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.3, i32 1175, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Too high mclk frequency %u\0A\00", [32 x i8] zeroinitializer }, align 32
@aic31xx_set_dai_sysclk._entry_ptr = internal global ptr @aic31xx_set_dai_sysclk._entry, section ".printk_index", align 4
@aic31xx_set_dai_sysclk._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.214, ptr @.str.3, i32 1185, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Unsupported frequency %d\0A\00", [34 x i8] zeroinitializer }, align 32
@aic31xx_set_dai_sysclk._entry_ptr.219 = internal global ptr @aic31xx_set_dai_sysclk._entry.217, section ".printk_index", align 4
@aic31xx_set_dai_fmt.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.220, ptr @.str.3, ptr @.str.221, i8 1, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.220 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aic31xx_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"## %s: fmt = 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@aic31xx_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.220, ptr @.str.3, i32 1100, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid DAI master/slave interface\0A\00", [60 x i8] zeroinitializer }, align 32
@aic31xx_set_dai_fmt._entry_ptr = internal global ptr @aic31xx_set_dai_fmt._entry, section ".printk_index", align 4
@aic31xx_set_dai_fmt._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.220, ptr @.str.3, i32 1112, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid DAI clock signal polarity\0A\00", [61 x i8] zeroinitializer }, align 32
@aic31xx_set_dai_fmt._entry_ptr.225 = internal global ptr @aic31xx_set_dai_fmt._entry.223, section ".printk_index", align 4
@aic31xx_set_dai_fmt._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.220, ptr @.str.3, i32 1142, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid DAI interface format\0A\00", [34 x i8] zeroinitializer }, align 32
@aic31xx_set_dai_fmt._entry_ptr.228 = internal global ptr @aic31xx_set_dai_fmt._entry.226, section ".printk_index", align 4
@common31xx_cm_audio_map = internal constant { [3 x %struct.snd_soc_dapm_route], [36 x i8] } { [3 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }], [36 x i8] zeroinitializer }, align 32
@aic31xx_cm_audio_map = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@aic31xx_hw_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.229, ptr @.str.3, ptr @.str.230, i8 0, i8 -13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.229 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aic31xx_hw_params\00", [46 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"## %s: width %d rate %d\0A\00", [39 x i8] zeroinitializer }, align 32
@aic31xx_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.229, ptr @.str.3, i32 991, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Unsupported width %d\0A\00", [38 x i8] zeroinitializer }, align 32
@aic31xx_hw_params._entry_ptr = internal global ptr @aic31xx_hw_params._entry, section ".printk_index", align 4
@aic31xx_setup_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.3, i32 867, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Master clock not supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aic31xx_setup_pll\00", [46 x i8] zeroinitializer }, align 32
@aic31xx_setup_pll._entry_ptr = internal global ptr @aic31xx_setup_pll._entry, section ".printk_index", align 4
@aic31xx_setup_pll._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.3, i32 896, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Sample rate (%u) and format not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@aic31xx_setup_pll._entry_ptr.236 = internal global ptr @aic31xx_setup_pll._entry.234, section ".printk_index", align 4
@aic31xx_setup_pll._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.233, ptr @.str.3, i32 901, ptr @.str.29, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can not produce exact bitclock\00", [33 x i8] zeroinitializer }, align 32
@aic31xx_setup_pll._entry_ptr.239 = internal global ptr @aic31xx_setup_pll._entry.237, section ".printk_index", align 4
@aic31xx_setup_pll.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.233, ptr @.str.3, ptr @.str.240, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.240 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"pll %d.%04d/%d dosr %d n %d m %d aosr %d n %d m %d bclk_n %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tlv320aic31xx-hifi\00", [45 x i8] zeroinitializer }, align 32
@switch.table.aic31xx_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 16, i32 32, i32 0, i32 48], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.242 = internal global [11 x i64] [i64 9, i64 32, i64 3, i64 36, i64 37, i64 38, i64 39, i64 44, i64 45, i64 46, i64 47]
@__sancov_gen_cov_switch_values.243 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 3, i64 36, i64 37, i64 38, i64 39, i64 44, i64 45, i64 46, i64 47, i64 67]
@__sancov_gen_cov_switch_values.244 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.245 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.246 = internal global [9 x i64] [i64 7, i64 32, i64 1599, i64 1695, i64 1696, i64 1855, i64 1873, i64 1951, i64 1952]
@__sancov_gen_cov_switch_values.247 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.248 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.249 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.250 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.251 = private unnamed_addr constant [19 x i8] c"aic31xx_i2c_driver\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1745, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1747, i32 11 }
@___asan_gen_.257 = private unnamed_addr constant [23 x i8] c"tlv320aic31xx_of_match\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1470, i32 34 }
@___asan_gen_.260 = private unnamed_addr constant [15 x i8] c"aic31xx_i2c_id\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1732, i32 35 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1638, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [19 x i8] c"aic31xx_i2c_regmap\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 132, i32 35 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1645, i32 20 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1648, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1661, i32 49 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1670, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1681, i32 62 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1685, i32 10 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1694, i32 43 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1712, i32 21 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1715, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant [25 x i8] c"soc_codec_driver_aic31xx\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1407, i32 46 }
@___asan_gen_.326 = private unnamed_addr constant [19 x i8] c"dac31xx_dai_driver\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1432, i32 34 }
@___asan_gen_.329 = private unnamed_addr constant [19 x i8] c"aic31xx_dai_driver\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1447, i32 34 }
@___asan_gen_.332 = private unnamed_addr constant [21 x i8] c"aic31xx_reg_defaults\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 42, i32 33 }
@___asan_gen_.335 = private unnamed_addr constant [15 x i8] c"aic31xx_ranges\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 120, i32 38 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 146, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 147, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 148, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 149, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 150, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 151, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1601, i32 44 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1613, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1625, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1502, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1512, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1514, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1522, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1532, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1556, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1561, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1571, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1573, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1575, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1577, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1579, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1585, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [24 x i8] c"common31xx_snd_controls\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 322, i32 38 }
@___asan_gen_.458 = private unnamed_addr constant [21 x i8] c"common31xx_audio_map\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 657, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 323, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [12 x i8] c"dac_vol_tlv\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 310, i32 14 }
@___asan_gen_.467 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 326, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 328, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [11 x i8] c"hp_drv_tlv\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 314, i32 14 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 331, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [11 x i8] c"hp_vol_tlv\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 316, i32 14 }
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 339, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [21 x i8] c"hp_poweron_time_enum\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 295, i32 8 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 340, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c"hp_rampup_step_enum\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 301, i32 8 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 342, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [24 x i8] c"vol_soft_step_mode_enum\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 307, i32 8 }
@___asan_gen_.504 = private unnamed_addr constant [21 x i8] c"hp_poweron_time_text\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 291, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 292, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 292, i32 9 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 292, i32 19 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 292, i32 28 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 292, i32 38 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 292, i32 48 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 293, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 293, i32 11 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 293, i32 20 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 293, i32 29 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 293, i32 38 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 293, i32 47 }
@___asan_gen_.543 = private unnamed_addr constant [20 x i8] c"hp_rampup_step_text\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 298, i32 27 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 299, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 299, i32 9 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 299, i32 19 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 299, i32 29 }
@___asan_gen_.558 = private unnamed_addr constant [24 x i8] c"vol_soft_step_mode_text\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 304, i32 27 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 305, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 305, i32 10 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 305, i32 18 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 537, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 539, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [16 x i8] c"ldac_in_control\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 377, i32 38 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 541, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant [16 x i8] c"rdac_in_control\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 380, i32 38 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 544, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 548, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 553, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant [24 x i8] c"aic31xx_dapm_hpl_switch\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 499, i32 38 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 555, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant [24 x i8] c"aic31xx_dapm_hpr_switch\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 502, i32 38 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 559, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 562, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 567, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 571, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 575, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 576, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant [24 x i8] c"common31xx_dapm_widgets\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 536, i32 41 }
@___asan_gen_.633 = private unnamed_addr constant [13 x i8] c"ldac_in_enum\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 273, i32 8 }
@___asan_gen_.636 = private unnamed_addr constant [13 x i8] c"ldac_in_text\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 265, i32 27 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 266, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 266, i32 9 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 266, i32 22 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 266, i32 36 }
@___asan_gen_.651 = private unnamed_addr constant [13 x i8] c"rdac_in_enum\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 275, i32 8 }
@___asan_gen_.654 = private unnamed_addr constant [13 x i8] c"rdac_in_text\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 269, i32 27 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 445, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 458, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 397, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 500, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.682 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 524, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 530, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 669, i32 24 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 674, i32 25 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1369, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1381, i32 4 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1215, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant [21 x i8] c"aic31xx_snd_controls\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 345, i32 38 }
@___asan_gen_.719 = private unnamed_addr constant [21 x i8] c"aic311x_snd_controls\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 357, i32 38 }
@___asan_gen_.722 = private unnamed_addr constant [21 x i8] c"aic310x_snd_controls\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 367, i32 38 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 346, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant [14 x i8] c"adc_fgain_tlv\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 311, i32 14 }
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 349, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 350, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [14 x i8] c"adc_cgain_tlv\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 312, i32 14 }
@___asan_gen_.742 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 353, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [12 x i8] c"mic_pga_tlv\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 313, i32 14 }
@___asan_gen_.749 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 358, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 360, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant [16 x i8] c"class_D_drv_tlv\00", align 1
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 315, i32 14 }
@___asan_gen_.760 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 363, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant [11 x i8] c"sp_vol_tlv\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 317, i32 14 }
@___asan_gen_.767 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.768 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.769 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.770 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [18 x i8] c"dac31xx_audio_map\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 680, i32 1 }
@___asan_gen_.774 = private unnamed_addr constant [18 x i8] c"aic31xx_audio_map\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 692, i32 1 }
@___asan_gen_.777 = private unnamed_addr constant [18 x i8] c"aic311x_audio_map\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 728, i32 1 }
@___asan_gen_.780 = private unnamed_addr constant [18 x i8] c"aic310x_audio_map\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 741, i32 1 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 581, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 582, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant [29 x i8] c"dac31xx_left_output_switches\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 476, i32 38 }
@___asan_gen_.792 = private unnamed_addr constant [30 x i8] c"dac31xx_right_output_switches\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 482, i32 38 }
@___asan_gen_.795 = private unnamed_addr constant [21 x i8] c"dac31xx_dapm_widgets\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 579, i32 41 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 477, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 478, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 479, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 483, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.814 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 595, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 596, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 597, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 600, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant [14 x i8] c"p_term_mic1lp\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 487, i32 38 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 602, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant [14 x i8] c"p_term_mic1rp\00", align 1
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 490, i32 38 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 604, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant [14 x i8] c"p_term_mic1lm\00", align 1
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 493, i32 38 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 608, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 612, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant [14 x i8] c"m_term_mic1lm\00", align 1
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 496, i32 38 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 616, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant [29 x i8] c"aic31xx_left_output_switches\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 465, i32 38 }
@___asan_gen_.860 = private unnamed_addr constant [30 x i8] c"aic31xx_right_output_switches\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 471, i32 38 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 627, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant [21 x i8] c"aic31xx_dapm_widgets\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 593, i32 41 }
@___asan_gen_.869 = private unnamed_addr constant [14 x i8] c"mic1lp_p_enum\00", align 1
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 281, i32 8 }
@___asan_gen_.872 = private unnamed_addr constant [16 x i8] c"mic_select_text\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 277, i32 27 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 278, i32 9 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 278, i32 23 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 278, i32 37 }
@___asan_gen_.884 = private unnamed_addr constant [14 x i8] c"mic1rp_p_enum\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 283, i32 8 }
@___asan_gen_.887 = private unnamed_addr constant [14 x i8] c"mic1lm_p_enum\00", align 1
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 285, i32 8 }
@___asan_gen_.890 = private unnamed_addr constant [14 x i8] c"mic1lm_m_enum\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 288, i32 8 }
@___asan_gen_.893 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 467, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 468, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.902 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.903 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 632, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 635, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 638, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant [24 x i8] c"aic31xx_dapm_spl_switch\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 505, i32 38 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 640, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant [24 x i8] c"aic31xx_dapm_spr_switch\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 508, i32 38 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 642, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 643, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant [21 x i8] c"aic311x_dapm_widgets\00", align 1
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 630, i32 41 }
@___asan_gen_.931 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.932 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 648, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 651, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 653, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant [21 x i8] c"aic310x_dapm_widgets\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 647, i32 41 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1319, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1243, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant [13 x i8] c"aic31xx_divs\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 197, i32 39 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1285, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1289, i32 3 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1261, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1434, i32 11 }
@___asan_gen_.984 = private unnamed_addr constant [16 x i8] c"aic31xx_dai_ops\00", align 1
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1424, i32 37 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1167, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1174, i32 3 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1184, i32 3 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1084, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1100, i32 3 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1112, i32 3 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1142, i32 3 }
@___asan_gen_.1029 = private unnamed_addr constant [24 x i8] c"common31xx_cm_audio_map\00", align 1
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 759, i32 1 }
@___asan_gen_.1032 = private unnamed_addr constant [21 x i8] c"aic31xx_cm_audio_map\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 767, i32 1 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 970, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 990, i32 3 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 867, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 894, i32 3 }
@___asan_gen_.1062 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 901, i32 3 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 945, i32 2 }
@___asan_gen_.1071 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1072 = private constant [36 x i8] c"../sound/soc/codecs/tlv320aic31xx.c\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1072, i32 1449, i32 11 }
@___asan_gen_.1074 = private unnamed_addr constant [31 x i8] c"switch.table.aic31xx_hw_params\00", align 1
@llvm.compiler.used = appending global [333 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_aic31xx_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_tlv320aic31xx__307_1754_aic31xx_i2c_driver_init6, ptr @aic31xx_codec_probe._entry, ptr @aic31xx_codec_probe._entry_ptr, ptr @aic31xx_configure_ocmv._entry, ptr @aic31xx_configure_ocmv._entry.30, ptr @aic31xx_configure_ocmv._entry_ptr, ptr @aic31xx_configure_ocmv._entry_ptr.32, ptr @aic31xx_dapm_power_event._entry, ptr @aic31xx_dapm_power_event._entry_ptr, ptr @aic31xx_hw_params._entry, ptr @aic31xx_hw_params._entry_ptr, ptr @aic31xx_i2c_driver_exit, ptr @aic31xx_i2c_probe._entry, ptr @aic31xx_i2c_probe._entry.10, ptr @aic31xx_i2c_probe._entry.17, ptr @aic31xx_i2c_probe._entry_ptr, ptr @aic31xx_i2c_probe._entry_ptr.12, ptr @aic31xx_i2c_probe._entry_ptr.19, ptr @aic31xx_irq._entry, ptr @aic31xx_irq._entry.35, ptr @aic31xx_irq._entry.38, ptr @aic31xx_irq._entry.41, ptr @aic31xx_irq._entry.43, ptr @aic31xx_irq._entry.46, ptr @aic31xx_irq._entry.49, ptr @aic31xx_irq._entry.52, ptr @aic31xx_irq._entry.55, ptr @aic31xx_irq._entry.58, ptr @aic31xx_irq._entry.61, ptr @aic31xx_irq._entry.64, ptr @aic31xx_irq._entry.67, ptr @aic31xx_irq._entry_ptr, ptr @aic31xx_irq._entry_ptr.37, ptr @aic31xx_irq._entry_ptr.40, ptr @aic31xx_irq._entry_ptr.42, ptr @aic31xx_irq._entry_ptr.45, ptr @aic31xx_irq._entry_ptr.48, ptr @aic31xx_irq._entry_ptr.51, ptr @aic31xx_irq._entry_ptr.54, ptr @aic31xx_irq._entry_ptr.57, ptr @aic31xx_irq._entry_ptr.60, ptr @aic31xx_irq._entry_ptr.63, ptr @aic31xx_irq._entry_ptr.66, ptr @aic31xx_irq._entry_ptr.69, ptr @aic31xx_power_on._entry, ptr @aic31xx_power_on._entry.208, ptr @aic31xx_power_on._entry_ptr, ptr @aic31xx_power_on._entry_ptr.210, ptr @aic31xx_set_dai_fmt._entry, ptr @aic31xx_set_dai_fmt._entry.223, ptr @aic31xx_set_dai_fmt._entry.226, ptr @aic31xx_set_dai_fmt._entry_ptr, ptr @aic31xx_set_dai_fmt._entry_ptr.225, ptr @aic31xx_set_dai_fmt._entry_ptr.228, ptr @aic31xx_set_dai_sysclk._entry, ptr @aic31xx_set_dai_sysclk._entry.217, ptr @aic31xx_set_dai_sysclk._entry_ptr, ptr @aic31xx_set_dai_sysclk._entry_ptr.219, ptr @aic31xx_setup_pll._entry, ptr @aic31xx_setup_pll._entry.234, ptr @aic31xx_setup_pll._entry.237, ptr @aic31xx_setup_pll._entry_ptr, ptr @aic31xx_setup_pll._entry_ptr.236, ptr @aic31xx_setup_pll._entry_ptr.239, ptr @aic31xx_wait_bits._entry, ptr @aic31xx_wait_bits._entry_ptr, ptr @aic31xx_i2c_driver, ptr @.str, ptr @tlv320aic31xx_of_match, ptr @aic31xx_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @aic31xx_i2c_probe._key, ptr @aic31xx_i2c_regmap, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @soc_codec_driver_aic31xx, ptr @dac31xx_dai_driver, ptr @aic31xx_dai_driver, ptr @aic31xx_reg_defaults, ptr @aic31xx_ranges, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @common31xx_snd_controls, ptr @common31xx_audio_map, ptr @.str.70, ptr @dac_vol_tlv, ptr @.compoundliteral, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @hp_drv_tlv, ptr @.compoundliteral.74, ptr @.str.75, ptr @hp_vol_tlv, ptr @.compoundliteral.76, ptr @.str.77, ptr @hp_poweron_time_enum, ptr @.str.78, ptr @hp_rampup_step_enum, ptr @.str.79, ptr @vol_soft_step_mode_enum, ptr @hp_poweron_time_text, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @hp_rampup_step_text, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @vol_soft_step_mode_text, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @ldac_in_control, ptr @.str.102, ptr @rdac_in_control, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @aic31xx_dapm_hpl_switch, ptr @.str.108, ptr @aic31xx_dapm_hpr_switch, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @common31xx_dapm_widgets, ptr @ldac_in_enum, ptr @ldac_in_text, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @rdac_in_enum, ptr @rdac_in_text, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @aic31xx_snd_controls, ptr @aic311x_snd_controls, ptr @aic310x_snd_controls, ptr @.str.138, ptr @adc_fgain_tlv, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @adc_cgain_tlv, ptr @.compoundliteral.143, ptr @.str.144, ptr @mic_pga_tlv, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @class_D_drv_tlv, ptr @.compoundliteral.149, ptr @.str.150, ptr @sp_vol_tlv, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.compoundliteral.153, ptr @.compoundliteral.154, ptr @dac31xx_audio_map, ptr @aic31xx_audio_map, ptr @aic311x_audio_map, ptr @aic310x_audio_map, ptr @.str.155, ptr @.str.156, ptr @dac31xx_left_output_switches, ptr @dac31xx_right_output_switches, ptr @dac31xx_dapm_widgets, ptr @.str.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.str.164, ptr @.compoundliteral.165, ptr @.compoundliteral.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @p_term_mic1lp, ptr @.str.171, ptr @p_term_mic1rp, ptr @.str.172, ptr @p_term_mic1lm, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @m_term_mic1lm, ptr @.str.176, ptr @aic31xx_left_output_switches, ptr @aic31xx_right_output_switches, ptr @.str.177, ptr @aic31xx_dapm_widgets, ptr @mic1lp_p_enum, ptr @mic_select_text, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @mic1rp_p_enum, ptr @mic1lm_p_enum, ptr @mic1lm_m_enum, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.str.185, ptr @.compoundliteral.186, ptr @.compoundliteral.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @aic31xx_dapm_spl_switch, ptr @.str.192, ptr @aic31xx_dapm_spr_switch, ptr @.str.193, ptr @.str.194, ptr @aic311x_dapm_widgets, ptr @.compoundliteral.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @aic310x_dapm_widgets, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @aic31xx_divs, ptr @.str.206, ptr @.str.207, ptr @.str.209, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @aic31xx_dai_ops, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.224, ptr @.str.227, ptr @common31xx_cm_audio_map, ptr @aic31xx_cm_audio_map, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.235, ptr @.str.238, ptr @.str.240, ptr @.str.241, ptr @switch.table.aic31xx_hw_params], section "llvm.metadata"
@0 = internal global [294 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tlv320aic31xx_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_i2c_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_i2c_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_driver_aic31xx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac31xx_dai_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_dai_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_reg_defaults to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_configure_ocmv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_configure_ocmv._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_irq._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common31xx_snd_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common31xx_audio_map to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_drv_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_poweron_time_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_rampup_step_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_soft_step_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_poweron_time_text to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_rampup_step_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_soft_step_mode_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldac_in_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdac_in_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_dapm_hpl_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_dapm_hpr_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common31xx_dapm_widgets to i32), i32 2340, i32 2944, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldac_in_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ldac_in_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdac_in_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdac_in_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_dapm_power_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_wait_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_codec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_snd_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic311x_snd_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic310x_snd_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_fgain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_cgain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_D_drv_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sp_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac31xx_audio_map to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_audio_map to i32), i32 1196, i32 1504, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic311x_audio_map to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic310x_audio_map to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac31xx_left_output_switches to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac31xx_right_output_switches to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac31xx_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_term_mic1lp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_term_mic1rp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p_term_mic1lm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m_term_mic1lm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_left_output_switches to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_right_output_switches to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_dapm_widgets to i32), i32 2160, i32 2688, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic1lp_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_select_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic1rp_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic1lm_p_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic1lm_m_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_dapm_spl_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_dapm_spr_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic311x_dapm_widgets to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic310x_dapm_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_divs to i32), i32 1060, i32 1344, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_power_on._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_set_dai_sysclk._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_set_dai_fmt._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_set_dai_fmt._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common31xx_cm_audio_map to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_cm_audio_map to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_setup_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_setup_pll._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic31xx_setup_pll._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aic31xx_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @aic31xx_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aic31xx_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @aic31xx_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_i2c_probe(ptr noundef %i2c, ptr noundef %id) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %micbias_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %micbias_value) #7
  %0 = ptrtoint ptr %micbias_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %micbias_value, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_i2c_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_i2c_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !539

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_i2c_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %id, i32 noundef %2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 240, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %call9 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @aic31xx_i2c_regmap, ptr noundef nonnull @aic31xx_i2c_probe._key, ptr noundef nonnull @.str.5) #7
  %regmap = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.6, i32 noundef %4) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end7
  tail call void @regcache_cache_only(ptr noundef %call9, i1 noundef zeroext true) #7
  %dev22 = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev3, ptr %dev22, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %irq23 = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %irq23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %irq23, align 4
  %driver_data24 = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data24 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data24, align 4
  %codec_type = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %codec_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %codec_type, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i, align 4
  %fwnode = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 28
  %13 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fwnode, align 4
  %call.i149 = call i32 @fwnode_property_read_u32_array(ptr noundef %14, ptr noundef nonnull @.str.9, ptr noundef nonnull %micbias_value, i32 noundef 1) #7
  %15 = ptrtoint ptr %micbias_value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %micbias_value, align 4
  %.off = add i32 %16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end19.sw.epilog_crit_edge, label %do.end30

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.11, i32 noundef %16) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end30, %if.end19.sw.epilog_crit_edge
  %.sink = phi i32 [ 1, %do.end30 ], [ %16, %if.end19.sw.epilog_crit_edge ]
  %19 = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %19, align 4
  %21 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev22, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i, align 8
  %tobool35.not = icmp eq ptr %24, null
  br i1 %tobool35.not, label %sw.epilog.if.end45_crit_edge, label %if.then36

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %pdata = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 7
  %25 = call ptr @memcpy(ptr %pdata, ptr %24, i32 12)
  %26 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pdata, align 4
  %28 = ptrtoint ptr %codec_type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %codec_type, align 4
  %micbias_vg43 = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 7, i32 2
  %29 = ptrtoint ptr %micbias_vg43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %micbias_vg43, align 4
  %31 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %19, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %sw.epilog.if.end45_crit_edge
  %32 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev22, align 4
  %call47 = call ptr @devm_gpiod_get_optional(ptr noundef %33, ptr noundef nonnull @.str.13, i32 noundef 3) #7
  %gpio_reset = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call47, ptr %gpio_reset, align 4
  %cmp.i151 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then50, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end45
  %arrayidx56 = getelementptr %struct.aic31xx_priv, ptr %call.i, i32 0, i32 8, i32 0
  %35 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.20, ptr %arrayidx56, align 4
  %arrayidx56.1 = getelementptr %struct.aic31xx_priv, ptr %call.i, i32 0, i32 8, i32 1
  %36 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.21, ptr %arrayidx56.1, align 4
  %arrayidx56.2 = getelementptr %struct.aic31xx_priv, ptr %call.i, i32 0, i32 8, i32 2
  %37 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.22, ptr %arrayidx56.2, align 4
  %arrayidx56.3 = getelementptr %struct.aic31xx_priv, ptr %call.i, i32 0, i32 8, i32 3
  %38 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.23, ptr %arrayidx56.3, align 4
  %arrayidx56.4 = getelementptr %struct.aic31xx_priv, ptr %call.i, i32 0, i32 8, i32 4
  %39 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.24, ptr %arrayidx56.4, align 4
  %arrayidx56.5 = getelementptr %struct.aic31xx_priv, ptr %call.i, i32 0, i32 8, i32 5
  %40 = ptrtoint ptr %arrayidx56.5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.25, ptr %arrayidx56.5, align 4
  %41 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev22, align 4
  %call60 = call i32 @devm_regulator_bulk_get(ptr noundef %42, i32 noundef 6, ptr noundef %arrayidx56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  %43 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev22, align 4
  br i1 %tobool61.not, label %if.end65, label %if.then62

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev22, align 4
  %47 = ptrtoint ptr %call47 to i32
  %call54 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %46, i32 noundef %47, ptr noundef nonnull @.str.14) #7
  br label %cleanup

if.then62:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %44, i32 noundef %call60, ptr noundef nonnull @.str.15) #7
  br label %cleanup

if.end65:                                         ; preds = %for.body.preheader
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %48 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %value.i, align 4, !annotation !540
  %fwnode.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 28
  %49 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fwnode.i, align 4
  %tobool.not.i = icmp eq ptr %50, null
  br i1 %tobool.not.i, label %if.end65.if.end5.i_crit_edge, label %land.lhs.true.i

if.end65.if.end5.i_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end65
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %50, ptr noundef nonnull @.str.26, ptr noundef nonnull %value.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end5.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %51 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %cmp.i152 = icmp ult i32 %52, 4
  br i1 %cmp.i152, label %if.then4.i, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = trunc i32 %52 to i8
  %ocmv.i = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 17
  %53 = ptrtoint ptr %ocmv.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i, ptr %ocmv.i, align 4
  br label %aic31xx_configure_ocmv.exit

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %land.lhs.true.i.if.end5.i_crit_edge, %if.end65.if.end5.i_crit_edge
  %consumer.i = getelementptr %struct.aic31xx_priv, ptr %call.i, i32 0, i32 8, i32 3, i32 1
  %54 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %consumer.i, align 4
  %call6.i = call i32 @regulator_get_voltage(ptr noundef %55) #7
  %consumer9.i = getelementptr %struct.aic31xx_priv, ptr %call.i, i32 0, i32 8, i32 5, i32 1
  %56 = ptrtoint ptr %consumer9.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %consumer9.i, align 4
  %call10.i = call i32 @regulator_get_voltage(ptr noundef %57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %call6.i)
  %cmp11.i = icmp sgt i32 %call6.i, 3600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950000, i32 %call10.i)
  %cmp13.i = icmp sgt i32 %call10.i, 1950000
  %or.cond.i = select i1 %cmp11.i, i1 true, i1 %cmp13.i
  br i1 %or.cond.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.27, i32 noundef %call6.i, i32 noundef %call10.i) #10
  br label %aic31xx_configure_ocmv.exit

if.else.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600000, i32 %call6.i)
  %cmp16.i = icmp eq i32 %call6.i, 3600000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1950000, i32 %call10.i)
  %cmp19.i = icmp eq i32 %call10.i, 1950000
  %or.cond82.i = select i1 %cmp16.i, i1 %cmp19.i, i1 false
  br i1 %or.cond82.i, label %if.then21.i, label %if.else23.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %ocmv22.i = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 17
  %58 = ptrtoint ptr %ocmv22.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 3, ptr %ocmv22.i, align 4
  br label %aic31xx_configure_ocmv.exit

if.else23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3299999, i32 %call6.i)
  %cmp24.i = icmp sgt i32 %call6.i, 3299999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1799999, i32 %call10.i)
  %cmp27.i = icmp sgt i32 %call10.i, 1799999
  %or.cond83.i = select i1 %cmp24.i, i1 %cmp27.i, i1 false
  br i1 %or.cond83.i, label %if.then29.i, label %if.else31.i

if.then29.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #9
  %ocmv30.i = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 17
  %59 = ptrtoint ptr %ocmv30.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 2, ptr %ocmv30.i, align 4
  br label %aic31xx_configure_ocmv.exit

if.else31.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999999, i32 %call6.i)
  %cmp32.i = icmp sgt i32 %call6.i, 2999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1649999, i32 %call10.i)
  %cmp35.i = icmp sgt i32 %call10.i, 1649999
  %or.cond84.i = select i1 %cmp32.i, i1 %cmp35.i, i1 false
  br i1 %or.cond84.i, label %if.then37.i, label %if.else39.i

if.then37.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  %ocmv38.i = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 17
  %60 = ptrtoint ptr %ocmv38.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %ocmv38.i, align 4
  br label %aic31xx_configure_ocmv.exit

if.else39.i:                                      ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2699999, i32 %call6.i)
  %cmp40.i = icmp sgt i32 %call6.i, 2699999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1524999, i32 %call10.i)
  %cmp43.i = icmp sgt i32 %call10.i, 1524999
  %or.cond85.i = select i1 %cmp40.i, i1 %cmp43.i, i1 false
  br i1 %or.cond85.i, label %if.then45.i, label %do.end50.i

if.then45.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #9
  %ocmv46.i = getelementptr inbounds %struct.aic31xx_priv, ptr %call.i, i32 0, i32 17
  %61 = ptrtoint ptr %ocmv46.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %ocmv46.i, align 4
  br label %aic31xx_configure_ocmv.exit

do.end50.i:                                       ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.31, i32 noundef %call6.i, i32 noundef %call10.i) #10
  br label %aic31xx_configure_ocmv.exit

aic31xx_configure_ocmv.exit:                      ; preds = %do.end50.i, %if.then45.i, %if.then37.i, %if.then29.i, %if.then21.i, %do.end.i, %if.then4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  %62 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp67 = icmp sgt i32 %63, 0
  br i1 %cmp67, label %if.then68, label %aic31xx_configure_ocmv.exit.if.end83_crit_edge

aic31xx_configure_ocmv.exit.if.end83_crit_edge:   ; preds = %aic31xx_configure_ocmv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then68:                                        ; preds = %aic31xx_configure_ocmv.exit
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call.i153 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 51, i32 noundef 60, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %call72 = call i32 @regmap_write(ptr noundef %67, i32 noundef 48, i32 noundef 204) #7
  %68 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev22, align 4
  %70 = ptrtoint ptr %irq23 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq23, align 4
  %call75 = call i32 @devm_request_threaded_irq(ptr noundef %69, i32 noundef %71, ptr noundef null, ptr noundef nonnull @aic31xx_irq, i32 noundef 8192, ptr noundef nonnull @.str.16, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then68.if.end83_crit_edge, label %do.end80

if.then68.if.end83_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

do.end80:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end83:                                         ; preds = %if.then68.if.end83_crit_edge, %aic31xx_configure_ocmv.exit.if.end83_crit_edge
  %74 = ptrtoint ptr %codec_type to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %codec_type, align 4
  %and = and i32 %75, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool85.not = icmp eq i32 %and, 0
  br i1 %tobool85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = call i32 @devm_snd_soc_register_component(ptr noundef %dev3, ptr noundef nonnull @soc_codec_driver_aic31xx, ptr noundef nonnull @dac31xx_dai_driver, i32 noundef 1) #7
  br label %cleanup

if.else:                                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call i32 @devm_snd_soc_register_component(ptr noundef %dev3, ptr noundef nonnull @soc_codec_driver_aic31xx, ptr noundef nonnull @aic31xx_dai_driver, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then86, %do.end80, %if.then62, %if.then50, %if.then12, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then12 ], [ %call54, %if.then50 ], [ %call64, %if.then62 ], [ %call75, %do.end80 ], [ %call88, %if.then86 ], [ %call90, %if.else ], [ -12, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %micbias_value) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %value = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.aic31xx_priv, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !540
  %regmap = getelementptr inbounds %struct.aic31xx_priv, ptr %data, i32 0, i32 3
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 44, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %exit.thread155

exit.thread155:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %call) #10
  br label %40

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.end.read_overflow_crit_edge, label %if.then3

if.end.read_overflow_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_overflow

if.then3:                                         ; preds = %if.end
  %and = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then3.if.end10_crit_edge, label %do.end9

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end9:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.36) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end9, %if.then3.if.end10_crit_edge
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %and11 = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end17_crit_edge, label %do.end16

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end16, %if.end10.if.end17_crit_edge
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %and18 = and i32 %10, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end50_crit_edge, label %if.then20

if.end17.if.end50_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then20:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val, align 4, !annotation !540
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call22 = call i32 @regmap_read(ptr noundef %13, i32 noundef 46, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %call22) #10
  br label %cleanup

if.end28:                                         ; preds = %if.then20
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %and29 = shl i32 %15, 9
  %16 = and i32 %and29, 16384
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call34 = call i32 @regmap_read(ptr noundef %18, i32 noundef 67, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %call34) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end28
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and41 = lshr i32 %20, 5
  %shr = and i32 %and41, 3
  %21 = zext i32 %shr to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr, label %if.end40.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb43
  ]

if.end40.sw.epilog_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %or42 = or i32 %16, 1
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %or44 = or i32 %16, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb43, %sw.bb, %if.end40.sw.epilog_crit_edge
  %status.1 = phi i32 [ %16, %if.end40.sw.epilog_crit_edge ], [ %or44, %sw.bb43 ], [ %or42, %sw.bb ]
  %jack = getelementptr inbounds %struct.aic31xx_priv, ptr %data, i32 0, i32 10
  %22 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %jack, align 4
  %tobool45.not = icmp eq ptr %23, null
  br i1 %tobool45.not, label %sw.epilog.cleanup.thread_crit_edge, label %if.then46

sw.epilog.cleanup.thread_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then46:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  call void @snd_soc_jack_report(ptr noundef nonnull %23, i32 noundef %status.1, i32 noundef 16387) #7
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then46, %sw.epilog.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %if.end50

cleanup:                                          ; preds = %do.end39, %do.end27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  br label %exit.thread

if.end50:                                         ; preds = %cleanup.thread, %if.end17.if.end50_crit_edge
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %value, align 4
  %and51 = and i32 %25, -241
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.read_overflow_crit_edge, label %do.end56

if.end50.read_overflow_crit_edge:                 ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %read_overflow

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %25) #10
  br label %read_overflow

read_overflow:                                    ; preds = %do.end56, %if.end50.read_overflow_crit_edge, %if.end.read_overflow_crit_edge
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call59 = call i32 @regmap_read(ptr noundef %27, i32 noundef 39, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end65, label %do.end64

do.end64:                                         ; preds = %read_overflow
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.50, i32 noundef %call59) #10
  br i1 %tobool2.not, label %do.end64._crit_edge, label %do.end64.exit.thread_crit_edge

do.end64.exit.thread_crit_edge:                   ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

do.end64._crit_edge:                              ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %40

if.end65:                                         ; preds = %read_overflow
  %28 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool66.not = icmp eq i32 %29, 0
  br i1 %tobool66.not, label %exit, label %if.then67

if.then67:                                        ; preds = %if.end65
  %and70 = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then67.if.end76_crit_edge, label %do.end75

if.then67.if.end76_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.end75:                                         ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.53) #10
  br label %if.end76

if.end76:                                         ; preds = %do.end75, %if.then67.if.end76_crit_edge
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 4
  %and77 = and i32 %31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end76.if.end83_crit_edge, label %do.end82

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.56) #10
  br label %if.end83

if.end83:                                         ; preds = %do.end82, %if.end76.if.end83_crit_edge
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %value, align 4
  %and84 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end90_crit_edge, label %do.end89

if.end83.if.end90_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

do.end89:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.59) #10
  br label %if.end90

if.end90:                                         ; preds = %do.end89, %if.end83.if.end90_crit_edge
  %34 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %value, align 4
  %and91 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end90.if.end97_crit_edge, label %do.end96

if.end90.if.end97_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end96:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.62) #10
  br label %if.end97

if.end97:                                         ; preds = %do.end96, %if.end90.if.end97_crit_edge
  %36 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %value, align 4
  %and98 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.end97.if.end104_crit_edge, label %do.end103

if.end97.if.end104_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

do.end103:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.65) #10
  br label %if.end104

if.end104:                                        ; preds = %do.end103, %if.end97.if.end104_crit_edge
  %38 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %value, align 4
  %and105 = and i32 %39, -235
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.exit.thread_crit_edge, label %do.end110

if.end104.exit.thread_crit_edge:                  ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %39) #10
  br label %exit.thread

exit:                                             ; preds = %if.end65
  br i1 %tobool2.not, label %exit._crit_edge, label %exit.exit.thread_crit_edge

exit.exit.thread_crit_edge:                       ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

exit._crit_edge:                                  ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %40

exit.thread:                                      ; preds = %exit.exit.thread_crit_edge, %do.end110, %if.end104.exit.thread_crit_edge, %do.end64.exit.thread_crit_edge, %cleanup
  br label %40

40:                                               ; preds = %exit.thread, %exit._crit_edge, %do.end64._crit_edge, %exit.thread155
  %41 = phi i32 [ 1, %exit.thread ], [ 0, %exit._crit_edge ], [ 0, %exit.thread155 ], [ 0, %do.end64._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @aic31xx_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %reg, label %sw.epilog [
    i32 3, label %entry.return_crit_edge
    i32 36, label %entry.return_crit_edge1
    i32 37, label %entry.return_crit_edge2
    i32 38, label %entry.return_crit_edge3
    i32 39, label %entry.return_crit_edge4
    i32 44, label %entry.return_crit_edge5
    i32 45, label %entry.return_crit_edge6
    i32 46, label %entry.return_crit_edge7
    i32 47, label %entry.return_crit_edge8
  ]

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %entry.return_crit_edge ], [ false, %entry.return_crit_edge1 ], [ false, %entry.return_crit_edge2 ], [ false, %entry.return_crit_edge3 ], [ false, %entry.return_crit_edge4 ], [ false, %entry.return_crit_edge5 ], [ false, %entry.return_crit_edge6 ], [ false, %entry.return_crit_edge7 ], [ false, %entry.return_crit_edge8 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @aic31xx_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %reg, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 36, label %entry.return_crit_edge3
    i32 37, label %entry.return_crit_edge4
    i32 38, label %entry.return_crit_edge5
    i32 39, label %entry.return_crit_edge6
    i32 44, label %entry.return_crit_edge7
    i32 45, label %entry.return_crit_edge8
    i32 46, label %entry.return_crit_edge9
    i32 47, label %entry.return_crit_edge10
    i32 67, label %entry.return_crit_edge11
  ]

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_codec_probe(ptr noundef %component) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_codec_probe.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_codec_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !539

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.aic31xx_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_codec_probe.__UNIQUE_ID_ddebug305, ptr noundef %5, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.133) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %component, ptr %3, align 4
  %arrayidx = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @aic31xx_regulator_event, ptr %arrayidx, align 4
  %aic31xx7 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 0, i32 1
  %8 = ptrtoint ptr %aic31xx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %aic31xx7, align 4
  %consumer = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 8, i32 0, i32 1
  %9 = ptrtoint ptr %consumer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %consumer, align 4
  %call12 = tail call i32 @devm_regulator_register_notifier(ptr noundef %10, ptr noundef %arrayidx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.cond, label %do.end.do.end17_crit_edge

do.end.do.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

for.cond:                                         ; preds = %do.end
  %arrayidx.1 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @aic31xx_regulator_event, ptr %arrayidx.1, align 4
  %aic31xx7.1 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 1, i32 1
  %12 = ptrtoint ptr %aic31xx7.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %aic31xx7.1, align 4
  %consumer.1 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 8, i32 1, i32 1
  %13 = ptrtoint ptr %consumer.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %consumer.1, align 4
  %call12.1 = tail call i32 @devm_regulator_register_notifier(ptr noundef %14, ptr noundef %arrayidx.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %tobool13.not.1 = icmp eq i32 %call12.1, 0
  br i1 %tobool13.not.1, label %for.cond.1, label %for.cond.do.end17_crit_edge

for.cond.do.end17_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @aic31xx_regulator_event, ptr %arrayidx.2, align 4
  %aic31xx7.2 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 2, i32 1
  %16 = ptrtoint ptr %aic31xx7.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %aic31xx7.2, align 4
  %consumer.2 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 8, i32 2, i32 1
  %17 = ptrtoint ptr %consumer.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %consumer.2, align 4
  %call12.2 = tail call i32 @devm_regulator_register_notifier(ptr noundef %18, ptr noundef %arrayidx.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %tobool13.not.2 = icmp eq i32 %call12.2, 0
  br i1 %tobool13.not.2, label %for.cond.2, label %for.cond.1.do.end17_crit_edge

for.cond.1.do.end17_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @aic31xx_regulator_event, ptr %arrayidx.3, align 4
  %aic31xx7.3 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 3, i32 1
  %20 = ptrtoint ptr %aic31xx7.3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %3, ptr %aic31xx7.3, align 4
  %consumer.3 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 8, i32 3, i32 1
  %21 = ptrtoint ptr %consumer.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %consumer.3, align 4
  %call12.3 = tail call i32 @devm_regulator_register_notifier(ptr noundef %22, ptr noundef %arrayidx.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3)
  %tobool13.not.3 = icmp eq i32 %call12.3, 0
  br i1 %tobool13.not.3, label %for.cond.3, label %for.cond.2.do.end17_crit_edge

for.cond.2.do.end17_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 4
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @aic31xx_regulator_event, ptr %arrayidx.4, align 4
  %aic31xx7.4 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 4, i32 1
  %24 = ptrtoint ptr %aic31xx7.4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %aic31xx7.4, align 4
  %consumer.4 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 8, i32 4, i32 1
  %25 = ptrtoint ptr %consumer.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %consumer.4, align 4
  %call12.4 = tail call i32 @devm_regulator_register_notifier(ptr noundef %26, ptr noundef %arrayidx.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.4)
  %tobool13.not.4 = icmp eq i32 %call12.4, 0
  br i1 %tobool13.not.4, label %for.cond.4, label %for.cond.3.do.end17_crit_edge

for.cond.3.do.end17_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 5
  %27 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @aic31xx_regulator_event, ptr %arrayidx.5, align 4
  %aic31xx7.5 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 9, i32 5, i32 1
  %28 = ptrtoint ptr %aic31xx7.5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %3, ptr %aic31xx7.5, align 4
  %consumer.5 = getelementptr %struct.aic31xx_priv, ptr %3, i32 0, i32 8, i32 5, i32 1
  %29 = ptrtoint ptr %consumer.5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %consumer.5, align 4
  %call12.5 = tail call i32 @devm_regulator_register_notifier(ptr noundef %30, ptr noundef %arrayidx.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.5)
  %tobool13.not.5 = icmp eq i32 %call12.5, 0
  br i1 %tobool13.not.5, label %for.cond.5, label %for.cond.4.do.end17_crit_edge

for.cond.4.do.end17_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

for.cond.5:                                       ; preds = %for.cond.4
  %regmap = getelementptr inbounds %struct.aic31xx_priv, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %32, i1 noundef zeroext true) #7
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %34) #7
  %35 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i, align 4
  %codec_type.i = getelementptr inbounds %struct.aic31xx_priv, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %codec_type.i, align 4
  %and.i = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.cond.5.aic31xx_add_controls.exit_crit_edge

for.cond.5.aic31xx_add_controls.exit_crit_edge:   ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %aic31xx_add_controls.exit

do.end17:                                         ; preds = %for.cond.4.do.end17_crit_edge, %for.cond.3.do.end17_crit_edge, %for.cond.2.do.end17_crit_edge, %for.cond.1.do.end17_crit_edge, %for.cond.do.end17_crit_edge, %do.end.do.end17_crit_edge
  %call12.lcssa = phi i32 [ %call12, %do.end.do.end17_crit_edge ], [ %call12.1, %for.cond.do.end17_crit_edge ], [ %call12.2, %for.cond.1.do.end17_crit_edge ], [ %call12.3, %for.cond.2.do.end17_crit_edge ], [ %call12.4, %for.cond.3.do.end17_crit_edge ], [ %call12.5, %for.cond.4.do.end17_crit_edge ]
  %41 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.135, i32 noundef %call12.lcssa) #10
  br label %cleanup

if.end.i:                                         ; preds = %for.cond.5
  %call1.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @aic31xx_snd_controls, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.aic31xx_add_controls.exit_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.aic31xx_add_controls.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aic31xx_add_controls.exit

aic31xx_add_controls.exit:                        ; preds = %if.end.i.aic31xx_add_controls.exit_crit_edge, %for.cond.5.aic31xx_add_controls.exit_crit_edge
  %43 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %codec_type.i, align 4
  %and6.i = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %aic310x_snd_controls.aic311x_snd_controls.i = select i1 %tobool7.not.i, ptr @aic310x_snd_controls, ptr @aic311x_snd_controls
  %call9.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull %aic310x_snd_controls.aic311x_snd_controls.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool22.not = icmp eq i32 %call9.i, 0
  br i1 %tobool22.not, label %if.end24, label %aic31xx_add_controls.exit.cleanup_crit_edge

aic31xx_add_controls.exit.cleanup_crit_edge:      ; preds = %aic31xx_add_controls.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %aic31xx_add_controls.exit
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i59 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %driver_data.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %driver_data.i.i.i59, align 4
  %codec_type.i60 = getelementptr inbounds %struct.aic31xx_priv, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %codec_type.i60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %codec_type.i60, align 4
  %and.i61 = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61)
  %tobool.not.i62 = icmp eq i32 %and.i61, 0
  br i1 %tobool.not.i62, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end24
  %call2.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @dac31xx_dapm_widgets, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i63, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i63:                                       ; preds = %if.then.i
  %call5.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @dac31xx_audio_map, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end.i63.if.end17.i_crit_edge, label %if.end.i63.cleanup_crit_edge

if.end.i63.cleanup_crit_edge:                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i63.if.end17.i_crit_edge:                  ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.else.i:                                        ; preds = %if.end24
  %call9.i64 = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @aic31xx_dapm_widgets, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i64)
  %tobool10.not.i = icmp eq i32 %call9.i64, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.i:                                       ; preds = %if.else.i
  %call13.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @aic31xx_audio_map, i32 noundef 23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end17.i_crit_edge, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12.i.if.end17.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end12.i.if.end17.i_crit_edge, %if.end.i63.if.end17.i_crit_edge
  %51 = ptrtoint ptr %codec_type.i60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %codec_type.i60, align 4
  %and19.i = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else30.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end17.i
  %call22.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @aic311x_dapm_widgets, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.then21.i.cleanup_crit_edge

if.then21.i.cleanup_crit_edge:                    ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.i:                                       ; preds = %if.then21.i
  %call26.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @aic311x_audio_map, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end28_crit_edge, label %if.end25.i.cleanup_crit_edge

if.end25.i.cleanup_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25.i.if.end28_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.else30.i:                                      ; preds = %if.end17.i
  %call31.i = tail call i32 @snd_soc_dapm_new_controls(ptr noundef %dapm.i.i, ptr noundef nonnull @aic310x_dapm_widgets, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.else30.i.cleanup_crit_edge

if.else30.i.cleanup_crit_edge:                    ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34.i:                                       ; preds = %if.else30.i
  %call35.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @aic310x_audio_map, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end28_crit_edge, label %if.end34.i.cleanup_crit_edge

if.end34.i.cleanup_crit_edge:                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34.i.if.end28_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.end34.i.if.end28_crit_edge, %if.end25.i.if.end28_crit_edge
  %ocmv = getelementptr inbounds %struct.aic31xx_priv, ptr %3, i32 0, i32 17
  %53 = ptrtoint ptr %ocmv to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %ocmv, align 4
  %conv = zext i8 %54 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 159, i32 noundef 24, i32 noundef %shl) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end34.i.cleanup_crit_edge, %if.else30.i.cleanup_crit_edge, %if.end25.i.cleanup_crit_edge, %if.then21.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end.i63.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %aic31xx_add_controls.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ %call12.lcssa, %do.end17 ], [ 0, %if.end28 ], [ %call9.i, %aic31xx_add_controls.exit.cleanup_crit_edge ], [ %call1.i, %if.end.i.cleanup_crit_edge ], [ %call35.i, %if.end34.i.cleanup_crit_edge ], [ %call31.i, %if.else30.i.cleanup_crit_edge ], [ %call26.i, %if.end25.i.cleanup_crit_edge ], [ %call22.i, %if.then21.i.cleanup_crit_edge ], [ %call13.i, %if.end12.i.cleanup_crit_edge ], [ %call9.i64, %if.else.i.cleanup_crit_edge ], [ %call5.i, %if.end.i63.cleanup_crit_edge ], [ %call2.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_set_jack(ptr nocapture noundef readonly %component, ptr noundef %jack, ptr nocapture noundef readnone %data) #2 align 64 {
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
  %jack1 = getelementptr inbounds %struct.aic31xx_priv, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %jack1, align 4
  %regmap = getelementptr inbounds %struct.aic31xx_priv, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %tobool.not = icmp eq ptr %jack, null
  %cond = select i1 %tobool.not, i32 0, i32 128
  %call2 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 67, i32 noundef %cond) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_set_bias_level.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_set_bias_level, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !539

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %2 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dapm.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_set_bias_level.__UNIQUE_ID_ddebug304, ptr noundef %1, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.202, i32 noundef %3, i32 noundef %level) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %level, label %do.end.sw.epilog21_crit_edge [
    i32 0, label %sw.bb16
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
  ]

do.end.sw.epilog21_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.bb:                                            ; preds = %do.end
  %dapm.i.i31 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i31 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i31, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then5, label %sw.bb.sw.epilog21_crit_edge

sw.bb.sw.epilog21_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @aic31xx_clk_on(ptr noundef %component)
  br label %sw.epilog21

sw.bb7:                                           ; preds = %do.end
  %dapm.i.i32 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %7 = ptrtoint ptr %dapm.i.i32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dapm.i.i32, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %8, label %do.body12 [
    i32 0, label %sw.bb9
    i32 2, label %sw.bb11
  ]

sw.bb9:                                           ; preds = %sw.bb7
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %supplies.i = getelementptr inbounds %struct.aic31xx_priv, ptr %13, i32 0, i32 8
  %call1.i = tail call i32 @regulator_bulk_enable(i32 noundef 6, ptr noundef %supplies.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb9.sw.epilog21_crit_edge

sw.bb9.sw.epilog21_crit_edge:                     ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.end.i:                                         ; preds = %sw.bb9
  %regmap.i = getelementptr inbounds %struct.aic31xx_priv, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_cache_only(ptr noundef %15, i1 noundef zeroext false) #7
  %gpio_reset.i.i = getelementptr inbounds %struct.aic31xx_priv, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_reset.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %aic31xx_reset.exit.i, label %aic31xx_reset.exit.thread.i

aic31xx_reset.exit.thread.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %17, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #7
  %19 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpio_reset.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %20, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #7
  br label %if.end4.i

aic31xx_reset.exit.i:                             ; preds = %if.end.i
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 1, i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %aic31xx_reset.exit.i.if.end4.i_crit_edge

aic31xx_reset.exit.i.if.end4.i_crit_edge:         ; preds = %aic31xx_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

do.end.i:                                         ; preds = %aic31xx_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.aic31xx_priv, ptr %13, i32 0, i32 2
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.206, i32 noundef %call.i.i) #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %aic31xx_reset.exit.i.if.end4.i_crit_edge, %aic31xx_reset.exit.thread.i
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call6.i = tail call i32 @regcache_sync(ptr noundef %28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end17.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.209, i32 noundef %call6.i) #10
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  tail call void @regcache_cache_only(ptr noundef %32, i1 noundef zeroext true) #7
  %call16.i = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef %supplies.i) #7
  br label %sw.epilog21

if.end17.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %jack.i = getelementptr inbounds %struct.aic31xx_priv, ptr %13, i32 0, i32 10
  %33 = ptrtoint ptr %jack.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %jack.i, align 4
  %35 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %jack1.i.i = getelementptr inbounds %struct.aic31xx_priv, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %jack1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %34, ptr %jack1.i.i, align 4
  %regmap.i1.i = getelementptr inbounds %struct.aic31xx_priv, ptr %38, i32 0, i32 3
  %40 = ptrtoint ptr %regmap.i1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i1.i, align 4
  %tobool.not.i2.i = icmp eq ptr %34, null
  %cond.i.i = select i1 %tobool.not.i2.i, i32 0, i32 128
  %call2.i.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 67, i32 noundef %cond.i.i) #7
  br label %sw.epilog21

sw.bb11:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @aic31xx_clk_off(ptr noundef %component)
  br label %sw.epilog21

do.body12:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22sound/soc/codecs/tlv320aic31xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1338, 0\0A.popsection", ""() #7, !srcloc !541
  unreachable

sw.bb16:                                          ; preds = %do.end
  %dapm.i.i33 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %42 = ptrtoint ptr %dapm.i.i33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dapm.i.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp18 = icmp eq i32 %43, 1
  br i1 %cmp18, label %if.then19, label %sw.bb16.sw.epilog21_crit_edge

sw.bb16.sw.epilog21_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

if.then19:                                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i34 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %44 = ptrtoint ptr %dev.i.i34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i.i34, align 4
  %driver_data.i.i.i35 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i.i35, align 4
  %regmap.i36 = getelementptr inbounds %struct.aic31xx_priv, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %regmap.i36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i36, align 4
  tail call void @regcache_cache_only(ptr noundef %49, i1 noundef zeroext true) #7
  %supplies.i37 = getelementptr inbounds %struct.aic31xx_priv, ptr %47, i32 0, i32 8
  %call1.i38 = tail call i32 @regulator_bulk_disable(i32 noundef 6, ptr noundef %supplies.i37) #7
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %if.then19, %sw.bb16.sw.epilog21_crit_edge, %sw.bb11, %if.end17.i, %do.end11.i, %sw.bb9.sw.epilog21_crit_edge, %if.then5, %sw.bb.sw.epilog21_crit_edge, %do.end.sw.epilog21_crit_edge
  ret i32 0
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
define internal i32 @aic31xx_dapm_power_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  %conv = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %reg2 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 8
  %8 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg2, align 4
  %or = or i32 %shl, %9
  %10 = zext i32 %or to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %or, label %do.end [
    i32 1855, label %entry.sw.epilog_crit_edge
    i32 1599, label %sw.bb3
    i32 1951, label %sw.bb4
    i32 1695, label %sw.bb6
    i32 1952, label %sw.bb11
    i32 1696, label %sw.bb12
    i32 1873, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  %spec.select = select i1 %cmp, i32 1400, i32 100
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp7 = icmp eq i32 %event, 2
  %spec.select49 = select i1 %cmp7, i32 1400, i32 100
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.120, ptr noundef %12, ptr noundef nonnull @.str.121) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb6, %sw.bb4, %sw.bb3, %entry.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 36, %sw.bb13 ], [ 37, %sw.bb12 ], [ 37, %sw.bb11 ], [ 37, %sw.bb3 ], [ 37, %entry.sw.epilog_crit_edge ], [ 37, %sw.bb4 ], [ 37, %sw.bb6 ]
  %mask.0 = phi i32 [ 64, %sw.bb13 ], [ 1, %sw.bb12 ], [ 16, %sw.bb11 ], [ 8, %sw.bb3 ], [ 128, %entry.sw.epilog_crit_edge ], [ 32, %sw.bb4 ], [ 2, %sw.bb6 ]
  %timeout.0 = phi i32 [ 100, %sw.bb13 ], [ 100, %sw.bb12 ], [ 100, %sw.bb11 ], [ 100, %sw.bb3 ], [ 100, %entry.sw.epilog_crit_edge ], [ %spec.select, %sw.bb4 ], [ %spec.select49, %sw.bb6 ]
  %13 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %event, label %do.body20 [
    i32 2, label %sw.bb14
    i32 8, label %sw.bb16
  ]

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call fastcc i32 @aic31xx_wait_bits(ptr noundef %5, i32 noundef %reg.0, i32 noundef %mask.0, i32 noundef %mask.0, i32 noundef %timeout.0)
  br label %cleanup

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call fastcc i32 @aic31xx_wait_bits(ptr noundef %5, i32 noundef %reg.0, i32 noundef %mask.0, i32 noundef 0, i32 noundef %timeout.0)
  br label %cleanup

do.body20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_dapm_power_event.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_dapm_power_event, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !539

if.then24:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %name26 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %16 = ptrtoint ptr %name26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_dapm_power_event.__UNIQUE_ID_ddebug294, ptr noundef %15, ptr noundef nonnull @.str.122, i32 noundef %event, ptr noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body20, %sw.bb16, %sw.bb14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call18, %sw.bb16 ], [ %call15, %sw.bb14 ], [ 0, %if.then24 ], [ 0, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_bias_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %micbias_vg = getelementptr inbounds %struct.aic31xx_priv, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %micbias_vg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %micbias_vg, align 4
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 174, i32 noundef 3, i32 noundef %8) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mic_bias_event.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mic_bias_event, %if.then)) #7
          to label %sw.epilog [label %if.then], !srcloc !539

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mic_bias_event.__UNIQUE_ID_ddebug295, ptr noundef %10, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.128) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 174, i32 noundef 3, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mic_bias_event.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mic_bias_event, %if.then20)) #7
          to label %sw.epilog [label %if.then20], !srcloc !539

if.then20:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mic_bias_event.__UNIQUE_ID_ddebug296, ptr noundef %12, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.128) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then20, %sw.bb6, %if.then, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aic31xx_wait_bits(ptr nocapture noundef readonly %aic31xx, i32 noundef %reg, i32 noundef %mask, i32 noundef %wbits, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #7
  %0 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bits, align 4, !annotation !540
  %regmap = getelementptr inbounds %struct.aic31xx_priv, ptr %aic31xx, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %reg, ptr noundef nonnull %bits) #7
  %3 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bits, align 4
  %and2 = and i32 %4, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and2, i32 %wbits)
  %cmp.not3 = icmp eq i32 %and2, %wbits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not4 = icmp ne i32 %count, 0
  %not.cmp.not5 = xor i1 %cmp.not3, true
  %or.cond6 = and i1 %tobool.not4, %not.cmp.not5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not7 = icmp eq i32 %call, 0
  %or.cond18 = select i1 %or.cond6, i1 %tobool1.not7, i1 false
  br i1 %or.cond18, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %counter.09 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 10000, i32 noundef 2) #7
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %6, i32 noundef %reg, ptr noundef nonnull %bits) #7
  %dec = add i32 %counter.09, -1
  %7 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bits, align 4
  %and = and i32 %8, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %wbits)
  %cmp.not = icmp eq i32 %and, %wbits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp ne i32 %dec, 0
  %not.cmp.not = xor i1 %cmp.not, true
  %or.cond = select i1 %not.cmp.not, i1 %tobool.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool1.not = icmp eq i32 %call3, 0
  %or.cond1 = select i1 %or.cond, i1 %tobool1.not, i1 false
  br i1 %or.cond1, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %counter.0.lcssa = phi i32 [ %count, %entry.while.end_crit_edge ], [ %dec, %while.body.while.end_crit_edge ]
  %ret.0.lcssa = phi i32 [ %call, %entry.while.end_crit_edge ], [ %call3, %while.body.while.end_crit_edge ]
  %.lcssa = phi i32 [ %4, %entry.while.end_crit_edge ], [ %8, %while.body.while.end_crit_edge ]
  %cmp.not.lcssa = phi i1 [ %cmp.not3, %entry.while.end_crit_edge ], [ %cmp.not, %while.body.while.end_crit_edge ]
  br i1 %cmp.not.lcssa, label %while.end.if.end_crit_edge, label %do.end

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.aic31xx_priv, ptr %aic31xx, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %sub = sub i32 %count, %counter.0.lcssa
  %mul6 = mul i32 %sub, 5000
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, i32 noundef %reg, i32 noundef %.lcssa, i32 noundef %wbits, i32 noundef %ret.0.lcssa, i32 noundef %mask, i32 noundef %mul6) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %while.end.if.end_crit_edge
  %ret.1 = phi i32 [ -1, %do.end ], [ %ret.0.lcssa, %while.end.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #7
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_regulator_event(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %aic31xx1 = getelementptr inbounds %struct.aic31xx_disable_nb, ptr %nb, i32 0, i32 1
  %0 = ptrtoint ptr %aic31xx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aic31xx1, align 4
  %and = and i32 %event, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then:                                          ; preds = %entry
  %gpio_reset = getelementptr inbounds %struct.aic31xx_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_reset, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.aic31xx_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_regulator_event.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_regulator_event, %if.then9)) #7
          to label %if.end11 [label %if.then9], !srcloc !539

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.aic31xx_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_regulator_event.__UNIQUE_ID_ddebug301, ptr noundef %7, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.136) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_new_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aic31xx_clk_on(ptr noundef %component) unnamed_addr #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_clk_on.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_clk_on, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !539

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %rate_div_line = getelementptr inbounds %struct.aic31xx_priv, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %rate_div_line to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rate_div_line, align 4
  %rate = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %7, i32 1
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_clk_on.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.205, i32 noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 128, i32 noundef 128) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #7
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 11, i32 noundef 128, i32 noundef 128) #7
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12, i32 noundef 128, i32 noundef 128) #7
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 18, i32 noundef 128, i32 noundef 128) #7
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 19, i32 noundef 128, i32 noundef 128) #7
  %call31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 30, i32 noundef 128, i32 noundef 128) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aic31xx_clk_off(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_clk_off.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_clk_off, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !539

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_clk_off.__UNIQUE_ID_ddebug303, ptr noundef %1, ptr noundef nonnull @.str.212) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 30, i32 noundef 128, i32 noundef 0) #7
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 19, i32 noundef 128, i32 noundef 0) #7
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 18, i32 noundef 128, i32 noundef 0) #7
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12, i32 noundef 128, i32 noundef 0) #7
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 11, i32 noundef 128, i32 noundef 0) #7
  %call19 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 128, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_set_dai_sysclk.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_set_dai_sysclk, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !539

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_set_dai_sysclk.__UNIQUE_ID_ddebug300, ptr noundef %7, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.214, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000001, i32 %freq)
  %cmp5 = icmp ult i32 %freq, 20000001
  br i1 %cmp5, label %do.end.for.end_crit_edge, label %for.inc

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000002, i32 %freq)
  %cmp5.1 = icmp ult i32 %freq, 40000002
  br i1 %cmp5.1, label %for.inc.for.end_crit_edge, label %for.inc.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000003, i32 %freq)
  %cmp5.2 = icmp ult i32 %freq, 60000003
  br i1 %cmp5.2, label %for.inc.1.for.end_crit_edge, label %for.inc.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000004, i32 %freq)
  %cmp5.3 = icmp ult i32 %freq, 80000004
  br i1 %cmp5.3, label %for.inc.2.for.end_crit_edge, label %for.inc.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000005, i32 %freq)
  %cmp5.4 = icmp ult i32 %freq, 100000005
  br i1 %cmp5.4, label %for.inc.3.for.end_crit_edge, label %for.inc.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 120000006, i32 %freq)
  %cmp5.5 = icmp ult i32 %freq, 120000006
  br i1 %cmp5.5, label %for.inc.4.for.end_crit_edge, label %for.inc.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 140000007, i32 %freq)
  %cmp5.6 = icmp ult i32 %freq, 140000007
  %spec.select = select i1 %cmp5.6, i32 7, i32 8
  br label %for.end

for.end:                                          ; preds = %for.inc.5, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %do.end.for.end_crit_edge ], [ 2, %for.inc.for.end_crit_edge ], [ 3, %for.inc.1.for.end_crit_edge ], [ 4, %for.inc.2.for.end_crit_edge ], [ 5, %for.inc.3.for.end_crit_edge ], [ 6, %for.inc.4.for.end_crit_edge ], [ %spec.select, %for.inc.5 ]
  %div8 = udiv i32 %freq, %i.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %div8)
  %cmp9 = icmp ugt i32 %div8, 20000000
  br i1 %cmp9, label %do.end13, label %if.end15

do.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.aic31xx_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.214, i32 noundef %freq) #10
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %conv = trunc i32 %i.0.lcssa to i8
  %p_div = getelementptr inbounds %struct.aic31xx_priv, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %p_div to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %p_div, align 4
  %div22 = udiv i32 %freq, %i.0.lcssa
  br label %for.body19

for.body19:                                       ; preds = %for.inc27.for.body19_crit_edge, %if.end15
  %i.168 = phi i32 [ 0, %if.end15 ], [ %inc28, %for.inc27.for.body19_crit_edge ]
  %arrayidx = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %i.168
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %div22)
  %cmp23 = icmp eq i32 %12, %div22
  br i1 %cmp23, label %if.end37, label %for.inc27

for.inc27:                                        ; preds = %for.body19
  %inc28 = add nuw nsw i32 %i.168, 1
  %exitcond.not = icmp eq i32 %inc28, 53
  br i1 %exitcond.not, label %do.end35, label %for.inc27.for.body19_crit_edge

for.inc27.for.body19_crit_edge:                   ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body19

do.end35:                                         ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.aic31xx_priv, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.214, i32 noundef %freq) #10
  br label %cleanup

if.end37:                                         ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %clk_id, 2
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 12, i32 noundef %shl) #7
  %sysclk_id = getelementptr inbounds %struct.aic31xx_priv, ptr %5, i32 0, i32 11
  %15 = ptrtoint ptr %sysclk_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %clk_id, ptr %sysclk_id, align 4
  %sysclk = getelementptr inbounds %struct.aic31xx_priv, ptr %5, i32 0, i32 12
  %16 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %freq, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end35, %do.end13
  %retval.0 = phi i32 [ -22, %do.end13 ], [ -22, %do.end35 ], [ 0, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_set_dai_fmt.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_set_dai_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !539

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_set_dai_fmt.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.220, i32 noundef %fmt) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fmt, 61440
  %4 = add nsw i32 %and, -4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %4)
  %5 = icmp ult i32 %4, 16384
  br i1 %5, label %switch.lookup, label %do.end15

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.222) #10
  br label %cleanup

switch.lookup:                                    ; preds = %do.end
  %8 = lshr exact i32 %4, 9
  %switch.downshift = lshr i32 525324, %8
  %and17 = and i32 %fmt, 3840
  %9 = zext i32 %and17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %and17, label %do.end25 [
    i32 0, label %switch.lookup.sw.epilog27_crit_edge
    i32 768, label %sw.bb18
  ]

switch.lookup.sw.epilog27_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

sw.bb18:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

do.end25:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.224) #10
  br label %cleanup

sw.epilog27:                                      ; preds = %sw.bb18, %switch.lookup.sw.epilog27_crit_edge
  %iface_reg2.0 = phi i8 [ 8, %sw.bb18 ], [ 0, %switch.lookup.sw.epilog27_crit_edge ]
  %and28 = and i32 %fmt, 15
  %12 = zext i32 %and28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %and28, label %do.end47 [
    i32 1, label %sw.epilog27.sw.epilog49_crit_edge
    i32 4, label %sw.bb29
    i32 5, label %sw.epilog27.sw.bb30_crit_edge
    i32 2, label %sw.bb36
    i32 3, label %sw.bb40
  ]

sw.epilog27.sw.bb30_crit_edge:                    ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

sw.epilog27.sw.epilog49_crit_edge:                ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog49

sw.bb29:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

sw.bb30:                                          ; preds = %sw.bb29, %sw.epilog27.sw.bb30_crit_edge
  %dsp_a_val.0 = phi i32 [ 0, %sw.epilog27.sw.bb30_crit_edge ], [ 1, %sw.bb29 ]
  %13 = xor i8 %iface_reg2.0, 8
  %14 = or i32 %switch.downshift, 64
  br label %sw.epilog49

sw.bb36:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i32 %switch.downshift, 128
  br label %sw.epilog49

sw.bb40:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  %16 = or i32 %switch.downshift, 192
  br label %sw.epilog49

do.end47:                                         ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  %dev48 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.227) #10
  br label %cleanup

sw.epilog49:                                      ; preds = %sw.bb40, %sw.bb36, %sw.bb30, %sw.epilog27.sw.epilog49_crit_edge
  %iface_reg1.1 = phi i32 [ %16, %sw.bb40 ], [ %15, %sw.bb36 ], [ %14, %sw.bb30 ], [ %switch.downshift, %sw.epilog27.sw.epilog49_crit_edge ]
  %iface_reg2.1 = phi i8 [ %iface_reg2.0, %sw.bb40 ], [ %iface_reg2.0, %sw.bb36 ], [ %13, %sw.bb30 ], [ %iface_reg2.0, %sw.epilog27.sw.epilog49_crit_edge ]
  %dsp_a_val.1 = phi i32 [ 0, %sw.bb40 ], [ 0, %sw.bb36 ], [ %dsp_a_val.0, %sw.bb30 ], [ 0, %sw.epilog27.sw.epilog49_crit_edge ]
  %conv50 = and i32 %iface_reg1.1, 255
  %call51 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 204, i32 noundef %conv50) #7
  %call53 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 255, i32 noundef %dsp_a_val.1) #7
  %conv54 = zext i8 %iface_reg2.1 to i32
  %call55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 29, i32 noundef 8, i32 noundef %conv54) #7
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cond.i = icmp eq i32 %and, 16384
  %master_dapm_route_applied.i = getelementptr inbounds %struct.aic31xx_priv, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %master_dapm_route_applied.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %master_dapm_route_applied.i, align 4, !range !542
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %cond.i, label %land.lhs.true.i, label %land.lhs.true14.i

land.lhs.true.i:                                  ; preds = %sw.epilog49
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @snd_soc_dapm_del_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @common31xx_cm_audio_map, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true4.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true4.i:                                 ; preds = %if.then.i
  %codec_type.i = getelementptr inbounds %struct.aic31xx_priv, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %codec_type.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %codec_type.i, align 4
  %and5.i = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i, label %land.lhs.true4.i.cleanup.sink.split.i_crit_edge

land.lhs.true4.i.cleanup.sink.split.i_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %land.lhs.true4.i
  %call8.i = tail call i32 @snd_soc_dapm_del_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @aic31xx_cm_audio_map, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

land.lhs.true14.i:                                ; preds = %sw.epilog49
  br i1 %tobool.not.i, label %if.then17.i, label %land.lhs.true14.i.cleanup_crit_edge

land.lhs.true14.i.cleanup_crit_edge:              ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17.i:                                      ; preds = %land.lhs.true14.i
  %call18.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @common31xx_cm_audio_map, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %land.lhs.true20.i, label %if.then17.i.cleanup_crit_edge

if.then17.i.cleanup_crit_edge:                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true20.i:                                ; preds = %if.then17.i
  %codec_type21.i = getelementptr inbounds %struct.aic31xx_priv, ptr %22, i32 0, i32 4
  %27 = ptrtoint ptr %codec_type21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %codec_type21.i, align 4
  %and22.i = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end26.i, label %land.lhs.true20.i.cleanup.sink.split.i_crit_edge

land.lhs.true20.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end26.i:                                       ; preds = %land.lhs.true20.i
  %call25.i = tail call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i.i, ptr noundef nonnull @aic31xx_cm_audio_map, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool27.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool27.not.i, label %if.end26.i.cleanup.sink.split.i_crit_edge, label %if.end26.i.cleanup_crit_edge

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end26.i.cleanup.sink.split.i_crit_edge, %land.lhs.true20.i.cleanup.sink.split.i_crit_edge, %if.end.i.cleanup.sink.split.i_crit_edge, %land.lhs.true4.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %land.lhs.true4.i.cleanup.sink.split.i_crit_edge ], [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ], [ 1, %land.lhs.true20.i.cleanup.sink.split.i_crit_edge ], [ 1, %if.end26.i.cleanup.sink.split.i_crit_edge ]
  %29 = ptrtoint ptr %master_dapm_route_applied.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %.sink.i, ptr %master_dapm_route_applied.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split.i, %if.end26.i.cleanup_crit_edge, %if.then17.i.cleanup_crit_edge, %land.lhs.true14.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %do.end47, %do.end25, %do.end15
  %retval.0 = phi i32 [ -22, %do.end15 ], [ -22, %do.end25 ], [ -22, %do.end47 ], [ %call8.i, %if.end.i.cleanup_crit_edge ], [ %call25.i, %if.end26.i.cleanup_crit_edge ], [ 0, %land.lhs.true14.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ %call2.i, %if.then.i.cleanup_crit_edge ], [ %call18.i, %if.then17.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_dac_mute(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 12
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 64, i32 noundef 12, i32 noundef %.) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aic31xx_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_hw_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_hw_params, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !539

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then.if.then.i.i.i_crit_edge

if.then.if.then.i.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %9, %if.then.if.then.i.i.i_crit_edge ], [ %12, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %10 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !543
  %add.i.i.i = or i32 %10, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.1.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_hw_params.__UNIQUE_ID_ddebug298, ptr noundef %7, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.229, i32 noundef %call1.i, i32 noundef %14) #7
  br label %do.end

do.end:                                           ; preds = %params_width.exit, %entry
  %arrayidx.i.i.i39 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i40 = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i40, label %for.inc.i.i.i47, label %do.end.if.then.i.i.i44_crit_edge

do.end.if.then.i.i.i44_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i44

if.then.i.i.i44:                                  ; preds = %for.inc.i.i.i47.if.then.i.i.i44_crit_edge, %do.end.if.then.i.i.i44_crit_edge
  %i.09.lcssa.i.i.i41 = phi i32 [ 0, %do.end.if.then.i.i.i44_crit_edge ], [ 32, %for.inc.i.i.i47.if.then.i.i.i44_crit_edge ]
  %.lcssa.i.i.i42 = phi i32 [ %16, %do.end.if.then.i.i.i44_crit_edge ], [ %19, %for.inc.i.i.i47.if.then.i.i.i44_crit_edge ]
  %17 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i42, i1 true) #7, !range !543
  %add.i.i.i43 = or i32 %17, %i.09.lcssa.i.i.i41
  br label %params_width.exit50

for.inc.i.i.i47:                                  ; preds = %do.end
  %arrayidx.1.i.i.i45 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i.i.i45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i.i46 = icmp eq i32 %19, 0
  br i1 %tobool.not.1.i.i.i46, label %for.inc.i.i.i47.params_width.exit50_crit_edge, label %for.inc.i.i.i47.if.then.i.i.i44_crit_edge

for.inc.i.i.i47.if.then.i.i.i44_crit_edge:        ; preds = %for.inc.i.i.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i44

for.inc.i.i.i47.params_width.exit50_crit_edge:    ; preds = %for.inc.i.i.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit50

params_width.exit50:                              ; preds = %for.inc.i.i.i47.params_width.exit50_crit_edge, %if.then.i.i.i44
  %retval.0.i.i.i48 = phi i32 [ %add.i.i.i43, %if.then.i.i.i44 ], [ 0, %for.inc.i.i.i47.params_width.exit50_crit_edge ]
  %call1.i49 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i48) #7
  %20 = add i32 %call1.i49, -16
  %21 = tail call i32 @llvm.fshl.i32(i32 %20, i32 %20, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %21)
  %22 = icmp ult i32 %21, 5
  br i1 %22, label %switch.hole_check, label %params_width.exit50.do.end12_crit_edge

params_width.exit50.do.end12_crit_edge:           ; preds = %params_width.exit50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end12:                                         ; preds = %switch.hole_check.do.end12_crit_edge, %params_width.exit50.do.end12_crit_edge
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %25 = ptrtoint ptr %arrayidx.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i52 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i52, label %for.inc.i.i.i59, label %do.end12.if.then.i.i.i56_crit_edge

do.end12.if.then.i.i.i56_crit_edge:               ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i56

if.then.i.i.i56:                                  ; preds = %for.inc.i.i.i59.if.then.i.i.i56_crit_edge, %do.end12.if.then.i.i.i56_crit_edge
  %i.09.lcssa.i.i.i53 = phi i32 [ 0, %do.end12.if.then.i.i.i56_crit_edge ], [ 32, %for.inc.i.i.i59.if.then.i.i.i56_crit_edge ]
  %.lcssa.i.i.i54 = phi i32 [ %26, %do.end12.if.then.i.i.i56_crit_edge ], [ %29, %for.inc.i.i.i59.if.then.i.i.i56_crit_edge ]
  %27 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i54, i1 true) #7, !range !543
  %add.i.i.i55 = or i32 %27, %i.09.lcssa.i.i.i53
  br label %params_width.exit62

for.inc.i.i.i59:                                  ; preds = %do.end12
  %arrayidx.1.i.i.i57 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i.i57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i.i.i58 = icmp eq i32 %29, 0
  br i1 %tobool.not.1.i.i.i58, label %for.inc.i.i.i59.params_width.exit62_crit_edge, label %for.inc.i.i.i59.if.then.i.i.i56_crit_edge

for.inc.i.i.i59.if.then.i.i.i56_crit_edge:        ; preds = %for.inc.i.i.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i56

for.inc.i.i.i59.params_width.exit62_crit_edge:    ; preds = %for.inc.i.i.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit62

params_width.exit62:                              ; preds = %for.inc.i.i.i59.params_width.exit62_crit_edge, %if.then.i.i.i56
  %retval.0.i.i.i60 = phi i32 [ %add.i.i.i55, %if.then.i.i.i56 ], [ 0, %for.inc.i.i.i59.params_width.exit62_crit_edge ]
  %call1.i61 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i60) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.229, i32 noundef %call1.i61) #10
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit50
  %switch.maskindex = trunc i32 %21 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %30 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.lobit.not = icmp eq i8 %30, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end12_crit_edge, label %switch.lookup

switch.hole_check.do.end12_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.aic31xx_hw_params, i32 0, i32 %21
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 48, i32 noundef %switch.load) #7
  %sysclk_id = getelementptr inbounds %struct.aic31xx_priv, ptr %5, i32 0, i32 11
  %32 = ptrtoint ptr %sysclk_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sysclk_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp = icmp eq i32 %33, 1
  br i1 %cmp, label %if.then17, label %switch.lookup.if.end22_crit_edge

switch.lookup.if.end22_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then17:                                        ; preds = %switch.lookup
  %arrayidx.i.i63 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i63, align 4
  %36 = ptrtoint ptr %arrayidx.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.i.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i.i.i65 = icmp eq i32 %37, 0
  br i1 %tobool.not.i.i.i65, label %for.inc.i.i.i72, label %if.then17.if.then.i.i.i69_crit_edge

if.then17.if.then.i.i.i69_crit_edge:              ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i69

if.then.i.i.i69:                                  ; preds = %for.inc.i.i.i72.if.then.i.i.i69_crit_edge, %if.then17.if.then.i.i.i69_crit_edge
  %i.09.lcssa.i.i.i66 = phi i32 [ 0, %if.then17.if.then.i.i.i69_crit_edge ], [ 32, %for.inc.i.i.i72.if.then.i.i.i69_crit_edge ]
  %.lcssa.i.i.i67 = phi i32 [ %37, %if.then17.if.then.i.i.i69_crit_edge ], [ %40, %for.inc.i.i.i72.if.then.i.i.i69_crit_edge ]
  %38 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i67, i1 true) #7, !range !543
  %add.i.i.i68 = or i32 %38, %i.09.lcssa.i.i.i66
  br label %params_width.exit75

for.inc.i.i.i72:                                  ; preds = %if.then17
  %arrayidx.1.i.i.i70 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %39 = ptrtoint ptr %arrayidx.1.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.1.i.i.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i.i.i71 = icmp eq i32 %40, 0
  br i1 %tobool.not.1.i.i.i71, label %for.inc.i.i.i72.params_width.exit75_crit_edge, label %for.inc.i.i.i72.if.then.i.i.i69_crit_edge

for.inc.i.i.i72.if.then.i.i.i69_crit_edge:        ; preds = %for.inc.i.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i69

for.inc.i.i.i72.params_width.exit75_crit_edge:    ; preds = %for.inc.i.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit75

params_width.exit75:                              ; preds = %for.inc.i.i.i72.params_width.exit75_crit_edge, %if.then.i.i.i69
  %retval.0.i.i.i73 = phi i32 [ %add.i.i.i68, %if.then.i.i.i69 ], [ 0, %for.inc.i.i.i72.params_width.exit75_crit_edge ]
  %call1.i74 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i73) #7
  %mul = mul i32 %call1.i74, %35
  %arrayidx.i.i76 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i76, align 4
  %mul21 = mul i32 %mul, %42
  %sysclk = getelementptr inbounds %struct.aic31xx_priv, ptr %5, i32 0, i32 12
  %43 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul21, ptr %sysclk, align 4
  %p_div = getelementptr inbounds %struct.aic31xx_priv, ptr %5, i32 0, i32 13
  %44 = ptrtoint ptr %p_div to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %p_div, align 4
  br label %if.end22

if.end22:                                         ; preds = %params_width.exit75, %switch.lookup.if.end22_crit_edge
  %call23 = tail call fastcc i32 @aic31xx_setup_pll(ptr noundef %1, ptr noundef %params)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %params_width.exit62
  %retval.0 = phi i32 [ -22, %params_width.exit62 ], [ %call23, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_del_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aic31xx_setup_pll(ptr noundef %component, ptr noundef %params) unnamed_addr #2 align 64 {
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
  %call1 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #7
  %sysclk = getelementptr inbounds %struct.aic31xx_priv, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %p_div = getelementptr inbounds %struct.aic31xx_priv, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %p_div to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p_div, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.232) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv = zext i8 %7 to i32
  %div = udiv i32 %5, %conv
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 3, i32 noundef 3) #7
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 29, i32 noundef 3, i32 noundef 0) #7
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0219 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %match.0218 = phi i32 [ -1, %if.end ], [ %match.2, %for.inc.for.body_crit_edge ]
  %bclk_n.0217 = phi i32 [ 0, %if.end ], [ %bclk_n.2, %for.inc.for.body_crit_edge ]
  %bclk_score.0216 = phi i32 [ %call1, %if.end ], [ %bclk_score.2, %for.inc.for.body_crit_edge ]
  %rate = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %i.0219, i32 1
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate, align 4
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp9 = icmp eq i32 %11, %13
  br i1 %cmp9, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %i.0219
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div)
  %cmp13 = icmp eq i32 %15, %div
  br i1 %cmp13, label %if.then15, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dosr = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %i.0219, i32 5
  %16 = ptrtoint ptr %dosr to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dosr, align 4
  %conv17 = zext i16 %17 to i32
  %mdac = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %i.0219, i32 7
  %18 = ptrtoint ptr %mdac to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mdac, align 1
  %conv19 = zext i8 %19 to i32
  %mul = mul nuw nsw i32 %conv19, %conv17
  %call20 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #7
  %rem = srem i32 %mul, %call20
  %call28 = tail call i32 @snd_soc_params_to_frame_size(ptr noundef %params) #7
  %div29 = sdiv i32 %mul, %call28
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %bclk_score.0216)
  %cmp30 = icmp slt i32 %rem, %bclk_score.0216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div29)
  %cmp33 = icmp sgt i32 %div29, 0
  %or.cond = select i1 %cmp30, i1 %cmp33, i1 false
  %bclk_score.1 = select i1 %or.cond, i32 %rem, i32 %bclk_score.0216
  %bclk_n.1 = select i1 %or.cond, i32 %div29, i32 %bclk_n.0217
  %match.1 = select i1 %or.cond, i32 %i.0219, i32 %match.0218
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %bclk_score.2 = phi i32 [ %bclk_score.1, %if.then15 ], [ %bclk_score.0216, %land.lhs.true.for.inc_crit_edge ], [ %bclk_score.0216, %for.body.for.inc_crit_edge ]
  %bclk_n.2 = phi i32 [ %bclk_n.1, %if.then15 ], [ %bclk_n.0217, %land.lhs.true.for.inc_crit_edge ], [ %bclk_n.0217, %for.body.for.inc_crit_edge ]
  %match.2 = phi i32 [ %match.1, %if.then15 ], [ %match.0218, %land.lhs.true.for.inc_crit_edge ], [ %match.0218, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0219, 1
  %exitcond.not = icmp eq i32 %inc, 53
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %match.2)
  %cmp38 = icmp eq i32 %match.2, -1
  br i1 %cmp38, label %do.end43, label %if.end46

do.end43:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.233, i32 noundef %23) #10
  br label %cleanup

if.end46:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bclk_score.2)
  %cmp47.not = icmp eq i32 %bclk_score.2, 0
  br i1 %cmp47.not, label %if.end46.if.end54_crit_edge, label %do.end52

if.end46.if.end54_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.238) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %if.end46.if.end54_crit_edge
  %26 = ptrtoint ptr %p_div to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %p_div, align 4
  %conv56 = zext i8 %27 to i32
  %shl = shl nuw nsw i32 %conv56, 4
  %pll_r = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %match.2, i32 2
  %28 = ptrtoint ptr %pll_r to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pll_r, align 4
  %conv58 = zext i8 %29 to i32
  %or = or i32 %shl, %conv58
  %call59 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 127, i32 noundef %or) #7
  %pll_j = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %match.2, i32 3
  %30 = ptrtoint ptr %pll_j to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pll_j, align 1
  %conv61 = zext i8 %31 to i32
  %call62 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 6, i32 noundef %conv61) #7
  %pll_d = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %match.2, i32 4
  %32 = ptrtoint ptr %pll_d to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %pll_d, align 2
  %34 = lshr i16 %33, 8
  %35 = zext i16 %34 to i32
  %call65 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 7, i32 noundef %35) #7
  %36 = and i16 %33, 255
  %and = zext i16 %36 to i32
  %call69 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 8, i32 noundef %and) #7
  %ndac = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %match.2, i32 6
  %37 = ptrtoint ptr %ndac to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ndac, align 2
  %conv71 = zext i8 %38 to i32
  %call72 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 11, i32 noundef 127, i32 noundef %conv71) #7
  %mdac74 = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %match.2, i32 7
  %39 = ptrtoint ptr %mdac74 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mdac74, align 1
  %conv75 = zext i8 %40 to i32
  %call76 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12, i32 noundef 127, i32 noundef %conv75) #7
  %dosr78 = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %match.2, i32 5
  %41 = ptrtoint ptr %dosr78 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %dosr78, align 4
  %43 = lshr i16 %42, 8
  %44 = zext i16 %43 to i32
  %call81 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 13, i32 noundef %44) #7
  %45 = and i16 %42, 255
  %and85 = zext i16 %45 to i32
  %call86 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 14, i32 noundef %and85) #7
  %nadc = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %match.2, i32 9
  %46 = ptrtoint ptr %nadc to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %nadc, align 1
  %conv88 = zext i8 %47 to i32
  %call93 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 18, i32 noundef 127, i32 noundef %conv88) #7
  %madc = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %match.2, i32 10
  %48 = ptrtoint ptr %madc to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %madc, align 2
  %conv95 = zext i8 %49 to i32
  %call104 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 19, i32 noundef 127, i32 noundef %conv95) #7
  %aosr = getelementptr [53 x %struct.aic31xx_rate_divs], ptr @aic31xx_divs, i32 0, i32 %match.2, i32 8
  %50 = ptrtoint ptr %aosr to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %aosr, align 4
  %conv106 = zext i8 %51 to i32
  %call107 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 20, i32 noundef %conv106) #7
  %call108 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 30, i32 noundef 127, i32 noundef %bclk_n.2) #7
  %rate_div_line = getelementptr inbounds %struct.aic31xx_priv, ptr %3, i32 0, i32 14
  %52 = ptrtoint ptr %rate_div_line to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %match.2, ptr %rate_div_line, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aic31xx_setup_pll.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aic31xx_setup_pll, %if.then114)) #7
          to label %cleanup [label %if.then114], !srcloc !539

if.then114:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i, align 4
  %conv121 = zext i16 %33 to i32
  %55 = ptrtoint ptr %p_div to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %p_div, align 4
  %conv123 = zext i8 %56 to i32
  %conv126 = zext i16 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aic31xx_setup_pll.__UNIQUE_ID_ddebug297, ptr noundef %54, ptr noundef nonnull @.str.240, i32 noundef %conv61, i32 noundef %conv121, i32 noundef %conv123, i32 noundef %conv126, i32 noundef %conv71, i32 noundef %conv75, i32 noundef %conv106, i32 noundef %conv88, i32 noundef %conv95, i32 noundef %bclk_n.2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %if.end54, %do.end43, %do.end
  %retval.0 = phi i32 [ -22, %do.end43 ], [ -22, %do.end ], [ 0, %if.then114 ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_frame_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 294)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 294)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !28, !29, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !208, !210, !212, !214, !215, !217, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !259, !260, !261, !263, !264, !266, !267, !268, !269, !271, !273, !275, !277, !278, !279, !281, !282, !284, !286, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !440, !441, !443, !444, !445, !447, !449, !450, !451, !452, !454, !455, !456, !458, !459, !460, !462, !464, !466, !468, !469, !470, !472, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !498, !500, !501, !502, !504, !505, !506, !508, !509, !510, !511, !513, !514, !515, !517, !518, !519, !521, !522, !524, !526, !528}
!llvm.module.flags = !{!530, !531, !532, !533, !534, !535, !536, !537}
!llvm.ident = !{!538}

!0 = !{ptr @__initcall__kmod_snd_soc_tlv320aic31xx__307_1754_aic31xx_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_tlv320aic31xx__307_1754_aic31xx_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1754, i32 1}
!2 = !{ptr @__exitcall_aic31xx_i2c_driver_exit, !1, !"__exitcall_aic31xx_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1756, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1757, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1758, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1747, i32 11}
!12 = !{ptr @aic31xx_i2c_driver, !13, !"aic31xx_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1745, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1638, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @aic31xx_i2c_probe.__UNIQUE_ID_ddebug306, !15, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!20 = !{ptr @aic31xx_i2c_probe._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1645, i32 20}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1648, i32 3}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @aic31xx_i2c_probe._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @aic31xx_i2c_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1661, i32 49}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1670, i32 3}
!33 = !{ptr @aic31xx_i2c_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @aic31xx_i2c_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1681, i32 62}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1685, i32 10}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1694, i32 43}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1712, i32 21}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1715, i32 4}
!45 = !{ptr @aic31xx_i2c_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @aic31xx_i2c_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @aic31xx_i2c_regmap, !48, !"aic31xx_i2c_regmap", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 132, i32 35}
!49 = !{ptr @aic31xx_reg_defaults, !50, !"aic31xx_reg_defaults", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 42, i32 33}
!51 = !{ptr @aic31xx_ranges, !52, !"aic31xx_ranges", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 120, i32 38}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 146, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 147, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 148, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 149, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 150, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 151, i32 2}
!65 = distinct !{null, !66, !"aic31xx_supply_names", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 145, i32 27}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1601, i32 44}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1613, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @aic31xx_configure_ocmv._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @aic31xx_configure_ocmv._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1625, i32 3}
!77 = !{ptr @aic31xx_configure_ocmv._entry.30, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @aic31xx_configure_ocmv._entry_ptr.32, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1502, i32 3}
!81 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @aic31xx_irq._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @aic31xx_irq._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1512, i32 3}
!86 = !{ptr @aic31xx_irq._entry.35, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @aic31xx_irq._entry_ptr.37, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1514, i32 3}
!90 = !{ptr @aic31xx_irq._entry.38, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @aic31xx_irq._entry_ptr.40, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @aic31xx_irq._entry.41, !93, !"_entry", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1522, i32 4}
!94 = !{ptr @aic31xx_irq._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1532, i32 4}
!97 = !{ptr @aic31xx_irq._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @aic31xx_irq._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1556, i32 3}
!101 = !{ptr @aic31xx_irq._entry.46, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @aic31xx_irq._entry_ptr.48, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1561, i32 3}
!105 = !{ptr @aic31xx_irq._entry.49, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @aic31xx_irq._entry_ptr.51, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1571, i32 3}
!109 = !{ptr @aic31xx_irq._entry.52, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @aic31xx_irq._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1573, i32 3}
!113 = !{ptr @aic31xx_irq._entry.55, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @aic31xx_irq._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1575, i32 3}
!117 = !{ptr @aic31xx_irq._entry.58, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @aic31xx_irq._entry_ptr.60, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1577, i32 3}
!121 = !{ptr @aic31xx_irq._entry.61, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @aic31xx_irq._entry_ptr.63, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1579, i32 3}
!125 = !{ptr @aic31xx_irq._entry.64, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @aic31xx_irq._entry_ptr.66, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1585, i32 3}
!129 = !{ptr @aic31xx_irq._entry.67, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @aic31xx_irq._entry_ptr.69, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @soc_codec_driver_aic31xx, !132, !"soc_codec_driver_aic31xx", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1407, i32 46}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 323, i32 2}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 326, i32 2}
!137 = !{ptr @.str.73, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 328, i32 2}
!139 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 331, i32 2}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 339, i32 2}
!143 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 340, i32 2}
!145 = !{ptr @.str.79, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 342, i32 2}
!147 = !{ptr @common31xx_snd_controls, !148, !"common31xx_snd_controls", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 322, i32 38}
!149 = !{ptr @dac_vol_tlv, !150, !"dac_vol_tlv", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 310, i32 14}
!151 = !{ptr @hp_drv_tlv, !152, !"hp_drv_tlv", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 314, i32 14}
!153 = !{ptr @hp_vol_tlv, !154, !"hp_vol_tlv", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 316, i32 14}
!155 = !{ptr @hp_poweron_time_enum, !156, !"hp_poweron_time_enum", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 295, i32 8}
!157 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 292, i32 2}
!159 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 292, i32 9}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 292, i32 19}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 292, i32 28}
!165 = !{ptr @.str.84, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 292, i32 38}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 292, i32 48}
!169 = !{ptr @.str.86, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 293, i32 2}
!171 = !{ptr @.str.87, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 293, i32 11}
!173 = !{ptr @.str.88, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 293, i32 20}
!175 = !{ptr @.str.89, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 293, i32 29}
!177 = !{ptr @.str.90, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 293, i32 38}
!179 = !{ptr @.str.91, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 293, i32 47}
!181 = !{ptr @hp_poweron_time_text, !182, !"hp_poweron_time_text", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 291, i32 27}
!183 = !{ptr @hp_rampup_step_enum, !184, !"hp_rampup_step_enum", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 301, i32 8}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 299, i32 2}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 299, i32 9}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 299, i32 19}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 299, i32 29}
!193 = !{ptr @hp_rampup_step_text, !194, !"hp_rampup_step_text", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 298, i32 27}
!195 = !{ptr @vol_soft_step_mode_enum, !196, !"vol_soft_step_mode_enum", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 307, i32 8}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 305, i32 2}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 305, i32 10}
!201 = !{ptr @.str.98, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 305, i32 18}
!203 = !{ptr @vol_soft_step_mode_text, !204, !"vol_soft_step_mode_text", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 304, i32 27}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 537, i32 2}
!207 = !{ptr @.str.100, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 539, i32 2}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 541, i32 2}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 544, i32 2}
!214 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.105, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 548, i32 2}
!217 = !{ptr @.str.106, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 553, i32 2}
!220 = !{ptr @.str.108, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 555, i32 2}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 559, i32 2}
!224 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 562, i32 2}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 567, i32 2}
!228 = !{ptr @.str.112, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 571, i32 2}
!230 = !{ptr @.str.113, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 575, i32 2}
!232 = !{ptr @.str.114, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 576, i32 2}
!234 = !{ptr @common31xx_dapm_widgets, !235, !"common31xx_dapm_widgets", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 536, i32 41}
!236 = !{ptr @ldac_in_control, !237, !"ldac_in_control", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 377, i32 38}
!238 = !{ptr @ldac_in_enum, !239, !"ldac_in_enum", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 273, i32 8}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 266, i32 2}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 266, i32 9}
!244 = !{ptr @.str.118, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 266, i32 22}
!246 = !{ptr @.str.119, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 266, i32 36}
!248 = !{ptr @ldac_in_text, !249, !"ldac_in_text", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 265, i32 27}
!250 = !{ptr @rdac_in_control, !251, !"rdac_in_control", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 380, i32 38}
!252 = !{ptr @rdac_in_enum, !253, !"rdac_in_enum", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 275, i32 8}
!254 = !{ptr @rdac_in_text, !255, !"rdac_in_text", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 269, i32 27}
!256 = !{ptr @.str.120, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 445, i32 3}
!258 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @aic31xx_dapm_power_event._entry, !257, !"_entry", i1 false, i1 false}
!260 = !{ptr @aic31xx_dapm_power_event._entry_ptr, !257, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 458, i32 3}
!263 = !{ptr @aic31xx_dapm_power_event.__UNIQUE_ID_ddebug294, !262, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!264 = !{ptr @.str.123, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 397, i32 3}
!266 = !{ptr @.str.124, !265, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @aic31xx_wait_bits._entry, !265, !"_entry", i1 false, i1 false}
!268 = !{ptr @aic31xx_wait_bits._entry_ptr, !265, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.125, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 500, i32 2}
!271 = !{ptr @aic31xx_dapm_hpl_switch, !272, !"aic31xx_dapm_hpl_switch", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 499, i32 38}
!273 = !{ptr @aic31xx_dapm_hpr_switch, !274, !"aic31xx_dapm_hpr_switch", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 502, i32 38}
!275 = !{ptr @.str.128, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 524, i32 3}
!277 = !{ptr @.str.129, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @mic_bias_event.__UNIQUE_ID_ddebug295, !276, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!279 = !{ptr @.str.130, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 530, i32 3}
!281 = !{ptr @mic_bias_event.__UNIQUE_ID_ddebug296, !280, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!282 = !{ptr @.str.131, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 669, i32 24}
!284 = !{ptr @.str.132, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 674, i32 25}
!286 = !{ptr @common31xx_audio_map, !287, !"common31xx_audio_map", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 657, i32 1}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1369, i32 2}
!290 = !{ptr @.str.134, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @aic31xx_codec_probe.__UNIQUE_ID_ddebug305, !289, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!292 = !{ptr @.str.135, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1381, i32 4}
!294 = !{ptr @aic31xx_codec_probe._entry, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @aic31xx_codec_probe._entry_ptr, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1215, i32 3}
!298 = !{ptr @.str.137, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @aic31xx_regulator_event.__UNIQUE_ID_ddebug301, !297, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 346, i32 2}
!302 = !{ptr @.str.140, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 349, i32 2}
!304 = !{ptr @.str.142, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 350, i32 2}
!306 = !{ptr @.str.144, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 353, i32 2}
!308 = !{ptr @aic31xx_snd_controls, !309, !"aic31xx_snd_controls", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 345, i32 38}
!310 = !{ptr @adc_fgain_tlv, !311, !"adc_fgain_tlv", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 311, i32 14}
!312 = !{ptr @adc_cgain_tlv, !313, !"adc_cgain_tlv", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 312, i32 14}
!314 = !{ptr @mic_pga_tlv, !315, !"mic_pga_tlv", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 313, i32 14}
!316 = !{ptr @.str.146, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 358, i32 2}
!318 = !{ptr @.str.148, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 360, i32 2}
!320 = !{ptr @.str.150, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 363, i32 2}
!322 = !{ptr @aic311x_snd_controls, !323, !"aic311x_snd_controls", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 357, i32 38}
!324 = !{ptr @class_D_drv_tlv, !325, !"class_D_drv_tlv", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 315, i32 14}
!326 = !{ptr @sp_vol_tlv, !327, !"sp_vol_tlv", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 317, i32 14}
!328 = !{ptr @aic310x_snd_controls, !329, !"aic310x_snd_controls", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 367, i32 38}
!330 = !{ptr @.str.155, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 581, i32 2}
!332 = !{ptr @.str.156, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 582, i32 2}
!334 = !{ptr @dac31xx_dapm_widgets, !335, !"dac31xx_dapm_widgets", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 579, i32 41}
!336 = !{ptr @.str.158, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 477, i32 2}
!338 = !{ptr @.str.160, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 478, i32 2}
!340 = !{ptr @.str.162, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 479, i32 2}
!342 = !{ptr @dac31xx_left_output_switches, !343, !"dac31xx_left_output_switches", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 476, i32 38}
!344 = !{ptr @.str.164, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 483, i32 2}
!346 = !{ptr @dac31xx_right_output_switches, !347, !"dac31xx_right_output_switches", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 482, i32 38}
!348 = !{ptr @dac31xx_audio_map, !349, !"dac31xx_audio_map", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 680, i32 1}
!350 = !{ptr @.str.167, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 595, i32 2}
!352 = !{ptr @.str.168, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 596, i32 2}
!354 = !{ptr @.str.169, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 597, i32 2}
!356 = !{ptr @.str.170, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 600, i32 2}
!358 = !{ptr @.str.171, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 602, i32 2}
!360 = !{ptr @.str.172, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 604, i32 2}
!362 = !{ptr @.str.173, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 608, i32 2}
!364 = !{ptr @.str.174, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @.str.175, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 612, i32 2}
!367 = !{ptr @.str.176, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 616, i32 2}
!369 = !{ptr @.str.177, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 627, i32 2}
!371 = !{ptr @aic31xx_dapm_widgets, !372, !"aic31xx_dapm_widgets", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 593, i32 41}
!373 = !{ptr @p_term_mic1lp, !374, !"p_term_mic1lp", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 487, i32 38}
!375 = !{ptr @mic1lp_p_enum, !376, !"mic1lp_p_enum", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 281, i32 8}
!377 = !{ptr @.str.179, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 278, i32 9}
!379 = !{ptr @.str.180, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 278, i32 23}
!381 = !{ptr @.str.181, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 278, i32 37}
!383 = !{ptr @mic_select_text, !384, !"mic_select_text", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 277, i32 27}
!385 = !{ptr @p_term_mic1rp, !386, !"p_term_mic1rp", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 490, i32 38}
!387 = !{ptr @mic1rp_p_enum, !388, !"mic1rp_p_enum", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 283, i32 8}
!389 = !{ptr @p_term_mic1lm, !390, !"p_term_mic1lm", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 493, i32 38}
!391 = !{ptr @mic1lm_p_enum, !392, !"mic1lm_p_enum", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 285, i32 8}
!393 = !{ptr @m_term_mic1lm, !394, !"m_term_mic1lm", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 496, i32 38}
!395 = !{ptr @mic1lm_m_enum, !396, !"mic1lm_m_enum", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 288, i32 8}
!397 = !{ptr @.str.183, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 467, i32 2}
!399 = !{ptr @.str.185, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 468, i32 2}
!401 = !{ptr @aic31xx_left_output_switches, !402, !"aic31xx_left_output_switches", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 465, i32 38}
!403 = !{ptr @aic31xx_right_output_switches, !404, !"aic31xx_right_output_switches", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 471, i32 38}
!405 = !{ptr @aic31xx_audio_map, !406, !"aic31xx_audio_map", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 692, i32 1}
!407 = !{ptr @.str.189, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 632, i32 2}
!409 = !{ptr @.str.190, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 635, i32 2}
!411 = !{ptr @.str.191, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 638, i32 2}
!413 = !{ptr @.str.192, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 640, i32 2}
!415 = !{ptr @.str.193, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 642, i32 2}
!417 = !{ptr @.str.194, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 643, i32 2}
!419 = !{ptr @aic311x_dapm_widgets, !420, !"aic311x_dapm_widgets", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 630, i32 41}
!421 = !{ptr @aic31xx_dapm_spl_switch, !422, !"aic31xx_dapm_spl_switch", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 505, i32 38}
!423 = !{ptr @aic31xx_dapm_spr_switch, !424, !"aic31xx_dapm_spr_switch", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 508, i32 38}
!425 = !{ptr @aic311x_audio_map, !426, !"aic311x_audio_map", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 728, i32 1}
!427 = !{ptr @.str.198, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 648, i32 2}
!429 = !{ptr @.str.199, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 651, i32 2}
!431 = !{ptr @.str.200, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 653, i32 2}
!433 = !{ptr @aic310x_dapm_widgets, !434, !"aic310x_dapm_widgets", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 647, i32 41}
!435 = !{ptr @aic310x_audio_map, !436, !"aic310x_audio_map", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 741, i32 1}
!437 = !{ptr @.str.202, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1319, i32 2}
!439 = !{ptr @.str.203, !438, !"<string literal>", i1 false, i1 false}
!440 = !{ptr @aic31xx_set_bias_level.__UNIQUE_ID_ddebug304, !438, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!441 = !{ptr @.str.204, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1243, i32 2}
!443 = !{ptr @.str.205, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @aic31xx_clk_on.__UNIQUE_ID_ddebug302, !442, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!445 = !{ptr @aic31xx_divs, !446, !"aic31xx_divs", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 197, i32 39}
!447 = !{ptr @.str.206, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1285, i32 3}
!449 = !{ptr @.str.207, !448, !"<string literal>", i1 false, i1 false}
!450 = !{ptr @aic31xx_power_on._entry, !448, !"_entry", i1 false, i1 false}
!451 = !{ptr @aic31xx_power_on._entry_ptr, !448, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.209, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1289, i32 3}
!454 = !{ptr @aic31xx_power_on._entry.208, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @aic31xx_power_on._entry_ptr.210, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.211, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1261, i32 2}
!458 = !{ptr @.str.212, !457, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @aic31xx_clk_off.__UNIQUE_ID_ddebug303, !457, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!460 = !{ptr @.str.213, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1434, i32 11}
!462 = !{ptr @dac31xx_dai_driver, !463, !"dac31xx_dai_driver", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1432, i32 34}
!464 = !{ptr @aic31xx_dai_ops, !465, !"aic31xx_dai_ops", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1424, i32 37}
!466 = !{ptr @.str.214, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1167, i32 2}
!468 = !{ptr @.str.215, !467, !"<string literal>", i1 false, i1 false}
!469 = !{ptr @aic31xx_set_dai_sysclk.__UNIQUE_ID_ddebug300, !467, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!470 = !{ptr @.str.216, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1174, i32 3}
!472 = !{ptr @aic31xx_set_dai_sysclk._entry, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @aic31xx_set_dai_sysclk._entry_ptr, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.218, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1184, i32 3}
!476 = !{ptr @aic31xx_set_dai_sysclk._entry.217, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @aic31xx_set_dai_sysclk._entry_ptr.219, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.220, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1084, i32 2}
!480 = !{ptr @.str.221, !479, !"<string literal>", i1 false, i1 false}
!481 = !{ptr @aic31xx_set_dai_fmt.__UNIQUE_ID_ddebug299, !479, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!482 = !{ptr @.str.222, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1100, i32 3}
!484 = !{ptr @aic31xx_set_dai_fmt._entry, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @aic31xx_set_dai_fmt._entry_ptr, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.224, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1112, i32 3}
!488 = !{ptr @aic31xx_set_dai_fmt._entry.223, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @aic31xx_set_dai_fmt._entry_ptr.225, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.227, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1142, i32 3}
!492 = !{ptr @aic31xx_set_dai_fmt._entry.226, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @aic31xx_set_dai_fmt._entry_ptr.228, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @common31xx_cm_audio_map, !495, !"common31xx_cm_audio_map", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 759, i32 1}
!496 = !{ptr @aic31xx_cm_audio_map, !497, !"aic31xx_cm_audio_map", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 767, i32 1}
!498 = !{ptr @.str.229, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 970, i32 2}
!500 = !{ptr @.str.230, !499, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @aic31xx_hw_params.__UNIQUE_ID_ddebug298, !499, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!502 = !{ptr @.str.231, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 990, i32 3}
!504 = !{ptr @aic31xx_hw_params._entry, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @aic31xx_hw_params._entry_ptr, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @.str.232, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 867, i32 3}
!508 = !{ptr @.str.233, !507, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @aic31xx_setup_pll._entry, !507, !"_entry", i1 false, i1 false}
!510 = !{ptr @aic31xx_setup_pll._entry_ptr, !507, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.235, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 894, i32 3}
!513 = !{ptr @aic31xx_setup_pll._entry.234, !512, !"_entry", i1 false, i1 false}
!514 = !{ptr @aic31xx_setup_pll._entry_ptr.236, !512, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.238, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 901, i32 3}
!517 = !{ptr @aic31xx_setup_pll._entry.237, !516, !"_entry", i1 false, i1 false}
!518 = !{ptr @aic31xx_setup_pll._entry_ptr.239, !516, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.240, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 945, i32 2}
!521 = !{ptr @aic31xx_setup_pll.__UNIQUE_ID_ddebug297, !520, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!522 = !{ptr @.str.241, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1449, i32 11}
!524 = !{ptr @aic31xx_dai_driver, !525, !"aic31xx_dai_driver", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1447, i32 34}
!526 = !{ptr @tlv320aic31xx_of_match, !527, !"tlv320aic31xx_of_match", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1470, i32 34}
!528 = !{ptr @aic31xx_i2c_id, !529, !"aic31xx_i2c_id", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/tlv320aic31xx.c", i32 1732, i32 35}
!530 = !{i32 1, !"wchar_size", i32 2}
!531 = !{i32 1, !"min_enum_size", i32 4}
!532 = !{i32 8, !"branch-target-enforcement", i32 0}
!533 = !{i32 8, !"sign-return-address", i32 0}
!534 = !{i32 8, !"sign-return-address-all", i32 0}
!535 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!536 = !{i32 7, !"uwtable", i32 1}
!537 = !{i32 7, !"frame-pointer", i32 2}
!538 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!539 = !{i64 2149004390, i64 2149004395, i64 2149004408, i64 2149004452, i64 2149004486, i64 2149004507}
!540 = !{!"auto-init"}
!541 = !{i64 2156500742, i64 2156501240, i64 2156500779, i64 2156500835, i64 2156500869, i64 2156500893, i64 2156500934, i64 2156500955, i64 2156500983, i64 2156501017}
!542 = !{i8 0, i8 2}
!543 = !{i32 0, i32 33}
