; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/adau1373.c_pt.bc'
source_filename = "../sound/soc/codecs/adau1373.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.adau1373_platform_data = type { [4 x i8], i8, i8, i32, [3 x [13 x i8]], i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.adau1373 = type { ptr, [3 x %struct.adau1373_dai] }
%struct.adau1373_dai = type { i32, i32, i8, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_adau1373__294_1515_adau1373_i2c_driver_init6 = internal global ptr @adau1373_i2c_driver_init, section ".initcall6.init", align 4
@adau1373_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adau1373_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adau1373_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adau1373_i2c_driver_exit = internal global ptr @adau1373_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [50 x i8] c"snd_soc_adau1373.description=ASoC ADAU1373 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [61 x i8] c"snd_soc_adau1373.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [56 x i8] c"snd_soc_adau1373.file=sound/soc/codecs/snd-soc-adau1373\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [29 x i8] c"snd_soc_adau1373.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adau1373\00", [23 x i8] zeroinitializer }, align 32
@adau1373_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adau1373\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adau1373_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adau1373_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @adau1373_register_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1373_reg_defaults, i32 165, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"adau1373:1487:(&adau1373_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@adau1373_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @adau1373_controls, i32 50, ptr @adau1373_dapm_widgets, i32 80, ptr @adau1373_dapm_routes, i32 211, ptr @adau1373_probe, ptr null, ptr null, ptr @adau1373_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1373_set_pll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1373_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@adau1373_dai_driver = internal global { [3 x %struct.snd_soc_dai_driver], [104 x i8] } { [3 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.410, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @adau1373_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.192, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.190, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.411, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @adau1373_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.196, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.194, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.412, i32 2, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @adau1373_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.200, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.198, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }], [104 x i8] zeroinitializer }, align 32
@adau1373_reg_defaults = internal constant { [165 x %struct.reg_default], [344 x i8] } { [165 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 2 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 2 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 64, i32 0 }, %struct.reg_default { i32 66, i32 0 }, %struct.reg_default { i32 68, i32 10 }, %struct.reg_default { i32 69, i32 10 }, %struct.reg_default { i32 70, i32 10 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 74, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 0 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 8 }, %struct.reg_default { i32 82, i32 8 }, %struct.reg_default { i32 83, i32 8 }, %struct.reg_default { i32 86, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 94, i32 0 }, %struct.reg_default { i32 95, i32 0 }, %struct.reg_default { i32 98, i32 0 }, %struct.reg_default { i32 99, i32 0 }, %struct.reg_default { i32 100, i32 0 }, %struct.reg_default { i32 101, i32 0 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 0 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 0 }, %struct.reg_default { i32 108, i32 0 }, %struct.reg_default { i32 109, i32 0 }, %struct.reg_default { i32 110, i32 0 }, %struct.reg_default { i32 111, i32 0 }, %struct.reg_default { i32 112, i32 0 }, %struct.reg_default { i32 113, i32 0 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 115, i32 0 }, %struct.reg_default { i32 116, i32 0 }, %struct.reg_default { i32 117, i32 0 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 0 }, %struct.reg_default { i32 120, i32 0 }, %struct.reg_default { i32 125, i32 0 }, %struct.reg_default { i32 126, i32 0 }, %struct.reg_default { i32 127, i32 0 }, %struct.reg_default { i32 128, i32 120 }, %struct.reg_default { i32 129, i32 24 }, %struct.reg_default { i32 130, i32 0 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 192 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }, %struct.reg_default { i32 137, i32 192 }, %struct.reg_default { i32 138, i32 136 }, %struct.reg_default { i32 139, i32 122 }, %struct.reg_default { i32 140, i32 223 }, %struct.reg_default { i32 141, i32 32 }, %struct.reg_default { i32 142, i32 0 }, %struct.reg_default { i32 143, i32 0 }, %struct.reg_default { i32 144, i32 120 }, %struct.reg_default { i32 145, i32 24 }, %struct.reg_default { i32 146, i32 0 }, %struct.reg_default { i32 147, i32 0 }, %struct.reg_default { i32 148, i32 0 }, %struct.reg_default { i32 149, i32 192 }, %struct.reg_default { i32 150, i32 0 }, %struct.reg_default { i32 151, i32 0 }, %struct.reg_default { i32 152, i32 0 }, %struct.reg_default { i32 153, i32 192 }, %struct.reg_default { i32 154, i32 136 }, %struct.reg_default { i32 155, i32 122 }, %struct.reg_default { i32 156, i32 223 }, %struct.reg_default { i32 157, i32 32 }, %struct.reg_default { i32 158, i32 0 }, %struct.reg_default { i32 159, i32 0 }, %struct.reg_default { i32 160, i32 120 }, %struct.reg_default { i32 161, i32 24 }, %struct.reg_default { i32 162, i32 0 }, %struct.reg_default { i32 163, i32 0 }, %struct.reg_default { i32 164, i32 0 }, %struct.reg_default { i32 165, i32 192 }, %struct.reg_default { i32 166, i32 0 }, %struct.reg_default { i32 167, i32 0 }, %struct.reg_default { i32 168, i32 0 }, %struct.reg_default { i32 169, i32 192 }, %struct.reg_default { i32 170, i32 136 }, %struct.reg_default { i32 171, i32 122 }, %struct.reg_default { i32 172, i32 223 }, %struct.reg_default { i32 173, i32 32 }, %struct.reg_default { i32 174, i32 0 }, %struct.reg_default { i32 175, i32 0 }, %struct.reg_default { i32 192, i32 0 }, %struct.reg_default { i32 193, i32 0 }, %struct.reg_default { i32 220, i32 0 }, %struct.reg_default { i32 221, i32 0 }, %struct.reg_default { i32 221, i32 0 }, %struct.reg_default { i32 223, i32 0 }, %struct.reg_default { i32 226, i32 0 }, %struct.reg_default { i32 235, i32 0 }], [344 x i8] zeroinitializer }, align 32
@adau1373_controls = internal constant { [50 x %struct.snd_kcontrol_new], [576 x i8] } { [50 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.4 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_out_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_out_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_out_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_in_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_in_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_in_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_in_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_ep_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_gain_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_input_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_input_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_input_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_input_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_speaker_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_lineout1_lr_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_speaker_lr_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_hpf_cutoff_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_hpf_channel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_bass_hpf_cutoff_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_bass_clip_level_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_bass_lpf_cutoff_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_bass_tlv }, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_bass_channel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_3d_cutoff_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_3d_level_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_3d_tlv }, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_bass_channel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }], [576 x i8] zeroinitializer }, align 32
@adau1373_dapm_routes = internal constant { [211 x %struct.snd_soc_dapm_route], [2724 x i8] } { [211 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.241, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.249, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.247, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.245, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.243, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.241, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.249, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.247, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.245, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr @.str.243, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.240, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.240, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.155, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.332, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.334, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.336, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.338, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.344, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.342, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr @.str.340, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.332, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.334, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.336, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.338, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.344, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.342, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr @.str.340, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.332, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.334, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.336, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.338, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.344, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.342, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr @.str.340, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.332, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.334, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.336, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.338, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.344, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.342, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr @.str.340, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.332, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.334, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.336, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.338, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.344, ptr @.str.189, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.342, ptr @.str.193, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr @.str.340, ptr @.str.197, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.382, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.380, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.378, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.376, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr @.str.374, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.382, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.380, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.378, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.376, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr @.str.374, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.382, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.380, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.378, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.376, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr @.str.374, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.382, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.380, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.378, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.376, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr @.str.374, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.382, ptr @.str.201, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.380, ptr @.str.202, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.378, ptr @.str.203, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.376, ptr @.str.204, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr @.str.374, ptr @.str.205, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.206, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.207, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.258, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.256, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.262, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.260, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.270, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.268, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.266, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.264, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.258, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.256, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.262, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.260, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.270, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.268, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.266, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.264, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.258, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.256, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.262, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.260, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.270, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.268, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.266, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr @.str.264, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.258, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.256, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.262, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.260, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.270, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.268, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.266, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.264, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.258, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.256, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.262, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.260, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.270, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.268, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.266, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.264, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.258, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.256, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.262, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.260, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.270, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.268, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.266, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.264, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.256, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.260, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.270, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.268, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.266, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.264, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.258, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.262, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.270, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.268, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.266, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.264, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.258, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.256, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.262, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.260, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.270, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.268, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.266, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.264, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.236, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.237, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.234, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.235, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.238, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr null, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.218, ptr @adau1373_check_aif_clk, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.218, ptr @adau1373_check_aif_clk, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.218, ptr @adau1373_check_aif_clk, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr null, ptr @.str.219, ptr @adau1373_check_aif_clk, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr null, ptr @.str.219, ptr @adau1373_check_aif_clk, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr null, ptr @.str.219, ptr @adau1373_check_aif_clk, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.183, ptr @adau1373_check_src, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.184, ptr @adau1373_check_src, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.193, ptr null, ptr @.str.185, ptr @adau1373_check_src, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.195, ptr null, ptr @.str.186, ptr @adau1373_check_src, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.187, ptr @adau1373_check_src, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.188, ptr @adau1373_check_src, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }], [2724 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIF1 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@adau1373_digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -9563, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 104, i32 105, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIF2 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 106, i32 107, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AIF3 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 108, i32 109, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 114, i32 115, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMIC Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 116, i32 117, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AIF1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 98, i32 99, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AIF2 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 100, i32 101, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AIF3 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 102, i32 103, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC1 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 110, i32 111, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC2 Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 112, i32 113, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Lineout1 Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@adau1373_out_tlv = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 96, i32 0, i32 7, i32 1, i32 8, i32 -7900, i32 65936, i32 8, i32 15, i32 1, i32 8, i32 -4700, i32 300, i32 16, i32 23, i32 1, i32 8, i32 -2300, i32 200, i32 24, i32 31, i32 1, i32 8, i32 -700, i32 100], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 9, i32 10, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 13, i32 14, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 15, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input 1 Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@adau1373_in_pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1300, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 1, i32 2, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input 2 Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 3, i32 4, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input 3 Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 5, i32 6, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Input 4 Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 7, i32 8, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Earpiece Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@adau1373_ep_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 66136], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AIF3 Boost Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@adau1373_gain_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 118, i32 118, i32 4, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AIF2 Boost Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 118, i32 118, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AIF1 Boost Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 118, i32 118, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AIF3 Boost Capture Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 119, i32 119, i32 4, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AIF2 Boost Capture Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 119, i32 119, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AIF1 Boost Capture Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 119, i32 119, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DMIC Boost Capture Volume\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 120, i32 120, i32 6, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC Boost Capture Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 120, i32 120, i32 4, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DAC2 Boost Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 120, i32 120, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DAC1 Boost Playback Volume\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 120, i32 120, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Input 1 Boost Capture Volume\00", [35 x i8] zeroinitializer }, align 32
@adau1373_input_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 2000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 0, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Input 2 Boost Capture Volume\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 1, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Input 3 Boost Capture Volume\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 2, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Input 4 Boost Capture Volume\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 17, i32 17, i32 3, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Speaker Boost Playback Volume\00", [34 x i8] zeroinitializer }, align 32
@adau1373_speaker_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 1200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 31, i32 31, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Lineout1 LR Mux\00", [16 x i8] zeroinitializer }, align 32
@adau1373_lineout1_lr_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 4, i8 4, i32 4, i32 3, ptr @adau1373_lr_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker LR Mux\00", [17 x i8] zeroinitializer }, align 32
@adau1373_speaker_lr_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 31, i8 4, i8 4, i32 4, i32 3, ptr @adau1373_lr_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPF Cutoff\00", [21 x i8] zeroinitializer }, align 32
@adau1373_hpf_cutoff_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 125, i8 3, i8 3, i32 17, i32 31, ptr @adau1373_hpf_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPF Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 125, i32 125, i32 1, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPF Channel\00", [20 x i8] zeroinitializer }, align 32
@adau1373_hpf_channel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 222, i8 0, i8 0, i32 6, i32 7, ptr @adau1373_fdsp_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bass HPF Cutoff\00", [16 x i8] zeroinitializer }, align 32
@adau1373_bass_hpf_cutoff_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 126, i8 0, i8 0, i32 4, i32 3, ptr @adau1373_bass_hpf_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Bass Clip Level Threshold\00", [38 x i8] zeroinitializer }, align 32
@adau1373_bass_clip_level_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 126, i8 2, i8 2, i32 7, i32 7, ptr @adau1373_bass_clip_level_text, ptr @adau1373_bass_clip_level_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bass LPF Cutoff\00", [16 x i8] zeroinitializer }, align 32
@adau1373_bass_lpf_cutoff_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 126, i8 5, i8 5, i32 2, i32 1, ptr @adau1373_bass_lpf_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bass Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 127, i32 127, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Bass Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@adau1373_bass_tlv = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 3, i32 72, i32 0, i32 2, i32 1, i32 8, i32 -600, i32 66136, i32 3, i32 4, i32 1, i32 8, i32 950, i32 250, i32 5, i32 7, i32 1, i32 8, i32 1400, i32 150], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 127, i32 127, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Bass Channel\00", [19 x i8] zeroinitializer }, align 32
@adau1373_bass_channel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 223, i8 4, i8 4, i32 6, i32 7, ptr @adau1373_fdsp_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3D Freq\00", [24 x i8] zeroinitializer }, align 32
@adau1373_3d_cutoff_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 192, i8 0, i8 0, i32 7, i32 7, ptr @adau1373_3d_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3D Level\00", [23 x i8] zeroinitializer }, align 32
@adau1373_3d_level_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 192, i8 4, i8 4, i32 16, i32 15, ptr @adau1373_3d_level_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"3D Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 193, i32 193, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"3D Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@adau1373_3d_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 7, i32 2, i32 8, i32 -1800, i32 -120], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 193, i32 193, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"3D Channel\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Zero Cross Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 39, i32 39, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@adau1373_lr_mux_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mute\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Channel (L+R)\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Channel (L+R)\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stereo\00", [25 x i8] zeroinitializer }, align 32
@adau1373_hpf_cutoff_text = internal global { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110], [60 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"3.7Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"150Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"250Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"350Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"450Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"500Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"550Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"600Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"650Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"700Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"750Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"800Hz\00", [26 x i8] zeroinitializer }, align 32
@adau1373_fdsp_sel_text = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116], [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Channel 1\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Channel 2\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Channel 3\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Channel 4\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Channel 5\00", [22 x i8] zeroinitializer }, align 32
@adau1373_bass_hpf_cutoff_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"158Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"232Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"347Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"520Hz\00", [26 x i8] zeroinitializer }, align 32
@adau1373_bass_clip_level_text = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], [36 x i8] zeroinitializer }, align 32
@adau1373_bass_clip_level_values = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [36 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.125\00", [26 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.250\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.370\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.500\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.625\00", [26 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.750\00", [26 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.875\00", [26 x i8] zeroinitializer }, align 32
@adau1373_bass_lpf_cutoff_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.128, ptr @.str.129], [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"801Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1001Hz\00", [25 x i8] zeroinitializer }, align 32
@adau1373_3d_cutoff_text = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136], [36 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"No 3D\00", [26 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.03125 fs\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.04583 fs\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.075 fs\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.11458 fs\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.16875 fs\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0.27083 fs\00", [21 x i8] zeroinitializer }, align 32
@adau1373_3d_level_text = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0%\00", [29 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"6.67%\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"13.33%\00", [25 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"20%\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"26.67%\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"33.33%\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"40%\00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"46.67%\00", [25 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"53.33%\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"60%\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"66.67%\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"73.33%\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"80%\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"86.67\00", [26 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"99.33%\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"100%\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Decimator Mux\00", [18 x i8] zeroinitializer }, align 32
@adau1373_decimator_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.157, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_decimator_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IN4PGA\00", [25 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IN3PGA\00", [25 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IN2PGA\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IN1PGA\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Left DAC2\00", [22 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Right DAC2\00", [21 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Left DAC1\00", [22 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Right DAC1\00", [21 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Left ADC Mixer\00", [17 x i8] zeroinitializer }, align 32
@adau1373_left_adc_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.242 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.244 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.246 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.248 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.250 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Right ADC Mixer\00", [16 x i8] zeroinitializer }, align 32
@adau1373_right_adc_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.241, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.243, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.252 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.247, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.254 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.249, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left Lineout2 Mixer\00", [44 x i8] zeroinitializer }, align 32
@adau1373_left_line2_mixer_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right Lineout2 Mixer\00", [43 x i8] zeroinitializer }, align 32
@adau1373_right_line2_mixer_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.276 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.278 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Left Lineout1 Mixer\00", [44 x i8] zeroinitializer }, align 32
@adau1373_left_line1_mixer_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.280 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.282 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.284 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.285 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.286 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.287 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Right Lineout1 Mixer\00", [43 x i8] zeroinitializer }, align 32
@adau1373_right_line1_mixer_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.288 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.290 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.292 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.293 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.294 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Earpiece Mixer\00", [17 x i8] zeroinitializer }, align 32
@adau1373_ep_mixer_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.296 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.297 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.298 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.299 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.300 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.302 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.303 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Speaker Mixer\00", [45 x i8] zeroinitializer }, align 32
@adau1373_left_spk_mixer_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.304 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.305 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.306 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.307 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.308 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.309 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.310 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.311 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Speaker Mixer\00", [44 x i8] zeroinitializer }, align 32
@adau1373_right_spk_mixer_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.312 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.313 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.314 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.315 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.316 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.317 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.318 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.319 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Headphone Mixer\00", [43 x i8] zeroinitializer }, align 32
@adau1373_left_hp_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.320 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.321 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.322 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.323 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.324 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.325 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Headphone Mixer\00", [42 x i8] zeroinitializer }, align 32
@adau1373_right_hp_mixer_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.326 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.327 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.328 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.329 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.330 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.331 to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Enable\00", [47 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AIF1 CLK\00", [23 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AIF2 CLK\00", [23 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AIF3 CLK\00", [23 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF1 IN SRC\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 OUT SRC\00", [19 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF2 IN SRC\00", [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 OUT SRC\00", [19 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF3 IN SRC\00", [20 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF3 OUT SRC\00", [19 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF1 IN\00", [24 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AIF1 OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF2 IN\00", [24 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF2 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AIF2 OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIF3 IN\00", [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF3 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AIF3 OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF3 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP Channel1 Mixer\00", [45 x i8] zeroinitializer }, align 32
@adau1373_dsp_channel1_mixer_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.333 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.334, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.335 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.337 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.338, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.339 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.341 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.342, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.343 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.344, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.345 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP Channel2 Mixer\00", [45 x i8] zeroinitializer }, align 32
@adau1373_dsp_channel2_mixer_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.346 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.334, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.347 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.348 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.338, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.349 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.350 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.342, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.351 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.344, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.352 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP Channel3 Mixer\00", [45 x i8] zeroinitializer }, align 32
@adau1373_dsp_channel3_mixer_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.353 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.334, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.354 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.355 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.338, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.356 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.357 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.342, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.358 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.344, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.359 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP Channel4 Mixer\00", [45 x i8] zeroinitializer }, align 32
@adau1373_dsp_channel4_mixer_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.360 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.334, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.361 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.362 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.338, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.363 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.364 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.342, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.365 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.344, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.366 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSP Channel5 Mixer\00", [45 x i8] zeroinitializer }, align 32
@adau1373_dsp_channel5_mixer_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.332, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.367 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.334, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.368 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.336, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.369 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.338, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.370 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.340, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.371 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.342, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.372 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.344, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.373 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIF1 Mixer\00", [21 x i8] zeroinitializer }, align 32
@adau1373_aif1_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.374, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.375 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.376, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.377 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.378, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.379 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.380, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.381 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.383 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIF2 Mixer\00", [21 x i8] zeroinitializer }, align 32
@adau1373_aif2_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.374, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.384 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.376, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.385 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.378, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.386 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.380, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.387 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.388 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AIF3 Mixer\00", [21 x i8] zeroinitializer }, align 32
@adau1373_aif3_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.374, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.389 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.376, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.390 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.378, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.391 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.380, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.392 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.393 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC1 Mixer\00", [21 x i8] zeroinitializer }, align 32
@adau1373_dac1_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.374, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.394 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.376, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.395 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.378, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.396 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.380, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.397 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.398 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC2 Mixer\00", [21 x i8] zeroinitializer }, align 32
@adau1373_dac2_mixer_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.374, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.399 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.376, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.400 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.378, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.401 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.380, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.402 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.403 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DSP\00", [28 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Recording Engine B\00", [45 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Recording Engine A\00", [45 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Playback Engine B\00", [46 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Playback Engine A\00", [46 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL1\00", [27 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLL2\00", [27 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYSCLK1\00", [24 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SYSCLK2\00", [24 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN1L\00", [26 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN1R\00", [26 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN2L\00", [26 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN2R\00", [26 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN3L\00", [26 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN3R\00", [26 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN4L\00", [26 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN4R\00", [26 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC1DAT\00", [23 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DMIC2DAT\00", [23 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOUT1L\00", [25 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOUT1R\00", [25 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOUT2L\00", [25 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOUT2R\00", [25 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKL\00", [27 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKR\00", [27 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EP\00", [29 x i8] zeroinitializer }, align 32
@adau1373_dapm_widgets = internal constant { [80 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [3584 x i8] } { [80 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 226, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 226, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adau1373_decimator_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 37, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @adau1373_left_adc_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @adau1373_right_adc_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @adau1373_left_line2_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @adau1373_right_line2_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @adau1373_left_line1_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 38, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @adau1373_right_line1_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 39, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @adau1373_ep_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 39, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @adau1373_left_spk_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 39, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 8, ptr @adau1373_right_spk_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @adau1373_left_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 6, ptr @adau1373_right_hp_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 39, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 81, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 82, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 83, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 81, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 81, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 82, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 82, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 83, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 83, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.189, ptr @.str.190, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.191, ptr @.str.192, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.193, ptr @.str.194, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.195, ptr @.str.196, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.197, ptr @.str.198, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.199, ptr @.str.200, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @adau1373_dsp_channel1_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @adau1373_dsp_channel2_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @adau1373_dsp_channel3_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @adau1373_dsp_channel4_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 7, ptr @adau1373_dsp_channel5_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @adau1373_aif1_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @adau1373_aif2_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @adau1373_aif3_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @adau1373_dac1_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @adau1373_dac2_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 235, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 235, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 235, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 235, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 235, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @adau1373_pll_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @adau1373_pll_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 64, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 66, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.221, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.222, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.223, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.234, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.235, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.236, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.237, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.238, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [3584 x i8] zeroinitializer }, align 32
@adau1373_decimator_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @adau1373_decimator_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adau1373_decimator_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.240, ptr @.str.155], [24 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.242 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Input 4 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.244 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Input 3 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.246 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Input 2 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.248 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Input 1 Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.250 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 18, i32 18, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.252 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.254 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left DAC2 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right DAC2 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left DAC1 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right DAC1 Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Input 4 Bypass Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Input 3 Bypass Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Input 2 Bypass Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Input 1 Bypass Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 22, i32 22, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.276 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.278 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 23, i32 23, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.280 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.282 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.284 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.285 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.286 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.287 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.288 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.290 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.291 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.292 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.294 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.296 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.298 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.300 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.302 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.303 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.304 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.305 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.306 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.307 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.308 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.309 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.310 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.311 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.312 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.313 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.314 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.315 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.316 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.317 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.318 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.319 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.320 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.321 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.322 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.323 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.324 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.325 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.326 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.327 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.328 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.329 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.330 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.331 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DMIC2 Swapped Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.333 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 86, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC2 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.335 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 86, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADC/DMIC1 Swapped Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.337 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 86, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC/DMIC1 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.339 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 86, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF3 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.341 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 86, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.343 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 86, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.345 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 86, i32 86, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.346 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 87, i32 87, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.347 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 87, i32 87, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.348 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 87, i32 87, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.349 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 87, i32 87, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.350 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 87, i32 87, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.351 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 87, i32 87, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.352 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 87, i32 87, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.353 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.354 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.355 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.356 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.357 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.358 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.359 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.360 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.361 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.362 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.363 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.364 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.365 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.366 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 89, i32 89, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.367 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 90, i32 90, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.368 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 90, i32 90, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.369 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 90, i32 90, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.370 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 90, i32 90, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.371 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 90, i32 90, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.372 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 90, i32 90, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.373 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 90, i32 90, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP Channel5 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.375 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 91, i32 91, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP Channel4 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.377 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 91, i32 91, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP Channel3 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.379 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 91, i32 91, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP Channel2 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.381 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 91, i32 91, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSP Channel1 Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.383 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 91, i32 91, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.384 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.385 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.386 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.387 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.388 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 92, i32 92, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.389 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.390 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.391 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.392 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.393 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 93, i32 93, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.394 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 94, i32 94, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.395 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 94, i32 94, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.396 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 94, i32 94, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.397 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 94, i32 94, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.398 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 94, i32 94, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.399 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 95, i32 95, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.400 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 95, i32 95, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.401 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 95, i32 95, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.402 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 95, i32 95, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.403 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 95, i32 95, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adau1373_drc_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.404, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_drc1_channel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.405, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_drc2_channel_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.406, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_drc3_channel_enum to i32) }], [48 x i8] zeroinitializer }, align 32
@adau1373_lineout2_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.407, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adau1373_out_tlv }, i32 ptrtoint (ptr @.compoundliteral.408 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.409, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adau1373_lineout2_lr_mux_enum to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DRC1 Channel\00", [19 x i8] zeroinitializer }, align 32
@adau1373_drc1_channel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 220, i8 4, i8 4, i32 6, i32 7, ptr @adau1373_fdsp_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DRC2 Channel\00", [19 x i8] zeroinitializer }, align 32
@adau1373_drc2_channel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 220, i8 0, i8 0, i32 6, i32 7, ptr @adau1373_fdsp_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DRC3 Channel\00", [19 x i8] zeroinitializer }, align 32
@adau1373_drc3_channel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 221, i8 0, i8 0, i32 6, i32 7, ptr @adau1373_fdsp_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Lineout2 Playback Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.408 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 11, i32 12, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Lineout2 LR Mux\00", [16 x i8] zeroinitializer }, align 32
@adau1373_lineout2_lr_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 6, i8 6, i32 4, i32 3, ptr @adau1373_lr_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adau1373-aif1\00", [18 x i8] zeroinitializer }, align 32
@adau1373_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @adau1373_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @adau1373_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adau1373_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adau1373-aif2\00", [18 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adau1373-aif3\00", [18 x i8] zeroinitializer }, align 32
@switch.table.adau1373_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.413 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.414 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.415 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 9, i64 10]
@___asan_gen_.416 = private unnamed_addr constant [20 x i8] c"adau1373_i2c_driver\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1507, i32 26 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1509, i32 11 }
@___asan_gen_.422 = private unnamed_addr constant [16 x i8] c"adau1373_i2c_id\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1501, i32 35 }
@___asan_gen_.425 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.428 = private unnamed_addr constant [23 x i8] c"adau1373_regmap_config\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1448, i32 35 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1486, i32 21 }
@___asan_gen_.434 = private unnamed_addr constant [26 x i8] c"adau1373_component_driver\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1460, i32 46 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c"adau1373_dai_driver\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1189, i32 34 }
@___asan_gen_.440 = private unnamed_addr constant [22 x i8] c"adau1373_reg_defaults\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 155, i32 33 }
@___asan_gen_.443 = private unnamed_addr constant [18 x i8] c"adau1373_controls\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 434, i32 38 }
@___asan_gen_.446 = private unnamed_addr constant [21 x i8] c"adau1373_dapm_routes\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 889, i32 40 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 435, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [21 x i8] c"adau1373_digital_tlv\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 330, i32 14 }
@___asan_gen_.455 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 437, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 439, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 442, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 444, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 447, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 449, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 451, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 454, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 456, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 459, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [17 x i8] c"adau1373_out_tlv\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 323, i32 14 }
@___asan_gen_.498 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 461, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 463, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 466, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [20 x i8] c"adau1373_in_pga_tlv\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 331, i32 14 }
@___asan_gen_.513 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 468, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 470, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 472, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 475, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant [16 x i8] c"adau1373_ep_tlv\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 332, i32 14 }
@___asan_gen_.532 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 478, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant [24 x i8] c"adau1373_gain_boost_tlv\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 335, i32 14 }
@___asan_gen_.539 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 480, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 482, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 484, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 486, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 488, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 490, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 492, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 494, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 496, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 499, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [25 x i8] c"adau1373_input_boost_tlv\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 334, i32 14 }
@___asan_gen_.582 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 501, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 503, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 505, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 508, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [27 x i8] c"adau1373_speaker_boost_tlv\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 336, i32 14 }
@___asan_gen_.601 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 511, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant [30 x i8] c"adau1373_lineout1_lr_mux_enum\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 427, i32 8 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 512, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant [29 x i8] c"adau1373_speaker_lr_mux_enum\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 431, i32 8 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 514, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant [25 x i8] c"adau1373_hpf_cutoff_enum\00", align 1
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 364, i32 8 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 515, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 516, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant [26 x i8] c"adau1373_hpf_channel_enum\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 353, i32 8 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 518, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [30 x i8] c"adau1373_bass_hpf_cutoff_enum\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 396, i32 8 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 519, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant [30 x i8] c"adau1373_bass_clip_level_enum\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 392, i32 8 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 520, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant [30 x i8] c"adau1373_bass_lpf_cutoff_enum\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 389, i32 8 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 521, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 522, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [18 x i8] c"adau1373_bass_tlv\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 383, i32 14 }
@___asan_gen_.658 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 524, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [27 x i8] c"adau1373_bass_channel_enum\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 355, i32 8 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 526, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [24 x i8] c"adau1373_3d_cutoff_enum\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 412, i32 8 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 527, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [23 x i8] c"adau1373_3d_level_enum\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 410, i32 8 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 528, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 529, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant [16 x i8] c"adau1373_3d_tlv\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 415, i32 14 }
@___asan_gen_.687 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 531, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 533, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.695 = private unnamed_addr constant [21 x i8] c"adau1373_lr_mux_text\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 420, i32 20 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 421, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 422, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 423, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 424, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant [25 x i8] c"adau1373_hpf_cutoff_text\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 358, i32 20 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 359, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 359, i32 11 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 359, i32 19 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 359, i32 28 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 359, i32 37 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 359, i32 46 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 359, i32 55 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 359, i32 64 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 360, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 360, i32 11 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 360, i32 20 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 360, i32 29 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 360, i32 38 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 360, i32 47 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 360, i32 56 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 360, i32 65 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 361, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant [23 x i8] c"adau1373_fdsp_sel_text\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 338, i32 20 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 339, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 340, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 341, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 342, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 343, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 344, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant [30 x i8] c"adau1373_bass_hpf_cutoff_text\00", align 1
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 379, i32 20 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 380, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 380, i32 11 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 380, i32 20 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 380, i32 29 }
@___asan_gen_.800 = private unnamed_addr constant [30 x i8] c"adau1373_bass_clip_level_text\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 371, i32 20 }
@___asan_gen_.803 = private unnamed_addr constant [32 x i8] c"adau1373_bass_clip_level_values\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 375, i32 27 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 372, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 372, i32 11 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 372, i32 20 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 372, i32 29 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 372, i32 38 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 372, i32 47 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 372, i32 56 }
@___asan_gen_.827 = private unnamed_addr constant [30 x i8] c"adau1373_bass_lpf_cutoff_text\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 367, i32 20 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 368, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 368, i32 11 }
@___asan_gen_.836 = private unnamed_addr constant [24 x i8] c"adau1373_3d_cutoff_text\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 405, i32 20 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 406, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 406, i32 11 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 406, i32 25 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 406, i32 39 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 406, i32 51 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 407, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 407, i32 16 }
@___asan_gen_.860 = private unnamed_addr constant [23 x i8] c"adau1373_3d_level_text\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 399, i32 20 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 400, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 400, i32 8 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 400, i32 17 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 400, i32 27 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 400, i32 34 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 400, i32 44 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 401, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 401, i32 9 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 401, i32 19 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 401, i32 29 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 401, i32 36 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 401, i32 46 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 402, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 402, i32 9 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 402, i32 18 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 402, i32 28 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 687, i32 2 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 688, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 690, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 691, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 693, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant [23 x i8] c"adau1373_decimator_mux\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 578, i32 38 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 696, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 697, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 699, i32 2 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 700, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 701, i32 2 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 702, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 704, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 705, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 706, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 707, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 709, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant [33 x i8] c"adau1373_left_adc_mixer_controls\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 581, i32 38 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 711, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant [34 x i8] c"adau1373_right_adc_mixer_controls\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 589, i32 38 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 714, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant [35 x i8] c"adau1373_left_line2_mixer_controls\00", align 1
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 716, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant [36 x i8] c"adau1373_right_line2_mixer_controls\00", align 1
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 615, i32 8 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 718, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant [35 x i8] c"adau1373_left_line1_mixer_controls\00", align 1
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 609, i32 8 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 720, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant [36 x i8] c"adau1373_right_line1_mixer_controls\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 611, i32 8 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 723, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant [27 x i8] c"adau1373_ep_mixer_controls\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 621, i32 8 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 725, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant [33 x i8] c"adau1373_left_spk_mixer_controls\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 617, i32 8 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 727, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant [34 x i8] c"adau1373_right_spk_mixer_controls\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 619, i32 8 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 729, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant [32 x i8] c"adau1373_left_hp_mixer_controls\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 624, i32 38 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 731, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant [33 x i8] c"adau1373_right_hp_mixer_controls\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 633, i32 38 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 733, i32 2 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 736, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 738, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 740, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 742, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 744, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 746, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 748, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 750, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 752, i32 2 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 755, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 756, i32 2 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 757, i32 2 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 758, i32 2 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 759, i32 2 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 760, i32 2 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 762, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant [37 x i8] c"adau1373_dsp_channel1_mixer_controls\00", align 1
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 764, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant [37 x i8] c"adau1373_dsp_channel2_mixer_controls\00", align 1
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 655, i32 8 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 766, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant [37 x i8] c"adau1373_dsp_channel3_mixer_controls\00", align 1
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 657, i32 8 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 768, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant [37 x i8] c"adau1373_dsp_channel4_mixer_controls\00", align 1
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 659, i32 8 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 770, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant [37 x i8] c"adau1373_dsp_channel5_mixer_controls\00", align 1
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 661, i32 8 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 773, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant [29 x i8] c"adau1373_aif1_mixer_controls\00", align 1
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 775, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant [29 x i8] c"adau1373_aif2_mixer_controls\00", align 1
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 675, i32 8 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 777, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant [29 x i8] c"adau1373_aif3_mixer_controls\00", align 1
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 677, i32 8 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 779, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant [29 x i8] c"adau1373_dac1_mixer_controls\00", align 1
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 679, i32 8 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 781, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant [29 x i8] c"adau1373_dac2_mixer_controls\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 681, i32 8 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 784, i32 2 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 785, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 786, i32 2 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 787, i32 2 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 788, i32 2 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 790, i32 2 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 792, i32 2 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 794, i32 2 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 795, i32 2 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 797, i32 2 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 798, i32 2 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 799, i32 2 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 800, i32 2 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 801, i32 2 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 802, i32 2 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 803, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 804, i32 2 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 806, i32 2 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 807, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 809, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 810, i32 2 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 811, i32 2 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 812, i32 2 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 813, i32 2 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 814, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 815, i32 2 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 816, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 817, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant [22 x i8] c"adau1373_dapm_widgets\00", align 1
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 684, i32 41 }
@___asan_gen_.1238 = private unnamed_addr constant [24 x i8] c"adau1373_decimator_enum\00", align 1
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 575, i32 8 }
@___asan_gen_.1241 = private unnamed_addr constant [24 x i8] c"adau1373_decimator_text\00", align 1
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 570, i32 20 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 571, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 582, i32 2 }
@___asan_gen_.1250 = private unnamed_addr constant [21 x i8] c".compoundliteral.242\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 583, i32 2 }
@___asan_gen_.1254 = private unnamed_addr constant [21 x i8] c".compoundliteral.244\00", align 1
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 584, i32 2 }
@___asan_gen_.1258 = private unnamed_addr constant [21 x i8] c".compoundliteral.246\00", align 1
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 585, i32 2 }
@___asan_gen_.1262 = private unnamed_addr constant [21 x i8] c".compoundliteral.248\00", align 1
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 586, i32 2 }
@___asan_gen_.1266 = private unnamed_addr constant [21 x i8] c".compoundliteral.250\00", align 1
@___asan_gen_.1267 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant [21 x i8] c".compoundliteral.252\00", align 1
@___asan_gen_.1269 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1270 = private unnamed_addr constant [21 x i8] c".compoundliteral.254\00", align 1
@___asan_gen_.1271 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1275 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1279 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1283 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1291 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1295 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 613, i32 8 }
@___asan_gen_.1303 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1304 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1306 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1307 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1308 = private unnamed_addr constant [21 x i8] c".compoundliteral.276\00", align 1
@___asan_gen_.1309 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1310 = private unnamed_addr constant [21 x i8] c".compoundliteral.278\00", align 1
@___asan_gen_.1311 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1312 = private unnamed_addr constant [21 x i8] c".compoundliteral.280\00", align 1
@___asan_gen_.1313 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1314 = private unnamed_addr constant [21 x i8] c".compoundliteral.282\00", align 1
@___asan_gen_.1315 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1316 = private unnamed_addr constant [21 x i8] c".compoundliteral.284\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant [21 x i8] c".compoundliteral.285\00", align 1
@___asan_gen_.1318 = private unnamed_addr constant [21 x i8] c".compoundliteral.286\00", align 1
@___asan_gen_.1319 = private unnamed_addr constant [21 x i8] c".compoundliteral.287\00", align 1
@___asan_gen_.1320 = private unnamed_addr constant [21 x i8] c".compoundliteral.288\00", align 1
@___asan_gen_.1321 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1322 = private unnamed_addr constant [21 x i8] c".compoundliteral.290\00", align 1
@___asan_gen_.1323 = private unnamed_addr constant [21 x i8] c".compoundliteral.291\00", align 1
@___asan_gen_.1324 = private unnamed_addr constant [21 x i8] c".compoundliteral.292\00", align 1
@___asan_gen_.1325 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1326 = private unnamed_addr constant [21 x i8] c".compoundliteral.294\00", align 1
@___asan_gen_.1327 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1328 = private unnamed_addr constant [21 x i8] c".compoundliteral.296\00", align 1
@___asan_gen_.1329 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1330 = private unnamed_addr constant [21 x i8] c".compoundliteral.298\00", align 1
@___asan_gen_.1331 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1332 = private unnamed_addr constant [21 x i8] c".compoundliteral.300\00", align 1
@___asan_gen_.1333 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1334 = private unnamed_addr constant [21 x i8] c".compoundliteral.302\00", align 1
@___asan_gen_.1335 = private unnamed_addr constant [21 x i8] c".compoundliteral.303\00", align 1
@___asan_gen_.1336 = private unnamed_addr constant [21 x i8] c".compoundliteral.304\00", align 1
@___asan_gen_.1337 = private unnamed_addr constant [21 x i8] c".compoundliteral.305\00", align 1
@___asan_gen_.1338 = private unnamed_addr constant [21 x i8] c".compoundliteral.306\00", align 1
@___asan_gen_.1339 = private unnamed_addr constant [21 x i8] c".compoundliteral.307\00", align 1
@___asan_gen_.1340 = private unnamed_addr constant [21 x i8] c".compoundliteral.308\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant [21 x i8] c".compoundliteral.309\00", align 1
@___asan_gen_.1342 = private unnamed_addr constant [21 x i8] c".compoundliteral.310\00", align 1
@___asan_gen_.1343 = private unnamed_addr constant [21 x i8] c".compoundliteral.311\00", align 1
@___asan_gen_.1344 = private unnamed_addr constant [21 x i8] c".compoundliteral.312\00", align 1
@___asan_gen_.1345 = private unnamed_addr constant [21 x i8] c".compoundliteral.313\00", align 1
@___asan_gen_.1346 = private unnamed_addr constant [21 x i8] c".compoundliteral.314\00", align 1
@___asan_gen_.1347 = private unnamed_addr constant [21 x i8] c".compoundliteral.315\00", align 1
@___asan_gen_.1348 = private unnamed_addr constant [21 x i8] c".compoundliteral.316\00", align 1
@___asan_gen_.1349 = private unnamed_addr constant [21 x i8] c".compoundliteral.317\00", align 1
@___asan_gen_.1350 = private unnamed_addr constant [21 x i8] c".compoundliteral.318\00", align 1
@___asan_gen_.1351 = private unnamed_addr constant [21 x i8] c".compoundliteral.319\00", align 1
@___asan_gen_.1352 = private unnamed_addr constant [21 x i8] c".compoundliteral.320\00", align 1
@___asan_gen_.1353 = private unnamed_addr constant [21 x i8] c".compoundliteral.321\00", align 1
@___asan_gen_.1354 = private unnamed_addr constant [21 x i8] c".compoundliteral.322\00", align 1
@___asan_gen_.1355 = private unnamed_addr constant [21 x i8] c".compoundliteral.323\00", align 1
@___asan_gen_.1356 = private unnamed_addr constant [21 x i8] c".compoundliteral.324\00", align 1
@___asan_gen_.1357 = private unnamed_addr constant [21 x i8] c".compoundliteral.325\00", align 1
@___asan_gen_.1358 = private unnamed_addr constant [21 x i8] c".compoundliteral.326\00", align 1
@___asan_gen_.1359 = private unnamed_addr constant [21 x i8] c".compoundliteral.327\00", align 1
@___asan_gen_.1360 = private unnamed_addr constant [21 x i8] c".compoundliteral.328\00", align 1
@___asan_gen_.1361 = private unnamed_addr constant [21 x i8] c".compoundliteral.329\00", align 1
@___asan_gen_.1362 = private unnamed_addr constant [21 x i8] c".compoundliteral.330\00", align 1
@___asan_gen_.1363 = private unnamed_addr constant [21 x i8] c".compoundliteral.331\00", align 1
@___asan_gen_.1367 = private unnamed_addr constant [21 x i8] c".compoundliteral.333\00", align 1
@___asan_gen_.1371 = private unnamed_addr constant [21 x i8] c".compoundliteral.335\00", align 1
@___asan_gen_.1375 = private unnamed_addr constant [21 x i8] c".compoundliteral.337\00", align 1
@___asan_gen_.1379 = private unnamed_addr constant [21 x i8] c".compoundliteral.339\00", align 1
@___asan_gen_.1383 = private unnamed_addr constant [21 x i8] c".compoundliteral.341\00", align 1
@___asan_gen_.1387 = private unnamed_addr constant [21 x i8] c".compoundliteral.343\00", align 1
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 653, i32 8 }
@___asan_gen_.1391 = private unnamed_addr constant [21 x i8] c".compoundliteral.345\00", align 1
@___asan_gen_.1392 = private unnamed_addr constant [21 x i8] c".compoundliteral.346\00", align 1
@___asan_gen_.1393 = private unnamed_addr constant [21 x i8] c".compoundliteral.347\00", align 1
@___asan_gen_.1394 = private unnamed_addr constant [21 x i8] c".compoundliteral.348\00", align 1
@___asan_gen_.1395 = private unnamed_addr constant [21 x i8] c".compoundliteral.349\00", align 1
@___asan_gen_.1396 = private unnamed_addr constant [21 x i8] c".compoundliteral.350\00", align 1
@___asan_gen_.1397 = private unnamed_addr constant [21 x i8] c".compoundliteral.351\00", align 1
@___asan_gen_.1398 = private unnamed_addr constant [21 x i8] c".compoundliteral.352\00", align 1
@___asan_gen_.1399 = private unnamed_addr constant [21 x i8] c".compoundliteral.353\00", align 1
@___asan_gen_.1400 = private unnamed_addr constant [21 x i8] c".compoundliteral.354\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant [21 x i8] c".compoundliteral.355\00", align 1
@___asan_gen_.1402 = private unnamed_addr constant [21 x i8] c".compoundliteral.356\00", align 1
@___asan_gen_.1403 = private unnamed_addr constant [21 x i8] c".compoundliteral.357\00", align 1
@___asan_gen_.1404 = private unnamed_addr constant [21 x i8] c".compoundliteral.358\00", align 1
@___asan_gen_.1405 = private unnamed_addr constant [21 x i8] c".compoundliteral.359\00", align 1
@___asan_gen_.1406 = private unnamed_addr constant [21 x i8] c".compoundliteral.360\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant [21 x i8] c".compoundliteral.361\00", align 1
@___asan_gen_.1408 = private unnamed_addr constant [21 x i8] c".compoundliteral.362\00", align 1
@___asan_gen_.1409 = private unnamed_addr constant [21 x i8] c".compoundliteral.363\00", align 1
@___asan_gen_.1410 = private unnamed_addr constant [21 x i8] c".compoundliteral.364\00", align 1
@___asan_gen_.1411 = private unnamed_addr constant [21 x i8] c".compoundliteral.365\00", align 1
@___asan_gen_.1412 = private unnamed_addr constant [21 x i8] c".compoundliteral.366\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant [21 x i8] c".compoundliteral.367\00", align 1
@___asan_gen_.1414 = private unnamed_addr constant [21 x i8] c".compoundliteral.368\00", align 1
@___asan_gen_.1415 = private unnamed_addr constant [21 x i8] c".compoundliteral.369\00", align 1
@___asan_gen_.1416 = private unnamed_addr constant [21 x i8] c".compoundliteral.370\00", align 1
@___asan_gen_.1417 = private unnamed_addr constant [21 x i8] c".compoundliteral.371\00", align 1
@___asan_gen_.1418 = private unnamed_addr constant [21 x i8] c".compoundliteral.372\00", align 1
@___asan_gen_.1419 = private unnamed_addr constant [21 x i8] c".compoundliteral.373\00", align 1
@___asan_gen_.1423 = private unnamed_addr constant [21 x i8] c".compoundliteral.375\00", align 1
@___asan_gen_.1427 = private unnamed_addr constant [21 x i8] c".compoundliteral.377\00", align 1
@___asan_gen_.1431 = private unnamed_addr constant [21 x i8] c".compoundliteral.379\00", align 1
@___asan_gen_.1435 = private unnamed_addr constant [21 x i8] c".compoundliteral.381\00", align 1
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 673, i32 8 }
@___asan_gen_.1439 = private unnamed_addr constant [21 x i8] c".compoundliteral.383\00", align 1
@___asan_gen_.1440 = private unnamed_addr constant [21 x i8] c".compoundliteral.384\00", align 1
@___asan_gen_.1441 = private unnamed_addr constant [21 x i8] c".compoundliteral.385\00", align 1
@___asan_gen_.1442 = private unnamed_addr constant [21 x i8] c".compoundliteral.386\00", align 1
@___asan_gen_.1443 = private unnamed_addr constant [21 x i8] c".compoundliteral.387\00", align 1
@___asan_gen_.1444 = private unnamed_addr constant [21 x i8] c".compoundliteral.388\00", align 1
@___asan_gen_.1445 = private unnamed_addr constant [21 x i8] c".compoundliteral.389\00", align 1
@___asan_gen_.1446 = private unnamed_addr constant [21 x i8] c".compoundliteral.390\00", align 1
@___asan_gen_.1447 = private unnamed_addr constant [21 x i8] c".compoundliteral.391\00", align 1
@___asan_gen_.1448 = private unnamed_addr constant [21 x i8] c".compoundliteral.392\00", align 1
@___asan_gen_.1449 = private unnamed_addr constant [21 x i8] c".compoundliteral.393\00", align 1
@___asan_gen_.1450 = private unnamed_addr constant [21 x i8] c".compoundliteral.394\00", align 1
@___asan_gen_.1451 = private unnamed_addr constant [21 x i8] c".compoundliteral.395\00", align 1
@___asan_gen_.1452 = private unnamed_addr constant [21 x i8] c".compoundliteral.396\00", align 1
@___asan_gen_.1453 = private unnamed_addr constant [21 x i8] c".compoundliteral.397\00", align 1
@___asan_gen_.1454 = private unnamed_addr constant [21 x i8] c".compoundliteral.398\00", align 1
@___asan_gen_.1455 = private unnamed_addr constant [21 x i8] c".compoundliteral.399\00", align 1
@___asan_gen_.1456 = private unnamed_addr constant [21 x i8] c".compoundliteral.400\00", align 1
@___asan_gen_.1457 = private unnamed_addr constant [21 x i8] c".compoundliteral.401\00", align 1
@___asan_gen_.1458 = private unnamed_addr constant [21 x i8] c".compoundliteral.402\00", align 1
@___asan_gen_.1459 = private unnamed_addr constant [21 x i8] c".compoundliteral.403\00", align 1
@___asan_gen_.1460 = private unnamed_addr constant [22 x i8] c"adau1373_drc_controls\00", align 1
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 542, i32 38 }
@___asan_gen_.1463 = private unnamed_addr constant [27 x i8] c"adau1373_lineout2_controls\00", align 1
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 536, i32 38 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 543, i32 2 }
@___asan_gen_.1469 = private unnamed_addr constant [27 x i8] c"adau1373_drc1_channel_enum\00", align 1
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 347, i32 8 }
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 544, i32 2 }
@___asan_gen_.1475 = private unnamed_addr constant [27 x i8] c"adau1373_drc2_channel_enum\00", align 1
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 349, i32 8 }
@___asan_gen_.1480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 545, i32 2 }
@___asan_gen_.1481 = private unnamed_addr constant [27 x i8] c"adau1373_drc3_channel_enum\00", align 1
@___asan_gen_.1483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 351, i32 8 }
@___asan_gen_.1486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 537, i32 2 }
@___asan_gen_.1487 = private unnamed_addr constant [21 x i8] c".compoundliteral.408\00", align 1
@___asan_gen_.1490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 539, i32 2 }
@___asan_gen_.1491 = private unnamed_addr constant [30 x i8] c"adau1373_lineout2_lr_mux_enum\00", align 1
@___asan_gen_.1493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 429, i32 8 }
@___asan_gen_.1496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1192, i32 11 }
@___asan_gen_.1497 = private unnamed_addr constant [17 x i8] c"adau1373_dai_ops\00", align 1
@___asan_gen_.1499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1180, i32 37 }
@___asan_gen_.1502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1212, i32 11 }
@___asan_gen_.1503 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1504 = private constant [31 x i8] c"../sound/soc/codecs/adau1373.c\00", align 1
@___asan_gen_.1505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1504, i32 1232, i32 11 }
@___asan_gen_.1506 = private unnamed_addr constant [32 x i8] c"switch.table.adau1373_hw_params\00", align 1
@llvm.compiler.used = appending global [490 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_adau1373_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_adau1373__294_1515_adau1373_i2c_driver_init6, ptr @adau1373_i2c_driver_exit, ptr @adau1373_i2c_driver, ptr @.str, ptr @adau1373_i2c_id, ptr @adau1373_i2c_probe._key, ptr @adau1373_regmap_config, ptr @.str.1, ptr @adau1373_component_driver, ptr @adau1373_dai_driver, ptr @adau1373_reg_defaults, ptr @adau1373_controls, ptr @adau1373_dapm_routes, ptr @.str.2, ptr @adau1373_digital_tlv, ptr @.compoundliteral, ptr @.str.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @adau1373_out_tlv, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @adau1373_in_pga_tlv, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @adau1373_ep_tlv, ptr @.compoundliteral.36, ptr @.str.37, ptr @adau1373_gain_boost_tlv, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @adau1373_input_boost_tlv, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @adau1373_speaker_boost_tlv, ptr @.compoundliteral.66, ptr @.str.67, ptr @adau1373_lineout1_lr_mux_enum, ptr @.str.68, ptr @adau1373_speaker_lr_mux_enum, ptr @.str.69, ptr @adau1373_hpf_cutoff_enum, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @adau1373_hpf_channel_enum, ptr @.str.73, ptr @adau1373_bass_hpf_cutoff_enum, ptr @.str.74, ptr @adau1373_bass_clip_level_enum, ptr @.str.75, ptr @adau1373_bass_lpf_cutoff_enum, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @adau1373_bass_tlv, ptr @.compoundliteral.79, ptr @.str.80, ptr @adau1373_bass_channel_enum, ptr @.str.81, ptr @adau1373_3d_cutoff_enum, ptr @.str.82, ptr @adau1373_3d_level_enum, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @adau1373_3d_tlv, ptr @.compoundliteral.86, ptr @.str.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @adau1373_lr_mux_text, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @adau1373_hpf_cutoff_text, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @adau1373_fdsp_sel_text, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @adau1373_bass_hpf_cutoff_text, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @adau1373_bass_clip_level_text, ptr @adau1373_bass_clip_level_values, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @adau1373_bass_lpf_cutoff_text, ptr @.str.128, ptr @.str.129, ptr @adau1373_3d_cutoff_text, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @adau1373_3d_level_text, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @adau1373_decimator_mux, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @adau1373_left_adc_mixer_controls, ptr @.str.169, ptr @adau1373_right_adc_mixer_controls, ptr @.str.170, ptr @adau1373_left_line2_mixer_controls, ptr @.str.171, ptr @adau1373_right_line2_mixer_controls, ptr @.str.172, ptr @adau1373_left_line1_mixer_controls, ptr @.str.173, ptr @adau1373_right_line1_mixer_controls, ptr @.str.174, ptr @adau1373_ep_mixer_controls, ptr @.str.175, ptr @adau1373_left_spk_mixer_controls, ptr @.str.176, ptr @adau1373_right_spk_mixer_controls, ptr @.str.177, ptr @adau1373_left_hp_mixer_controls, ptr @.str.178, ptr @adau1373_right_hp_mixer_controls, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @adau1373_dsp_channel1_mixer_controls, ptr @.str.202, ptr @adau1373_dsp_channel2_mixer_controls, ptr @.str.203, ptr @adau1373_dsp_channel3_mixer_controls, ptr @.str.204, ptr @adau1373_dsp_channel4_mixer_controls, ptr @.str.205, ptr @adau1373_dsp_channel5_mixer_controls, ptr @.str.206, ptr @adau1373_aif1_mixer_controls, ptr @.str.207, ptr @adau1373_aif2_mixer_controls, ptr @.str.208, ptr @adau1373_aif3_mixer_controls, ptr @.str.209, ptr @adau1373_dac1_mixer_controls, ptr @.str.210, ptr @adau1373_dac2_mixer_controls, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @adau1373_dapm_widgets, ptr @adau1373_decimator_enum, ptr @adau1373_decimator_text, ptr @.str.240, ptr @.str.241, ptr @.compoundliteral.242, ptr @.str.243, ptr @.compoundliteral.244, ptr @.str.245, ptr @.compoundliteral.246, ptr @.str.247, ptr @.compoundliteral.248, ptr @.str.249, ptr @.compoundliteral.250, ptr @.compoundliteral.251, ptr @.compoundliteral.252, ptr @.compoundliteral.253, ptr @.compoundliteral.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @.str.258, ptr @.compoundliteral.259, ptr @.str.260, ptr @.compoundliteral.261, ptr @.str.262, ptr @.compoundliteral.263, ptr @.str.264, ptr @.compoundliteral.265, ptr @.str.266, ptr @.compoundliteral.267, ptr @.str.268, ptr @.compoundliteral.269, ptr @.str.270, ptr @.compoundliteral.271, ptr @.compoundliteral.272, ptr @.compoundliteral.273, ptr @.compoundliteral.274, ptr @.compoundliteral.275, ptr @.compoundliteral.276, ptr @.compoundliteral.277, ptr @.compoundliteral.278, ptr @.compoundliteral.279, ptr @.compoundliteral.280, ptr @.compoundliteral.281, ptr @.compoundliteral.282, ptr @.compoundliteral.283, ptr @.compoundliteral.284, ptr @.compoundliteral.285, ptr @.compoundliteral.286, ptr @.compoundliteral.287, ptr @.compoundliteral.288, ptr @.compoundliteral.289, ptr @.compoundliteral.290, ptr @.compoundliteral.291, ptr @.compoundliteral.292, ptr @.compoundliteral.293, ptr @.compoundliteral.294, ptr @.compoundliteral.295, ptr @.compoundliteral.296, ptr @.compoundliteral.297, ptr @.compoundliteral.298, ptr @.compoundliteral.299, ptr @.compoundliteral.300, ptr @.compoundliteral.301, ptr @.compoundliteral.302, ptr @.compoundliteral.303, ptr @.compoundliteral.304, ptr @.compoundliteral.305, ptr @.compoundliteral.306, ptr @.compoundliteral.307, ptr @.compoundliteral.308, ptr @.compoundliteral.309, ptr @.compoundliteral.310, ptr @.compoundliteral.311, ptr @.compoundliteral.312, ptr @.compoundliteral.313, ptr @.compoundliteral.314, ptr @.compoundliteral.315, ptr @.compoundliteral.316, ptr @.compoundliteral.317, ptr @.compoundliteral.318, ptr @.compoundliteral.319, ptr @.compoundliteral.320, ptr @.compoundliteral.321, ptr @.compoundliteral.322, ptr @.compoundliteral.323, ptr @.compoundliteral.324, ptr @.compoundliteral.325, ptr @.compoundliteral.326, ptr @.compoundliteral.327, ptr @.compoundliteral.328, ptr @.compoundliteral.329, ptr @.compoundliteral.330, ptr @.compoundliteral.331, ptr @.str.332, ptr @.compoundliteral.333, ptr @.str.334, ptr @.compoundliteral.335, ptr @.str.336, ptr @.compoundliteral.337, ptr @.str.338, ptr @.compoundliteral.339, ptr @.str.340, ptr @.compoundliteral.341, ptr @.str.342, ptr @.compoundliteral.343, ptr @.str.344, ptr @.compoundliteral.345, ptr @.compoundliteral.346, ptr @.compoundliteral.347, ptr @.compoundliteral.348, ptr @.compoundliteral.349, ptr @.compoundliteral.350, ptr @.compoundliteral.351, ptr @.compoundliteral.352, ptr @.compoundliteral.353, ptr @.compoundliteral.354, ptr @.compoundliteral.355, ptr @.compoundliteral.356, ptr @.compoundliteral.357, ptr @.compoundliteral.358, ptr @.compoundliteral.359, ptr @.compoundliteral.360, ptr @.compoundliteral.361, ptr @.compoundliteral.362, ptr @.compoundliteral.363, ptr @.compoundliteral.364, ptr @.compoundliteral.365, ptr @.compoundliteral.366, ptr @.compoundliteral.367, ptr @.compoundliteral.368, ptr @.compoundliteral.369, ptr @.compoundliteral.370, ptr @.compoundliteral.371, ptr @.compoundliteral.372, ptr @.compoundliteral.373, ptr @.str.374, ptr @.compoundliteral.375, ptr @.str.376, ptr @.compoundliteral.377, ptr @.str.378, ptr @.compoundliteral.379, ptr @.str.380, ptr @.compoundliteral.381, ptr @.str.382, ptr @.compoundliteral.383, ptr @.compoundliteral.384, ptr @.compoundliteral.385, ptr @.compoundliteral.386, ptr @.compoundliteral.387, ptr @.compoundliteral.388, ptr @.compoundliteral.389, ptr @.compoundliteral.390, ptr @.compoundliteral.391, ptr @.compoundliteral.392, ptr @.compoundliteral.393, ptr @.compoundliteral.394, ptr @.compoundliteral.395, ptr @.compoundliteral.396, ptr @.compoundliteral.397, ptr @.compoundliteral.398, ptr @.compoundliteral.399, ptr @.compoundliteral.400, ptr @.compoundliteral.401, ptr @.compoundliteral.402, ptr @.compoundliteral.403, ptr @adau1373_drc_controls, ptr @adau1373_lineout2_controls, ptr @.str.404, ptr @adau1373_drc1_channel_enum, ptr @.str.405, ptr @adau1373_drc2_channel_enum, ptr @.str.406, ptr @adau1373_drc3_channel_enum, ptr @.str.407, ptr @.compoundliteral.408, ptr @.str.409, ptr @adau1373_lineout2_lr_mux_enum, ptr @.str.410, ptr @adau1373_dai_ops, ptr @.str.411, ptr @.str.412, ptr @switch.table.adau1373_hw_params], section "llvm.metadata"
@0 = internal global [483 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dai_driver to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_reg_defaults to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_controls to i32), i32 2400, i32 2976, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dapm_routes to i32), i32 10972, i32 13696, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_out_tlv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_in_pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_ep_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_gain_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_input_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_speaker_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_lineout1_lr_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_speaker_lr_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_hpf_cutoff_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_hpf_channel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_bass_hpf_cutoff_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_bass_clip_level_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_bass_lpf_cutoff_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_bass_tlv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_bass_channel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_3d_cutoff_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_3d_level_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_3d_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_lr_mux_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_hpf_cutoff_text to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_fdsp_sel_text to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_bass_hpf_cutoff_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_bass_clip_level_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_bass_clip_level_values to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_bass_lpf_cutoff_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_3d_cutoff_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_3d_level_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_decimator_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_left_adc_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_right_adc_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_left_line2_mixer_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_right_line2_mixer_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_left_line1_mixer_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_right_line1_mixer_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_ep_mixer_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_left_spk_mixer_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_right_spk_mixer_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_left_hp_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_right_hp_mixer_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dsp_channel1_mixer_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dsp_channel2_mixer_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dsp_channel3_mixer_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dsp_channel4_mixer_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dsp_channel5_mixer_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_aif1_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_aif2_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_aif3_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dac1_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dac2_mixer_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dapm_widgets to i32), i32 14400, i32 17984, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_decimator_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_decimator_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.242 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.244 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.246 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.248 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.250 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.252 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.254 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1304 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.276 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.278 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1310 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.280 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.282 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.284 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1316 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.285 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.286 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.287 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.288 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.290 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1322 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.291 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.292 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.294 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.296 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.298 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.300 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.302 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1334 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.303 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.304 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.305 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.306 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.307 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.308 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1340 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.309 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.310 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.311 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.312 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.313 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.314 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1346 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.315 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.316 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.317 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.318 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.319 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.320 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1352 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.321 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.322 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.323 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1355 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.324 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.325 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.326 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1358 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.327 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.328 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.329 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1361 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.330 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.331 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.333 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1367 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.335 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.337 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.339 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1379 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.341 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.343 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.345 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1391 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.346 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.347 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.348 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1394 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.349 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.350 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.351 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1397 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.352 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.353 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.354 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1400 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.355 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.356 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.357 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1403 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.358 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.359 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.360 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1406 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.361 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.362 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.363 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1409 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.364 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.365 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.366 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1412 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.367 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.368 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.369 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1415 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.370 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.371 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.372 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1418 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.373 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.375 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.377 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.379 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.381 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.383 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1439 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.384 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.385 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.386 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.387 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.388 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.389 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1445 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.390 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.391 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.392 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1448 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.393 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.394 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.395 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1451 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.396 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.397 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.398 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.399 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.400 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.401 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.402 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.403 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_drc_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_lineout2_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_drc1_channel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_drc2_channel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_drc3_channel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.408 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1487 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_lineout2_lr_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adau1373_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adau1373_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 ptrtoint (ptr @___asan_gen_.1504 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adau1373_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adau1373_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adau1373_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @adau1373_regmap_config, ptr noundef nonnull @adau1373_i2c_probe._key, ptr noundef nonnull @.str.1) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @regmap_write(ptr noundef %call1, i32 noundef 255, i32 noundef 0) #9
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call12 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @adau1373_component_driver, ptr noundef nonnull @adau1373_dai_driver, i32 noundef 3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call12, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adau1373_register_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 55
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  ret i1 %switch.selectcmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_probe(ptr noundef %component) #2 align 64 {
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
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.then43_crit_edge, label %if.then

entry.if.then43_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.then:                                          ; preds = %entry
  %num_drc = getelementptr inbounds %struct.adau1373_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %num_drc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_drc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp ugt i32 %7, 3
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %micbias1 = getelementptr inbounds %struct.adau1373_platform_data, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %micbias1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %micbias1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %switch.i = icmp ult i32 %9, 4
  br i1 %switch.i, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %micbias2 = getelementptr inbounds %struct.adau1373_platform_data, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %micbias2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %micbias2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %switch.i83 = icmp ult i32 %11, 4
  br i1 %switch.i83, label %for.cond.preheader, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %num_drc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_drc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp784.not = icmp eq i32 %13, 0
  br i1 %cmp784.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.085 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adau1373_platform_data, ptr %5, i32 0, i32 4, i32 %i.085
  %mul.i = shl i32 %i.085, 4
  %add.i = add i32 %mul.i, 128
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %17 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef %add.i, i32 noundef %conv.i) #9
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %add1.1.i = add i32 %mul.i, 129
  %arrayidx.1.i = getelementptr i8, ptr %arrayidx, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %21 to i32
  %call.1.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %add1.1.i, i32 noundef %conv.1.i) #9
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %add1.2.i = add i32 %mul.i, 130
  %arrayidx.2.i = getelementptr i8, ptr %arrayidx, i32 2
  %24 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %25 to i32
  %call.2.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef %add1.2.i, i32 noundef %conv.2.i) #9
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %add1.3.i = add i32 %mul.i, 131
  %arrayidx.3.i = getelementptr i8, ptr %arrayidx, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %29 to i32
  %call.3.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef %add1.3.i, i32 noundef %conv.3.i) #9
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %add1.4.i = add i32 %mul.i, 132
  %arrayidx.4.i = getelementptr i8, ptr %arrayidx, i32 4
  %32 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %33 to i32
  %call.4.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %add1.4.i, i32 noundef %conv.4.i) #9
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 4
  %add1.5.i = add i32 %mul.i, 133
  %arrayidx.5.i = getelementptr i8, ptr %arrayidx, i32 5
  %36 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.5.i, align 1
  %conv.5.i = zext i8 %37 to i32
  %call.5.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef %add1.5.i, i32 noundef %conv.5.i) #9
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %add1.6.i = add i32 %mul.i, 134
  %arrayidx.6.i = getelementptr i8, ptr %arrayidx, i32 6
  %40 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.6.i, align 1
  %conv.6.i = zext i8 %41 to i32
  %call.6.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef %add1.6.i, i32 noundef %conv.6.i) #9
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  %add1.7.i = add i32 %mul.i, 135
  %arrayidx.7.i = getelementptr i8, ptr %arrayidx, i32 7
  %44 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.7.i, align 1
  %conv.7.i = zext i8 %45 to i32
  %call.7.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %add1.7.i, i32 noundef %conv.7.i) #9
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %3, align 4
  %add1.8.i = add i32 %mul.i, 136
  %arrayidx.8.i = getelementptr i8, ptr %arrayidx, i32 8
  %48 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.8.i, align 1
  %conv.8.i = zext i8 %49 to i32
  %call.8.i = tail call i32 @regmap_write(ptr noundef %47, i32 noundef %add1.8.i, i32 noundef %conv.8.i) #9
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %add1.9.i = add i32 %mul.i, 137
  %arrayidx.9.i = getelementptr i8, ptr %arrayidx, i32 9
  %52 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.9.i, align 1
  %conv.9.i = zext i8 %53 to i32
  %call.9.i = tail call i32 @regmap_write(ptr noundef %51, i32 noundef %add1.9.i, i32 noundef %conv.9.i) #9
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 4
  %add1.10.i = add i32 %mul.i, 138
  %arrayidx.10.i = getelementptr i8, ptr %arrayidx, i32 10
  %56 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.10.i, align 1
  %conv.10.i = zext i8 %57 to i32
  %call.10.i = tail call i32 @regmap_write(ptr noundef %55, i32 noundef %add1.10.i, i32 noundef %conv.10.i) #9
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 4
  %add1.11.i = add i32 %mul.i, 139
  %arrayidx.11.i = getelementptr i8, ptr %arrayidx, i32 11
  %60 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.11.i, align 1
  %conv.11.i = zext i8 %61 to i32
  %call.11.i = tail call i32 @regmap_write(ptr noundef %59, i32 noundef %add1.11.i, i32 noundef %conv.11.i) #9
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %add1.12.i = add i32 %mul.i, 140
  %arrayidx.12.i = getelementptr i8, ptr %arrayidx, i32 12
  %64 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.12.i, align 1
  %conv.12.i = zext i8 %65 to i32
  %call.12.i = tail call i32 @regmap_write(ptr noundef %63, i32 noundef %add1.12.i, i32 noundef %conv.12.i) #9
  %inc = add nuw i32 %i.085, 1
  %66 = ptrtoint ptr %num_drc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_drc, align 4
  %cmp7 = icmp ult i32 %inc, %67
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %67, %for.body.for.end_crit_edge ]
  %call9 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @adau1373_drc_controls, i32 noundef %.lcssa) #9
  %68 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %5, align 1, !range !600
  %70 = zext i8 %69 to i32
  %arrayidx13.1 = getelementptr [4 x i8], ptr %5, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx13.1, align 1, !range !600
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool14.not.1 = icmp eq i8 %72, 0
  %or.1 = select i1 %tobool14.not.1, i32 0, i32 2
  %val.1.1 = or i32 %or.1, %70
  %arrayidx13.2 = getelementptr [4 x i8], ptr %5, i32 0, i32 2
  %73 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx13.2, align 1, !range !600
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool14.not.2 = icmp eq i8 %74, 0
  %or.2 = select i1 %tobool14.not.2, i32 0, i32 4
  %val.1.2 = or i32 %or.2, %val.1.1
  %arrayidx13.3 = getelementptr [4 x i8], ptr %5, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx13.3, align 1, !range !600
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool14.not.3 = icmp eq i8 %76, 0
  %or.3 = select i1 %tobool14.not.3, i32 0, i32 8
  %val.1.3 = or i32 %or.3, %val.1.2
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 0, i32 noundef %val.1.3) #9
  %lineout_differential21 = getelementptr inbounds %struct.adau1373_platform_data, ptr %5, i32 0, i32 1
  %79 = ptrtoint ptr %lineout_differential21 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %lineout_differential21, align 4, !range !600
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool22.not = icmp eq i8 %80, 0
  %spec.select = select i1 %tobool22.not, i32 0, i32 8
  %lineout_ground_sense = getelementptr inbounds %struct.adau1373_platform_data, ptr %5, i32 0, i32 2
  %81 = ptrtoint ptr %lineout_ground_sense to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %lineout_ground_sense, align 1, !range !600
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool26.not = icmp eq i8 %82, 0
  %or28 = or i32 %spec.select, 4
  %val.3 = select i1 %tobool26.not, i32 %spec.select, i32 %or28
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 4
  %call31 = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 36, i32 noundef %val.3) #9
  %85 = ptrtoint ptr %lineout_differential21 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %lineout_differential21, align 4, !range !600
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool33.not = icmp eq i8 %86, 0
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %3, align 4
  %89 = ptrtoint ptr %micbias1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %micbias1, align 4
  %shl36 = shl i32 %90, 4
  %91 = ptrtoint ptr %micbias2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %micbias2, align 4
  %shl38 = shl i32 %92, 2
  %or39 = or i32 %shl38, %shl36
  %call40 = tail call i32 @regmap_write(ptr noundef %88, i32 noundef 33, i32 noundef %or39) #9
  br i1 %tobool33.not, label %for.end.if.then43_crit_edge, label %for.end.if.end45_crit_edge

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

for.end.if.then43_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.then43:                                        ; preds = %for.end.if.then43_crit_edge, %entry.if.then43_crit_edge
  %call44 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @adau1373_lineout2_controls, i32 noundef 2) #9
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %for.end.if.end45_crit_edge
  %93 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %3, align 4
  %call47 = tail call i32 @regmap_write(ptr noundef %94, i32 noundef 60, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end45 ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_resume(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @regcache_sync(ptr noundef %5) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_set_pll(ptr nocapture noundef readonly %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  %pll_regs = alloca [5 x i8], align 1
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
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pll_regs) #9
  %4 = getelementptr inbounds [5 x i8], ptr %pll_regs, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i8], ptr %pll_regs, i32 0, i32 2
  %6 = getelementptr inbounds [5 x i8], ptr %pll_regs, i32 0, i32 3
  %7 = getelementptr inbounds [5 x i8], ptr %pll_regs, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pll_id)
  %switch = icmp ugt i32 %pll_id, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %source)
  %switch89 = icmp ugt i32 %source, 11
  %or.cond91.not = or i1 %switch, %switch89
  %8 = add i32 %freq_in, -27000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -26992188, i32 %8)
  %9 = icmp ult i32 %8, -26992188
  %or.cond = or i1 %or.cond91.not, %9
  %10 = add i32 %freq_out, -49152001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3994001, i32 %10)
  %11 = icmp ult i32 %10, -3994001
  %or.cond96 = or i1 %or.cond, %11
  %12 = call ptr @memset(ptr %pll_regs, i32 255, i32 5)
  br i1 %or.cond96, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %freq_in)
  %cmp1097 = icmp ult i32 %freq_in, 8000000
  br i1 %cmp1097, label %while.cond.preheader.while.body_crit_edge, label %while.end.thread

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dpll_div.099 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %freq_in.addr.098 = phi i32 [ %mul, %while.body.while.body_crit_edge ], [ %freq_in, %while.cond.preheader.while.body_crit_edge ]
  %mul = shl nuw nsw i32 %freq_in.addr.098, 1
  %inc = add i32 %dpll_div.099, 1
  %cmp10 = icmp ult i32 %freq_in.addr.098, 4000000
  br i1 %cmp10, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  %call11 = call i32 @adau_calc_pll_cfg(i32 noundef %mul, i32 noundef %freq_out, ptr noundef nonnull %pll_regs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.end13, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end.thread:                                 ; preds = %while.cond.preheader
  %call11103 = call i32 @adau_calc_pll_cfg(i32 noundef %freq_in, i32 noundef %freq_out, ptr noundef nonnull %pll_regs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11103)
  %tobool.not104 = icmp eq i32 %call11103, 0
  br i1 %tobool.not104, label %while.end.thread.if.else_crit_edge, label %while.end.thread.cleanup_crit_edge

while.end.thread.cleanup_crit_edge:               ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.end.thread.if.else_crit_edge:               ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end13:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool14.not = icmp eq i32 %inc, 0
  br i1 %tobool14.not, label %if.end13.if.else_crit_edge, label %if.then15

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 10, %dpll_div.099
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %mul16 = mul i32 %pll_id, 7
  %add = add i32 %mul16, 46
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %add, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end22

if.else:                                          ; preds = %if.end13.if.else_crit_edge, %while.end.thread.if.else_crit_edge
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %mul19 = mul i32 %pll_id, 7
  %add20 = add i32 %mul19, 46
  %call.i92 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add20, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %mul24.pre-phi = phi i32 [ %mul19, %if.else ], [ %mul16, %if.then15 ]
  %dpll_div.1 = phi i32 [ 0, %if.else ], [ %sub, %if.then15 ]
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %add25 = add i32 %mul24.pre-phi, 40
  %shl = shl i32 %source, 4
  %or = or i32 %dpll_div.1, %shl
  %call26 = call i32 @regmap_write(ptr noundef %18, i32 noundef %add25, i32 noundef %or) #9
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %add29 = add i32 %mul24.pre-phi, 41
  %21 = ptrtoint ptr %pll_regs to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pll_regs, align 1
  %conv = zext i8 %22 to i32
  %call30 = call i32 @regmap_write(ptr noundef %20, i32 noundef %add29, i32 noundef %conv) #9
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add33 = add i32 %mul24.pre-phi, 42
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %4, align 1
  %conv35 = zext i8 %26 to i32
  %call36 = call i32 @regmap_write(ptr noundef %24, i32 noundef %add33, i32 noundef %conv35) #9
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %add39 = add i32 %mul24.pre-phi, 43
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %5, align 1
  %conv41 = zext i8 %30 to i32
  %call42 = call i32 @regmap_write(ptr noundef %28, i32 noundef %add39, i32 noundef %conv41) #9
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %add45 = add i32 %mul24.pre-phi, 44
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %6, align 1
  %conv47 = zext i8 %34 to i32
  %call48 = call i32 @regmap_write(ptr noundef %32, i32 noundef %add45, i32 noundef %conv47) #9
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %3, align 4
  %add51 = add i32 %mul24.pre-phi, 45
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %7, align 1
  %conv53 = zext i8 %38 to i32
  %call54 = call i32 @regmap_write(ptr noundef %36, i32 noundef %add51, i32 noundef %conv53) #9
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  %mul56 = shl i32 %pll_id, 1
  %add57 = add i32 %mul56, 64
  %call.i93 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef %add57, i32 noundef 63, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %while.end.thread.cleanup_crit_edge, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %while.end.cleanup_crit_edge ], [ -22, %while.end.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pll_regs) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %level)
  %switch = icmp ult i32 %level, 2
  br i1 %switch, label %sw.epilog.sink.split, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 39, i32 noundef 1, i32 noundef %level, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
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
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_pll_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %. = zext i1 %not.tobool.not to i32
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = mul nuw nsw i32 %conv, 7
  %add = add nsw i32 %12, -297
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %while.body.preheader

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

while.body.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #9
  br label %if.end7

if.end7:                                          ; preds = %while.body.preheader, %entry.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adau1373_check_aif_clk(ptr nocapture noundef readonly %source, ptr nocapture noundef readonly %sink) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
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
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %sub = add nsw i32 %conv, -49
  %clock_provider = getelementptr %struct.adau1373, ptr %5, i32 0, i32 1, i32 %sub, i32 3
  %10 = ptrtoint ptr %clock_provider to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %clock_provider, align 1, !range !600
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2 = getelementptr %struct.adau1373, ptr %5, i32 0, i32 1, i32 %sub
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %.str.218..str.219 = select i1 %cmp, ptr @.str.218, ptr @.str.219
  %name8 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 1
  %14 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name8, align 4
  %call9 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(8) %.str.218..str.219) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  %conv11 = zext i1 %cmp10 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv11, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adau1373_check_src(ptr nocapture noundef readonly %source, ptr nocapture noundef readonly %sink) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
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
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %sink, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %sub = add nsw i32 %conv, -49
  %enable_src = getelementptr %struct.adau1373, ptr %5, i32 0, i32 1, i32 %sub, i32 2
  %10 = ptrtoint ptr %enable_src to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable_src, align 4, !range !600
  %12 = zext i8 %11 to i32
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @adau_calc_pll_cfg(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_set_dai_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %clk_id)
  %switch = icmp ult i32 %clk_id, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.adau1373, ptr %5, i32 0, i32 1, i32 %7
  %sysclk = getelementptr %struct.adau1373, ptr %5, i32 0, i32 1, i32 %7, i32 1
  %8 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %sysclk, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %clk_id, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = load i32, ptr %id, align 4
  %add = add i32 %12, 71
  %shl = shl nuw nsw i32 %clk_id, 5
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add, i32 noundef 32, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %8 = trunc i32 %fmt to i16
  %trunc = and i16 %8, -4096
  %9 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %entry.sw.epilog_crit_edge
    i16 16384, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 1, %entry.sw.epilog_crit_edge ]
  %ctrl.0 = phi i32 [ 0, %sw.bb2 ], [ 64, %entry.sw.epilog_crit_edge ]
  %clock_provider3 = getelementptr %struct.adau1373, ptr %5, i32 0, i32 1, i32 %7, i32 3
  %10 = ptrtoint ptr %clock_provider3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.sink, ptr %clock_provider3, align 1
  %and4 = and i32 %fmt, 15
  %11 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.413)
  switch i32 %and4, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb5
    i32 3, label %sw.bb6
    i32 2, label %sw.epilog.sw.epilog13_crit_edge
    i32 5, label %sw.bb10
  ]

sw.epilog.sw.epilog13_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %ctrl.0, 2
  br label %sw.epilog13

sw.bb6:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or7 = or i32 %ctrl.0, 1
  br label %sw.epilog13

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %or11 = or i32 %ctrl.0, 3
  br label %sw.epilog13

sw.epilog13:                                      ; preds = %sw.bb10, %sw.bb6, %sw.bb5, %sw.epilog.sw.epilog13_crit_edge
  %ctrl.1 = phi i32 [ %or11, %sw.bb10 ], [ %or7, %sw.bb6 ], [ %or, %sw.bb5 ], [ %ctrl.0, %sw.epilog.sw.epilog13_crit_edge ]
  %and14 = lshr i32 %fmt, 8
  %12 = and i32 %and14, 15
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.414)
  switch i32 %12, label %sw.epilog13.cleanup_crit_edge [
    i32 0, label %sw.epilog13.sw.epilog22_crit_edge
    i32 3, label %sw.bb15
    i32 2, label %sw.bb17
    i32 4, label %sw.bb19
  ]

sw.epilog13.sw.epilog22_crit_edge:                ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog22

sw.epilog13.cleanup_crit_edge:                    ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb15:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  %or16 = or i32 %ctrl.1, 128
  br label %sw.epilog22

sw.bb17:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  %or18 = or i32 %ctrl.1, 16
  br label %sw.epilog22

sw.bb19:                                          ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #11
  %or20 = or i32 %ctrl.1, 144
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb19, %sw.bb17, %sw.bb15, %sw.epilog13.sw.epilog22_crit_edge
  %ctrl.2 = phi i32 [ %or20, %sw.bb19 ], [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %ctrl.1, %sw.epilog13.sw.epilog22_crit_edge ]
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %add = add i32 %17, 68
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %add, i32 noundef -13, i32 noundef %ctrl.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog22, %sw.epilog13.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adau1373_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %sysclk = getelementptr %struct.adau1373, ptr %5, i32 0, i32 1, i32 %7, i32 1
  %8 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %.frozen = freeze i32 %9
  %.frozen42 = freeze i32 %11
  %div4 = udiv i32 %.frozen, %.frozen42
  %12 = mul i32 %div4, %.frozen42
  %rem.decomposed = sub i32 %.frozen, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp.not = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = add i32 %div4, -1024
  %14 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %13, i32 23)
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.415)
  switch i32 %14, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
    i32 4, label %sw.bb7
    i32 6, label %sw.bb8
    i32 10, label %sw.bb9
    i32 9, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %if.end.sw.epilog_crit_edge
  %cmp11 = phi i1 [ true, %sw.bb10 ], [ true, %sw.bb9 ], [ true, %sw.bb8 ], [ true, %sw.bb7 ], [ true, %sw.bb6 ], [ true, %sw.bb5 ], [ false, %if.end.sw.epilog_crit_edge ]
  %div.0 = phi i32 [ 26, %sw.bb10 ], [ 22, %sw.bb9 ], [ 18, %sw.bb8 ], [ 14, %sw.bb7 ], [ 10, %sw.bb6 ], [ 6, %sw.bb5 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %enable_src = getelementptr %struct.adau1373, ptr %5, i32 0, i32 1, i32 %7, i32 2
  %frombool = zext i1 %cmp11 to i8
  %16 = ptrtoint ptr %enable_src to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %enable_src, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %add = add i32 %20, 71
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %add, i32 noundef 31, i32 noundef %div.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %sw.epilog.if.then.i.i.i_crit_edge

sw.epilog.if.then.i.i.i_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %sw.epilog.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %sw.epilog.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %22, %sw.epilog.if.then.i.i.i_crit_edge ], [ %25, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %23 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !601
  %add.i.i.i = or i32 %23, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %sw.epilog
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.1.i.i.i = icmp eq i32 %25, 0
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
  %26 = add i32 %call1.i, -16
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %28 = icmp ult i32 %27, 5
  br i1 %28, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %27 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %29 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %switch.lobit.not = icmp eq i8 %29, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.adau1373_hw_params, i32 0, i32 %27
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %5, align 4
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id, align 4
  %add23 = add i32 %34, 68
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %add23, i32 noundef 12, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i41, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 483)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 483)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !382, !384, !385, !387, !388, !390, !391, !393, !394, !396, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !500, !501, !502, !503, !504, !505, !506, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !526, !527, !528, !529, !530, !531, !532, !534, !536, !538, !540, !542, !543, !544, !545, !546, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589}
!llvm.module.flags = !{!591, !592, !593, !594, !595, !596, !597, !598}
!llvm.ident = !{!599}

!0 = !{ptr @__initcall__kmod_snd_soc_adau1373__294_1515_adau1373_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_adau1373__294_1515_adau1373_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/adau1373.c", i32 1515, i32 1}
!2 = !{ptr @__exitcall_adau1373_i2c_driver_exit, !1, !"__exitcall_adau1373_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/adau1373.c", i32 1517, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/adau1373.c", i32 1518, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/adau1373.c", i32 1519, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/adau1373.c", i32 1509, i32 11}
!12 = !{ptr @adau1373_i2c_driver, !13, !"adau1373_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/adau1373.c", i32 1507, i32 26}
!14 = !{ptr @adau1373_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/adau1373.c", i32 1486, i32 21}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @adau1373_regmap_config, !18, !"adau1373_regmap_config", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/adau1373.c", i32 1448, i32 35}
!19 = !{ptr @adau1373_reg_defaults, !20, !"adau1373_reg_defaults", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/adau1373.c", i32 155, i32 33}
!21 = !{ptr @adau1373_component_driver, !22, !"adau1373_component_driver", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/adau1373.c", i32 1460, i32 46}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/adau1373.c", i32 435, i32 2}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/adau1373.c", i32 437, i32 2}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/adau1373.c", i32 439, i32 2}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/adau1373.c", i32 442, i32 2}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/adau1373.c", i32 444, i32 2}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/adau1373.c", i32 447, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/adau1373.c", i32 449, i32 2}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/adau1373.c", i32 451, i32 2}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/adau1373.c", i32 454, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/adau1373.c", i32 456, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/adau1373.c", i32 459, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/adau1373.c", i32 461, i32 2}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/adau1373.c", i32 463, i32 2}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/adau1373.c", i32 466, i32 2}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/adau1373.c", i32 468, i32 2}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/adau1373.c", i32 470, i32 2}
!55 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/adau1373.c", i32 472, i32 2}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/adau1373.c", i32 475, i32 2}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/adau1373.c", i32 478, i32 2}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/adau1373.c", i32 480, i32 2}
!63 = !{ptr @.str.41, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/adau1373.c", i32 482, i32 2}
!65 = !{ptr @.str.43, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/adau1373.c", i32 484, i32 2}
!67 = !{ptr @.str.45, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/adau1373.c", i32 486, i32 2}
!69 = !{ptr @.str.47, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/adau1373.c", i32 488, i32 2}
!71 = !{ptr @.str.49, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/adau1373.c", i32 490, i32 2}
!73 = !{ptr @.str.51, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/adau1373.c", i32 492, i32 2}
!75 = !{ptr @.str.53, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/adau1373.c", i32 494, i32 2}
!77 = !{ptr @.str.55, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/adau1373.c", i32 496, i32 2}
!79 = !{ptr @.str.57, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/adau1373.c", i32 499, i32 2}
!81 = !{ptr @.str.59, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/adau1373.c", i32 501, i32 2}
!83 = !{ptr @.str.61, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/adau1373.c", i32 503, i32 2}
!85 = !{ptr @.str.63, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/adau1373.c", i32 505, i32 2}
!87 = !{ptr @.str.65, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/adau1373.c", i32 508, i32 2}
!89 = !{ptr @.str.67, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/adau1373.c", i32 511, i32 2}
!91 = !{ptr @.str.68, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/adau1373.c", i32 512, i32 2}
!93 = !{ptr @.str.69, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/adau1373.c", i32 514, i32 2}
!95 = !{ptr @.str.70, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/adau1373.c", i32 515, i32 2}
!97 = !{ptr @.str.72, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/adau1373.c", i32 516, i32 2}
!99 = !{ptr @.str.73, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/adau1373.c", i32 518, i32 2}
!101 = !{ptr @.str.74, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/adau1373.c", i32 519, i32 2}
!103 = !{ptr @.str.75, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/adau1373.c", i32 520, i32 2}
!105 = !{ptr @.str.76, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/adau1373.c", i32 521, i32 2}
!107 = !{ptr @.str.78, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/adau1373.c", i32 522, i32 2}
!109 = !{ptr @.str.80, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/adau1373.c", i32 524, i32 2}
!111 = !{ptr @.str.81, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/adau1373.c", i32 526, i32 2}
!113 = !{ptr @.str.82, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/adau1373.c", i32 527, i32 2}
!115 = !{ptr @.str.83, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/adau1373.c", i32 528, i32 2}
!117 = !{ptr @.str.85, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/adau1373.c", i32 529, i32 2}
!119 = !{ptr @.str.87, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/adau1373.c", i32 531, i32 2}
!121 = !{ptr @.str.88, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/adau1373.c", i32 533, i32 2}
!123 = !{ptr @adau1373_controls, !124, !"adau1373_controls", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/adau1373.c", i32 434, i32 38}
!125 = !{ptr @adau1373_digital_tlv, !126, !"adau1373_digital_tlv", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/adau1373.c", i32 330, i32 14}
!127 = !{ptr @adau1373_out_tlv, !128, !"adau1373_out_tlv", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/adau1373.c", i32 323, i32 14}
!129 = !{ptr @adau1373_in_pga_tlv, !130, !"adau1373_in_pga_tlv", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/adau1373.c", i32 331, i32 14}
!131 = !{ptr @adau1373_ep_tlv, !132, !"adau1373_ep_tlv", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/adau1373.c", i32 332, i32 14}
!133 = !{ptr @adau1373_gain_boost_tlv, !134, !"adau1373_gain_boost_tlv", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/adau1373.c", i32 335, i32 14}
!135 = !{ptr @adau1373_input_boost_tlv, !136, !"adau1373_input_boost_tlv", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/adau1373.c", i32 334, i32 14}
!137 = !{ptr @adau1373_speaker_boost_tlv, !138, !"adau1373_speaker_boost_tlv", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/adau1373.c", i32 336, i32 14}
!139 = !{ptr @adau1373_lineout1_lr_mux_enum, !140, !"adau1373_lineout1_lr_mux_enum", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/adau1373.c", i32 427, i32 8}
!141 = !{ptr @.str.90, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/adau1373.c", i32 421, i32 2}
!143 = !{ptr @.str.91, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/adau1373.c", i32 422, i32 2}
!145 = !{ptr @.str.92, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/adau1373.c", i32 423, i32 2}
!147 = !{ptr @.str.93, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/adau1373.c", i32 424, i32 2}
!149 = !{ptr @adau1373_lr_mux_text, !150, !"adau1373_lr_mux_text", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/adau1373.c", i32 420, i32 20}
!151 = !{ptr @adau1373_speaker_lr_mux_enum, !152, !"adau1373_speaker_lr_mux_enum", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/adau1373.c", i32 431, i32 8}
!153 = !{ptr @adau1373_hpf_cutoff_enum, !154, !"adau1373_hpf_cutoff_enum", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/adau1373.c", i32 364, i32 8}
!155 = !{ptr @.str.94, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/adau1373.c", i32 359, i32 2}
!157 = !{ptr @.str.95, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/adau1373.c", i32 359, i32 11}
!159 = !{ptr @.str.96, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/adau1373.c", i32 359, i32 19}
!161 = !{ptr @.str.97, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/adau1373.c", i32 359, i32 28}
!163 = !{ptr @.str.98, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/adau1373.c", i32 359, i32 37}
!165 = !{ptr @.str.99, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/adau1373.c", i32 359, i32 46}
!167 = !{ptr @.str.100, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/adau1373.c", i32 359, i32 55}
!169 = !{ptr @.str.101, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/adau1373.c", i32 359, i32 64}
!171 = !{ptr @.str.102, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/adau1373.c", i32 360, i32 2}
!173 = !{ptr @.str.103, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/adau1373.c", i32 360, i32 11}
!175 = !{ptr @.str.104, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/adau1373.c", i32 360, i32 20}
!177 = !{ptr @.str.105, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/adau1373.c", i32 360, i32 29}
!179 = !{ptr @.str.106, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/adau1373.c", i32 360, i32 38}
!181 = !{ptr @.str.107, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/adau1373.c", i32 360, i32 47}
!183 = !{ptr @.str.108, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/adau1373.c", i32 360, i32 56}
!185 = !{ptr @.str.109, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/adau1373.c", i32 360, i32 65}
!187 = !{ptr @.str.110, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/adau1373.c", i32 361, i32 2}
!189 = !{ptr @adau1373_hpf_cutoff_text, !190, !"adau1373_hpf_cutoff_text", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/adau1373.c", i32 358, i32 20}
!191 = !{ptr @adau1373_hpf_channel_enum, !192, !"adau1373_hpf_channel_enum", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/adau1373.c", i32 353, i32 8}
!193 = !{ptr @.str.111, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/adau1373.c", i32 339, i32 2}
!195 = !{ptr @.str.112, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/adau1373.c", i32 340, i32 2}
!197 = !{ptr @.str.113, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/adau1373.c", i32 341, i32 2}
!199 = !{ptr @.str.114, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/adau1373.c", i32 342, i32 2}
!201 = !{ptr @.str.115, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/adau1373.c", i32 343, i32 2}
!203 = !{ptr @.str.116, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/adau1373.c", i32 344, i32 2}
!205 = !{ptr @adau1373_fdsp_sel_text, !206, !"adau1373_fdsp_sel_text", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/adau1373.c", i32 338, i32 20}
!207 = !{ptr @adau1373_bass_hpf_cutoff_enum, !208, !"adau1373_bass_hpf_cutoff_enum", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/adau1373.c", i32 396, i32 8}
!209 = !{ptr @.str.117, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/adau1373.c", i32 380, i32 2}
!211 = !{ptr @.str.118, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/adau1373.c", i32 380, i32 11}
!213 = !{ptr @.str.119, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/adau1373.c", i32 380, i32 20}
!215 = !{ptr @.str.120, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/adau1373.c", i32 380, i32 29}
!217 = !{ptr @adau1373_bass_hpf_cutoff_text, !218, !"adau1373_bass_hpf_cutoff_text", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/adau1373.c", i32 379, i32 20}
!219 = !{ptr @adau1373_bass_clip_level_enum, !220, !"adau1373_bass_clip_level_enum", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/adau1373.c", i32 392, i32 8}
!221 = !{ptr @.str.121, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/adau1373.c", i32 372, i32 2}
!223 = !{ptr @.str.122, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/adau1373.c", i32 372, i32 11}
!225 = !{ptr @.str.123, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/adau1373.c", i32 372, i32 20}
!227 = !{ptr @.str.124, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/adau1373.c", i32 372, i32 29}
!229 = !{ptr @.str.125, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/adau1373.c", i32 372, i32 38}
!231 = !{ptr @.str.126, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/adau1373.c", i32 372, i32 47}
!233 = !{ptr @.str.127, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/adau1373.c", i32 372, i32 56}
!235 = !{ptr @adau1373_bass_clip_level_text, !236, !"adau1373_bass_clip_level_text", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/adau1373.c", i32 371, i32 20}
!237 = !{ptr @adau1373_bass_clip_level_values, !238, !"adau1373_bass_clip_level_values", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/adau1373.c", i32 375, i32 27}
!239 = !{ptr @adau1373_bass_lpf_cutoff_enum, !240, !"adau1373_bass_lpf_cutoff_enum", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/adau1373.c", i32 389, i32 8}
!241 = !{ptr @.str.128, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/adau1373.c", i32 368, i32 2}
!243 = !{ptr @.str.129, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/adau1373.c", i32 368, i32 11}
!245 = !{ptr @adau1373_bass_lpf_cutoff_text, !246, !"adau1373_bass_lpf_cutoff_text", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/adau1373.c", i32 367, i32 20}
!247 = !{ptr @adau1373_bass_tlv, !248, !"adau1373_bass_tlv", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/adau1373.c", i32 383, i32 14}
!249 = !{ptr @adau1373_bass_channel_enum, !250, !"adau1373_bass_channel_enum", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/adau1373.c", i32 355, i32 8}
!251 = !{ptr @adau1373_3d_cutoff_enum, !252, !"adau1373_3d_cutoff_enum", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/adau1373.c", i32 412, i32 8}
!253 = !{ptr @.str.130, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/adau1373.c", i32 406, i32 2}
!255 = !{ptr @.str.131, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/adau1373.c", i32 406, i32 11}
!257 = !{ptr @.str.132, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/adau1373.c", i32 406, i32 25}
!259 = !{ptr @.str.133, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/adau1373.c", i32 406, i32 39}
!261 = !{ptr @.str.134, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/adau1373.c", i32 406, i32 51}
!263 = !{ptr @.str.135, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/adau1373.c", i32 407, i32 2}
!265 = !{ptr @.str.136, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/adau1373.c", i32 407, i32 16}
!267 = !{ptr @adau1373_3d_cutoff_text, !268, !"adau1373_3d_cutoff_text", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/adau1373.c", i32 405, i32 20}
!269 = !{ptr @adau1373_3d_level_enum, !270, !"adau1373_3d_level_enum", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/adau1373.c", i32 410, i32 8}
!271 = !{ptr @.str.137, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/adau1373.c", i32 400, i32 2}
!273 = !{ptr @.str.138, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/adau1373.c", i32 400, i32 8}
!275 = !{ptr @.str.139, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/adau1373.c", i32 400, i32 17}
!277 = !{ptr @.str.140, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/adau1373.c", i32 400, i32 27}
!279 = !{ptr @.str.141, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/adau1373.c", i32 400, i32 34}
!281 = !{ptr @.str.142, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/adau1373.c", i32 400, i32 44}
!283 = !{ptr @.str.143, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/adau1373.c", i32 401, i32 2}
!285 = !{ptr @.str.144, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/adau1373.c", i32 401, i32 9}
!287 = !{ptr @.str.145, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/adau1373.c", i32 401, i32 19}
!289 = !{ptr @.str.146, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/adau1373.c", i32 401, i32 29}
!291 = !{ptr @.str.147, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/adau1373.c", i32 401, i32 36}
!293 = !{ptr @.str.148, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/adau1373.c", i32 401, i32 46}
!295 = !{ptr @.str.149, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/adau1373.c", i32 402, i32 2}
!297 = !{ptr @.str.150, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/adau1373.c", i32 402, i32 9}
!299 = !{ptr @.str.151, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/adau1373.c", i32 402, i32 18}
!301 = !{ptr @.str.152, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/adau1373.c", i32 402, i32 28}
!303 = !{ptr @adau1373_3d_level_text, !304, !"adau1373_3d_level_text", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/adau1373.c", i32 399, i32 20}
!305 = !{ptr @adau1373_3d_tlv, !306, !"adau1373_3d_tlv", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/adau1373.c", i32 415, i32 14}
!307 = !{ptr @.str.153, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/adau1373.c", i32 687, i32 2}
!309 = !{ptr @.str.154, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/adau1373.c", i32 688, i32 2}
!311 = !{ptr @.str.155, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/adau1373.c", i32 690, i32 2}
!313 = !{ptr @.str.156, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/adau1373.c", i32 691, i32 2}
!315 = !{ptr @.str.157, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/adau1373.c", i32 693, i32 2}
!317 = !{ptr @.str.158, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/adau1373.c", i32 696, i32 2}
!319 = !{ptr @.str.159, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/adau1373.c", i32 697, i32 2}
!321 = !{ptr @.str.160, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/adau1373.c", i32 699, i32 2}
!323 = !{ptr @.str.161, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/adau1373.c", i32 700, i32 2}
!325 = !{ptr @.str.162, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/adau1373.c", i32 701, i32 2}
!327 = !{ptr @.str.163, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/adau1373.c", i32 702, i32 2}
!329 = !{ptr @.str.164, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/adau1373.c", i32 704, i32 2}
!331 = !{ptr @.str.165, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/adau1373.c", i32 705, i32 2}
!333 = !{ptr @.str.166, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/adau1373.c", i32 706, i32 2}
!335 = !{ptr @.str.167, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/adau1373.c", i32 707, i32 2}
!337 = !{ptr @.str.168, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/adau1373.c", i32 709, i32 2}
!339 = !{ptr @.str.169, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/adau1373.c", i32 711, i32 2}
!341 = !{ptr @.str.170, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/adau1373.c", i32 714, i32 2}
!343 = !{ptr @.str.171, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/adau1373.c", i32 716, i32 2}
!345 = !{ptr @.str.172, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/adau1373.c", i32 718, i32 2}
!347 = !{ptr @.str.173, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/adau1373.c", i32 720, i32 2}
!349 = !{ptr @.str.174, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/adau1373.c", i32 723, i32 2}
!351 = !{ptr @.str.175, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/adau1373.c", i32 725, i32 2}
!353 = !{ptr @.str.176, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/adau1373.c", i32 727, i32 2}
!355 = !{ptr @.str.177, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/adau1373.c", i32 729, i32 2}
!357 = !{ptr @.str.178, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/adau1373.c", i32 731, i32 2}
!359 = !{ptr @.str.179, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/adau1373.c", i32 733, i32 2}
!361 = !{ptr @.str.180, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/adau1373.c", i32 736, i32 2}
!363 = !{ptr @.str.181, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/adau1373.c", i32 738, i32 2}
!365 = !{ptr @.str.182, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/adau1373.c", i32 740, i32 2}
!367 = !{ptr @.str.183, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/adau1373.c", i32 742, i32 2}
!369 = !{ptr @.str.184, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/adau1373.c", i32 744, i32 2}
!371 = !{ptr @.str.185, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/adau1373.c", i32 746, i32 2}
!373 = !{ptr @.str.186, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/adau1373.c", i32 748, i32 2}
!375 = !{ptr @.str.187, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/adau1373.c", i32 750, i32 2}
!377 = !{ptr @.str.188, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/adau1373.c", i32 752, i32 2}
!379 = !{ptr @.str.189, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/adau1373.c", i32 755, i32 2}
!381 = !{ptr @.str.190, !380, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.191, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/adau1373.c", i32 756, i32 2}
!384 = !{ptr @.str.192, !383, !"<string literal>", i1 false, i1 false}
!385 = !{ptr @.str.193, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/adau1373.c", i32 757, i32 2}
!387 = !{ptr @.str.194, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.195, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/adau1373.c", i32 758, i32 2}
!390 = !{ptr @.str.196, !389, !"<string literal>", i1 false, i1 false}
!391 = !{ptr @.str.197, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/adau1373.c", i32 759, i32 2}
!393 = !{ptr @.str.198, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @.str.199, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/adau1373.c", i32 760, i32 2}
!396 = !{ptr @.str.200, !395, !"<string literal>", i1 false, i1 false}
!397 = !{ptr @.str.201, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/adau1373.c", i32 762, i32 2}
!399 = !{ptr @.str.202, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/adau1373.c", i32 764, i32 2}
!401 = !{ptr @.str.203, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/adau1373.c", i32 766, i32 2}
!403 = !{ptr @.str.204, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/adau1373.c", i32 768, i32 2}
!405 = !{ptr @.str.205, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/adau1373.c", i32 770, i32 2}
!407 = !{ptr @.str.206, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/adau1373.c", i32 773, i32 2}
!409 = !{ptr @.str.207, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/adau1373.c", i32 775, i32 2}
!411 = !{ptr @.str.208, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/adau1373.c", i32 777, i32 2}
!413 = !{ptr @.str.209, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/adau1373.c", i32 779, i32 2}
!415 = !{ptr @.str.210, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/adau1373.c", i32 781, i32 2}
!417 = !{ptr @.str.211, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/adau1373.c", i32 784, i32 2}
!419 = !{ptr @.str.212, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/adau1373.c", i32 785, i32 2}
!421 = !{ptr @.str.213, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/adau1373.c", i32 786, i32 2}
!423 = !{ptr @.str.214, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/adau1373.c", i32 787, i32 2}
!425 = !{ptr @.str.215, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/adau1373.c", i32 788, i32 2}
!427 = !{ptr @.str.216, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/adau1373.c", i32 790, i32 2}
!429 = !{ptr @.str.217, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/adau1373.c", i32 792, i32 2}
!431 = !{ptr @.str.218, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/adau1373.c", i32 794, i32 2}
!433 = !{ptr @.str.219, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/adau1373.c", i32 795, i32 2}
!435 = !{ptr @.str.220, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/adau1373.c", i32 797, i32 2}
!437 = !{ptr @.str.221, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/adau1373.c", i32 798, i32 2}
!439 = !{ptr @.str.222, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/adau1373.c", i32 799, i32 2}
!441 = !{ptr @.str.223, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/adau1373.c", i32 800, i32 2}
!443 = !{ptr @.str.224, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/adau1373.c", i32 801, i32 2}
!445 = !{ptr @.str.225, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/adau1373.c", i32 802, i32 2}
!447 = !{ptr @.str.226, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/adau1373.c", i32 803, i32 2}
!449 = !{ptr @.str.227, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/adau1373.c", i32 804, i32 2}
!451 = !{ptr @.str.228, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/adau1373.c", i32 806, i32 2}
!453 = !{ptr @.str.229, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/adau1373.c", i32 807, i32 2}
!455 = !{ptr @.str.230, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/adau1373.c", i32 809, i32 2}
!457 = !{ptr @.str.231, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/adau1373.c", i32 810, i32 2}
!459 = !{ptr @.str.232, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/adau1373.c", i32 811, i32 2}
!461 = !{ptr @.str.233, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/adau1373.c", i32 812, i32 2}
!463 = !{ptr @.str.234, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/adau1373.c", i32 813, i32 2}
!465 = !{ptr @.str.235, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/adau1373.c", i32 814, i32 2}
!467 = !{ptr @.str.236, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/adau1373.c", i32 815, i32 2}
!469 = !{ptr @.str.237, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/adau1373.c", i32 816, i32 2}
!471 = !{ptr @.str.238, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/adau1373.c", i32 817, i32 2}
!473 = !{ptr @adau1373_dapm_widgets, !474, !"adau1373_dapm_widgets", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/adau1373.c", i32 684, i32 41}
!475 = !{ptr @adau1373_decimator_mux, !476, !"adau1373_decimator_mux", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/adau1373.c", i32 578, i32 38}
!477 = !{ptr @adau1373_decimator_enum, !478, !"adau1373_decimator_enum", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/adau1373.c", i32 575, i32 8}
!479 = !{ptr @.str.240, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/adau1373.c", i32 571, i32 2}
!481 = !{ptr @adau1373_decimator_text, !482, !"adau1373_decimator_text", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/adau1373.c", i32 570, i32 20}
!483 = !{ptr @.str.241, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/adau1373.c", i32 582, i32 2}
!485 = !{ptr @.str.243, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/adau1373.c", i32 583, i32 2}
!487 = !{ptr @.str.245, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/adau1373.c", i32 584, i32 2}
!489 = !{ptr @.str.247, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/adau1373.c", i32 585, i32 2}
!491 = !{ptr @.str.249, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/adau1373.c", i32 586, i32 2}
!493 = !{ptr @adau1373_left_adc_mixer_controls, !494, !"adau1373_left_adc_mixer_controls", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/adau1373.c", i32 581, i32 38}
!495 = !{ptr @adau1373_right_adc_mixer_controls, !496, !"adau1373_right_adc_mixer_controls", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/adau1373.c", i32 589, i32 38}
!497 = !{ptr @.str.256, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/adau1373.c", i32 613, i32 8}
!499 = !{ptr @.str.258, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.260, !498, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @.str.262, !498, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @.str.264, !498, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @.str.266, !498, !"<string literal>", i1 false, i1 false}
!504 = !{ptr @.str.268, !498, !"<string literal>", i1 false, i1 false}
!505 = !{ptr @.str.270, !498, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @adau1373_left_line2_mixer_controls, !498, !"adau1373_left_line2_mixer_controls", i1 false, i1 false}
!507 = !{ptr @adau1373_right_line2_mixer_controls, !508, !"adau1373_right_line2_mixer_controls", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/adau1373.c", i32 615, i32 8}
!509 = !{ptr @adau1373_left_line1_mixer_controls, !510, !"adau1373_left_line1_mixer_controls", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/adau1373.c", i32 609, i32 8}
!511 = !{ptr @adau1373_right_line1_mixer_controls, !512, !"adau1373_right_line1_mixer_controls", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/adau1373.c", i32 611, i32 8}
!513 = !{ptr @adau1373_ep_mixer_controls, !514, !"adau1373_ep_mixer_controls", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/adau1373.c", i32 621, i32 8}
!515 = !{ptr @adau1373_left_spk_mixer_controls, !516, !"adau1373_left_spk_mixer_controls", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/adau1373.c", i32 617, i32 8}
!517 = !{ptr @adau1373_right_spk_mixer_controls, !518, !"adau1373_right_spk_mixer_controls", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/adau1373.c", i32 619, i32 8}
!519 = !{ptr @adau1373_left_hp_mixer_controls, !520, !"adau1373_left_hp_mixer_controls", i1 false, i1 false}
!520 = !{!"../sound/soc/codecs/adau1373.c", i32 624, i32 38}
!521 = !{ptr @adau1373_right_hp_mixer_controls, !522, !"adau1373_right_hp_mixer_controls", i1 false, i1 false}
!522 = !{!"../sound/soc/codecs/adau1373.c", i32 633, i32 38}
!523 = !{ptr @.str.332, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../sound/soc/codecs/adau1373.c", i32 653, i32 8}
!525 = !{ptr @.str.334, !524, !"<string literal>", i1 false, i1 false}
!526 = !{ptr @.str.336, !524, !"<string literal>", i1 false, i1 false}
!527 = !{ptr @.str.338, !524, !"<string literal>", i1 false, i1 false}
!528 = !{ptr @.str.340, !524, !"<string literal>", i1 false, i1 false}
!529 = !{ptr @.str.342, !524, !"<string literal>", i1 false, i1 false}
!530 = !{ptr @.str.344, !524, !"<string literal>", i1 false, i1 false}
!531 = !{ptr @adau1373_dsp_channel1_mixer_controls, !524, !"adau1373_dsp_channel1_mixer_controls", i1 false, i1 false}
!532 = !{ptr @adau1373_dsp_channel2_mixer_controls, !533, !"adau1373_dsp_channel2_mixer_controls", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/adau1373.c", i32 655, i32 8}
!534 = !{ptr @adau1373_dsp_channel3_mixer_controls, !535, !"adau1373_dsp_channel3_mixer_controls", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/adau1373.c", i32 657, i32 8}
!536 = !{ptr @adau1373_dsp_channel4_mixer_controls, !537, !"adau1373_dsp_channel4_mixer_controls", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/adau1373.c", i32 659, i32 8}
!538 = !{ptr @adau1373_dsp_channel5_mixer_controls, !539, !"adau1373_dsp_channel5_mixer_controls", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/adau1373.c", i32 661, i32 8}
!540 = !{ptr @.str.374, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/adau1373.c", i32 673, i32 8}
!542 = !{ptr @.str.376, !541, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @.str.378, !541, !"<string literal>", i1 false, i1 false}
!544 = !{ptr @.str.380, !541, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @.str.382, !541, !"<string literal>", i1 false, i1 false}
!546 = !{ptr @adau1373_aif1_mixer_controls, !541, !"adau1373_aif1_mixer_controls", i1 false, i1 false}
!547 = !{ptr @adau1373_aif2_mixer_controls, !548, !"adau1373_aif2_mixer_controls", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/adau1373.c", i32 675, i32 8}
!549 = !{ptr @adau1373_aif3_mixer_controls, !550, !"adau1373_aif3_mixer_controls", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/adau1373.c", i32 677, i32 8}
!551 = !{ptr @adau1373_dac1_mixer_controls, !552, !"adau1373_dac1_mixer_controls", i1 false, i1 false}
!552 = !{!"../sound/soc/codecs/adau1373.c", i32 679, i32 8}
!553 = !{ptr @adau1373_dac2_mixer_controls, !554, !"adau1373_dac2_mixer_controls", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/adau1373.c", i32 681, i32 8}
!555 = !{ptr @adau1373_dapm_routes, !556, !"adau1373_dapm_routes", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/adau1373.c", i32 889, i32 40}
!557 = !{ptr @.str.404, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../sound/soc/codecs/adau1373.c", i32 543, i32 2}
!559 = !{ptr @.str.405, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../sound/soc/codecs/adau1373.c", i32 544, i32 2}
!561 = !{ptr @.str.406, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../sound/soc/codecs/adau1373.c", i32 545, i32 2}
!563 = !{ptr @adau1373_drc_controls, !564, !"adau1373_drc_controls", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/adau1373.c", i32 542, i32 38}
!565 = !{ptr @adau1373_drc1_channel_enum, !566, !"adau1373_drc1_channel_enum", i1 false, i1 false}
!566 = !{!"../sound/soc/codecs/adau1373.c", i32 347, i32 8}
!567 = !{ptr @adau1373_drc2_channel_enum, !568, !"adau1373_drc2_channel_enum", i1 false, i1 false}
!568 = !{!"../sound/soc/codecs/adau1373.c", i32 349, i32 8}
!569 = !{ptr @adau1373_drc3_channel_enum, !570, !"adau1373_drc3_channel_enum", i1 false, i1 false}
!570 = !{!"../sound/soc/codecs/adau1373.c", i32 351, i32 8}
!571 = !{ptr @.str.407, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../sound/soc/codecs/adau1373.c", i32 537, i32 2}
!573 = !{ptr @.str.409, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../sound/soc/codecs/adau1373.c", i32 539, i32 2}
!575 = !{ptr @adau1373_lineout2_controls, !576, !"adau1373_lineout2_controls", i1 false, i1 false}
!576 = !{!"../sound/soc/codecs/adau1373.c", i32 536, i32 38}
!577 = !{ptr @adau1373_lineout2_lr_mux_enum, !578, !"adau1373_lineout2_lr_mux_enum", i1 false, i1 false}
!578 = !{!"../sound/soc/codecs/adau1373.c", i32 429, i32 8}
!579 = !{ptr @.str.410, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../sound/soc/codecs/adau1373.c", i32 1192, i32 11}
!581 = !{ptr @.str.411, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../sound/soc/codecs/adau1373.c", i32 1212, i32 11}
!583 = !{ptr @.str.412, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../sound/soc/codecs/adau1373.c", i32 1232, i32 11}
!585 = !{ptr @adau1373_dai_driver, !586, !"adau1373_dai_driver", i1 false, i1 false}
!586 = !{!"../sound/soc/codecs/adau1373.c", i32 1189, i32 34}
!587 = !{ptr @adau1373_dai_ops, !588, !"adau1373_dai_ops", i1 false, i1 false}
!588 = !{!"../sound/soc/codecs/adau1373.c", i32 1180, i32 37}
!589 = !{ptr @adau1373_i2c_id, !590, !"adau1373_i2c_id", i1 false, i1 false}
!590 = !{!"../sound/soc/codecs/adau1373.c", i32 1501, i32 35}
!591 = !{i32 1, !"wchar_size", i32 2}
!592 = !{i32 1, !"min_enum_size", i32 4}
!593 = !{i32 8, !"branch-target-enforcement", i32 0}
!594 = !{i32 8, !"sign-return-address", i32 0}
!595 = !{i32 8, !"sign-return-address-all", i32 0}
!596 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!597 = !{i32 7, !"uwtable", i32 1}
!598 = !{i32 7, !"frame-pointer", i32 2}
!599 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!600 = !{i8 0, i8 2}
!601 = !{i32 0, i32 33}
