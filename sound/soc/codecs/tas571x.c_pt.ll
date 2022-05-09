; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tas571x.c_pt.bc'
source_filename = "../sound/soc/codecs/tas571x.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.tas571x_chip = type { ptr, i32, ptr, i32, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range = type { i32, i32 }
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
%struct.tas571x_private = type { ptr, ptr, [6 x %struct.regulator_bulk_data], ptr, i32, ptr, ptr, %struct.snd_soc_component_driver }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.94, [64 x i8] }
%union.anon.94 = type { %struct.anon.97, [40 x i8] }
%struct.anon.97 = type { i32, i32, [64 x i8], i64, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.87, [128 x i8] }
%union.anon.87 = type { %union.anon.89 }
%union.anon.89 = type { [64 x i64] }

@__initcall__kmod_snd_soc_tas571x__294_921_tas571x_i2c_driver_init6 = internal global ptr @tas571x_i2c_driver_init, section ".initcall6.init", align 4
@tas571x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tas571x_i2c_probe, ptr @tas571x_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tas571x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tas571x_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tas571x_i2c_driver_exit = internal global ptr @tas571x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [48 x i8] c"snd_soc_tas571x.description=ASoC TAS571x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [62 x i8] c"snd_soc_tas571x.author=Kevin Cernekee <cernekee@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [54 x i8] c"snd_soc_tas571x.file=sound/soc/codecs/snd-soc-tas571x\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"snd_soc_tas571x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tas571x\00", [24 x i8] zeroinitializer }, align 32
@tas571x_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas5707\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tas5707_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas5711\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tas5711_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas5717\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tas5717_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas5719\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tas5717_chip }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas5721\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tas5721_chip }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@tas571x_i2c_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tas5707\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tas5707_chip to i32) }, %struct.i2c_device_id { [20 x i8] c"tas5711\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tas5711_chip to i32) }, %struct.i2c_device_id { [20 x i8] c"tas5717\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tas5717_chip to i32) }, %struct.i2c_device_id { [20 x i8] c"tas5719\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tas5717_chip to i32) }, %struct.i2c_device_id { [20 x i8] c"tas5721\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @tas5721_chip to i32) }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mclk\00", [27 x i8] zeroinitializer }, align 32
@tas571x_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 800, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request mclk: %ld\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas571x_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/tas571x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tas571x_i2c_probe._entry_ptr = internal global ptr @tas571x_i2c_probe._entry, section ".printk_index", align 4
@tas571x_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 812, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get supplies: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@tas571x_i2c_probe._entry_ptr.9 = internal global ptr @tas571x_i2c_probe._entry.7, section ".printk_index", align 4
@tas571x_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tas571x_i2c_probe._entry_ptr.12 = internal global ptr @tas571x_i2c_probe._entry.10, section ".printk_index", align 4
@tas571x_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"tas571x:823:(priv->chip->regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pdn\00", [28 x i8] zeroinitializer }, align 32
@tas571x_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 832, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error requesting pdn_gpio: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@tas571x_i2c_probe._entry_ptr.17 = internal global ptr @tas571x_i2c_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@tas571x_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 840, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error requesting reset_gpio: %ld\0A\00", [62 x i8] zeroinitializer }, align 32
@tas571x_i2c_probe._entry_ptr.21 = internal global ptr @tas571x_i2c_probe._entry.19, section ".printk_index", align 4
@tas571x_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @tas571x_dapm_widgets, i32 6, ptr @tas571x_dapm_routes, i32 6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas571x_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tas571x_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.32, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tas571x_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.29, i64 1092, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@tas571x_dapm_routes = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.22, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.24, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.25, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT_A\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT_B\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT_C\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT_D\00", [26 x i8] zeroinitializer }, align 32
@tas571x_dapm_widgets = internal constant { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [264 x i8] } { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [264 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@tas571x_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable master clock: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tas571x_set_bias_level\00", [41 x i8] zeroinitializer }, align 32
@tas571x_set_bias_level._entry_ptr = internal global ptr @tas571x_set_bias_level._entry, section ".printk_index", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tas571x-hifi\00", [19 x i8] zeroinitializer }, align 32
@tas571x_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @tas571x_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas571x_mute, ptr null, ptr null, ptr @tas571x_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@tas5707_chip = internal constant { %struct.tas571x_chip, [40 x i8] } { %struct.tas571x_chip { ptr @tas5711_supply_names, i32 6, ptr @tas5707_controls, i32 18, ptr @tas5707_regmap_config, i32 1 }, [40 x i8] zeroinitializer }, align 32
@tas5711_chip = internal constant { %struct.tas571x_chip, [40 x i8] } { %struct.tas571x_chip { ptr @tas5711_supply_names, i32 6, ptr @tas5711_controls, i32 3, ptr @tas5711_regmap_config, i32 1 }, [40 x i8] zeroinitializer }, align 32
@tas5717_chip = internal constant { %struct.tas571x_chip, [40 x i8] } { %struct.tas571x_chip { ptr @tas5717_supply_names, i32 5, ptr @tas5717_controls, i32 33, ptr @tas5717_regmap_config, i32 2 }, [40 x i8] zeroinitializer }, align 32
@tas5721_chip = internal constant { %struct.tas571x_chip, [40 x i8] } { %struct.tas571x_chip { ptr @tas5721_supply_names, i32 4, ptr @tas5721_controls, i32 3, ptr @tas5721_regmap_config, i32 1 }, [40 x i8] zeroinitializer }, align 32
@tas5711_supply_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [40 x i8] zeroinitializer }, align 32
@tas5707_controls = internal constant { [18 x %struct.snd_kcontrol_new], [192 x i8] } { [18 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5707_volume_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5707_volume_tlv }, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @tas5707_volume_slew_step_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327721 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327722 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327723 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327724 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327725 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327726 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327727 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327728 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327729 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327730 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327731 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327732 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327733 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327734 }], [192 x i8] zeroinitializer }, align 32
@tas5707_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @tas571x_reg_read, ptr @tas571x_reg_write, ptr null, i8 0, i32 255, ptr @tas571x_write_regs, ptr null, ptr @tas5707_volatile_regs, ptr null, ptr null, ptr null, ptr @tas5707_reg_defaults, i32 21, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PVDD_A\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PVDD_B\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PVDD_C\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PVDD_D\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Volume\00", [18 x i8] zeroinitializer }, align 32
@tas5707_volume_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7900, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 7, i32 7, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8, i32 9, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Slew Rate Steps\00", [16 x i8] zeroinitializer }, align 32
@tas5707_volume_slew_step_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 0, i8 0, i32 4, i32 3, ptr @tas5707_volume_slew_step_txt, ptr @tas5707_volume_slew_step_values, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 0\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 1\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 2\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 3\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 4\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 5\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 6\00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 0\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 1\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 2\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 3\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 4\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 5\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 6\00", [17 x i8] zeroinitializer }, align 32
@tas5707_volume_slew_step_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [16 x i8] zeroinitializer }, align 32
@tas5707_volume_slew_step_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3, i32 0, i32 1, i32 2], [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"256\00", [28 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"512\00", [28 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1024\00", [27 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2048\00", [27 x i8] zeroinitializer }, align 32
@tas571x_write_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr null, i32 0, ptr @tas571x_readonly_regs_range, i32 1 }, [16 x i8] zeroinitializer }, align 32
@tas5707_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @tas5707_volatile_regs_range, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@tas5707_reg_defaults = internal constant { [21 x %struct.reg_default], [56 x i8] } { [21 x %struct.reg_default] [%struct.reg_default { i32 0, i32 108 }, %struct.reg_default { i32 1, i32 112 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 160 }, %struct.reg_default { i32 4, i32 5 }, %struct.reg_default { i32 5, i32 64 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 255 }, %struct.reg_default { i32 8, i32 48 }, %struct.reg_default { i32 9, i32 48 }, %struct.reg_default { i32 14, i32 145 }, %struct.reg_default { i32 16, i32 2 }, %struct.reg_default { i32 17, i32 172 }, %struct.reg_default { i32 18, i32 84 }, %struct.reg_default { i32 19, i32 172 }, %struct.reg_default { i32 20, i32 84 }, %struct.reg_default { i32 26, i32 15 }, %struct.reg_default { i32 27, i32 130 }, %struct.reg_default { i32 28, i32 2 }, %struct.reg_default { i32 32, i32 96114 }, %struct.reg_default { i32 37, i32 16913221 }], [56 x i8] zeroinitializer }, align 32
@tas571x_readonly_regs_range = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 1 }], [24 x i8] zeroinitializer }, align 32
@tas5707_volatile_regs_range = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 27, i32 27 }, %struct.regmap_range { i32 41, i32 54 }], [40 x i8] zeroinitializer }, align 32
@tas5711_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5711_volume_tlv }, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5711_volume_tlv }, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }], [48 x i8] zeroinitializer }, align 32
@tas5711_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @tas571x_reg_read, ptr @tas571x_reg_write, ptr null, i8 0, i32 255, ptr @tas571x_write_regs, ptr null, ptr @tas571x_volatile_regs, ptr null, ptr null, ptr null, ptr @tas5711_reg_defaults, i32 7, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@tas5711_volume_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 7, i32 7, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8, i32 9, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@tas571x_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @tas571x_volatile_regs_range, i32 2, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@tas5711_reg_defaults = internal constant { [7 x %struct.reg_default], [40 x i8] } { [7 x %struct.reg_default] [%struct.reg_default { i32 4, i32 5 }, %struct.reg_default { i32 5, i32 64 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 255 }, %struct.reg_default { i32 8, i32 48 }, %struct.reg_default { i32 9, i32 48 }, %struct.reg_default { i32 27, i32 130 }], [40 x i8] zeroinitializer }, align 32
@tas571x_volatile_regs_range = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 2 }, %struct.regmap_range { i32 27, i32 27 }], [16 x i8] zeroinitializer }, align 32
@tas5717_supply_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.66, ptr @.str.67, ptr @.str.68], [44 x i8] zeroinitializer }, align 32
@tas5717_controls = internal constant { [33 x %struct.snd_kcontrol_new], [400 x i8] } { [33 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5717_volume_tlv }, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5717_volume_tlv }, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw_range, ptr @snd_soc_get_volsw_range, ptr @snd_soc_put_volsw_range, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327718 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327719 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327720 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327721 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327722 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327723 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327724 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327725 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327726 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327727 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327768 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327769 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327728 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327729 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327730 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327731 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327732 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327733 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327734 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327735 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327736 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327737 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327772 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327773 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327774 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327775 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327770 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 3, i32 0, ptr @tas571x_coefficient_info, ptr @tas571x_coefficient_get, ptr @tas571x_coefficient_put, %union.anon.98 zeroinitializer, i32 327771 }], [400 x i8] zeroinitializer }, align 32
@tas5717_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @tas571x_reg_read, ptr @tas571x_reg_write, ptr null, i8 0, i32 255, ptr @tas571x_write_regs, ptr null, ptr @tas571x_volatile_regs, ptr null, ptr null, ptr null, ptr @tas5717_reg_defaults, i32 11, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PVDD_AB\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PVDD_CD\00", [24 x i8] zeroinitializer }, align 32
@tas5717_volume_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10375, i32 25], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 511, i32 511, i32 7, i32 7, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 511, i32 511, i32 8, i32 9, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CH1 Mixer Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 128, i32 128, i32 115, i32 114, i32 16, i32 16, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CH2 Mixer Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 128, i32 128, i32 118, i32 119, i32 16, i32 16, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 7\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 8\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH1 - Biquad 9\00", [17 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CH1 - Biquad 10\00", [16 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CH1 - Biquad 11\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 7\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 8\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH2 - Biquad 9\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CH2 - Biquad 10\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CH2 - Biquad 11\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH3 - Biquad 0\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH3 - Biquad 1\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH4 - Biquad 0\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CH4 - Biquad 1\00", [17 x i8] zeroinitializer }, align 32
@tas5717_reg_defaults = internal constant { [11 x %struct.reg_default], [40 x i8] } { [11 x %struct.reg_default] [%struct.reg_default { i32 4, i32 5 }, %struct.reg_default { i32 5, i32 64 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 1023 }, %struct.reg_default { i32 8, i32 192 }, %struct.reg_default { i32 9, i32 192 }, %struct.reg_default { i32 27, i32 130 }, %struct.reg_default { i32 114, i32 0 }, %struct.reg_default { i32 115, i32 8388608 }, %struct.reg_default { i32 118, i32 0 }, %struct.reg_default { i32 119, i32 8388608 }], [40 x i8] zeroinitializer }, align 32
@tas5721_supply_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.90, ptr @.str.91], [16 x i8] zeroinitializer }, align 32
@tas5721_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5711_volume_tlv }, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5711_volume_tlv }, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }], [48 x i8] zeroinitializer }, align 32
@tas5721_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @tas571x_reg_read, ptr @tas571x_reg_write, ptr null, i8 0, i32 255, ptr @tas571x_write_regs, ptr null, ptr @tas571x_volatile_regs, ptr null, ptr null, ptr null, ptr @tas5721_reg_defaults, i32 24, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DRVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PVDD\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 7, i32 7, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8, i32 9, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@tas5721_reg_defaults = internal constant { [24 x %struct.reg_default], [32 x i8] } { [24 x %struct.reg_default] [%struct.reg_default { i32 0, i32 108 }, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 160 }, %struct.reg_default { i32 4, i32 5 }, %struct.reg_default { i32 5, i32 64 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 255 }, %struct.reg_default { i32 8, i32 48 }, %struct.reg_default { i32 9, i32 48 }, %struct.reg_default { i32 10, i32 48 }, %struct.reg_default { i32 14, i32 145 }, %struct.reg_default { i32 16, i32 2 }, %struct.reg_default { i32 17, i32 172 }, %struct.reg_default { i32 18, i32 84 }, %struct.reg_default { i32 19, i32 172 }, %struct.reg_default { i32 20, i32 84 }, %struct.reg_default { i32 25, i32 48 }, %struct.reg_default { i32 26, i32 15 }, %struct.reg_default { i32 27, i32 130 }, %struct.reg_default { i32 28, i32 2 }, %struct.reg_default { i32 32, i32 96114 }, %struct.reg_default { i32 33, i32 17155 }, %struct.reg_default { i32 37, i32 16913221 }], [32 x i8] zeroinitializer }, align 32
@switch.table.tas571x_hw_params = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 0, i32 6], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [12 x i64] [i64 10, i64 32, i64 7, i64 8, i64 9, i64 32, i64 33, i64 37, i64 114, i64 115, i64 118, i64 119]
@__sancov_gen_cov_switch_values.96 = internal global [12 x i64] [i64 10, i64 32, i64 7, i64 8, i64 9, i64 32, i64 33, i64 37, i64 114, i64 115, i64 118, i64 119]
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"tas571x_i2c_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 912, i32 26 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 914, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"tas571x_of_match\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 892, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"tas571x_i2c_id\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 902, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 797, i32 33 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 799, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 812, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 818, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 822, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 829, i32 48 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 831, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 836, i32 50 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 839, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"tas571x_component\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 751, i32 46 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"tas571x_dai\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 762, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"tas571x_dapm_routes\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 741, i32 40 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 732, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 733, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 735, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 736, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 737, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 738, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [21 x i8] c"tas571x_dapm_widgets\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 731, i32 41 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 742, i32 19 }
@___asan_gen_.199 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 337, i32 6 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 763, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"tas571x_dai_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 354, i32 37 }
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"tas5707_chip\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 543, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant [13 x i8] c"tas5711_chip\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 438, i32 34 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"tas5717_chip\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 651, i32 34 }
@___asan_gen_.223 = private unnamed_addr constant [13 x i8] c"tas5721_chip\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 722, i32 34 }
@___asan_gen_.226 = private unnamed_addr constant [21 x i8] c"tas5711_supply_names\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 370, i32 26 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"tas5707_controls\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 474, i32 38 }
@___asan_gen_.232 = private unnamed_addr constant [22 x i8] c"tas5707_regmap_config\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 530, i32 35 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 371, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 372, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 373, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 374, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 375, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 376, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 475, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [19 x i8] c"tas5707_volume_tlv\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 459, i32 14 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 478, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 482, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 487, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [30 x i8] c"tas5707_volume_slew_step_enum\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 469, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 489, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 490, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 491, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 492, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 493, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 494, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 495, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 497, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 498, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 499, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 500, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 501, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 502, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 503, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [29 x i8] c"tas5707_volume_slew_step_txt\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 461, i32 27 }
@___asan_gen_.319 = private unnamed_addr constant [32 x i8] c"tas5707_volume_slew_step_values\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 465, i32 27 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 462, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 462, i32 9 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 462, i32 16 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 462, i32 24 }
@___asan_gen_.334 = private unnamed_addr constant [19 x i8] c"tas571x_write_regs\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 404, i32 41 }
@___asan_gen_.337 = private unnamed_addr constant [22 x i8] c"tas5707_volatile_regs\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 453, i32 41 }
@___asan_gen_.340 = private unnamed_addr constant [21 x i8] c"tas5707_reg_defaults\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 506, i32 33 }
@___asan_gen_.343 = private unnamed_addr constant [28 x i8] c"tas571x_readonly_regs_range\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 395, i32 34 }
@___asan_gen_.346 = private unnamed_addr constant [28 x i8] c"tas5707_volatile_regs_range\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 447, i32 34 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"tas5711_controls\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 381, i32 38 }
@___asan_gen_.352 = private unnamed_addr constant [22 x i8] c"tas5711_regmap_config\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 425, i32 35 }
@___asan_gen_.355 = private unnamed_addr constant [19 x i8] c"tas5711_volume_tlv\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 379, i32 14 }
@___asan_gen_.358 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [22 x i8] c"tas571x_volatile_regs\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 409, i32 41 }
@___asan_gen_.364 = private unnamed_addr constant [21 x i8] c"tas5711_reg_defaults\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 415, i32 33 }
@___asan_gen_.367 = private unnamed_addr constant [28 x i8] c"tas571x_volatile_regs_range\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 399, i32 34 }
@___asan_gen_.370 = private unnamed_addr constant [21 x i8] c"tas5717_supply_names\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 552, i32 26 }
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"tas5717_controls\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 562, i32 38 }
@___asan_gen_.376 = private unnamed_addr constant [22 x i8] c"tas5717_regmap_config\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 637, i32 35 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 555, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 556, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 557, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [19 x i8] c"tas5717_volume_tlv\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 560, i32 14 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 575, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 580, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 597, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 598, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 599, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 600, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 601, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 610, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 611, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 612, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 613, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 614, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 616, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 617, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 619, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 620, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [21 x i8] c"tas5717_reg_defaults\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 623, i32 33 }
@___asan_gen_.447 = private unnamed_addr constant [21 x i8] c"tas5721_supply_names\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 660, i32 26 }
@___asan_gen_.450 = private unnamed_addr constant [17 x i8] c"tas5721_controls\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 667, i32 38 }
@___asan_gen_.453 = private unnamed_addr constant [22 x i8] c"tas5721_regmap_config\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 708, i32 35 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 663, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 664, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.464 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [21 x i8] c"tas5721_reg_defaults\00", align 1
@___asan_gen_.466 = private constant [30 x i8] c"../sound/soc/codecs/tas571x.c\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 681, i32 33 }
@___asan_gen_.468 = private unnamed_addr constant [31 x i8] c"switch.table.tas571x_hw_params\00", align 1
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_tas571x_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_tas571x__294_921_tas571x_i2c_driver_init6, ptr @tas571x_i2c_driver_exit, ptr @tas571x_i2c_probe._entry, ptr @tas571x_i2c_probe._entry.10, ptr @tas571x_i2c_probe._entry.15, ptr @tas571x_i2c_probe._entry.19, ptr @tas571x_i2c_probe._entry.7, ptr @tas571x_i2c_probe._entry_ptr, ptr @tas571x_i2c_probe._entry_ptr.12, ptr @tas571x_i2c_probe._entry_ptr.17, ptr @tas571x_i2c_probe._entry_ptr.21, ptr @tas571x_i2c_probe._entry_ptr.9, ptr @tas571x_set_bias_level._entry, ptr @tas571x_set_bias_level._entry_ptr, ptr @tas571x_i2c_driver, ptr @.str, ptr @tas571x_of_match, ptr @tas571x_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @tas571x_i2c_probe._key, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @tas571x_component, ptr @tas571x_dai, ptr @tas571x_dapm_routes, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @tas571x_dapm_widgets, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @tas571x_dai_ops, ptr @tas5707_chip, ptr @tas5711_chip, ptr @tas5717_chip, ptr @tas5721_chip, ptr @tas5711_supply_names, ptr @tas5707_controls, ptr @tas5707_regmap_config, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @tas5707_volume_tlv, ptr @.compoundliteral, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @tas5707_volume_slew_step_enum, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @tas5707_volume_slew_step_txt, ptr @tas5707_volume_slew_step_values, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @tas571x_write_regs, ptr @tas5707_volatile_regs, ptr @tas5707_reg_defaults, ptr @tas571x_readonly_regs_range, ptr @tas5707_volatile_regs_range, ptr @tas5711_controls, ptr @tas5711_regmap_config, ptr @tas5711_volume_tlv, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @tas571x_volatile_regs, ptr @tas5711_reg_defaults, ptr @tas571x_volatile_regs_range, ptr @tas5717_supply_names, ptr @tas5717_controls, ptr @tas5717_regmap_config, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @tas5717_volume_tlv, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @tas5717_reg_defaults, ptr @tas5721_supply_names, ptr @tas5721_controls, ptr @tas5721_regmap_config, ptr @.str.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.compoundliteral.93, ptr @.compoundliteral.94, ptr @tas5721_reg_defaults, ptr @switch.table.tas571x_hw_params], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_i2c_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_dapm_routes to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_dapm_widgets to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_chip to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5711_chip to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5717_chip to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5721_chip to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5711_supply_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_controls to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_volume_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_volume_slew_step_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_volume_slew_step_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_volume_slew_step_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_write_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_reg_defaults to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_readonly_regs_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5707_volatile_regs_range to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5711_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5711_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5711_volume_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5711_reg_defaults to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas571x_volatile_regs_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5717_supply_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5717_controls to i32), i32 1584, i32 1984, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5717_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5717_volume_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5717_reg_defaults to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5721_supply_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5721_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5721_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5721_reg_defaults to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tas571x_hw_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tas571x_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tas571x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @tas571x_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_i2c_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 284, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @tas571x_of_match, ptr noundef %dev1) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %5 = inttoptr i32 %4 to ptr
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %storemerge = phi ptr [ %5, %if.else ], [ %2, %if.then4 ]
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %storemerge, ptr %call.i, align 4
  %call7 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %mclk = getelementptr inbounds %struct.tas571x_private, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %mclk, align 4
  %cmp.i = icmp ule ptr %call7, inttoptr (i32 -4096 to ptr)
  %cmp.not = icmp eq ptr %call7, inttoptr (i32 -2 to ptr)
  %or.cond = or i1 %cmp.i, %cmp.not
  br i1 %or.cond, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %call7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %8) #12
  %9 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mclk, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %num_supply_names = getelementptr inbounds %struct.tas571x_chip, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %num_supply_names to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_supply_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %15)
  %cmp19 = icmp sgt i32 %15, 6
  br i1 %cmp19, label %do.end31, label %for.cond.preheader, !prof !251

for.cond.preheader:                               ; preds = %if.end17
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %num_supply_names48221 = getelementptr inbounds %struct.tas571x_chip, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %num_supply_names48221 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_supply_names48221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp49222 = icmp sgt i32 %19, 0
  br i1 %cmp49222, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end31:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 804, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %20 = phi ptr [ %27, %for.body.for.body_crit_edge ], [ %17, %for.cond.preheader.for.body_crit_edge ]
  %i.0223 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %i.0223
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %arrayidx51 = getelementptr %struct.tas571x_private, ptr %call.i, i32 0, i32 2, i32 %i.0223
  %25 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %arrayidx51, align 4
  %inc = add nuw nsw i32 %i.0223, 1
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %num_supply_names48 = getelementptr inbounds %struct.tas571x_chip, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %num_supply_names48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_supply_names48, align 4
  %cmp49 = icmp slt i32 %inc, %29
  br i1 %cmp49, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %19, %for.cond.preheader.for.end_crit_edge ], [ %29, %for.body.for.end_crit_edge ]
  %supplies54 = getelementptr inbounds %struct.tas571x_private, ptr %call.i, i32 0, i32 2
  %call55 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa, ptr noundef %supplies54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end61, label %do.end60

do.end60:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call55) #12
  br label %cleanup

if.end61:                                         ; preds = %for.end
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call.i, align 4
  %num_supply_names63 = getelementptr inbounds %struct.tas571x_chip, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %num_supply_names63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_supply_names63, align 4
  %call66 = tail call i32 @regulator_bulk_enable(i32 noundef %33, ptr noundef %supplies54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call66) #12
  br label %cleanup

if.end72:                                         ; preds = %if.end61
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 4
  %regmap_config = getelementptr inbounds %struct.tas571x_chip, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %regmap_config to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap_config, align 4
  %call75 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef null, ptr noundef %client, ptr noundef %37, ptr noundef nonnull @tas571x_i2c_probe._key, ptr noundef nonnull @.str.13) #9
  %regmap = getelementptr inbounds %struct.tas571x_private, ptr %call.i, i32 0, i32 1
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call75, ptr %regmap, align 4
  %cmp.i217 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %if.then78, label %if.end81

if.then78:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call75 to i32
  br label %disable_regs

if.end81:                                         ; preds = %if.end72
  %call82 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 3) #9
  %pdn_gpio = getelementptr inbounds %struct.tas571x_private, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %pdn_gpio to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call82, ptr %pdn_gpio, align 4
  %cmp.i218 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %do.end88, label %if.end93

do.end88:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %call82 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %41) #12
  %42 = ptrtoint ptr %pdn_gpio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdn_gpio, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %cleanup

if.end93:                                         ; preds = %if.end81
  %call94 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef 7) #9
  %reset_gpio = getelementptr inbounds %struct.tas571x_private, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call94, ptr %reset_gpio, align 4
  %cmp.i219 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %do.end100, label %if.else105

do.end100:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %call94 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %46) #12
  %47 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reset_gpio, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %cleanup

if.else105:                                       ; preds = %if.end93
  %tobool107.not = icmp eq ptr %call94, null
  br i1 %tobool107.not, label %if.else105.if.end111_crit_edge, label %if.then108

if.else105.if.end111_crit_edge:                   ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111

if.then108:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #9
  %50 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reset_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %51, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 13500, i32 noundef 20000, i32 noundef 2) #9
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.else105.if.end111_crit_edge
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call113 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 27, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %if.end116, label %if.end111.disable_regs_crit_edge

if.end111.disable_regs_crit_edge:                 ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_regs

if.end116:                                        ; preds = %if.end111
  tail call void @usleep_range_state(i32 noundef 50000, i32 noundef 60000, i32 noundef 2) #9
  %component_driver = getelementptr inbounds %struct.tas571x_private, ptr %call.i, i32 0, i32 7
  %54 = call ptr @memcpy(ptr %component_driver, ptr @tas571x_component, i32 188)
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %controls = getelementptr inbounds %struct.tas571x_chip, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %controls, align 4
  %controls119 = getelementptr inbounds %struct.tas571x_private, ptr %call.i, i32 0, i32 7, i32 1
  %59 = ptrtoint ptr %controls119 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %controls119, align 4
  %num_controls = getelementptr inbounds %struct.tas571x_chip, ptr %56, i32 0, i32 3
  %60 = ptrtoint ptr %num_controls to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_controls, align 4
  %num_controls122 = getelementptr inbounds %struct.tas571x_private, ptr %call.i, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %num_controls122 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %num_controls122, align 4
  %vol_reg_size = getelementptr inbounds %struct.tas571x_chip, ptr %56, i32 0, i32 5
  %63 = ptrtoint ptr %vol_reg_size to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %vol_reg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %64)
  %cmp124 = icmp eq i32 %64, 2
  br i1 %cmp124, label %if.then125, label %if.end116.if.end131_crit_edge

if.end116.if.end131_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.then125:                                       ; preds = %if.end116
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call.i220 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 7, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool128.not = icmp eq i32 %call.i220, 0
  br i1 %tobool128.not, label %if.then125.if.end131_crit_edge, label %if.then125.disable_regs_crit_edge

if.then125.disable_regs_crit_edge:                ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_regs

if.then125.if.end131_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.end131:                                        ; preds = %if.then125.if.end131_crit_edge, %if.end116.if.end131_crit_edge
  %call134 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef %component_driver, ptr noundef nonnull @tas571x_dai, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.end131.cleanup_crit_edge, label %if.end131.disable_regs_crit_edge

if.end131.disable_regs_crit_edge:                 ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %disable_regs

if.end131.cleanup_crit_edge:                      ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

disable_regs:                                     ; preds = %if.end131.disable_regs_crit_edge, %if.then125.disable_regs_crit_edge, %if.end111.disable_regs_crit_edge, %if.then78
  %ret.0 = phi i32 [ %39, %if.then78 ], [ %call113, %if.end111.disable_regs_crit_edge ], [ %call.i220, %if.then125.disable_regs_crit_edge ], [ %call134, %if.end131.disable_regs_crit_edge ]
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  %num_supply_names139 = getelementptr inbounds %struct.tas571x_chip, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %num_supply_names139 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_supply_names139, align 4
  %call142 = tail call i32 @regulator_bulk_disable(i32 noundef %70, ptr noundef %supplies54) #9
  br label %cleanup

cleanup:                                          ; preds = %disable_regs, %if.end131.cleanup_crit_edge, %do.end100, %do.end88, %do.end71, %do.end60, %do.end31, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %do.end ], [ -22, %do.end31 ], [ %call55, %do.end60 ], [ %call66, %do.end71 ], [ %ret.0, %disable_regs ], [ %44, %do.end88 ], [ %49, %do.end100 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end131.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %num_supply_names = getelementptr inbounds %struct.tas571x_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_supply_names to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_supply_names, align 4
  %supplies = getelementptr inbounds %struct.tas571x_private, ptr %1, i32 0, i32 2
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef %5, ptr noundef %supplies) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
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
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb9
    i32 1, label %sw.bb
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %mclk = getelementptr inbounds %struct.tas571x_private, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mclk, align 4
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.then3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.then
  %call.i = tail call i32 @clk_prepare(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then3.do.end_crit_edge

if.then3.do.end_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %if.then3
  %call1.i = tail call i32 @clk_enable(ptr noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then3.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then3.do.end_crit_edge ]
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i.ph) #12
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %mclk10 = getelementptr inbounds %struct.tas571x_private, ptr %3, i32 0, i32 3
  %11 = ptrtoint ptr %mclk10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mclk10, align 4
  %cmp.i23 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23, label %sw.bb9.cleanup_crit_edge, label %if.then12

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_disable(ptr noundef %12) #9
  tail call void @clk_unprepare(ptr noundef %12) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %sw.bb9.cleanup_crit_edge, %do.end, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %sw.bb9.cleanup_crit_edge ], [ 0, %if.then12 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tas571x_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %format) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %format1 = getelementptr inbounds %struct.tas571x_private, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %format, ptr %format1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %conv2 = select i1 %tobool.not, i32 0, i32 64
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 5, i32 noundef 64, i32 noundef %conv2) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %format = getelementptr inbounds %struct.tas571x_private, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  %and = and i32 %7, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.tas571x_hw_params, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %switch.lookup.if.then.i.i.i_crit_edge

switch.lookup.if.then.i.i.i_crit_edge:            ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %switch.lookup.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %switch.lookup.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %11, %switch.lookup.if.then.i.i.i_crit_edge ], [ %14, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !252
  %add.i.i.i = or i32 %12, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %switch.lookup
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.1.i.i.i = icmp eq i32 %14, 0
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %call1.i)
  %cmp = icmp sgt i32 %call1.i, 23
  br i1 %cmp, label %params_width.exit.if.end8_crit_edge, label %if.else

params_width.exit.if.end8_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else:                                          ; preds = %params_width.exit
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i16 = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i16, label %for.inc.i.i.i23, label %if.else.if.then.i.i.i20_crit_edge

if.else.if.then.i.i.i20_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i20

if.then.i.i.i20:                                  ; preds = %for.inc.i.i.i23.if.then.i.i.i20_crit_edge, %if.else.if.then.i.i.i20_crit_edge
  %i.09.lcssa.i.i.i17 = phi i32 [ 0, %if.else.if.then.i.i.i20_crit_edge ], [ 32, %for.inc.i.i.i23.if.then.i.i.i20_crit_edge ]
  %.lcssa.i.i.i18 = phi i32 [ %16, %if.else.if.then.i.i.i20_crit_edge ], [ %19, %for.inc.i.i.i23.if.then.i.i.i20_crit_edge ]
  %17 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i18, i1 true) #9, !range !252
  %add.i.i.i19 = or i32 %17, %i.09.lcssa.i.i.i17
  br label %params_width.exit26

for.inc.i.i.i23:                                  ; preds = %if.else
  %arrayidx.1.i.i.i21 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i.i.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i.i22 = icmp eq i32 %19, 0
  br i1 %tobool.not.1.i.i.i22, label %for.inc.i.i.i23.params_width.exit26_crit_edge, label %for.inc.i.i.i23.if.then.i.i.i20_crit_edge

for.inc.i.i.i23.if.then.i.i.i20_crit_edge:        ; preds = %for.inc.i.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i20

for.inc.i.i.i23.params_width.exit26_crit_edge:    ; preds = %for.inc.i.i.i23
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit26

params_width.exit26:                              ; preds = %for.inc.i.i.i23.params_width.exit26_crit_edge, %if.then.i.i.i20
  %retval.0.i.i.i24 = phi i32 [ %add.i.i.i19, %if.then.i.i.i20 ], [ 0, %for.inc.i.i.i23.params_width.exit26_crit_edge ]
  %call1.i25 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %call1.i25)
  %cmp5 = icmp sgt i32 %call1.i25, 19
  %add7 = zext i1 %cmp5 to i32
  br label %if.end8

if.end8:                                          ; preds = %params_width.exit26, %params_width.exit.if.end8_crit_edge
  %add7.sink = phi i32 [ %add7, %params_width.exit26 ], [ 2, %params_width.exit.if.end8_crit_edge ]
  %spec.select = add nuw nsw i32 %switch.load, %add7.sink
  %regmap = getelementptr inbounds %struct.tas571x_private, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 4, i32 noundef 15, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tas571x_coefficient_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 16
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shr, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_coefficient_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %send_buf.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %5, 16
  %value = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %send_buf.i) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #9
  %6 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %mul.i = shl nuw nsw i32 %shr, 2
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3521) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.tas571x_reg_read_multiword.exit_crit_edge, label %if.end.i

entry.tas571x_reg_read_multiword.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_reg_read_multiword.exit

if.end.i:                                         ; preds = %entry
  %conv.i = trunc i32 %5 to i8
  %8 = ptrtoint ptr %send_buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %send_buf.i, align 1
  %addr.i = getelementptr i8, ptr %3, i32 -30
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %6, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %send_buf.i, ptr %buf.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %arrayidx7.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %10, ptr %arrayidx7.i, align 4
  %conv9.i = trunc i32 %mul.i to i16
  %len11.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %len11.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv9.i, ptr %len11.i, align 4
  %buf13.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %buf13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i.i, ptr %buf13.i, align 4
  %flags15.i = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %flags15.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %flags15.i, align 2
  %adapter.i = getelementptr i8, ptr %3, i32 -8
  %19 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter.i, align 8
  %call16.i = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %msgs.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i = icmp slt i32 %call16.i, 0
  br i1 %cmp.i, label %if.end.i.err_ret.i_crit_edge, label %if.else.i

if.end.i.err_ret.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ret.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16.i)
  %cmp19.not.i = icmp eq i32 %call16.i, 2
  br i1 %cmp19.not.i, label %for.cond.preheader.i, label %if.else.i.err_ret.i_crit_edge

if.else.i.err_ret.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ret.i

for.cond.preheader.i:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cmp2450.not.i = icmp ult i32 %5, 65536
  br i1 %cmp2450.not.i, label %for.cond.preheader.i.err_ret.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.err_ret.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ret.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %p.052.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call9.i.i.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.051.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %p.052.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %p.052.i, align 1
  %arrayidx27.i = getelementptr i32, ptr %value, i32 %i.051.i
  %23 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx27.i, align 4
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %add.ptr.i = getelementptr i8, ptr %p.052.i, i32 4
  %exitcond.not.i = icmp eq i32 %inc.i, %shr
  br i1 %exitcond.not.i, label %for.body.i.err_ret.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.err_ret.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_ret.i

err_ret.i:                                        ; preds = %for.body.i.err_ret.i_crit_edge, %for.cond.preheader.i.err_ret.i_crit_edge, %if.else.i.err_ret.i_crit_edge, %if.end.i.err_ret.i_crit_edge
  %ret.0.i = phi i32 [ %call16.i, %if.end.i.err_ret.i_crit_edge ], [ -5, %if.else.i.err_ret.i_crit_edge ], [ 2, %for.cond.preheader.i.err_ret.i_crit_edge ], [ 2, %for.body.i.err_ret.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  br label %tas571x_reg_read_multiword.exit

tas571x_reg_read_multiword.exit:                  ; preds = %err_ret.i, %entry.tas571x_reg_read_multiword.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %err_ret.i ], [ -12, %entry.tas571x_reg_read_multiword.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %send_buf.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_coefficient_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -32
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %4 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %private_value, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = lshr i32 %5, 14
  %mul.i = and i32 %6, 262140
  %add.i = or i32 %mul.i, 1
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3521) #13
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %entry.tas571x_reg_write_multiword.exit_crit_edge, label %if.end.i

entry.tas571x_reg_write_multiword.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_reg_write_multiword.exit

if.end.i:                                         ; preds = %entry
  %conv.i = trunc i32 %5 to i8
  %7 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %5)
  %cmp28.not.i = icmp ult i32 %5, 65536
  br i1 %cmp28.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.preheader.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i, i32 1
  %8 = call ptr @memcpy(ptr %add.ptr.i, ptr %value, i32 %mul.i)
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.preheader.i, %if.end.i.for.end.i_crit_edge
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %call9.i.i.i, i32 noundef %add.i, i16 noundef zeroext 0) #9
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i)
  %cmp5.i = icmp eq i32 %call.i.i, %add.i
  br i1 %cmp5.i, label %for.end.i.tas571x_reg_write_multiword.exit_crit_edge, label %if.else.i

for.end.i.tas571x_reg_write_multiword.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_reg_write_multiword.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i = icmp slt i32 %call.i.i, 0
  %call4..i = select i1 %cmp8.i, i32 %call.i.i, i32 -5
  br label %tas571x_reg_write_multiword.exit

tas571x_reg_write_multiword.exit:                 ; preds = %if.else.i, %for.end.i.tas571x_reg_write_multiword.exit_crit_edge, %entry.tas571x_reg_write_multiword.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.tas571x_reg_write_multiword.exit_crit_edge ], [ 0, %for.end.i.tas571x_reg_write_multiword.exit_crit_edge ], [ %call4..i, %if.else.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef %value) #2 align 64 {
entry:
  %send_buf = alloca i8, align 1
  %recv_buf = alloca [4 x i8], align 4
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %send_buf) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %recv_buf) #9
  %2 = ptrtoint ptr %recv_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %recv_buf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #9
  %3 = getelementptr inbounds i8, ptr %msgs, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %5 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %reg, label %sw.default.i [
    i32 7, label %entry.sw.bb.i_crit_edge
    i32 8, label %entry.sw.bb.i_crit_edge48
    i32 9, label %entry.sw.bb.i_crit_edge49
    i32 32, label %entry.tas571x_register_size.exit_crit_edge
    i32 33, label %entry.tas571x_register_size.exit_crit_edge50
    i32 37, label %entry.tas571x_register_size.exit_crit_edge51
    i32 114, label %entry.tas571x_register_size.exit_crit_edge52
    i32 115, label %entry.tas571x_register_size.exit_crit_edge53
    i32 118, label %entry.tas571x_register_size.exit_crit_edge54
    i32 119, label %entry.tas571x_register_size.exit_crit_edge55
  ]

entry.tas571x_register_size.exit_crit_edge55:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

entry.tas571x_register_size.exit_crit_edge54:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

entry.tas571x_register_size.exit_crit_edge53:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

entry.tas571x_register_size.exit_crit_edge52:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

entry.tas571x_register_size.exit_crit_edge51:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

entry.tas571x_register_size.exit_crit_edge50:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

entry.tas571x_register_size.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

entry.sw.bb.i_crit_edge49:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge48:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge48, %entry.sw.bb.i_crit_edge49
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %vol_reg_size.i = getelementptr inbounds %struct.tas571x_chip, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %vol_reg_size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vol_reg_size.i, align 4
  br label %tas571x_register_size.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

tas571x_register_size.exit:                       ; preds = %sw.default.i, %sw.bb.i, %entry.tas571x_register_size.exit_crit_edge, %entry.tas571x_register_size.exit_crit_edge50, %entry.tas571x_register_size.exit_crit_edge51, %entry.tas571x_register_size.exit_crit_edge52, %entry.tas571x_register_size.exit_crit_edge53, %entry.tas571x_register_size.exit_crit_edge54, %entry.tas571x_register_size.exit_crit_edge55
  %retval.0.i = phi i32 [ 1, %sw.default.i ], [ %9, %sw.bb.i ], [ 4, %entry.tas571x_register_size.exit_crit_edge ], [ 4, %entry.tas571x_register_size.exit_crit_edge50 ], [ 4, %entry.tas571x_register_size.exit_crit_edge51 ], [ 4, %entry.tas571x_register_size.exit_crit_edge52 ], [ 4, %entry.tas571x_register_size.exit_crit_edge53 ], [ 4, %entry.tas571x_register_size.exit_crit_edge54 ], [ 4, %entry.tas571x_register_size.exit_crit_edge55 ]
  %conv = trunc i32 %reg to i8
  %10 = ptrtoint ptr %send_buf to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %send_buf, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %13 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %msgs, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %send_buf, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags, align 2
  %arrayidx7 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %12, ptr %arrayidx7, align 4
  %conv9 = trunc i32 %retval.0.i to i16
  %len11 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %len11 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv9, ptr %len11, align 4
  %buf13 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %buf13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %recv_buf, ptr %buf13, align 4
  %flags15 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %flags15 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags15, align 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %call17 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msgs, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %tas571x_register_size.exit.cleanup_crit_edge, label %if.else

tas571x_register_size.exit.cleanup_crit_edge:     ; preds = %tas571x_register_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %tas571x_register_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call17)
  %cmp19.not = icmp eq i32 %call17, 2
  br i1 %cmp19.not, label %if.end22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2345.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp2345.not, label %if.end22.cleanup_crit_edge, label %for.body.lr.ph

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end22
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %24)
  %value.promoted = load i32, ptr %value, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %shl47 = phi i32 [ %value.promoted, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl i32 %shl47, 8
  %arrayidx25 = getelementptr [4 x i8], ptr %recv_buf, i32 0, i32 %i.046
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %26 to i32
  %or = or i32 %shl, %conv26
  %inc = add nuw i32 %i.046, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.cond.cleanup.loopexit_crit_edge, %if.end22.cleanup_crit_edge, %if.else.cleanup_crit_edge, %tas571x_register_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %tas571x_register_size.exit.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ 0, %for.cond.cleanup.loopexit_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %recv_buf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %send_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas571x_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %value) #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #9
  %2 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %3 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %reg, label %sw.default.i [
    i32 7, label %entry.tas571x_register_size.exit_crit_edge
    i32 8, label %entry.tas571x_register_size.exit_crit_edge35
    i32 9, label %entry.tas571x_register_size.exit_crit_edge36
    i32 32, label %entry.tas571x_register_size.exit.thread_crit_edge
    i32 33, label %entry.tas571x_register_size.exit.thread_crit_edge37
    i32 37, label %entry.tas571x_register_size.exit.thread_crit_edge38
    i32 114, label %entry.tas571x_register_size.exit.thread_crit_edge39
    i32 115, label %entry.tas571x_register_size.exit.thread_crit_edge40
    i32 118, label %entry.tas571x_register_size.exit.thread_crit_edge41
    i32 119, label %entry.tas571x_register_size.exit.thread_crit_edge42
  ]

entry.tas571x_register_size.exit.thread_crit_edge42: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit.thread

entry.tas571x_register_size.exit.thread_crit_edge41: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit.thread

entry.tas571x_register_size.exit.thread_crit_edge40: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit.thread

entry.tas571x_register_size.exit.thread_crit_edge39: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit.thread

entry.tas571x_register_size.exit.thread_crit_edge38: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit.thread

entry.tas571x_register_size.exit.thread_crit_edge37: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit.thread

entry.tas571x_register_size.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit.thread

entry.tas571x_register_size.exit_crit_edge36:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

entry.tas571x_register_size.exit_crit_edge35:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

entry.tas571x_register_size.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas571x_register_size.exit.thread

tas571x_register_size.exit.thread:                ; preds = %sw.default.i, %entry.tas571x_register_size.exit.thread_crit_edge, %entry.tas571x_register_size.exit.thread_crit_edge37, %entry.tas571x_register_size.exit.thread_crit_edge38, %entry.tas571x_register_size.exit.thread_crit_edge39, %entry.tas571x_register_size.exit.thread_crit_edge40, %entry.tas571x_register_size.exit.thread_crit_edge41, %entry.tas571x_register_size.exit.thread_crit_edge42
  %retval.0.i.ph = phi i32 [ 4, %entry.tas571x_register_size.exit.thread_crit_edge ], [ 4, %entry.tas571x_register_size.exit.thread_crit_edge37 ], [ 4, %entry.tas571x_register_size.exit.thread_crit_edge38 ], [ 4, %entry.tas571x_register_size.exit.thread_crit_edge39 ], [ 4, %entry.tas571x_register_size.exit.thread_crit_edge40 ], [ 4, %entry.tas571x_register_size.exit.thread_crit_edge41 ], [ 4, %entry.tas571x_register_size.exit.thread_crit_edge42 ], [ 1, %sw.default.i ]
  %conv31 = trunc i32 %reg to i8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv31, ptr %buf, align 1
  br label %for.body.preheader

tas571x_register_size.exit:                       ; preds = %entry.tas571x_register_size.exit_crit_edge, %entry.tas571x_register_size.exit_crit_edge35, %entry.tas571x_register_size.exit_crit_edge36
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %vol_reg_size.i = getelementptr inbounds %struct.tas571x_chip, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %vol_reg_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vol_reg_size.i, align 4
  %conv = trunc i32 %reg to i8
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not27 = icmp eq i32 %8, 0
  br i1 %cmp.not27, label %tas571x_register_size.exit.for.end_crit_edge, label %tas571x_register_size.exit.for.body.preheader_crit_edge

tas571x_register_size.exit.for.body.preheader_crit_edge: ; preds = %tas571x_register_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

tas571x_register_size.exit.for.end_crit_edge:     ; preds = %tas571x_register_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %tas571x_register_size.exit.for.body.preheader_crit_edge, %tas571x_register_size.exit.thread
  %retval.0.i33 = phi i32 [ %retval.0.i.ph, %tas571x_register_size.exit.thread ], [ %8, %tas571x_register_size.exit.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.029 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %retval.0.i33, %for.body.preheader ]
  %value.addr.028 = phi i32 [ %shr, %for.body.for.body_crit_edge ], [ %value, %for.body.preheader ]
  %conv3 = trunc i32 %value.addr.028 to i8
  %arrayidx4 = getelementptr [5 x i8], ptr %buf, i32 0, i32 %i.029
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv3, ptr %arrayidx4, align 1
  %shr = lshr i32 %value.addr.028, 8
  %dec = add i32 %i.029, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %tas571x_register_size.exit.for.end_crit_edge
  %retval.0.i34 = phi i32 [ 0, %tas571x_register_size.exit.for.end_crit_edge ], [ %retval.0.i33, %for.body.for.end_crit_edge ]
  %add = add i32 %retval.0.i34, 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %context, ptr noundef nonnull %buf, i32 noundef %add, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add)
  %cmp7 = icmp eq i32 %call.i, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  %call5. = select i1 %cmp9, i32 %call.i, i32 -5
  %retval.0 = select i1 %cmp7, i32 0, i32 %call5.
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw_range(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw_range(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw_range(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240}
!llvm.module.flags = !{!242, !243, !244, !245, !246, !247, !248, !249}
!llvm.ident = !{!250}

!0 = !{ptr @__initcall__kmod_snd_soc_tas571x__294_921_tas571x_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_tas571x__294_921_tas571x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tas571x.c", i32 921, i32 1}
!2 = !{ptr @__exitcall_tas571x_i2c_driver_exit, !1, !"__exitcall_tas571x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/tas571x.c", i32 923, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/tas571x.c", i32 924, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/tas571x.c", i32 925, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/tas571x.c", i32 914, i32 11}
!12 = !{ptr @tas571x_i2c_driver, !13, !"tas571x_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tas571x.c", i32 912, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tas571x.c", i32 797, i32 33}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/tas571x.c", i32 799, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tas571x_i2c_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tas571x_i2c_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/tas571x.c", i32 812, i32 3}
!26 = !{ptr @tas571x_i2c_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tas571x_i2c_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/tas571x.c", i32 818, i32 3}
!30 = !{ptr @tas571x_i2c_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tas571x_i2c_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @tas571x_i2c_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/tas571x.c", i32 822, i32 17}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/tas571x.c", i32 829, i32 48}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/tas571x.c", i32 831, i32 3}
!39 = !{ptr @tas571x_i2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tas571x_i2c_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/tas571x.c", i32 836, i32 50}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/tas571x.c", i32 839, i32 3}
!45 = !{ptr @tas571x_i2c_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @tas571x_i2c_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @tas571x_component, !48, !"tas571x_component", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/tas571x.c", i32 751, i32 46}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/tas571x.c", i32 732, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/tas571x.c", i32 733, i32 2}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/tas571x.c", i32 735, i32 2}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/tas571x.c", i32 736, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/tas571x.c", i32 737, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/tas571x.c", i32 738, i32 2}
!61 = !{ptr @tas571x_dapm_widgets, !62, !"tas571x_dapm_widgets", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/tas571x.c", i32 731, i32 41}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/tas571x.c", i32 742, i32 19}
!65 = !{ptr @tas571x_dapm_routes, !66, !"tas571x_dapm_routes", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/tas571x.c", i32 741, i32 40}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/tas571x.c", i32 337, i32 6}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tas571x_set_bias_level._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @tas571x_set_bias_level._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/tas571x.c", i32 763, i32 10}
!74 = !{ptr @tas571x_dai, !75, !"tas571x_dai", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/tas571x.c", i32 762, i32 34}
!76 = !{ptr @tas571x_dai_ops, !77, !"tas571x_dai_ops", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/tas571x.c", i32 354, i32 37}
!78 = !{ptr @tas571x_of_match, !79, !"tas571x_of_match", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/tas571x.c", i32 892, i32 34}
!80 = !{ptr @tas5707_chip, !81, !"tas5707_chip", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/tas571x.c", i32 543, i32 34}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/tas571x.c", i32 371, i32 2}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/tas571x.c", i32 372, i32 2}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/tas571x.c", i32 373, i32 2}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/tas571x.c", i32 374, i32 2}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/tas571x.c", i32 375, i32 2}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/tas571x.c", i32 376, i32 2}
!94 = !{ptr @tas5711_supply_names, !95, !"tas5711_supply_names", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/tas571x.c", i32 370, i32 26}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/tas571x.c", i32 475, i32 2}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/tas571x.c", i32 478, i32 2}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/tas571x.c", i32 482, i32 2}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/tas571x.c", i32 487, i32 2}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/tas571x.c", i32 489, i32 2}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/tas571x.c", i32 490, i32 2}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/tas571x.c", i32 491, i32 2}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/tas571x.c", i32 492, i32 2}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/tas571x.c", i32 493, i32 2}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/tas571x.c", i32 494, i32 2}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/tas571x.c", i32 495, i32 2}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/tas571x.c", i32 497, i32 2}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/tas571x.c", i32 498, i32 2}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/tas571x.c", i32 499, i32 2}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/tas571x.c", i32 500, i32 2}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/tas571x.c", i32 501, i32 2}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/tas571x.c", i32 502, i32 2}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/tas571x.c", i32 503, i32 2}
!132 = !{ptr @tas5707_controls, !133, !"tas5707_controls", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/tas571x.c", i32 474, i32 38}
!134 = !{ptr @tas5707_volume_tlv, !135, !"tas5707_volume_tlv", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/tas571x.c", i32 459, i32 14}
!136 = !{ptr @tas5707_volume_slew_step_enum, !137, !"tas5707_volume_slew_step_enum", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/tas571x.c", i32 469, i32 8}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/tas571x.c", i32 462, i32 2}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/tas571x.c", i32 462, i32 9}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/tas571x.c", i32 462, i32 16}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/tas571x.c", i32 462, i32 24}
!146 = !{ptr @tas5707_volume_slew_step_txt, !147, !"tas5707_volume_slew_step_txt", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/tas571x.c", i32 461, i32 27}
!148 = !{ptr @tas5707_volume_slew_step_values, !149, !"tas5707_volume_slew_step_values", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/tas571x.c", i32 465, i32 27}
!150 = !{ptr @tas5707_regmap_config, !151, !"tas5707_regmap_config", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/tas571x.c", i32 530, i32 35}
!152 = !{ptr @tas571x_write_regs, !153, !"tas571x_write_regs", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/tas571x.c", i32 404, i32 41}
!154 = !{ptr @tas571x_readonly_regs_range, !155, !"tas571x_readonly_regs_range", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/tas571x.c", i32 395, i32 34}
!156 = !{ptr @tas5707_volatile_regs, !157, !"tas5707_volatile_regs", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/tas571x.c", i32 453, i32 41}
!158 = !{ptr @tas5707_volatile_regs_range, !159, !"tas5707_volatile_regs_range", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/tas571x.c", i32 447, i32 34}
!160 = !{ptr @tas5707_reg_defaults, !161, !"tas5707_reg_defaults", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/tas571x.c", i32 506, i32 33}
!162 = !{ptr @tas5711_chip, !163, !"tas5711_chip", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/tas571x.c", i32 438, i32 34}
!164 = !{ptr @tas5711_controls, !165, !"tas5711_controls", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/tas571x.c", i32 381, i32 38}
!166 = !{ptr @tas5711_volume_tlv, !167, !"tas5711_volume_tlv", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/tas571x.c", i32 379, i32 14}
!168 = !{ptr @tas5711_regmap_config, !169, !"tas5711_regmap_config", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/tas571x.c", i32 425, i32 35}
!170 = !{ptr @tas571x_volatile_regs, !171, !"tas571x_volatile_regs", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/tas571x.c", i32 409, i32 41}
!172 = !{ptr @tas571x_volatile_regs_range, !173, !"tas571x_volatile_regs_range", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/tas571x.c", i32 399, i32 34}
!174 = !{ptr @tas5711_reg_defaults, !175, !"tas5711_reg_defaults", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/tas571x.c", i32 415, i32 33}
!176 = !{ptr @tas5717_chip, !177, !"tas5717_chip", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/tas571x.c", i32 651, i32 34}
!178 = !{ptr @.str.66, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/tas571x.c", i32 555, i32 2}
!180 = !{ptr @.str.67, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/tas571x.c", i32 556, i32 2}
!182 = !{ptr @.str.68, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/tas571x.c", i32 557, i32 2}
!184 = !{ptr @tas5717_supply_names, !185, !"tas5717_supply_names", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/tas571x.c", i32 552, i32 26}
!186 = !{ptr @.str.72, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/tas571x.c", i32 575, i32 2}
!188 = !{ptr @.str.74, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/tas571x.c", i32 580, i32 2}
!190 = !{ptr @.str.76, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/tas571x.c", i32 597, i32 2}
!192 = !{ptr @.str.77, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/tas571x.c", i32 598, i32 2}
!194 = !{ptr @.str.78, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/tas571x.c", i32 599, i32 2}
!196 = !{ptr @.str.79, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/tas571x.c", i32 600, i32 2}
!198 = !{ptr @.str.80, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/tas571x.c", i32 601, i32 2}
!200 = !{ptr @.str.81, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/tas571x.c", i32 610, i32 2}
!202 = !{ptr @.str.82, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/tas571x.c", i32 611, i32 2}
!204 = !{ptr @.str.83, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/tas571x.c", i32 612, i32 2}
!206 = !{ptr @.str.84, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/tas571x.c", i32 613, i32 2}
!208 = !{ptr @.str.85, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/tas571x.c", i32 614, i32 2}
!210 = !{ptr @.str.86, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/tas571x.c", i32 616, i32 2}
!212 = !{ptr @.str.87, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/tas571x.c", i32 617, i32 2}
!214 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/tas571x.c", i32 619, i32 2}
!216 = !{ptr @.str.89, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/tas571x.c", i32 620, i32 2}
!218 = !{ptr @tas5717_controls, !219, !"tas5717_controls", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/tas571x.c", i32 562, i32 38}
!220 = !{ptr @tas5717_volume_tlv, !221, !"tas5717_volume_tlv", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/tas571x.c", i32 560, i32 14}
!222 = !{ptr @tas5717_regmap_config, !223, !"tas5717_regmap_config", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/tas571x.c", i32 637, i32 35}
!224 = !{ptr @tas5717_reg_defaults, !225, !"tas5717_reg_defaults", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/tas571x.c", i32 623, i32 33}
!226 = !{ptr @tas5721_chip, !227, !"tas5721_chip", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/tas571x.c", i32 722, i32 34}
!228 = !{ptr @.str.90, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/tas571x.c", i32 663, i32 2}
!230 = !{ptr @.str.91, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/tas571x.c", i32 664, i32 2}
!232 = !{ptr @tas5721_supply_names, !233, !"tas5721_supply_names", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/tas571x.c", i32 660, i32 26}
!234 = !{ptr @tas5721_controls, !235, !"tas5721_controls", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/tas571x.c", i32 667, i32 38}
!236 = !{ptr @tas5721_regmap_config, !237, !"tas5721_regmap_config", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/tas571x.c", i32 708, i32 35}
!238 = !{ptr @tas5721_reg_defaults, !239, !"tas5721_reg_defaults", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/tas571x.c", i32 681, i32 33}
!240 = !{ptr @tas571x_i2c_id, !241, !"tas571x_i2c_id", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/tas571x.c", i32 902, i32 35}
!242 = !{i32 1, !"wchar_size", i32 2}
!243 = !{i32 1, !"min_enum_size", i32 4}
!244 = !{i32 8, !"branch-target-enforcement", i32 0}
!245 = !{i32 8, !"sign-return-address", i32 0}
!246 = !{i32 8, !"sign-return-address-all", i32 0}
!247 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!248 = !{i32 7, !"uwtable", i32 1}
!249 = !{i32 7, !"frame-pointer", i32 2}
!250 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!251 = !{!"branch_weights", i32 1, i32 2000}
!252 = !{i32 0, i32 33}
