; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tscs42xx.c_pt.bc'
source_filename = "../sound/soc/codecs/tscs42xx.c"
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
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.coeff_ram_ctl = type { i32, %struct.soc_bytes_ext }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
%struct.soc_bytes = type { i32, i32, i32 }
%struct.pll_ctl = type { i32, [13 x %struct.reg_setting] }
%struct.reg_setting = type { i32, i32, i32 }
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
%struct.tscs42xx = type { i32, i32, %struct.mutex, [618 x i8], i8, %struct.mutex, %struct.mutex, ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.94, [64 x i8] }
%union.anon.94 = type { %struct.anon.97, [40 x i8] }
%struct.anon.97 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.87, [128 x i8] }
%union.anon.87 = type { %union.anon.89 }
%union.anon.89 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tscs42xx__294_1512_tscs42xx_i2c_driver_init6 = internal global ptr @tscs42xx_i2c_driver_init, section ".initcall6.init", align 4
@tscs42xx_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tscs42xx_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tscs42xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tscs42xx_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tscs42xx_i2c_driver_exit = internal global ptr @tscs42xx_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [81 x i8] c"snd_soc_tscs42xx.author=Tempo Semiconductor <steven.eckhoff.opensource@gmail.com\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [50 x i8] c"snd_soc_tscs42xx.description=ASoC TSCS42xx driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [56 x i8] c"snd_soc_tscs42xx.file=sound/soc/codecs/snd-soc-tscs42xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [29 x i8] c"snd_soc_tscs42xx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tscs42xx\00", [23 x i8] zeroinitializer }, align 32
@tscs42xx_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tempo,tscs42A1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"tempo,tscs42A2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tscs42A1\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tscs42A2\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to allocate memory for data (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tscs42xx_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/tscs42xx.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry_ptr = internal global ptr @tscs42xx_i2c_probe._entry, section ".printk_index", align 4
@tscs42xx_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to get sysclk (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry_ptr.8 = internal global ptr @tscs42xx_i2c_probe._entry.6, section ".printk_index", align 4
@tscs42xx_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to get a valid clock name (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry_ptr.11 = internal global ptr @tscs42xx_i2c_probe._entry.9, section ".printk_index", align 4
@tscs42xx_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tscs42xx_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @tscs42xx_volatile, ptr @tscs42xx_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 221, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tscs42xx:1446:(&tscs42xx_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1449, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate regmap (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry_ptr.15 = internal global ptr @tscs42xx_i2c_probe._entry.13, section ".printk_index", align 4
@tscs42xx_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1457, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No valid part (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry_ptr.18 = internal global ptr @tscs42xx_i2c_probe._entry.16, section ".printk_index", align 4
@tscs42xx_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to reset device (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry_ptr.21 = internal global ptr @tscs42xx_i2c_probe._entry.19, section ".printk_index", align 4
@tscs42xx_patch = internal constant { [1 x %struct.reg_sequence], [20 x i8] } { [1 x %struct.reg_sequence] [%struct.reg_sequence { i32 20, i32 3, i32 0 }], [20 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1471, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to apply patch (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry_ptr.24 = internal global ptr @tscs42xx_i2c_probe._entry.22, section ".printk_index", align 4
@tscs42xx_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&tscs42xx->audio_params_lock\00", [35 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&tscs42xx->coeff_ram_lock\00", [38 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&tscs42xx->pll_lock\00", [44 x i8] zeroinitializer }, align 32
@soc_codec_dev_tscs42xx = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tscs42xx_snd_controls, i32 105, ptr @tscs42xx_dapm_widgets, i32 27, ptr @tscs42xx_intercon, i32 31, ptr @tscs42xx_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tscs42xx_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.345, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tscs42xx_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.298, i64 68719477828, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.284, i64 68719477828, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -32, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register codec (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@tscs42xx_i2c_probe._entry_ptr.32 = internal global ptr @tscs42xx_i2c_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xtal\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk1\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk2\00", [26 x i8] zeroinitializer }, align 32
@init_coeff_ram_cache.norm_addrs = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\00\05\0A\0F\14\19\1F %*/49?@EJOTY_`ejoty\7F\80\85\8C\91\96\97\9C\A3\A8\AD\AF\B0\B5\BA\BF\C4\C9", [51 x i8] zeroinitializer }, align 32
@tscs42xx_snd_controls = internal constant { [105 x %struct.snd_kcontrol_new], [1264 x i8] } { [105 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hpvol_scale }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @spkvol_scale }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dacvol_scale }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adcvol_scale }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @invol_scale }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mic_boost_scale }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ch_map_select_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.111 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.113 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.115 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.117 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.150, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.152, i32 0, i32 0, i32 0, ptr @bytes_info_ext, ptr @coeff_ram_get, ptr @coeff_ram_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.154, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.156, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq1_band_enable_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.159, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq2_band_enable_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cle_level_detection_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @cle_level_detection_window_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mugain_scale }, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @compth_scale }, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @compressor_ratio_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.175, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.179, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.185, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.187, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.189, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.191, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @mbc_level_detection_enums to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @mbc_level_detection_enums, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @mbc_level_detection_enums, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @mbc_level_detection_window_enums to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @mbc_level_detection_window_enums, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @mbc_level_detection_window_enums, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.199, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mugain_scale }, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.201, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @compth_scale }, i32 ptrtoint (ptr @.compoundliteral.202 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.203, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dac_mbc1_compressor_ratio_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mugain_scale }, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @compth_scale }, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dac_mbc2_compressor_ratio_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.215, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.216 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.217, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.218 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.219, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.220 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.221, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mugain_scale }, i32 ptrtoint (ptr @.compoundliteral.222 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.223, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @compth_scale }, i32 ptrtoint (ptr @.compoundliteral.224 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.225, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dac_mbc3_compressor_ratio_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info, ptr @snd_soc_bytes_get, ptr @snd_soc_bytes_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }], [1264 x i8] zeroinitializer }, align 32
@tscs42xx_intercon = internal constant { [31 x %struct.snd_soc_dapm_route], [404 x i8] } { [31 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.283, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.285, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.283, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.285, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.286, ptr null, ptr @.str.283, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.287, ptr null, ptr @.str.285, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.289, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.288, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.289, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.290, ptr null, ptr @.str.288, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.291, ptr null, ptr @.str.289, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.303, ptr null, ptr @.str.281, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.324, ptr @.str.304, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.324, ptr @.str.305, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.325, ptr @.str.306, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.325, ptr @.str.307, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.300, ptr @.str.326, ptr @.str.308, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.301, ptr @.str.326, ptr @.str.309, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.292, ptr null, ptr @.str.300, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.293, ptr null, ptr @.str.301, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.294, ptr null, ptr @.str.292, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.295, ptr null, ptr @.str.293, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr null, ptr @.str.294, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.296, ptr null, ptr @.str.295, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr null, ptr @.str.282, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.297, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.299, ptr null, ptr @.str.296, ptr null, %struct.snd_soc_dobj zeroinitializer }], [404 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@hpvol_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8850, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 0, i32 1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@spkvol_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 2, i32 3, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Master Volume\00", [18 x i8] zeroinitializer }, align 32
@dacvol_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9563, i32 38], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 4, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCM Volume\00", [21 x i8] zeroinitializer }, align 32
@adcvol_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7125, i32 38], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 6, i32 7, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Input Volume\00", [19 x i8] zeroinitializer }, align 32
@invol_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 8, i32 9, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mic Boost Volume\00", [47 x i8] zeroinitializer }, align 32
@mic_boost_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 12, i32 13, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Input Channel Map\00", [46 x i8] zeroinitializer }, align 32
@ch_map_select_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 4, i8 4, i32 4, i32 3, ptr @ch_map_select_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mic Bias Boost Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 113, i32 113, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Headphone Auto Switching Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Headphone Detect Polarity Toggle Switch\00", [56 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1L BiQuad1\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 0, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1L BiQuad2\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 5, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1L BiQuad3\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 10, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1L BiQuad4\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 15, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1L BiQuad5\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 20, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1L BiQuad6\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 25, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1R BiQuad1\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 32, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1R BiQuad2\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 37, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1R BiQuad3\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 42, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1R BiQuad4\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 47, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1R BiQuad5\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 52, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade1R BiQuad6\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 57, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cascade1L Prescale\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 31, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cascade1R Prescale\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 63, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2L BiQuad1\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 64, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2L BiQuad2\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 69, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2L BiQuad3\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 74, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2L BiQuad4\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 79, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2L BiQuad5\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 84, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2L BiQuad6\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 89, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2R BiQuad1\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 96, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2R BiQuad2\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 101, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2R BiQuad3\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 106, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2R BiQuad4\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 111, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2R BiQuad5\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 116, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Cascade2R BiQuad6\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 121, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cascade2L Prescale\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 95, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cascade2R Prescale\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 127, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bass Extraction BiQuad1\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.111 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 128, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bass Extraction BiQuad2\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.113 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 133, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bass Non Linear Function 1\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.115 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 138, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bass Non Linear Function 2\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.117 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 139, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bass Limiter BiQuad\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 140, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bass Cut Off BiQuad\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 145, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Bass Mix\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 150, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Treb Extraction BiQuad1\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 151, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Treb Extraction BiQuad2\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 156, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Treb Non Linear Function 1\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 161, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Treb Non Linear Function 2\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 162, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Treb Limiter BiQuad\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 163, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Treb Cut Off BiQuad\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 168, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Treb Mix\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 173, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3D\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 174, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3D Mix\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 175, %struct.soc_bytes_ext { i32 3, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MBC1 BiQuad1\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 176, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MBC1 BiQuad2\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 181, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MBC2 BiQuad1\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 186, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MBC2 BiQuad2\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 191, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MBC3 BiQuad1\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 196, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MBC3 BiQuad2\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.coeff_ram_ctl, [44 x i8] } { %struct.coeff_ram_ctl { i32 201, %struct.soc_bytes_ext { i32 15, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EQ1 Band Enable\00", [16 x i8] zeroinitializer }, align 32
@eq1_band_enable_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 0, i8 0, i32 7, i32 7, ptr @eq_band_enable_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EQ2 Band Enable\00", [16 x i8] zeroinitializer }, align 32
@eq2_band_enable_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 4, i8 4, i32 7, i32 7, ptr @eq_band_enable_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CLE Level Detect\00", [47 x i8] zeroinitializer }, align 32
@cle_level_detection_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 4, i8 4, i32 2, i32 1, ptr @level_detection_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CLE Level Detect Win\00", [43 x i8] zeroinitializer }, align 32
@cle_level_detection_window_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 3, i8 3, i32 2, i32 1, ptr @level_detection_window_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Expander Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Limiter Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Comp Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CLE Make-Up Gain Volume\00", [40 x i8] zeroinitializer }, align 32
@mugain_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 0, i32 4650], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 38, i32 38, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Comp Thresh Volume\00", [45 x i8] zeroinitializer }, align 32
@compth_scale = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -9562, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 39, i32 39, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Comp Ratio\00", [21 x i8] zeroinitializer }, align 32
@compressor_ratio_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 0, i8 0, i32 21, i32 31, ptr @compressor_ratio_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Comp Atk Time\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 41, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"3D Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Treble Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Treble Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bass Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Bass Bypass Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MBC Band1 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 199, i32 199, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MBC Band2 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 199, i32 199, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MBC Band3 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 199, i32 199, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MBC Band1 Level Detect\00", [41 x i8] zeroinitializer }, align 32
@mbc_level_detection_enums = internal constant { [3 x %struct.soc_enum], [32 x i8] } { [3 x %struct.soc_enum] [%struct.soc_enum { i32 200, i8 1, i8 1, i32 2, i32 1, ptr @level_detection_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 200, i8 3, i8 3, i32 2, i32 1, ptr @level_detection_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 200, i8 5, i8 5, i32 2, i32 1, ptr @level_detection_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MBC Band2 Level Detect\00", [41 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"MBC Band3 Level Detect\00", [41 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MBC Band1 Level Detect Win\00", [37 x i8] zeroinitializer }, align 32
@mbc_level_detection_window_enums = internal constant { [3 x %struct.soc_enum], [32 x i8] } { [3 x %struct.soc_enum] [%struct.soc_enum { i32 200, i8 0, i8 0, i32 2, i32 1, ptr @level_detection_window_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 200, i8 2, i8 2, i32 2, i32 1, ptr @level_detection_window_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 200, i8 4, i8 4, i32 2, i32 1, ptr @level_detection_window_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MBC Band2 Level Detect Win\00", [37 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"MBC Band3 Level Detect Win\00", [37 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MBC1 Phase Invert Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 201, i32 201, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC MBC1 Make-Up Gain Volume\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 201, i32 201, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC MBC1 Comp Thresh Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.202 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 202, i32 202, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC MBC1 Comp Ratio\00", [44 x i8] zeroinitializer }, align 32
@dac_mbc1_compressor_ratio_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 203, i8 0, i8 0, i32 21, i32 31, ptr @compressor_ratio_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC MBC1 Comp Atk Time\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 204, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC MBC1 Comp Rel Time Const\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 206, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MBC2 Phase Invert Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 208, i32 208, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC MBC2 Make-Up Gain Volume\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 208, i32 208, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC MBC2 Comp Thresh Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 209, i32 209, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC MBC2 Comp Ratio\00", [44 x i8] zeroinitializer }, align 32
@dac_mbc2_compressor_ratio_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 210, i8 0, i8 0, i32 21, i32 31, ptr @compressor_ratio_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC MBC2 Comp Atk Time\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.216 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 211, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC MBC2 Comp Rel Time Const\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.218 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 213, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MBC3 Phase Invert Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.220 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 215, i32 215, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC MBC3 Make-Up Gain Volume\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.222 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 215, i32 215, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC MBC3 Comp Thresh Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.224 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 216, i32 216, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC MBC3 Comp Ratio\00", [44 x i8] zeroinitializer }, align 32
@dac_mbc3_compressor_ratio_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 217, i8 0, i8 0, i32 21, i32 31, ptr @compressor_ratio_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DAC MBC3 Comp Atk Time\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 218, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC MBC3 Comp Rel Time Const\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { %struct.soc_bytes, [20 x i8] } { %struct.soc_bytes { i32 220, i32 2, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ch_map_select_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233], [16 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left to Right\00", [18 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right to Left\00", [18 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Swap\00", [27 x i8] zeroinitializer }, align 32
@coeff_ram_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.3, i32 309, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to flush coeff ram cache (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coeff_ram_put\00", [18 x i8] zeroinitializer }, align 32
@coeff_ram_put._entry_ptr = internal global ptr @coeff_ram_put._entry, section ".printk_index", align 4
@plls_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.237, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read PLL lock status (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"plls_locked\00", [20 x i8] zeroinitializer }, align 32
@plls_locked._entry_ptr = internal global ptr @plls_locked._entry, section ".printk_index", align 4
@write_coeff_ram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to read stat (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write_coeff_ram\00", [16 x i8] zeroinitializer }, align 32
@write_coeff_ram._entry_ptr = internal global ptr @write_coeff_ram._entry, section ".printk_index", align 4
@write_coeff_ram._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.239, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"dac coefficient write error (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@write_coeff_ram._entry_ptr.242 = internal global ptr @write_coeff_ram._entry.240, section ".printk_index", align 4
@write_coeff_ram._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.239, ptr @.str.3, i32 171, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to write dac ram address (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@write_coeff_ram._entry_ptr.245 = internal global ptr @write_coeff_ram._entry.243, section ".printk_index", align 4
@write_coeff_ram._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.239, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write dac ram (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@write_coeff_ram._entry_ptr.248 = internal global ptr @write_coeff_ram._entry.246, section ".printk_index", align 4
@eq_band_enable_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255], [36 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Prescale only\00", [18 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Band1\00", [26 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Band1:2\00", [24 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Band1:3\00", [24 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Band1:4\00", [24 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Band1:5\00", [24 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Band1:6\00", [24 x i8] zeroinitializer }, align 32
@level_detection_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.256, ptr @.str.257], [24 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Average\00", [24 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Peak\00", [27 x i8] zeroinitializer }, align 32
@level_detection_window_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.258, ptr @.str.259], [24 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"512 Samples\00", [20 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"64 Samples\00", [21 x i8] zeroinitializer }, align 32
@compressor_ratio_text = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280], [44 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.5:1\00", [26 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2:1\00", [28 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3:1\00", [28 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4:1\00", [28 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5:1\00", [28 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"6:1\00", [28 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"7:1\00", [28 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8:1\00", [28 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"9:1\00", [28 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"10:1\00", [27 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"11:1\00", [27 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"12:1\00", [27 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"13:1\00", [27 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"14:1\00", [27 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"15:1\00", [27 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"16:1\00", [27 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"17:1\00", [27 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"18:1\00", [27 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"19:1\00", [27 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"20:1\00", [27 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Vref\00", [27 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PLL\00", [28 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC L\00", [26 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DAC R\00", [26 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headphone L\00", [20 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headphone R\00", [20 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ClassD L\00", [23 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ClassD R\00", [23 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Speaker L\00", [22 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Speaker R\00", [22 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Analog In PGA L\00", [16 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Analog In PGA R\00", [16 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Analog Boost L\00", [17 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Analog Boost R\00", [17 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC Mute\00", [23 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC L\00", [26 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC R\00", [26 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Input L Capture Route\00", [42 x i8] zeroinitializer }, align 32
@left_input_select = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.323, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @left_input_select_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Input R Capture Route\00", [42 x i8] zeroinitializer }, align 32
@right_input_select = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.328, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @right_input_select_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital Mic Enable\00", [45 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line In 1 L\00", [20 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line In 1 R\00", [20 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line In 2 L\00", [20 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line In 2 R\00", [20 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line In 3 L\00", [20 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line In 3 R\00", [20 x i8] zeroinitializer }, align 32
@tscs42xx_dapm_widgets = internal constant { [27 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1188 x i8] } { [27 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.281, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 27, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 6, ptr @dapm_vref_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.282, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @pll_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.283, ptr @.str.284, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 27, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.285, ptr @.str.284, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 27, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.286, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.287, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.288, ptr @.str.284, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 27, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.289, ptr @.str.284, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 27, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.290, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.291, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.292, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.293, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.294, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.295, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.296, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 22, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.297, ptr @.str.298, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.299, ptr @.str.298, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.300, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 27, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @left_input_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.301, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 27, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @right_input_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.302, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 36, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.303, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 6, ptr @dapm_micb_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.304, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.305, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.306, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.307, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.308, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.309, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1188 x i8] zeroinitializer }, align 32
@power_up_audio_plls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.312, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unrecognized PLL output freq (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"power_up_audio_plls\00", [44 x i8] zeroinitializer }, align 32
@power_up_audio_plls._entry_ptr = internal global ptr @power_up_audio_plls._entry, section ".printk_index", align 4
@power_up_audio_plls._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.312, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to turn PLL on (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@power_up_audio_plls._entry_ptr.315 = internal global ptr @power_up_audio_plls._entry.313, section ".printk_index", align 4
@power_up_audio_plls._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.312, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to lock plls\0A\00", [43 x i8] zeroinitializer }, align 32
@power_up_audio_plls._entry_ptr.318 = internal global ptr @power_up_audio_plls._entry.316, section ".printk_index", align 4
@power_down_audio_plls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.320, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to turn PLL off (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"power_down_audio_plls\00", [42 x i8] zeroinitializer }, align 32
@power_down_audio_plls._entry_ptr = internal global ptr @power_down_audio_plls._entry, section ".printk_index", align 4
@power_down_audio_plls._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.319, ptr @.str.320, ptr @.str.3, i32 252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@power_down_audio_plls._entry_ptr.322 = internal global ptr @power_down_audio_plls._entry.321, section ".printk_index", align 4
@.str.323 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LEFT_INPUT_SELECT_ENUM\00", [41 x i8] zeroinitializer }, align 32
@left_input_select_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 6, i8 6, i32 4, i32 3, ptr @input_select_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@input_select_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327], [16 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Line 1\00", [25 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Line 2\00", [25 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Line 3\00", [25 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"D2S\00", [28 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"RIGHT_INPUT_SELECT_ENUM\00", [40 x i8] zeroinitializer }, align 32
@right_input_select_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 6, i8 6, i32 4, i32 3, ptr @input_select_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.330, ptr @.str.3, i32 1315, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set pll reference input (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"set_sysclk\00", [21 x i8] zeroinitializer }, align 32
@set_sysclk._entry_ptr = internal global ptr @set_sysclk._entry, section ".printk_index", align 4
@set_sysclk._entry.331 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @.str.330, ptr @.str.3, i32 1325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set PLL reference (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@set_sysclk._entry_ptr.333 = internal global ptr @set_sysclk._entry.331, section ".printk_index", align 4
@set_sysclk._entry.334 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.330, ptr @.str.3, i32 1330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pll src is unsupported\0A\00", [40 x i8] zeroinitializer }, align 32
@set_sysclk._entry_ptr.336 = internal global ptr @set_sysclk._entry.334, section ".printk_index", align 4
@set_sysclk._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.330, ptr @.str.3, i32 1338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to setup PLL input freq (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@set_sysclk._entry_ptr.339 = internal global ptr @set_sysclk._entry.337, section ".printk_index", align 4
@set_pll_ctl_from_input_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.341, ptr @.str.3, i32 1070, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No PLL input entry for %d (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"set_pll_ctl_from_input_freq\00", [36 x i8] zeroinitializer }, align 32
@set_pll_ctl_from_input_freq._entry_ptr = internal global ptr @set_pll_ctl_from_input_freq._entry, section ".printk_index", align 4
@set_pll_ctl_from_input_freq._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.343, ptr @.str.341, ptr @.str.3, i32 1081, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to set pll ctl (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@set_pll_ctl_from_input_freq._entry_ptr.344 = internal global ptr @set_pll_ctl_from_input_freq._entry.342, section ".printk_index", align 4
@pll_ctls = internal constant { [23 x %struct.pll_ctl], [896 x i8] } { [23 x %struct.pll_ctl] [%struct.pll_ctl { i32 1411200, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 5, i32 255 }, %struct.reg_setting { i32 82, i32 57, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 7, i32 255 }, %struct.reg_setting { i32 79, i32 2, i32 255 }, %struct.reg_setting { i32 80, i32 195, i32 255 }, %struct.reg_setting { i32 81, i32 4, i32 255 }, %struct.reg_setting { i32 87, i32 27, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 3, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 208, i32 255 }, %struct.reg_setting { i32 86, i32 2, i32 255 }] }, %struct.pll_ctl { i32 1536000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 5, i32 255 }, %struct.reg_setting { i32 82, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 2, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 224, i32 255 }, %struct.reg_setting { i32 81, i32 1, i32 255 }, %struct.reg_setting { i32 87, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 2, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 185, i32 255 }, %struct.reg_setting { i32 86, i32 1, i32 255 }] }, %struct.pll_ctl { i32 2822400, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 10, i32 255 }, %struct.reg_setting { i32 82, i32 35, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 7, i32 255 }, %struct.reg_setting { i32 79, i32 4, i32 255 }, %struct.reg_setting { i32 80, i32 195, i32 255 }, %struct.reg_setting { i32 81, i32 4, i32 255 }, %struct.reg_setting { i32 87, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 5, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 88, i32 255 }, %struct.reg_setting { i32 86, i32 2, i32 255 }] }, %struct.pll_ctl { i32 3072000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 11, i32 255 }, %struct.reg_setting { i32 82, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 7, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 72, i32 255 }, %struct.reg_setting { i32 81, i32 3, i32 255 }, %struct.reg_setting { i32 87, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 4, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 185, i32 255 }, %struct.reg_setting { i32 86, i32 1, i32 255 }] }, %struct.pll_ctl { i32 5644800, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 21, i32 255 }, %struct.reg_setting { i32 82, i32 35, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 14, i32 255 }, %struct.reg_setting { i32 79, i32 4, i32 255 }, %struct.reg_setting { i32 80, i32 195, i32 255 }, %struct.reg_setting { i32 81, i32 4, i32 255 }, %struct.reg_setting { i32 87, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 8, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 224, i32 255 }, %struct.reg_setting { i32 86, i32 1, i32 255 }] }, %struct.pll_ctl { i32 6144000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 23, i32 255 }, %struct.reg_setting { i32 82, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 8, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 224, i32 255 }, %struct.reg_setting { i32 81, i32 1, i32 255 }, %struct.reg_setting { i32 87, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 8, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 185, i32 255 }, %struct.reg_setting { i32 86, i32 1, i32 255 }] }, %struct.pll_ctl { i32 12000000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 46, i32 255 }, %struct.reg_setting { i32 82, i32 27, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 25, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 0, i32 255 }, %struct.reg_setting { i32 81, i32 3, i32 255 }, %struct.reg_setting { i32 87, i32 42, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 25, i32 255 }, %struct.reg_setting { i32 84, i32 5, i32 255 }, %struct.reg_setting { i32 85, i32 152, i32 255 }, %struct.reg_setting { i32 86, i32 4, i32 255 }] }, %struct.pll_ctl { i32 19200000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 74, i32 255 }, %struct.reg_setting { i32 82, i32 19, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 20, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 128, i32 255 }, %struct.reg_setting { i32 81, i32 1, i32 255 }, %struct.reg_setting { i32 87, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 25, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 185, i32 255 }, %struct.reg_setting { i32 86, i32 1, i32 255 }] }, %struct.pll_ctl { i32 22000000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 85, i32 255 }, %struct.reg_setting { i32 82, i32 42, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 55, i32 255 }, %struct.reg_setting { i32 79, i32 5, i32 255 }, %struct.reg_setting { i32 80, i32 0, i32 255 }, %struct.reg_setting { i32 81, i32 6, i32 255 }, %struct.reg_setting { i32 87, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 38, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 73, i32 255 }, %struct.reg_setting { i32 86, i32 2, i32 255 }] }, %struct.pll_ctl { i32 22579200, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 87, i32 255 }, %struct.reg_setting { i32 82, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 49, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 32, i32 255 }, %struct.reg_setting { i32 81, i32 3, i32 255 }, %struct.reg_setting { i32 87, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 29, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 179, i32 255 }, %struct.reg_setting { i32 86, i32 1, i32 255 }] }, %struct.pll_ctl { i32 24000000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 93, i32 255 }, %struct.reg_setting { i32 82, i32 19, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 25, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 128, i32 255 }, %struct.reg_setting { i32 81, i32 1, i32 255 }, %struct.reg_setting { i32 87, i32 27, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 25, i32 255 }, %struct.reg_setting { i32 84, i32 5, i32 255 }, %struct.reg_setting { i32 85, i32 76, i32 255 }, %struct.reg_setting { i32 86, i32 2, i32 255 }] }, %struct.pll_ctl { i32 24576000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 95, i32 255 }, %struct.reg_setting { i32 82, i32 19, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 29, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 179, i32 255 }, %struct.reg_setting { i32 81, i32 1, i32 255 }, %struct.reg_setting { i32 87, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 64, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 114, i32 255 }, %struct.reg_setting { i32 86, i32 3, i32 255 }] }, %struct.pll_ctl { i32 27000000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 104, i32 255 }, %struct.reg_setting { i32 82, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 75, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 0, i32 255 }, %struct.reg_setting { i32 81, i32 4, i32 255 }, %struct.reg_setting { i32 87, i32 42, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 125, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 32, i32 255 }, %struct.reg_setting { i32 86, i32 6, i32 255 }] }, %struct.pll_ctl { i32 36000000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 140, i32 255 }, %struct.reg_setting { i32 82, i32 27, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 75, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 0, i32 255 }, %struct.reg_setting { i32 81, i32 3, i32 255 }, %struct.reg_setting { i32 87, i32 42, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 125, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 152, i32 255 }, %struct.reg_setting { i32 86, i32 4, i32 255 }] }, %struct.pll_ctl { i32 25000000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 97, i32 255 }, %struct.reg_setting { i32 82, i32 27, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 55, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 43, i32 255 }, %struct.reg_setting { i32 81, i32 3, i32 255 }, %struct.reg_setting { i32 87, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 42, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 57, i32 255 }, %struct.reg_setting { i32 86, i32 2, i32 255 }] }, %struct.pll_ctl { i32 26000000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 101, i32 255 }, %struct.reg_setting { i32 82, i32 35, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 65, i32 255 }, %struct.reg_setting { i32 79, i32 5, i32 255 }, %struct.reg_setting { i32 80, i32 0, i32 255 }, %struct.reg_setting { i32 81, i32 6, i32 255 }, %struct.reg_setting { i32 87, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 38, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 239, i32 255 }, %struct.reg_setting { i32 86, i32 1, i32 255 }] }, %struct.pll_ctl { i32 12288000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 47, i32 255 }, %struct.reg_setting { i32 82, i32 26, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 18, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 28, i32 255 }, %struct.reg_setting { i32 81, i32 2, i32 255 }, %struct.reg_setting { i32 87, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 32, i32 255 }, %struct.reg_setting { i32 84, i32 3, i32 255 }, %struct.reg_setting { i32 85, i32 114, i32 255 }, %struct.reg_setting { i32 86, i32 3, i32 255 }] }, %struct.pll_ctl { i32 40000000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 155, i32 255 }, %struct.reg_setting { i32 82, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 8, i32 15 }, %struct.reg_setting { i32 78, i32 125, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 128, i32 255 }, %struct.reg_setting { i32 81, i32 4, i32 255 }, %struct.reg_setting { i32 87, i32 35, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 125, i32 255 }, %struct.reg_setting { i32 84, i32 5, i32 255 }, %struct.reg_setting { i32 85, i32 228, i32 255 }, %struct.reg_setting { i32 86, i32 6, i32 255 }] }, %struct.pll_ctl { i32 512000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 1, i32 255 }, %struct.reg_setting { i32 82, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 1, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 208, i32 255 }, %struct.reg_setting { i32 81, i32 2, i32 255 }, %struct.reg_setting { i32 87, i32 27, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 1, i32 255 }, %struct.reg_setting { i32 84, i32 4, i32 255 }, %struct.reg_setting { i32 85, i32 114, i32 255 }, %struct.reg_setting { i32 86, i32 3, i32 255 }] }, %struct.pll_ctl { i32 705600, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 2, i32 255 }, %struct.reg_setting { i32 82, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 2, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 21, i32 255 }, %struct.reg_setting { i32 81, i32 4, i32 255 }, %struct.reg_setting { i32 87, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 1, i32 255 }, %struct.reg_setting { i32 84, i32 4, i32 255 }, %struct.reg_setting { i32 85, i32 128, i32 255 }, %struct.reg_setting { i32 86, i32 2, i32 255 }] }, %struct.pll_ctl { i32 1024000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 3, i32 255 }, %struct.reg_setting { i32 82, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 2, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 208, i32 255 }, %struct.reg_setting { i32 81, i32 2, i32 255 }, %struct.reg_setting { i32 87, i32 27, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 2, i32 255 }, %struct.reg_setting { i32 84, i32 4, i32 255 }, %struct.reg_setting { i32 85, i32 114, i32 255 }, %struct.reg_setting { i32 86, i32 3, i32 255 }] }, %struct.pll_ctl { i32 2048000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 7, i32 255 }, %struct.reg_setting { i32 82, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 4, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 208, i32 255 }, %struct.reg_setting { i32 81, i32 2, i32 255 }, %struct.reg_setting { i32 87, i32 27, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 4, i32 255 }, %struct.reg_setting { i32 84, i32 4, i32 255 }, %struct.reg_setting { i32 85, i32 114, i32 255 }, %struct.reg_setting { i32 86, i32 3, i32 255 }] }, %struct.pll_ctl { i32 2400000, [13 x %struct.reg_setting] [%struct.reg_setting { i32 119, i32 8, i32 255 }, %struct.reg_setting { i32 82, i32 34, i32 255 }, %struct.reg_setting { i32 96, i32 4, i32 15 }, %struct.reg_setting { i32 78, i32 5, i32 255 }, %struct.reg_setting { i32 79, i32 3, i32 255 }, %struct.reg_setting { i32 80, i32 0, i32 255 }, %struct.reg_setting { i32 81, i32 3, i32 255 }, %struct.reg_setting { i32 87, i32 35, i32 255 }, %struct.reg_setting { i32 96, i32 16, i32 240 }, %struct.reg_setting { i32 83, i32 5, i32 255 }, %struct.reg_setting { i32 84, i32 5, i32 255 }, %struct.reg_setting { i32 85, i32 152, i32 255 }, %struct.reg_setting { i32 86, i32 4, i32 255 }] }], [896 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tscs42xx-HiFi\00", [18 x i8] zeroinitializer }, align 32
@tscs42xx_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr @tscs42xx_set_dai_bclk_ratio, ptr @tscs42xx_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tscs42xx_mute_stream, ptr null, ptr null, ptr @tscs42xx_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@tscs42xx_set_dai_bclk_ratio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.346, ptr @.str.347, ptr @.str.3, i32 1239, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported bclk ratio (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tscs42xx_set_dai_bclk_ratio\00", [36 x i8] zeroinitializer }, align 32
@tscs42xx_set_dai_bclk_ratio._entry_ptr = internal global ptr @tscs42xx_set_dai_bclk_ratio._entry, section ".printk_index", align 4
@tscs42xx_set_dai_bclk_ratio._entry.348 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.349, ptr @.str.347, ptr @.str.3, i32 1247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set DAC BCLK ratio (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@tscs42xx_set_dai_bclk_ratio._entry_ptr.350 = internal global ptr @tscs42xx_set_dai_bclk_ratio._entry.348, section ".printk_index", align 4
@tscs42xx_set_dai_bclk_ratio._entry.351 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.352, ptr @.str.347, ptr @.str.3, i32 1254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to set ADC BCLK ratio (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@tscs42xx_set_dai_bclk_ratio._entry_ptr.353 = internal global ptr @tscs42xx_set_dai_bclk_ratio._entry.351, section ".printk_index", align 4
@tscs42xx_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.355, ptr @.str.3, i32 1207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set codec DAI master (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tscs42xx_set_dai_fmt\00", [43 x i8] zeroinitializer }, align 32
@tscs42xx_set_dai_fmt._entry_ptr = internal global ptr @tscs42xx_set_dai_fmt._entry, section ".printk_index", align 4
@tscs42xx_set_dai_fmt._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.355, ptr @.str.3, i32 1213, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported format (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@tscs42xx_set_dai_fmt._entry_ptr.358 = internal global ptr @tscs42xx_set_dai_fmt._entry.356, section ".printk_index", align 4
@dac_mute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.359, ptr @.str.360, ptr @.str.3, i32 1122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to mute DAC (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dac_mute\00", [23 x i8] zeroinitializer }, align 32
@dac_mute._entry_ptr = internal global ptr @dac_mute._entry, section ".printk_index", align 4
@adc_mute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.361, ptr @.str.362, ptr @.str.3, i32 1153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to mute ADC (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adc_mute\00", [23 x i8] zeroinitializer }, align 32
@adc_mute._entry_ptr = internal global ptr @adc_mute._entry, section ".printk_index", align 4
@dac_unmute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.364, ptr @.str.3, i32 1138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to unmute DAC (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dac_unmute\00", [21 x i8] zeroinitializer }, align 32
@dac_unmute._entry_ptr = internal global ptr @dac_unmute._entry, section ".printk_index", align 4
@adc_unmute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.365, ptr @.str.366, ptr @.str.3, i32 1168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to unmute ADC (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adc_unmute\00", [21 x i8] zeroinitializer }, align 32
@adc_unmute._entry_ptr = internal global ptr @adc_unmute._entry, section ".printk_index", align 4
@tscs42xx_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.367, ptr @.str.368, ptr @.str.3, i32 1099, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to setup sample format (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tscs42xx_hw_params\00", [45 x i8] zeroinitializer }, align 32
@tscs42xx_hw_params._entry_ptr = internal global ptr @tscs42xx_hw_params._entry, section ".printk_index", align 4
@tscs42xx_hw_params._entry.369 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.368, ptr @.str.3, i32 1106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to setup sample rate (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@tscs42xx_hw_params._entry_ptr.371 = internal global ptr @tscs42xx_hw_params._entry.369, section ".printk_index", align 4
@setup_sample_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.372, ptr @.str.373, ptr @.str.3, i32 834, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported format width (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"setup_sample_format\00", [44 x i8] zeroinitializer }, align 32
@setup_sample_format._entry_ptr = internal global ptr @setup_sample_format._entry, section ".printk_index", align 4
@setup_sample_format._entry.374 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.375, ptr @.str.373, ptr @.str.3, i32 841, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set sample width (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@setup_sample_format._entry_ptr.376 = internal global ptr @setup_sample_format._entry.374, section ".printk_index", align 4
@setup_sample_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.377, ptr @.str.378, ptr @.str.3, i32 897, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported sample rate %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setup_sample_rate\00", [46 x i8] zeroinitializer }, align 32
@setup_sample_rate._entry_ptr = internal global ptr @setup_sample_rate._entry, section ".printk_index", align 4
@setup_sample_rate._entry.379 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.378, ptr @.str.3, i32 906, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to update register (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@setup_sample_rate._entry_ptr.381 = internal global ptr @setup_sample_rate._entry.379, section ".printk_index", align 4
@setup_sample_rate._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.378, ptr @.str.3, i32 913, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@setup_sample_rate._entry_ptr.383 = internal global ptr @setup_sample_rate._entry.382, section ".printk_index", align 4
@setup_sample_rate._entry.384 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.378, ptr @.str.3, i32 920, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@setup_sample_rate._entry_ptr.385 = internal global ptr @setup_sample_rate._entry.384, section ".printk_index", align 4
@setup_sample_rate._entry.386 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.378, ptr @.str.3, i32 927, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@setup_sample_rate._entry_ptr.387 = internal global ptr @setup_sample_rate._entry.386, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 64, i64 138, i64 142]
@__sancov_gen_cov_switch_values.388 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.389 = internal global [25 x i64] [i64 23, i64 32, i64 512000, i64 705600, i64 1024000, i64 1411200, i64 1536000, i64 2048000, i64 2400000, i64 2822400, i64 3072000, i64 5644800, i64 6144000, i64 12000000, i64 12288000, i64 19200000, i64 22000000, i64 22579200, i64 24000000, i64 24576000, i64 25000000, i64 26000000, i64 27000000, i64 36000000, i64 40000000]
@__sancov_gen_cov_switch_values.390 = internal global [11 x i64] [i64 9, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.391 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 40, i64 64]
@__sancov_gen_cov_switch_values.392 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 6, i64 10, i64 36]
@__sancov_gen_cov_switch_values.393 = internal global [12 x i64] [i64 10, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c"tscs42xx_i2c_driver\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1503, i32 26 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1505, i32 11 }
@___asan_gen_.400 = private unnamed_addr constant [18 x i8] c"tscs42xx_of_match\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1496, i32 34 }
@___asan_gen_.403 = private unnamed_addr constant [16 x i8] c"tscs42xx_i2c_id\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1489, i32 35 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1422, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1434, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1440, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [16 x i8] c"tscs42xx_regmap\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 87, i32 35 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1446, i32 21 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1449, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1457, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1464, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant [15 x i8] c"tscs42xx_patch\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1405, i32 34 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1471, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1475, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1476, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1477, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [23 x i8] c"soc_codec_dev_tscs42xx\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1350, i32 46 }
@___asan_gen_.493 = private unnamed_addr constant [13 x i8] c"tscs42xx_dai\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1385, i32 34 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1482, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1410, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1410, i32 10 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1410, i32 19 }
@___asan_gen_.511 = private unnamed_addr constant [11 x i8] c"norm_addrs\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1366, i32 18 }
@___asan_gen_.514 = private unnamed_addr constant [22 x i8] c"tscs42xx_snd_controls\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 626, i32 38 }
@___asan_gen_.517 = private unnamed_addr constant [18 x i8] c"tscs42xx_intercon\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 467, i32 40 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 628, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [12 x i8] c"hpvol_scale\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 536, i32 8 }
@___asan_gen_.526 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 630, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant [13 x i8] c"spkvol_scale\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 537, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 632, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [13 x i8] c"dacvol_scale\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 538, i32 8 }
@___asan_gen_.540 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 634, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant [13 x i8] c"adcvol_scale\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 539, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 636, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant [12 x i8] c"invol_scale\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 540, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 640, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant [16 x i8] c"mic_boost_scale\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 541, i32 8 }
@___asan_gen_.561 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 645, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant [19 x i8] c"ch_map_select_enum\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 349, i32 30 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 648, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 651, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 653, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 657, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 658, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 659, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 660, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 661, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 662, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 664, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 665, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 666, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 667, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 668, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 669, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 671, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 672, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 674, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 675, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 676, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 677, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 678, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 679, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 681, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 682, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 683, i32 2 }
@___asan_gen_.671 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 684, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 685, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 686, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 688, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 689, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 691, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant [21 x i8] c".compoundliteral.111\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 692, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant [21 x i8] c".compoundliteral.113\00", align 1
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 694, i32 2 }
@___asan_gen_.703 = private unnamed_addr constant [21 x i8] c".compoundliteral.115\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 695, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant [21 x i8] c".compoundliteral.117\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 697, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 699, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 701, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 703, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 704, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 706, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 707, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 709, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 711, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 713, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 715, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 717, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 719, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 720, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 722, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 723, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 725, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 726, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 729, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 730, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 731, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant [21 x i8] c"eq1_band_enable_enum\00", align 1
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 545, i32 30 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 732, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant [21 x i8] c"eq2_band_enable_enum\00", align 1
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 549, i32 30 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 735, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant [25 x i8] c"cle_level_detection_enum\00", align 1
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 553, i32 30 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 737, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant [32 x i8] c"cle_level_detection_window_enum\00", align 1
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 558, i32 30 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 739, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 741, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 743, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 745, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant [13 x i8] c"mugain_scale\00", align 1
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 542, i32 8 }
@___asan_gen_.830 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 747, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant [13 x i8] c"compth_scale\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 543, i32 8 }
@___asan_gen_.837 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 749, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant [22 x i8] c"compressor_ratio_enum\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 587, i32 30 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 750, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 753, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 754, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 755, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 756, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 757, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 760, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 761, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 762, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 763, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant [26 x i8] c"mbc_level_detection_enums\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 563, i32 30 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 765, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 767, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 769, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant [33 x i8] c"mbc_level_detection_window_enums\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 575, i32 30 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 771, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 773, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 776, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 778, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 780, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant [21 x i8] c".compoundliteral.202\00", align 1
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 782, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant [31 x i8] c"dac_mbc1_compressor_ratio_enum\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 591, i32 30 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 784, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 785, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 788, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 790, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 792, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 794, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant [31 x i8] c"dac_mbc2_compressor_ratio_enum\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 595, i32 30 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 796, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant [21 x i8] c".compoundliteral.216\00", align 1
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 797, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant [21 x i8] c".compoundliteral.218\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 800, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant [21 x i8] c".compoundliteral.220\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 802, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant [21 x i8] c".compoundliteral.222\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 804, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant [21 x i8] c".compoundliteral.224\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 806, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant [31 x i8] c"dac_mbc3_compressor_ratio_enum\00", align 1
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 599, i32 30 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 808, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 809, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.982 = private unnamed_addr constant [19 x i8] c"ch_map_select_text\00", align 1
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 345, i32 27 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 346, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 346, i32 12 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 346, i32 29 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 346, i32 46 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 308, i32 4 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 108, i32 4 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 153, i32 5 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 163, i32 4 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 170, i32 4 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 179, i32 4 }
@___asan_gen_.1042 = private unnamed_addr constant [20 x i8] c"eq_band_enable_text\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 510, i32 27 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 511, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 512, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 513, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 514, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 515, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 516, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 517, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant [21 x i8] c"level_detection_text\00", align 1
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 520, i32 27 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 521, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 522, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant [28 x i8] c"level_detection_window_text\00", align 1
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 525, i32 27 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 526, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 527, i32 2 }
@___asan_gen_.1084 = private unnamed_addr constant [22 x i8] c"compressor_ratio_text\00", align 1
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 530, i32 27 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 531, i32 2 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 531, i32 14 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 531, i32 23 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 531, i32 30 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 531, i32 37 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 531, i32 44 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 531, i32 51 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 532, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 532, i32 9 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 532, i32 16 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 532, i32 23 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 532, i32 31 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 532, i32 39 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 532, i32 47 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 532, i32 55 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 533, i32 2 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 533, i32 10 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 533, i32 18 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 533, i32 26 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 533, i32 34 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 533, i32 42 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 409, i32 2 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 413, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 417, i32 2 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 419, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 421, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 422, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 425, i32 2 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 428, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 431, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 432, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 435, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 436, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 437, i32 2 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 438, i32 2 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 439, i32 2 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 440, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 441, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 444, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant [18 x i8] c"left_input_select\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 333, i32 38 }
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 446, i32 2 }
@___asan_gen_.1216 = private unnamed_addr constant [19 x i8] c"right_input_select\00", align 1
@___asan_gen_.1218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 341, i32 38 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 450, i32 2 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 455, i32 2 }
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 459, i32 2 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 460, i32 2 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 461, i32 2 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 462, i32 2 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 463, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 464, i32 2 }
@___asan_gen_.1243 = private unnamed_addr constant [22 x i8] c"tscs42xx_dapm_widgets\00", align 1
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 407, i32 41 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 208, i32 3 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 217, i32 3 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 222, i32 3 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 245, i32 3 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 252, i32 3 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 334, i32 1 }
@___asan_gen_.1282 = private unnamed_addr constant [23 x i8] c"left_input_select_enum\00", align 1
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 329, i32 30 }
@___asan_gen_.1285 = private unnamed_addr constant [18 x i8] c"input_select_text\00", align 1
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 325, i32 27 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 326, i32 2 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 326, i32 12 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 326, i32 22 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 326, i32 32 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 342, i32 1 }
@___asan_gen_.1303 = private unnamed_addr constant [24 x i8] c"right_input_select_enum\00", align 1
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 337, i32 30 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1313, i32 4 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1324, i32 4 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1330, i32 3 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1337, i32 3 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1069, i32 3 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1080, i32 4 }
@___asan_gen_.1348 = private unnamed_addr constant [9 x i8] c"pll_ctls\00", align 1
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 973, i32 29 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1386, i32 10 }
@___asan_gen_.1354 = private unnamed_addr constant [17 x i8] c"tscs42xx_dai_ops\00", align 1
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1267, i32 37 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1239, i32 3 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1246, i32 3 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1253, i32 3 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1206, i32 4 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1213, i32 3 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1121, i32 3 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1152, i32 3 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1137, i32 3 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1167, i32 3 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1098, i32 3 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 1105, i32 3 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 834, i32 3 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 840, i32 3 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 897, i32 3 }
@___asan_gen_.1471 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 905, i32 3 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 912, i32 3 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 919, i32 3 }
@___asan_gen_.1480 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1481 = private constant [31 x i8] c"../sound/soc/codecs/tscs42xx.c\00", align 1
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1481, i32 926, i32 3 }
@llvm.compiler.used = appending global [473 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_tscs42xx_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_tscs42xx__294_1512_tscs42xx_i2c_driver_init6, ptr @adc_mute._entry, ptr @adc_mute._entry_ptr, ptr @adc_unmute._entry, ptr @adc_unmute._entry_ptr, ptr @coeff_ram_put._entry, ptr @coeff_ram_put._entry_ptr, ptr @dac_mute._entry, ptr @dac_mute._entry_ptr, ptr @dac_unmute._entry, ptr @dac_unmute._entry_ptr, ptr @plls_locked._entry, ptr @plls_locked._entry_ptr, ptr @power_down_audio_plls._entry, ptr @power_down_audio_plls._entry.321, ptr @power_down_audio_plls._entry_ptr, ptr @power_down_audio_plls._entry_ptr.322, ptr @power_up_audio_plls._entry, ptr @power_up_audio_plls._entry.313, ptr @power_up_audio_plls._entry.316, ptr @power_up_audio_plls._entry_ptr, ptr @power_up_audio_plls._entry_ptr.315, ptr @power_up_audio_plls._entry_ptr.318, ptr @set_pll_ctl_from_input_freq._entry, ptr @set_pll_ctl_from_input_freq._entry.342, ptr @set_pll_ctl_from_input_freq._entry_ptr, ptr @set_pll_ctl_from_input_freq._entry_ptr.344, ptr @set_sysclk._entry, ptr @set_sysclk._entry.331, ptr @set_sysclk._entry.334, ptr @set_sysclk._entry.337, ptr @set_sysclk._entry_ptr, ptr @set_sysclk._entry_ptr.333, ptr @set_sysclk._entry_ptr.336, ptr @set_sysclk._entry_ptr.339, ptr @setup_sample_format._entry, ptr @setup_sample_format._entry.374, ptr @setup_sample_format._entry_ptr, ptr @setup_sample_format._entry_ptr.376, ptr @setup_sample_rate._entry, ptr @setup_sample_rate._entry.379, ptr @setup_sample_rate._entry.382, ptr @setup_sample_rate._entry.384, ptr @setup_sample_rate._entry.386, ptr @setup_sample_rate._entry_ptr, ptr @setup_sample_rate._entry_ptr.381, ptr @setup_sample_rate._entry_ptr.383, ptr @setup_sample_rate._entry_ptr.385, ptr @setup_sample_rate._entry_ptr.387, ptr @tscs42xx_hw_params._entry, ptr @tscs42xx_hw_params._entry.369, ptr @tscs42xx_hw_params._entry_ptr, ptr @tscs42xx_hw_params._entry_ptr.371, ptr @tscs42xx_i2c_driver_exit, ptr @tscs42xx_i2c_probe._entry, ptr @tscs42xx_i2c_probe._entry.13, ptr @tscs42xx_i2c_probe._entry.16, ptr @tscs42xx_i2c_probe._entry.19, ptr @tscs42xx_i2c_probe._entry.22, ptr @tscs42xx_i2c_probe._entry.30, ptr @tscs42xx_i2c_probe._entry.6, ptr @tscs42xx_i2c_probe._entry.9, ptr @tscs42xx_i2c_probe._entry_ptr, ptr @tscs42xx_i2c_probe._entry_ptr.11, ptr @tscs42xx_i2c_probe._entry_ptr.15, ptr @tscs42xx_i2c_probe._entry_ptr.18, ptr @tscs42xx_i2c_probe._entry_ptr.21, ptr @tscs42xx_i2c_probe._entry_ptr.24, ptr @tscs42xx_i2c_probe._entry_ptr.32, ptr @tscs42xx_i2c_probe._entry_ptr.8, ptr @tscs42xx_set_dai_bclk_ratio._entry, ptr @tscs42xx_set_dai_bclk_ratio._entry.348, ptr @tscs42xx_set_dai_bclk_ratio._entry.351, ptr @tscs42xx_set_dai_bclk_ratio._entry_ptr, ptr @tscs42xx_set_dai_bclk_ratio._entry_ptr.350, ptr @tscs42xx_set_dai_bclk_ratio._entry_ptr.353, ptr @tscs42xx_set_dai_fmt._entry, ptr @tscs42xx_set_dai_fmt._entry.356, ptr @tscs42xx_set_dai_fmt._entry_ptr, ptr @tscs42xx_set_dai_fmt._entry_ptr.358, ptr @write_coeff_ram._entry, ptr @write_coeff_ram._entry.240, ptr @write_coeff_ram._entry.243, ptr @write_coeff_ram._entry.246, ptr @write_coeff_ram._entry_ptr, ptr @write_coeff_ram._entry_ptr.242, ptr @write_coeff_ram._entry_ptr.245, ptr @write_coeff_ram._entry_ptr.248, ptr @tscs42xx_i2c_driver, ptr @.str, ptr @tscs42xx_of_match, ptr @tscs42xx_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @tscs42xx_i2c_probe._key, ptr @tscs42xx_regmap, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @tscs42xx_patch, ptr @.str.23, ptr @tscs42xx_i2c_probe.__key, ptr @.str.25, ptr @tscs42xx_i2c_probe.__key.26, ptr @.str.27, ptr @tscs42xx_i2c_probe.__key.28, ptr @.str.29, ptr @soc_codec_dev_tscs42xx, ptr @tscs42xx_dai, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @init_coeff_ram_cache.norm_addrs, ptr @tscs42xx_snd_controls, ptr @tscs42xx_intercon, ptr @.str.36, ptr @hpvol_scale, ptr @.compoundliteral, ptr @.str.37, ptr @spkvol_scale, ptr @.compoundliteral.38, ptr @.str.39, ptr @dacvol_scale, ptr @.compoundliteral.40, ptr @.str.41, ptr @adcvol_scale, ptr @.compoundliteral.42, ptr @.str.43, ptr @invol_scale, ptr @.compoundliteral.44, ptr @.str.45, ptr @mic_boost_scale, ptr @.compoundliteral.46, ptr @.str.47, ptr @ch_map_select_enum, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.str.108, ptr @.compoundliteral.109, ptr @.str.110, ptr @.compoundliteral.111, ptr @.str.112, ptr @.compoundliteral.113, ptr @.str.114, ptr @.compoundliteral.115, ptr @.str.116, ptr @.compoundliteral.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.str.150, ptr @.compoundliteral.151, ptr @.str.152, ptr @.compoundliteral.153, ptr @.str.154, ptr @.compoundliteral.155, ptr @.str.156, ptr @.compoundliteral.157, ptr @.str.158, ptr @eq1_band_enable_enum, ptr @.str.159, ptr @eq2_band_enable_enum, ptr @.str.160, ptr @cle_level_detection_enum, ptr @.str.161, ptr @cle_level_detection_window_enum, ptr @.str.162, ptr @.compoundliteral.163, ptr @.str.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.str.168, ptr @mugain_scale, ptr @.compoundliteral.169, ptr @.str.170, ptr @compth_scale, ptr @.compoundliteral.171, ptr @.str.172, ptr @compressor_ratio_enum, ptr @.str.173, ptr @.compoundliteral.174, ptr @.str.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.str.179, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.str.185, ptr @.compoundliteral.186, ptr @.str.187, ptr @.compoundliteral.188, ptr @.str.189, ptr @.compoundliteral.190, ptr @.str.191, ptr @mbc_level_detection_enums, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @mbc_level_detection_window_enums, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.compoundliteral.198, ptr @.str.199, ptr @.compoundliteral.200, ptr @.str.201, ptr @.compoundliteral.202, ptr @.str.203, ptr @dac_mbc1_compressor_ratio_enum, ptr @.str.204, ptr @.compoundliteral.205, ptr @.str.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @.compoundliteral.213, ptr @.str.214, ptr @dac_mbc2_compressor_ratio_enum, ptr @.str.215, ptr @.compoundliteral.216, ptr @.str.217, ptr @.compoundliteral.218, ptr @.str.219, ptr @.compoundliteral.220, ptr @.str.221, ptr @.compoundliteral.222, ptr @.str.223, ptr @.compoundliteral.224, ptr @.str.225, ptr @dac_mbc3_compressor_ratio_enum, ptr @.str.226, ptr @.compoundliteral.227, ptr @.str.228, ptr @.compoundliteral.229, ptr @ch_map_select_text, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @eq_band_enable_text, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @level_detection_text, ptr @.str.256, ptr @.str.257, ptr @level_detection_window_text, ptr @.str.258, ptr @.str.259, ptr @compressor_ratio_text, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @left_input_select, ptr @.str.301, ptr @right_input_select, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @tscs42xx_dapm_widgets, ptr @.str.311, ptr @.str.312, ptr @.str.314, ptr @.str.317, ptr @.str.319, ptr @.str.320, ptr @.str.323, ptr @left_input_select_enum, ptr @input_select_text, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @right_input_select_enum, ptr @.str.329, ptr @.str.330, ptr @.str.332, ptr @.str.335, ptr @.str.338, ptr @.str.340, ptr @.str.341, ptr @.str.343, ptr @pll_ctls, ptr @.str.345, ptr @tscs42xx_dai_ops, ptr @.str.346, ptr @.str.347, ptr @.str.349, ptr @.str.352, ptr @.str.354, ptr @.str.355, ptr @.str.357, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.370, ptr @.str.372, ptr @.str.373, ptr @.str.375, ptr @.str.377, ptr @.str.378, ptr @.str.380], section "llvm.metadata"
@0 = internal global [423 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_patch to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_tscs42xx to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_coeff_ram_cache.norm_addrs to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_snd_controls to i32), i32 5040, i32 6304, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_intercon to i32), i32 1612, i32 2016, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpvol_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spkvol_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacvol_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adcvol_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @invol_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_boost_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_map_select_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.111 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.113 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.115 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.117 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq1_band_enable_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq2_band_enable_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cle_level_detection_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cle_level_detection_window_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mugain_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compth_scale to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compressor_ratio_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbc_level_detection_enums to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbc_level_detection_window_enums to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.202 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_mbc1_compressor_ratio_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_mbc2_compressor_ratio_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.216 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.220 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.222 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.224 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_mbc3_compressor_ratio_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_map_select_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coeff_ram_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_coeff_ram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_coeff_ram._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_coeff_ram._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_coeff_ram._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_band_enable_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @level_detection_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @level_detection_window_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compressor_ratio_text to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_input_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_input_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_dapm_widgets to i32), i32 4860, i32 6048, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_up_audio_plls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_up_audio_plls._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_up_audio_plls._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_down_audio_plls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_down_audio_plls._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_input_select_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_select_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_input_select_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sysclk._entry.331 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sysclk._entry.334 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_sysclk._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pll_ctl_from_input_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_pll_ctl_from_input_freq._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ctls to i32), i32 3680, i32 4576, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_set_dai_bclk_ratio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_set_dai_bclk_ratio._entry.348 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_set_dai_bclk_ratio._entry.351 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_set_dai_fmt._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_mute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_unmute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_unmute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tscs42xx_hw_params._entry.369 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_sample_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_sample_format._entry.374 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_sample_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_sample_rate._entry.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_sample_rate._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_sample_rate._entry.384 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_sample_rate._entry.386 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1480 to i32), i32 ptrtoint (ptr @___asan_gen_.1481 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tscs42xx_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tscs42xx_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tscs42xx_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tscs42xx_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tscs42xx_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 916, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef -12) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %sysclk = getelementptr inbounds %struct.tscs42xx, ptr %call.i, i32 0, i32 8
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.33) #8
  %1 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %sysclk, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else:                                          ; preds = %if.end
  %cmp9.not = icmp eq ptr %call3, inttoptr (i32 -2 to ptr)
  br i1 %cmp9.not, label %for.inc, label %if.else.if.then10_crit_edge

if.else.if.then10_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %if.else.2.if.then10_crit_edge, %if.else.1.if.then10_crit_edge, %if.else.if.then10_crit_edge
  %call3.lcssa146 = phi ptr [ %call3, %if.else.if.then10_crit_edge ], [ %call3.1, %if.else.1.if.then10_crit_edge ], [ %call3.2, %if.else.2.if.then10_crit_edge ]
  %2 = ptrtoint ptr %call3.lcssa146 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %2) #11
  br label %cleanup

for.inc:                                          ; preds = %if.else
  %call3.1 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.34) #8
  %3 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3.1, ptr %sysclk, align 4
  %cmp.i.1 = icmp ugt ptr %call3.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.else.1, label %for.inc.if.end25_crit_edge

for.inc.if.end25_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else.1:                                        ; preds = %for.inc
  %cmp9.not.1 = icmp eq ptr %call3.1, inttoptr (i32 -2 to ptr)
  br i1 %cmp9.not.1, label %for.inc.1, label %if.else.1.if.then10_crit_edge

if.else.1.if.then10_crit_edge:                    ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

for.inc.1:                                        ; preds = %if.else.1
  %call3.2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.35) #8
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3.2, ptr %sysclk, align 4
  %cmp.i.2 = icmp ugt ptr %call3.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2, label %if.else.2, label %for.inc.1.if.end25_crit_edge

for.inc.1.if.end25_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else.2:                                        ; preds = %for.inc.1
  %cmp9.not.2 = icmp eq ptr %call3.2, inttoptr (i32 -2 to ptr)
  br i1 %cmp9.not.2, label %if.then20, label %if.else.2.if.then10_crit_edge

if.else.2.if.then10_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then20:                                        ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef -22) #11
  br label %cleanup

if.end25:                                         ; preds = %for.inc.1.if.end25_crit_edge, %for.inc.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %src.0145.lcssa = phi i32 [ 0, %if.end.if.end25_crit_edge ], [ 1, %for.inc.if.end25_crit_edge ], [ 2, %for.inc.1.if.end25_crit_edge ]
  %sysclk_src_id = getelementptr inbounds %struct.tscs42xx, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %sysclk_src_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %src.0145.lcssa, ptr %sysclk_src_id, align 4
  %call26 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @tscs42xx_regmap, ptr noundef nonnull @tscs42xx_i2c_probe._key, ptr noundef nonnull @.str.12) #8
  %regmap = getelementptr inbounds %struct.tscs42xx, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call26, ptr %regmap, align 4
  %cmp.i134 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %if.then29, label %if.end36

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %call26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %7) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end25
  %coeff_ram1.i = getelementptr inbounds %struct.tscs42xx, ptr %call.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end36
  %i.05.i = phi i32 [ 0, %if.end36 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [45 x i8], ptr @init_coeff_ram_cache.norm_addrs, i32 0, i32 %i.05.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = mul nuw nsw i32 %conv.i, 3
  %sub.i = add nuw nsw i32 %10, 2
  %arrayidx2.i = getelementptr i8, ptr %coeff_ram1.i, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 64, ptr %arrayidx2.i, align 1
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 45
  br i1 %exitcond.not.i, label %init_coeff_ram_cache.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

init_coeff_ram_cache.exit:                        ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #8
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %reg.i, align 4, !annotation !665
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i135 = call i32 @regmap_read(ptr noundef %14, i32 noundef 126, ptr noundef nonnull %reg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp.i136 = icmp slt i32 %call.i135, 0
  br i1 %cmp.i136, label %init_coeff_ram_cache.exit.part_is_valid.exit.thread_crit_edge, label %if.end.i

init_coeff_ram_cache.exit.part_is_valid.exit.thread_crit_edge: ; preds = %init_coeff_ram_cache.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %part_is_valid.exit.thread

if.end.i:                                         ; preds = %init_coeff_ram_cache.exit
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg.i, align 4
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %18, i32 noundef 125, ptr noundef nonnull %reg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.part_is_valid.exit.thread_crit_edge, label %part_is_valid.exit

if.end.i.part_is_valid.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %part_is_valid.exit.thread

part_is_valid.exit.thread:                        ; preds = %if.end.i.part_is_valid.exit.thread_crit_edge, %init_coeff_ram_cache.exit.part_is_valid.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call2.i, %if.end.i.part_is_valid.exit.thread_crit_edge ], [ %call.i135, %init_coeff_ram_cache.exit.part_is_valid.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #8
  br label %do.end42

part_is_valid.exit:                               ; preds = %if.end.i
  %shl.i = shl i32 %16, 8
  %19 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %20, %shl.i
  %or.off.i = add i32 %or.i, -19059
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %or.off.i)
  %switch.i = icmp ult i32 %or.off.i, 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #8
  br i1 %switch.i, label %if.end44, label %part_is_valid.exit.do.end42_crit_edge

part_is_valid.exit.do.end42_crit_edge:            ; preds = %part_is_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end42

do.end42:                                         ; preds = %part_is_valid.exit.do.end42_crit_edge, %part_is_valid.exit.thread
  %retval.0.i140 = phi i32 [ %retval.0.i.ph, %part_is_valid.exit.thread ], [ 0, %part_is_valid.exit.do.end42_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i140) #11
  br label %cleanup

if.end44:                                         ; preds = %part_is_valid.exit
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call46 = call i32 @regmap_write(ptr noundef %22, i32 noundef 128, i32 noundef 133) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %if.end53

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call46) #11
  br label %cleanup

if.end53:                                         ; preds = %if.end44
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call55 = call i32 @regmap_register_patch(ptr noundef %24, ptr noundef nonnull @tscs42xx_patch, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end60, label %do.body63

do.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call55) #11
  br label %cleanup

do.body63:                                        ; preds = %if.end53
  %audio_params_lock = getelementptr inbounds %struct.tscs42xx, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %audio_params_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @tscs42xx_i2c_probe.__key) #8
  %coeff_ram_lock = getelementptr inbounds %struct.tscs42xx, ptr %call.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %coeff_ram_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @tscs42xx_i2c_probe.__key.26) #8
  %pll_lock = getelementptr inbounds %struct.tscs42xx, ptr %call.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %pll_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @tscs42xx_i2c_probe.__key.28) #8
  %call73 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_codec_dev_tscs42xx, ptr noundef nonnull @tscs42xx_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.body63.cleanup_crit_edge, label %do.end78

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end78:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call73) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end78, %do.body63.cleanup_crit_edge, %do.end60, %do.end51, %do.end42, %if.then29, %if.then20, %if.then10, %if.then
  %retval.0 = phi i32 [ %2, %if.then10 ], [ -22, %if.then20 ], [ %7, %if.then29 ], [ -19, %do.end42 ], [ %call46, %do.end51 ], [ %call55, %do.end60 ], [ %call73, %do.end78 ], [ -12, %if.then ], [ 0, %do.body63.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tscs42xx_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 58, label %entry.return_crit_edge
    i32 59, label %entry.return_crit_edge1
    i32 60, label %entry.return_crit_edge2
    i32 61, label %entry.return_crit_edge3
    i32 62, label %entry.return_crit_edge4
    i32 63, label %entry.return_crit_edge5
    i32 138, label %entry.return_crit_edge6
    i32 64, label %entry.return_crit_edge7
    i32 142, label %entry.return_crit_edge8
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tscs42xx_precious(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 6
  ret i1 %switch
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tscs42xx_probe(ptr noundef %component) #2 align 64 {
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
  %sysclk_src_id.i = getelementptr inbounds %struct.tscs42xx, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %sysclk_src_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sysclk_src_id.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.388)
  switch i32 %5, label %do.end13.i [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 1, label %entry.sw.bb.i_crit_edge7
    i32 2, label %sw.bb2.i
  ]

entry.sw.bb.i_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge7
  %call1.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 143, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.329, i32 noundef %call1.i) #11
  br label %set_sysclk.exit

sw.bb2.i:                                         ; preds = %entry
  %call3.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 143, i32 noundef 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %do.end8.i, label %sw.bb2.i.sw.epilog.i_crit_edge

sw.bb2.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

do.end8.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.332, i32 noundef %call3.i) #11
  br label %set_sysclk.exit

do.end13.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.335) #11
  br label %set_sysclk.exit

sw.epilog.i:                                      ; preds = %sw.bb2.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %sysclk.i = getelementptr inbounds %struct.tscs42xx, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sysclk.i, align 4
  %call15.i = tail call i32 @clk_get_rate(ptr noundef %12) #8
  %13 = zext i32 %call15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.389)
  switch i32 %call15.i, label %if.then.i.i [
    i32 1411200, label %sw.epilog.i.get_pll_ctl.exit.i.i_crit_edge
    i32 1536000, label %for.end.fold.split.i.i.i
    i32 2822400, label %for.end.fold.split8.i.i.i
    i32 3072000, label %for.end.fold.split9.i.i.i
    i32 5644800, label %for.end.fold.split10.i.i.i
    i32 6144000, label %for.end.fold.split11.i.i.i
    i32 12000000, label %for.end.fold.split12.i.i.i
    i32 19200000, label %for.end.fold.split13.i.i.i
    i32 22000000, label %for.end.fold.split14.i.i.i
    i32 22579200, label %for.end.fold.split15.i.i.i
    i32 24000000, label %for.end.fold.split16.i.i.i
    i32 24576000, label %for.end.fold.split17.i.i.i
    i32 27000000, label %for.end.fold.split18.i.i.i
    i32 36000000, label %for.end.fold.split19.i.i.i
    i32 25000000, label %for.end.fold.split20.i.i.i
    i32 26000000, label %for.end.fold.split21.i.i.i
    i32 12288000, label %for.end.fold.split22.i.i.i
    i32 40000000, label %for.end.fold.split23.i.i.i
    i32 512000, label %for.end.fold.split24.i.i.i
    i32 705600, label %for.end.fold.split25.i.i.i
    i32 1024000, label %for.end.fold.split26.i.i.i
    i32 2048000, label %for.end.fold.split27.i.i.i
    i32 2400000, label %for.end.fold.split28.i.i.i
  ]

sw.epilog.i.get_pll_ctl.exit.i.i_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split.i.i.i:                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split8.i.i.i:                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split9.i.i.i:                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split10.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split11.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split12.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split13.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split14.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split15.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split16.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split17.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split18.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split19.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split20.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split21.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split22.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split23.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split24.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split25.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split26.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split27.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

for.end.fold.split28.i.i.i:                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_pll_ctl.exit.i.i

get_pll_ctl.exit.i.i:                             ; preds = %for.end.fold.split28.i.i.i, %for.end.fold.split27.i.i.i, %for.end.fold.split26.i.i.i, %for.end.fold.split25.i.i.i, %for.end.fold.split24.i.i.i, %for.end.fold.split23.i.i.i, %for.end.fold.split22.i.i.i, %for.end.fold.split21.i.i.i, %for.end.fold.split20.i.i.i, %for.end.fold.split19.i.i.i, %for.end.fold.split18.i.i.i, %for.end.fold.split17.i.i.i, %for.end.fold.split16.i.i.i, %for.end.fold.split15.i.i.i, %for.end.fold.split14.i.i.i, %for.end.fold.split13.i.i.i, %for.end.fold.split12.i.i.i, %for.end.fold.split11.i.i.i, %for.end.fold.split10.i.i.i, %for.end.fold.split9.i.i.i, %for.end.fold.split8.i.i.i, %for.end.fold.split.i.i.i, %sw.epilog.i.get_pll_ctl.exit.i.i_crit_edge
  %pll_ctl.0.i.i.i = phi ptr [ @pll_ctls, %sw.epilog.i.get_pll_ctl.exit.i.i_crit_edge ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 1), %for.end.fold.split.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 2), %for.end.fold.split8.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 3), %for.end.fold.split9.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 4), %for.end.fold.split10.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 5), %for.end.fold.split11.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 6), %for.end.fold.split12.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 7), %for.end.fold.split13.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 8), %for.end.fold.split14.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 9), %for.end.fold.split15.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 10), %for.end.fold.split16.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 11), %for.end.fold.split17.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 12), %for.end.fold.split18.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 13), %for.end.fold.split19.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 14), %for.end.fold.split20.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 15), %for.end.fold.split21.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 16), %for.end.fold.split22.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 17), %for.end.fold.split23.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 18), %for.end.fold.split24.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 19), %for.end.fold.split25.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 20), %for.end.fold.split26.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 21), %for.end.fold.split27.i.i.i ], [ getelementptr inbounds ([23 x %struct.pll_ctl], ptr @pll_ctls, i32 0, i32 22), %for.end.fold.split28.i.i.i ]
  br label %for.body.i.i

if.then.i.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.340, i32 noundef %call15.i, i32 noundef -22) #11
  br label %do.end21.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.031.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 13
  br i1 %exitcond.not.i.i, label %for.cond.i.i.set_sysclk.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.set_sysclk.exit_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %set_sysclk.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %get_pll_ctl.exit.i.i
  %i.031.i.i = phi i32 [ 0, %get_pll_ctl.exit.i.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.pll_ctl, ptr %pll_ctl.0.i.i.i, i32 0, i32 1, i32 %i.031.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %mask.i.i = getelementptr %struct.pll_ctl, ptr %pll_ctl.0.i.i.i, i32 0, i32 1, i32 %i.031.i.i, i32 2
  %18 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask.i.i, align 4
  %val.i.i = getelementptr %struct.pll_ctl, ptr %pll_ctl.0.i.i.i, i32 0, i32 1, i32 %i.031.i.i, i32 1
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i, align 4
  %call5.i.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %17, i32 noundef %19, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp6.i.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp6.i.i, label %do.end10.i.i, label %for.cond.i.i

do.end10.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.343, i32 noundef %call5.i.i) #11
  br label %do.end21.i

do.end21.i:                                       ; preds = %do.end10.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %if.then.i.i ], [ %call5.i.i, %do.end10.i.i ]
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.338, i32 noundef %retval.0.i.ph.i) #11
  br label %set_sysclk.exit

set_sysclk.exit:                                  ; preds = %do.end21.i, %for.cond.i.i.set_sysclk.exit_crit_edge, %do.end13.i, %do.end8.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end13.i ], [ %call3.i, %do.end8.i ], [ %retval.0.i.ph.i, %do.end21.i ], [ %call1.i, %do.end.i ], [ 0, %for.cond.i.i.set_sysclk.exit_crit_edge ]
  ret i32 %retval.0.i
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bytes_info_ext(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %bytes_ext = getelementptr inbounds %struct.coeff_ram_ctl, ptr %2, i32 0, i32 1
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
define internal i32 @coeff_ram_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
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
  %bytes_ext = getelementptr inbounds %struct.coeff_ram_ctl, ptr %8, i32 0, i32 1
  %coeff_ram_lock = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %coeff_ram_lock, i32 noundef 0) #8
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %mul = mul i32 %10, 3
  %arrayidx = getelementptr %struct.tscs42xx, ptr %5, i32 0, i32 3, i32 %mul
  %11 = ptrtoint ptr %bytes_ext to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bytes_ext, align 4
  %13 = call ptr @memcpy(ptr %value, ptr %arrayidx, i32 %12)
  tail call void @mutex_unlock(ptr noundef %coeff_ram_lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @coeff_ram_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %bytes_ext = getelementptr inbounds %struct.coeff_ram_ctl, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bytes_ext to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes_ext, align 4
  %coeff_ram_lock = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %coeff_ram_lock, i32 noundef 0) #8
  %coeff_ram_synced = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %coeff_ram_synced to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %coeff_ram_synced, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 4
  %mul = mul i32 %13, 3
  %arrayidx = getelementptr %struct.tscs42xx, ptr %5, i32 0, i32 3, i32 %mul
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %14 = ptrtoint ptr %bytes_ext to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bytes_ext, align 4
  %16 = call ptr @memcpy(ptr %arrayidx, ptr %value, i32 %15)
  %pll_lock = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %pll_lock, i32 noundef 0) #8
  %call.i = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 142) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.do.end.i_crit_edge, label %if.else.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.end4.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %call.lcssa.i = phi i32 [ %call.i, %entry.do.end.i_crit_edge ], [ %call.1.i, %if.end4.i.do.end.i_crit_edge ]
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.236, i32 noundef %call.lcssa.i) #11
  br label %exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.not.i, label %if.end4.i, label %if.else.i.if.then_crit_edge

if.else.i.if.then_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end4.i:                                        ; preds = %if.else.i
  tail call void @msleep(i32 noundef 20) #8
  %call.1.i = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 142) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp.1.i = icmp slt i32 %call.1.i, 0
  br i1 %cmp.1.i, label %if.end4.i.do.end.i_crit_edge, label %if.else.1.i

if.end4.i.do.end.i_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.else.1.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %cmp2.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %cmp2.not.1.i, label %if.end4.1.i, label %if.else.1.i.if.then_crit_edge

if.else.1.i.if.then_crit_edge:                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end4.1.i:                                      ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 20) #8
  br label %exit

if.then:                                          ; preds = %if.else.1.i.if.then_crit_edge, %if.else.i.if.then_crit_edge
  %coeff_ram = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 3
  %div = sdiv i32 %10, 3
  %19 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %8, align 4
  %call7 = tail call fastcc i32 @write_coeff_ram(ptr noundef %1, ptr noundef %coeff_ram, i32 noundef %20, i32 noundef %div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.234, i32 noundef %call7) #11
  br label %exit

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %coeff_ram_synced to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %coeff_ram_synced, align 2
  br label %exit

exit:                                             ; preds = %if.end, %do.end, %if.end4.1.i, %do.end.i
  %ret.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end ], [ 0, %do.end.i ], [ 0, %if.end4.1.i ]
  tail call void @mutex_unlock(ptr noundef %pll_lock) #8
  tail call void @mutex_unlock(ptr noundef %coeff_ram_lock) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_put(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_coeff_ram(ptr noundef %component, ptr noundef %coeff_ram, i32 noundef %addr, i32 noundef %coeff_cnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %coeff_cnt)
  %cmp67.not = icmp eq i32 %coeff_cnt, 0
  br i1 %cmp67.not, label %entry.cleanup_crit_edge, label %for.cond1.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.tscs42xx, ptr %3, i32 0, i32 7
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc32.for.cond1.preheader_crit_edge, %for.cond1.preheader.lr.ph
  %cnt.069 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc33, %for.inc32.for.cond1.preheader_crit_edge ]
  %addr.addr.068 = phi i32 [ %addr, %for.cond1.preheader.lr.ph ], [ %inc34, %for.inc32.for.cond1.preheader_crit_edge ]
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %for.cond1.preheader.do.end_crit_edge, label %if.end

for.cond1.preheader.do.end_crit_edge:             ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.8.do.end_crit_edge, %for.inc.7.do.end_crit_edge, %for.inc.6.do.end_crit_edge, %for.inc.5.do.end_crit_edge, %for.inc.4.do.end_crit_edge, %for.inc.3.do.end_crit_edge, %for.inc.2.do.end_crit_edge, %for.inc.1.do.end_crit_edge, %for.inc.do.end_crit_edge, %for.cond1.preheader.do.end_crit_edge
  %call4.lcssa = phi i32 [ %call4, %for.cond1.preheader.do.end_crit_edge ], [ %call4.1, %for.inc.do.end_crit_edge ], [ %call4.2, %for.inc.1.do.end_crit_edge ], [ %call4.3, %for.inc.2.do.end_crit_edge ], [ %call4.4, %for.inc.3.do.end_crit_edge ], [ %call4.5, %for.inc.4.do.end_crit_edge ], [ %call4.6, %for.inc.5.do.end_crit_edge ], [ %call4.7, %for.inc.6.do.end_crit_edge ], [ %call4.8, %for.inc.7.do.end_crit_edge ], [ %call4.9, %for.inc.8.do.end_crit_edge ]
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.238, i32 noundef %call4.lcssa) #11
  br label %cleanup

if.end:                                           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %for.inc

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc:                                          ; preds = %if.end
  %call4.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp slt i32 %call4.1, 0
  br i1 %cmp5.1, label %for.inc.do.end_crit_edge, label %if.end.1

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool.not.1, label %if.end.1.if.end14_crit_edge, label %for.inc.1

if.end.1.if.end14_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.1:                                        ; preds = %if.end.1
  %call4.2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp slt i32 %call4.2, 0
  br i1 %cmp5.2, label %for.inc.1.do.end_crit_edge, label %if.end.2

for.inc.1.do.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool.not.2, label %if.end.2.if.end14_crit_edge, label %for.inc.2

if.end.2.if.end14_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.2:                                        ; preds = %if.end.2
  %call4.3 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %cmp5.3 = icmp slt i32 %call4.3, 0
  br i1 %cmp5.3, label %for.inc.2.do.end_crit_edge, label %if.end.3

for.inc.2.do.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %tobool.not.3 = icmp eq i32 %call4.3, 0
  br i1 %tobool.not.3, label %if.end.3.if.end14_crit_edge, label %for.inc.3

if.end.3.if.end14_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.3:                                        ; preds = %if.end.3
  %call4.4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %cmp5.4 = icmp slt i32 %call4.4, 0
  br i1 %cmp5.4, label %for.inc.3.do.end_crit_edge, label %if.end.4

for.inc.3.do.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %tobool.not.4 = icmp eq i32 %call4.4, 0
  br i1 %tobool.not.4, label %if.end.4.if.end14_crit_edge, label %for.inc.4

if.end.4.if.end14_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.4:                                        ; preds = %if.end.4
  %call4.5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.5)
  %cmp5.5 = icmp slt i32 %call4.5, 0
  br i1 %cmp5.5, label %for.inc.4.do.end_crit_edge, label %if.end.5

for.inc.4.do.end_crit_edge:                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.5)
  %tobool.not.5 = icmp eq i32 %call4.5, 0
  br i1 %tobool.not.5, label %if.end.5.if.end14_crit_edge, label %for.inc.5

if.end.5.if.end14_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.5:                                        ; preds = %if.end.5
  %call4.6 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.6)
  %cmp5.6 = icmp slt i32 %call4.6, 0
  br i1 %cmp5.6, label %for.inc.5.do.end_crit_edge, label %if.end.6

for.inc.5.do.end_crit_edge:                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.6)
  %tobool.not.6 = icmp eq i32 %call4.6, 0
  br i1 %tobool.not.6, label %if.end.6.if.end14_crit_edge, label %for.inc.6

if.end.6.if.end14_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.6:                                        ; preds = %if.end.6
  %call4.7 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.7)
  %cmp5.7 = icmp slt i32 %call4.7, 0
  br i1 %cmp5.7, label %for.inc.6.do.end_crit_edge, label %if.end.7

for.inc.6.do.end_crit_edge:                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.7)
  %tobool.not.7 = icmp eq i32 %call4.7, 0
  br i1 %tobool.not.7, label %if.end.7.if.end14_crit_edge, label %for.inc.7

if.end.7.if.end14_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.7:                                        ; preds = %if.end.7
  %call4.8 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.8)
  %cmp5.8 = icmp slt i32 %call4.8, 0
  br i1 %cmp5.8, label %for.inc.7.do.end_crit_edge, label %if.end.8

for.inc.7.do.end_crit_edge:                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.8:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.8)
  %tobool.not.8 = icmp eq i32 %call4.8, 0
  br i1 %tobool.not.8, label %if.end.8.if.end14_crit_edge, label %for.inc.8

if.end.8.if.end14_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.inc.8:                                        ; preds = %if.end.8
  %call4.9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.9)
  %cmp5.9 = icmp slt i32 %call4.9, 0
  br i1 %cmp5.9, label %for.inc.8.do.end_crit_edge, label %if.end.9

for.inc.8.do.end_crit_edge:                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end.9:                                         ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.9)
  %tobool.not.9 = icmp eq i32 %call4.9, 0
  br i1 %tobool.not.9, label %if.end.9.if.end14_crit_edge, label %if.then9

if.end.9.if.end14_crit_edge:                      ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then9:                                         ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.241, i32 noundef -5) #11
  br label %cleanup

if.end14:                                         ; preds = %if.end.9.if.end14_crit_edge, %if.end.8.if.end14_crit_edge, %if.end.7.if.end14_crit_edge, %if.end.6.if.end14_crit_edge, %if.end.5.if.end14_crit_edge, %if.end.4.if.end14_crit_edge, %if.end.3.if.end14_crit_edge, %if.end.2.if.end14_crit_edge, %if.end.1.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 64, i32 noundef %addr.addr.068) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.244, i32 noundef %call15) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %mul = mul i32 %addr.addr.068, 3
  %arrayidx = getelementptr i8, ptr %coeff_ram, i32 %mul
  %call24 = tail call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef 58, ptr noundef %arrayidx, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end29, label %for.inc32

do.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.247, i32 noundef %call24) #11
  br label %cleanup

for.inc32:                                        ; preds = %if.end22
  %inc33 = add nuw i32 %cnt.069, 1
  %inc34 = add i32 %addr.addr.068, 1
  %exitcond.not = icmp eq i32 %inc33, %coeff_cnt
  br i1 %exitcond.not, label %for.inc32.cleanup_crit_edge, label %for.inc32.for.cond1.preheader_crit_edge

for.inc32.for.cond1.preheader_crit_edge:          ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.inc32.cleanup_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc32.cleanup_crit_edge, %do.end29, %do.end20, %if.then9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.lcssa, %do.end ], [ -5, %if.then9 ], [ %call15, %do.end20 ], [ %call24, %do.end29 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dapm_vref_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 20) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pll_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %dev.i.i4 = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i4, align 4
  %driver_data.i.i.i5 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i5, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %samplerate.i = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %samplerate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %samplerate.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.390)
  switch i32 %7, label %sw.default.i [
    i32 11025, label %if.then.sw.epilog.i_crit_edge
    i32 22050, label %if.then.sw.epilog.i_crit_edge11
    i32 44100, label %if.then.sw.epilog.i_crit_edge12
    i32 88200, label %if.then.sw.epilog.i_crit_edge13
    i32 8000, label %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge
    i32 16000, label %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge14
    i32 32000, label %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge15
    i32 48000, label %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge16
    i32 96000, label %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge17
  ]

if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge17: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_rate_to_pll_freq_out.exit.thread34.i

if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge16: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_rate_to_pll_freq_out.exit.thread34.i

if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge15: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_rate_to_pll_freq_out.exit.thread34.i

if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge14: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_rate_to_pll_freq_out.exit.thread34.i

if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sample_rate_to_pll_freq_out.exit.thread34.i

if.then.sw.epilog.i_crit_edge13:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.sw.epilog.i_crit_edge12:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.sw.epilog.i_crit_edge11:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sample_rate_to_pll_freq_out.exit.thread34.i:      ; preds = %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge, %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge14, %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge15, %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge16, %if.then.sample_rate_to_pll_freq_out.exit.thread34.i_crit_edge17
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.311, i32 noundef -22) #11
  br label %if.end

sw.epilog.i:                                      ; preds = %sample_rate_to_pll_freq_out.exit.thread34.i, %if.then.sw.epilog.i_crit_edge, %if.then.sw.epilog.i_crit_edge11, %if.then.sw.epilog.i_crit_edge12, %if.then.sw.epilog.i_crit_edge13
  %val.0.i = phi i32 [ 2, %sample_rate_to_pll_freq_out.exit.thread34.i ], [ 4, %if.then.sw.epilog.i_crit_edge ], [ 4, %if.then.sw.epilog.i_crit_edge11 ], [ 4, %if.then.sw.epilog.i_crit_edge12 ], [ 4, %if.then.sw.epilog.i_crit_edge13 ]
  %pll_lock.i = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %pll_lock.i, i32 noundef 0) #8
  %call3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 97, i32 noundef %val.0.i, i32 noundef %val.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end6.i, label %if.end.i

do.end6.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.314, i32 noundef %call3.i) #11
  br label %exit.i

if.end.i:                                         ; preds = %sw.epilog.i
  %call.i.i = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 142) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.do.end.i.i_crit_edge, label %if.else.i.i

if.end.i.do.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end4.i.i.do.end.i.i_crit_edge, %if.end.i.do.end.i.i_crit_edge
  %call.lcssa.i.i = phi i32 [ %call.i.i, %if.end.i.do.end.i.i_crit_edge ], [ %call.1.i.i, %if.end4.i.i.do.end.i.i_crit_edge ]
  %11 = ptrtoint ptr %dev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.236, i32 noundef %call.lcssa.i.i) #11
  br label %do.end12.i

if.else.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp2.not.i.i, label %if.end4.i.i, label %if.else.i.i.exit.i_crit_edge

if.else.i.i.exit.i_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end4.i.i:                                      ; preds = %if.else.i.i
  tail call void @msleep(i32 noundef 20) #8
  %call.1.i.i = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 142) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp.1.i.i = icmp slt i32 %call.1.i.i, 0
  br i1 %cmp.1.i.i, label %if.end4.i.i.do.end.i.i_crit_edge, label %if.else.1.i.i

if.end4.i.i.do.end.i.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i.i

if.else.1.i.i:                                    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp2.not.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %cmp2.not.1.i.i, label %if.end4.1.i.i, label %if.else.1.i.i.exit.i_crit_edge

if.else.1.i.i.exit.i_crit_edge:                   ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.i

if.end4.1.i.i:                                    ; preds = %if.else.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 20) #8
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.end4.1.i.i, %do.end.i.i
  %13 = ptrtoint ptr %dev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.317) #11
  br label %exit.i

exit.i:                                           ; preds = %do.end12.i, %if.else.1.i.i.exit.i_crit_edge, %if.else.i.i.exit.i_crit_edge, %do.end6.i
  %ret.0.i = phi i32 [ %call3.i, %do.end6.i ], [ -42, %do.end12.i ], [ 0, %if.else.i.i.exit.i_crit_edge ], [ 0, %if.else.1.i.i.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %pll_lock.i) #8
  br label %if.end

if.else:                                          ; preds = %entry
  %pll_lock.i6 = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %pll_lock.i6, i32 noundef 0) #8
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 97, i32 noundef 2, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i7 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i7, label %if.else.exit.sink.split.i_crit_edge, label %if.end.i8

if.else.exit.sink.split.i_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

if.end.i8:                                        ; preds = %if.else
  %call2.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 97, i32 noundef 4, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i8.exit.sink.split.i_crit_edge, label %if.end.i8.power_down_audio_plls.exit_crit_edge

if.end.i8.power_down_audio_plls.exit_crit_edge:   ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %power_down_audio_plls.exit

if.end.i8.exit.sink.split.i_crit_edge:            ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.sink.split.i

exit.sink.split.i:                                ; preds = %if.end.i8.exit.sink.split.i_crit_edge, %if.else.exit.sink.split.i_crit_edge
  %call2.sink.i = phi i32 [ %call1.i, %if.else.exit.sink.split.i_crit_edge ], [ %call2.i, %if.end.i8.exit.sink.split.i_crit_edge ]
  %15 = ptrtoint ptr %dev.i.i4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i.i4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.319, i32 noundef %call2.sink.i) #11
  br label %power_down_audio_plls.exit

power_down_audio_plls.exit:                       ; preds = %exit.sink.split.i, %if.end.i8.power_down_audio_plls.exit_crit_edge
  %ret.0.i9 = phi i32 [ 0, %if.end.i8.power_down_audio_plls.exit_crit_edge ], [ %call2.sink.i, %exit.sink.split.i ]
  tail call void @mutex_unlock(ptr noundef %pll_lock.i6) #8
  br label %if.end

if.end:                                           ; preds = %power_down_audio_plls.exit, %exit.i, %sw.default.i
  %ret.0 = phi i32 [ %ret.0.i9, %power_down_audio_plls.exit ], [ -22, %sw.default.i ], [ %ret.0.i, %exit.i ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
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
  %coeff_ram_lock = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %coeff_ram_lock, i32 noundef 0) #8
  %coeff_ram_synced = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %coeff_ram_synced to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %coeff_ram_synced, align 2, !range !666
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %coeff_ram = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 3
  %call2 = tail call fastcc i32 @write_coeff_ram(ptr noundef %add.ptr.i, ptr noundef %coeff_ram, i32 noundef 0, i32 noundef 206)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.exit_crit_edge, label %if.end

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %coeff_ram_synced to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %coeff_ram_synced, align 2
  br label %exit

exit:                                             ; preds = %if.end, %if.then.exit_crit_edge, %entry.exit_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then.exit_crit_edge ], [ 0, %if.end ], [ 0, %entry.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %coeff_ram_lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dapm_micb_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 20) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tscs42xx_set_dai_bclk_ratio(ptr nocapture noundef readonly %codec_dai, i32 noundef %ratio) #2 align 64 {
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
  %6 = zext i32 %ratio to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.391)
  switch i32 %ratio, label %do.end [
    i32 32, label %entry.sw.epilog_crit_edge
    i32 40, label %sw.bb2
    i32 64, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.346, i32 noundef 0) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %value.0 = phi i32 [ 192, %sw.bb3 ], [ 128, %sw.bb2 ], [ 64, %entry.sw.epilog_crit_edge ]
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 25, i32 noundef 192, i32 noundef %value.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end7, label %if.end

do.end7:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.349, i32 noundef %call4) #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 23, i32 noundef 192, i32 noundef %value.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.352, i32 noundef %call9) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %audio_params_lock = getelementptr inbounds %struct.tscs42xx, ptr %5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %audio_params_lock, i32 noundef 0) #8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %ratio, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %audio_params_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end14, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call4, %do.end7 ], [ %call9, %do.end14 ], [ 0, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tscs42xx_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %and)
  %cond = icmp eq i32 %and, 4096
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 19, i32 noundef 32, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.354, i32 noundef %call) #11
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.357, i32 noundef -22) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %do.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %sw.default ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tscs42xx_mute_stream(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stream)
  %cmp5 = icmp eq i32 %stream, 0
  br i1 %tobool.not, label %if.else4, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp5, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 24, i32 noundef 8, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then2.if.end11_crit_edge

if.then2.if.end11_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.359, i32 noundef %call.i) #11
  br label %if.end11

if.else:                                          ; preds = %if.then
  %call.i16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 22, i32 noundef 8, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %cmp.i17 = icmp slt i32 %call.i16, 0
  br i1 %cmp.i17, label %do.end.i19, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end.i19:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i18 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i18 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.361, i32 noundef %call.i16) #11
  br label %if.end11

if.else4:                                         ; preds = %entry
  br i1 %cmp5, label %if.then6, label %if.else8

if.then6:                                         ; preds = %if.else4
  %call.i21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 24, i32 noundef 8, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp.i22 = icmp slt i32 %call.i21, 0
  br i1 %cmp.i22, label %do.end.i24, label %if.then6.if.end11_crit_edge

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end.i24:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i23 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dev.i23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.363, i32 noundef %call.i21) #11
  br label %if.end11

if.else8:                                         ; preds = %if.else4
  %call.i26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 22, i32 noundef 8, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i27 = icmp slt i32 %call.i26, 0
  br i1 %cmp.i27, label %do.end.i29, label %if.else8.if.end11_crit_edge

if.else8.if.end11_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end.i29:                                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i28 = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.365, i32 noundef %call.i26) #11
  br label %if.end11

if.end11:                                         ; preds = %do.end.i29, %if.else8.if.end11_crit_edge, %do.end.i24, %if.then6.if.end11_crit_edge, %do.end.i19, %if.else.if.end11_crit_edge, %do.end.i, %if.then2.if.end11_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end.i ], [ 0, %if.then2.if.end11_crit_edge ], [ %call.i16, %do.end.i19 ], [ 0, %if.else.if.end11_crit_edge ], [ %call.i21, %do.end.i24 ], [ 0, %if.then6.if.end11_crit_edge ], [ %call.i26, %do.end.i29 ], [ 0, %if.else8.if.end11_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tscs42xx_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %codec_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.1.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.sw.default.i_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_format.exit

for.inc.i.i.sw.default.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %3, %entry.params_format.exit_crit_edge ], [ %5, %for.inc.i.i.params_format.exit_crit_edge ]
  %6 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #8, !range !667
  %add.i.i = or i32 %6, %i.09.lcssa.i.i
  %7 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.392)
  switch i32 %add.i.i, label %params_format.exit.sw.default.i_crit_edge [
    i32 2, label %params_format.exit.sw.epilog.i_crit_edge
    i32 36, label %sw.bb1.i
    i32 6, label %sw.bb2.i
    i32 10, label %sw.bb3.i
  ]

params_format.exit.sw.epilog.i_crit_edge:         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

params_format.exit.sw.default.i_crit_edge:        ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default.i

sw.bb1.i:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %params_format.exit.sw.default.i_crit_edge, %for.inc.i.i.sw.default.i_crit_edge
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.372, i32 noundef -22) #11
  br label %do.end

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %params_format.exit.sw.epilog.i_crit_edge
  %width.0.i = phi i32 [ 12, %sw.bb3.i ], [ 8, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 0, %params_format.exit.sw.epilog.i_crit_edge ]
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 19, i32 noundef 12, i32 noundef %width.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end6.i, label %if.end

do.end6.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.375, i32 noundef %call.i) #11
  br label %do.end

do.end:                                           ; preds = %do.end6.i, %sw.default.i
  %retval.0.i.ph = phi i32 [ %call.i, %do.end6.i ], [ -22, %sw.default.i ]
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.367, i32 noundef %retval.0.i.ph) #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog.i
  %arrayidx.i.i22 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i22, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i, align 4
  %20 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.393)
  switch i32 %15, label %do.end.i [
    i32 8000, label %if.end.sw.epilog.i27_crit_edge
    i32 16000, label %sw.bb1.i23
    i32 24000, label %sw.bb2.i24
    i32 32000, label %sw.bb3.i25
    i32 48000, label %sw.bb4.i
    i32 96000, label %sw.bb5.i
    i32 11025, label %sw.bb6.i
    i32 22050, label %sw.bb7.i
    i32 44100, label %sw.bb8.i
    i32 88200, label %sw.bb9.i
  ]

if.end.sw.epilog.i27_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

sw.bb1.i23:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

sw.bb2.i24:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

sw.bb3.i25:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

sw.bb5.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

sw.bb6.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

sw.bb9.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i27

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.377, i32 noundef %15) #11
  br label %do.end9

sw.epilog.i27:                                    ; preds = %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i25, %sw.bb2.i24, %sw.bb1.i23, %if.end.sw.epilog.i27_crit_edge
  %br.0.i = phi i32 [ 8, %sw.bb9.i ], [ 8, %sw.bb8.i ], [ 8, %sw.bb7.i ], [ 8, %sw.bb6.i ], [ 16, %sw.bb5.i ], [ 16, %sw.bb4.i ], [ 0, %sw.bb3.i25 ], [ 16, %sw.bb2.i24 ], [ 0, %sw.bb1.i23 ], [ 0, %if.end.sw.epilog.i27_crit_edge ]
  %bm.0.i = phi i32 [ 3, %sw.bb9.i ], [ 2, %sw.bb8.i ], [ 1, %sw.bb7.i ], [ 0, %sw.bb6.i ], [ 3, %sw.bb5.i ], [ 2, %sw.bb4.i ], [ 2, %sw.bb3.i25 ], [ 1, %sw.bb2.i24 ], [ 1, %sw.bb1.i23 ], [ 0, %if.end.sw.epilog.i27_crit_edge ]
  %call10.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 25, i32 noundef 24, i32 noundef %br.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i26 = icmp slt i32 %call10.i, 0
  br i1 %cmp.i26, label %do.end13.i, label %if.end.i

do.end13.i:                                       ; preds = %sw.epilog.i27
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.380, i32 noundef %call10.i) #11
  br label %do.end9

if.end.i:                                         ; preds = %sw.epilog.i27
  %call15.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 25, i32 noundef 7, i32 noundef %bm.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %do.end20.i, label %if.end22.i

do.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.380, i32 noundef %call15.i) #11
  br label %do.end9

if.end22.i:                                       ; preds = %if.end.i
  %call23.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 23, i32 noundef 24, i32 noundef %br.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %do.end28.i, label %if.end30.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.380, i32 noundef %call23.i) #11
  br label %do.end9

if.end30.i:                                       ; preds = %if.end22.i
  %call31.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 23, i32 noundef 7, i32 noundef %bm.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %do.end36.i, label %setup_sample_rate.exit

do.end36.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.380, i32 noundef %call31.i) #11
  br label %do.end9

setup_sample_rate.exit:                           ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %audio_params_lock.i = getelementptr inbounds %struct.tscs42xx, ptr %19, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %audio_params_lock.i, i32 noundef 0) #8
  %samplerate.i = getelementptr inbounds %struct.tscs42xx, ptr %19, i32 0, i32 1
  %29 = ptrtoint ptr %samplerate.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %15, ptr %samplerate.i, align 4
  tail call void @mutex_unlock(ptr noundef %audio_params_lock.i) #8
  br label %cleanup

do.end9:                                          ; preds = %do.end36.i, %do.end28.i, %do.end20.i, %do.end13.i, %do.end.i
  %retval.0.i28.ph = phi i32 [ %call31.i, %do.end36.i ], [ %call23.i, %do.end28.i ], [ %call15.i, %do.end20.i ], [ %call10.i, %do.end13.i ], [ -22, %do.end.i ]
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.370, i32 noundef %retval.0.i28.ph) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %setup_sample_rate.exit, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i28.ph, %do.end9 ], [ 0, %setup_sample_rate.exit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 423)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 423)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !317, !318, !319, !321, !322, !323, !324, !326, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !498, !499, !500, !502, !503, !504, !506, !507, !508, !510, !511, !512, !513, !515, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !543, !544, !545, !547, !548, !549, !551, !552, !553, !555, !556, !557, !559, !560, !561, !562, !564, !565, !566, !568, !570, !572, !574, !576, !577, !578, !579, !581, !582, !583, !585, !586, !587, !589, !590, !591, !592, !594, !595, !596, !598, !599, !600, !601, !603, !604, !605, !606, !608, !609, !610, !611, !613, !614, !615, !616, !618, !619, !620, !621, !623, !624, !625, !627, !628, !629, !630, !632, !633, !634, !636, !637, !638, !639, !641, !642, !643, !645, !646, !648, !649, !651, !652, !654}
!llvm.module.flags = !{!656, !657, !658, !659, !660, !661, !662, !663}
!llvm.ident = !{!664}

!0 = !{ptr @__initcall__kmod_snd_soc_tscs42xx__294_1512_tscs42xx_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_tscs42xx__294_1512_tscs42xx_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1512, i32 1}
!2 = !{ptr @__exitcall_tscs42xx_i2c_driver_exit, !1, !"__exitcall_tscs42xx_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1514, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1515, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1516, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1505, i32 11}
!12 = !{ptr @tscs42xx_i2c_driver, !13, !"tscs42xx_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1503, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1422, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tscs42xx_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tscs42xx_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1434, i32 4}
!24 = !{ptr @tscs42xx_i2c_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tscs42xx_i2c_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1440, i32 3}
!28 = !{ptr @tscs42xx_i2c_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tscs42xx_i2c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @tscs42xx_i2c_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1446, i32 21}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1449, i32 3}
!35 = !{ptr @tscs42xx_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tscs42xx_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1457, i32 3}
!39 = !{ptr @tscs42xx_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tscs42xx_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1464, i32 3}
!43 = !{ptr @tscs42xx_i2c_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tscs42xx_i2c_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1471, i32 3}
!47 = !{ptr @tscs42xx_i2c_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tscs42xx_i2c_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @tscs42xx_i2c_probe.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1475, i32 2}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tscs42xx_i2c_probe.__key.26, !53, !"__key", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1476, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @tscs42xx_i2c_probe.__key.28, !56, !"__key", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1477, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1482, i32 3}
!60 = !{ptr @tscs42xx_i2c_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tscs42xx_i2c_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1410, i32 2}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1410, i32 10}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1410, i32 19}
!68 = distinct !{null, !69, !"src_names", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1409, i32 27}
!70 = !{ptr @tscs42xx_regmap, !71, !"tscs42xx_regmap", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/tscs42xx.c", i32 87, i32 35}
!72 = !{ptr @init_coeff_ram_cache.norm_addrs, !73, !"norm_addrs", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1366, i32 18}
!74 = !{ptr @tscs42xx_patch, !75, !"tscs42xx_patch", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1405, i32 34}
!76 = !{ptr @soc_codec_dev_tscs42xx, !77, !"soc_codec_dev_tscs42xx", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1350, i32 46}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/tscs42xx.c", i32 628, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/tscs42xx.c", i32 630, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/tscs42xx.c", i32 632, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/tscs42xx.c", i32 634, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/tscs42xx.c", i32 636, i32 2}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/tscs42xx.c", i32 640, i32 2}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/tscs42xx.c", i32 645, i32 2}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/tscs42xx.c", i32 648, i32 2}
!94 = !{ptr @.str.50, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/tscs42xx.c", i32 651, i32 2}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/tscs42xx.c", i32 653, i32 2}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/tscs42xx.c", i32 657, i32 2}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/tscs42xx.c", i32 658, i32 2}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/tscs42xx.c", i32 659, i32 2}
!104 = !{ptr @.str.60, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/tscs42xx.c", i32 660, i32 2}
!106 = !{ptr @.str.62, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/tscs42xx.c", i32 661, i32 2}
!108 = !{ptr @.str.64, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/tscs42xx.c", i32 662, i32 2}
!110 = !{ptr @.str.66, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/tscs42xx.c", i32 664, i32 2}
!112 = !{ptr @.str.68, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/tscs42xx.c", i32 665, i32 2}
!114 = !{ptr @.str.70, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/tscs42xx.c", i32 666, i32 2}
!116 = !{ptr @.str.72, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/tscs42xx.c", i32 667, i32 2}
!118 = !{ptr @.str.74, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/tscs42xx.c", i32 668, i32 2}
!120 = !{ptr @.str.76, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/tscs42xx.c", i32 669, i32 2}
!122 = !{ptr @.str.78, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/tscs42xx.c", i32 671, i32 2}
!124 = !{ptr @.str.80, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/tscs42xx.c", i32 672, i32 2}
!126 = !{ptr @.str.82, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/tscs42xx.c", i32 674, i32 2}
!128 = !{ptr @.str.84, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/tscs42xx.c", i32 675, i32 2}
!130 = !{ptr @.str.86, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/tscs42xx.c", i32 676, i32 2}
!132 = !{ptr @.str.88, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/tscs42xx.c", i32 677, i32 2}
!134 = !{ptr @.str.90, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/tscs42xx.c", i32 678, i32 2}
!136 = !{ptr @.str.92, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/tscs42xx.c", i32 679, i32 2}
!138 = !{ptr @.str.94, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/tscs42xx.c", i32 681, i32 2}
!140 = !{ptr @.str.96, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/tscs42xx.c", i32 682, i32 2}
!142 = !{ptr @.str.98, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/tscs42xx.c", i32 683, i32 2}
!144 = !{ptr @.str.100, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/tscs42xx.c", i32 684, i32 2}
!146 = !{ptr @.str.102, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/tscs42xx.c", i32 685, i32 2}
!148 = !{ptr @.str.104, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/tscs42xx.c", i32 686, i32 2}
!150 = !{ptr @.str.106, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/tscs42xx.c", i32 688, i32 2}
!152 = !{ptr @.str.108, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/tscs42xx.c", i32 689, i32 2}
!154 = !{ptr @.str.110, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/tscs42xx.c", i32 691, i32 2}
!156 = !{ptr @.str.112, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/tscs42xx.c", i32 692, i32 2}
!158 = !{ptr @.str.114, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/tscs42xx.c", i32 694, i32 2}
!160 = !{ptr @.str.116, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/tscs42xx.c", i32 695, i32 2}
!162 = !{ptr @.str.118, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/tscs42xx.c", i32 697, i32 2}
!164 = !{ptr @.str.120, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/tscs42xx.c", i32 699, i32 2}
!166 = !{ptr @.str.122, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/tscs42xx.c", i32 701, i32 2}
!168 = !{ptr @.str.124, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/tscs42xx.c", i32 703, i32 2}
!170 = !{ptr @.str.126, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/tscs42xx.c", i32 704, i32 2}
!172 = !{ptr @.str.128, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/tscs42xx.c", i32 706, i32 2}
!174 = !{ptr @.str.130, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/tscs42xx.c", i32 707, i32 2}
!176 = !{ptr @.str.132, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/tscs42xx.c", i32 709, i32 2}
!178 = !{ptr @.str.134, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/tscs42xx.c", i32 711, i32 2}
!180 = !{ptr @.str.136, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/tscs42xx.c", i32 713, i32 2}
!182 = !{ptr @.str.138, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/tscs42xx.c", i32 715, i32 2}
!184 = !{ptr @.str.140, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/tscs42xx.c", i32 717, i32 2}
!186 = !{ptr @.str.142, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/tscs42xx.c", i32 719, i32 2}
!188 = !{ptr @.str.144, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/tscs42xx.c", i32 720, i32 2}
!190 = !{ptr @.str.146, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/tscs42xx.c", i32 722, i32 2}
!192 = !{ptr @.str.148, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/tscs42xx.c", i32 723, i32 2}
!194 = !{ptr @.str.150, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/tscs42xx.c", i32 725, i32 2}
!196 = !{ptr @.str.152, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/tscs42xx.c", i32 726, i32 2}
!198 = !{ptr @.str.154, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/tscs42xx.c", i32 729, i32 2}
!200 = !{ptr @.str.156, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/tscs42xx.c", i32 730, i32 2}
!202 = !{ptr @.str.158, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/tscs42xx.c", i32 731, i32 2}
!204 = !{ptr @.str.159, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/tscs42xx.c", i32 732, i32 2}
!206 = !{ptr @.str.160, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/tscs42xx.c", i32 735, i32 2}
!208 = !{ptr @.str.161, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/tscs42xx.c", i32 737, i32 2}
!210 = !{ptr @.str.162, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/tscs42xx.c", i32 739, i32 2}
!212 = !{ptr @.str.164, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/tscs42xx.c", i32 741, i32 2}
!214 = !{ptr @.str.166, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/tscs42xx.c", i32 743, i32 2}
!216 = !{ptr @.str.168, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/tscs42xx.c", i32 745, i32 2}
!218 = !{ptr @.str.170, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/tscs42xx.c", i32 747, i32 2}
!220 = !{ptr @.str.172, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/tscs42xx.c", i32 749, i32 2}
!222 = !{ptr @.str.173, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/tscs42xx.c", i32 750, i32 2}
!224 = !{ptr @.str.175, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/tscs42xx.c", i32 753, i32 2}
!226 = !{ptr @.str.177, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/tscs42xx.c", i32 754, i32 2}
!228 = !{ptr @.str.179, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/tscs42xx.c", i32 755, i32 2}
!230 = !{ptr @.str.181, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/tscs42xx.c", i32 756, i32 2}
!232 = !{ptr @.str.183, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/tscs42xx.c", i32 757, i32 2}
!234 = !{ptr @.str.185, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/tscs42xx.c", i32 760, i32 2}
!236 = !{ptr @.str.187, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/tscs42xx.c", i32 761, i32 2}
!238 = !{ptr @.str.189, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/tscs42xx.c", i32 762, i32 2}
!240 = !{ptr @.str.191, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/tscs42xx.c", i32 763, i32 2}
!242 = !{ptr @.str.192, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/tscs42xx.c", i32 765, i32 2}
!244 = !{ptr @.str.193, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/tscs42xx.c", i32 767, i32 2}
!246 = !{ptr @.str.194, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/tscs42xx.c", i32 769, i32 2}
!248 = !{ptr @.str.195, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/tscs42xx.c", i32 771, i32 2}
!250 = !{ptr @.str.196, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/tscs42xx.c", i32 773, i32 2}
!252 = !{ptr @.str.197, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/tscs42xx.c", i32 776, i32 2}
!254 = !{ptr @.str.199, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/tscs42xx.c", i32 778, i32 2}
!256 = !{ptr @.str.201, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/tscs42xx.c", i32 780, i32 2}
!258 = !{ptr @.str.203, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/tscs42xx.c", i32 782, i32 2}
!260 = !{ptr @.str.204, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/tscs42xx.c", i32 784, i32 2}
!262 = !{ptr @.str.206, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/tscs42xx.c", i32 785, i32 2}
!264 = !{ptr @.str.208, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/tscs42xx.c", i32 788, i32 2}
!266 = !{ptr @.str.210, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/tscs42xx.c", i32 790, i32 2}
!268 = !{ptr @.str.212, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/tscs42xx.c", i32 792, i32 2}
!270 = !{ptr @.str.214, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/tscs42xx.c", i32 794, i32 2}
!272 = !{ptr @.str.215, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/tscs42xx.c", i32 796, i32 2}
!274 = !{ptr @.str.217, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/tscs42xx.c", i32 797, i32 2}
!276 = !{ptr @.str.219, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/tscs42xx.c", i32 800, i32 2}
!278 = !{ptr @.str.221, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/tscs42xx.c", i32 802, i32 2}
!280 = !{ptr @.str.223, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/tscs42xx.c", i32 804, i32 2}
!282 = !{ptr @.str.225, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/tscs42xx.c", i32 806, i32 2}
!284 = !{ptr @.str.226, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/tscs42xx.c", i32 808, i32 2}
!286 = !{ptr @.str.228, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/tscs42xx.c", i32 809, i32 2}
!288 = !{ptr @tscs42xx_snd_controls, !289, !"tscs42xx_snd_controls", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/tscs42xx.c", i32 626, i32 38}
!290 = !{ptr @hpvol_scale, !291, !"hpvol_scale", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/tscs42xx.c", i32 536, i32 8}
!292 = !{ptr @spkvol_scale, !293, !"spkvol_scale", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/tscs42xx.c", i32 537, i32 8}
!294 = !{ptr @dacvol_scale, !295, !"dacvol_scale", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/tscs42xx.c", i32 538, i32 8}
!296 = !{ptr @adcvol_scale, !297, !"adcvol_scale", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/tscs42xx.c", i32 539, i32 8}
!298 = !{ptr @invol_scale, !299, !"invol_scale", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/tscs42xx.c", i32 540, i32 8}
!300 = !{ptr @mic_boost_scale, !301, !"mic_boost_scale", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/tscs42xx.c", i32 541, i32 8}
!302 = !{ptr @ch_map_select_enum, !303, !"ch_map_select_enum", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/tscs42xx.c", i32 349, i32 30}
!304 = !{ptr @.str.230, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/tscs42xx.c", i32 346, i32 2}
!306 = !{ptr @.str.231, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/tscs42xx.c", i32 346, i32 12}
!308 = !{ptr @.str.232, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/tscs42xx.c", i32 346, i32 29}
!310 = !{ptr @.str.233, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/tscs42xx.c", i32 346, i32 46}
!312 = !{ptr @ch_map_select_text, !313, !"ch_map_select_text", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/tscs42xx.c", i32 345, i32 27}
!314 = !{ptr @.str.234, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/tscs42xx.c", i32 308, i32 4}
!316 = !{ptr @.str.235, !315, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @coeff_ram_put._entry, !315, !"_entry", i1 false, i1 false}
!318 = !{ptr @coeff_ram_put._entry_ptr, !315, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.236, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/tscs42xx.c", i32 108, i32 4}
!321 = !{ptr @.str.237, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @plls_locked._entry, !320, !"_entry", i1 false, i1 false}
!323 = !{ptr @plls_locked._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!324 = !{ptr @.str.238, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/tscs42xx.c", i32 153, i32 5}
!326 = !{ptr @.str.239, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @write_coeff_ram._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @write_coeff_ram._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.241, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/tscs42xx.c", i32 163, i32 4}
!331 = !{ptr @write_coeff_ram._entry.240, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @write_coeff_ram._entry_ptr.242, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.244, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/tscs42xx.c", i32 170, i32 4}
!335 = !{ptr @write_coeff_ram._entry.243, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @write_coeff_ram._entry_ptr.245, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.247, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/tscs42xx.c", i32 179, i32 4}
!339 = !{ptr @write_coeff_ram._entry.246, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @write_coeff_ram._entry_ptr.248, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @eq1_band_enable_enum, !342, !"eq1_band_enable_enum", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/tscs42xx.c", i32 545, i32 30}
!343 = !{ptr @.str.249, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/tscs42xx.c", i32 511, i32 2}
!345 = !{ptr @.str.250, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/tscs42xx.c", i32 512, i32 2}
!347 = !{ptr @.str.251, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/tscs42xx.c", i32 513, i32 2}
!349 = !{ptr @.str.252, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/tscs42xx.c", i32 514, i32 2}
!351 = !{ptr @.str.253, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/tscs42xx.c", i32 515, i32 2}
!353 = !{ptr @.str.254, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/tscs42xx.c", i32 516, i32 2}
!355 = !{ptr @.str.255, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/tscs42xx.c", i32 517, i32 2}
!357 = !{ptr @eq_band_enable_text, !358, !"eq_band_enable_text", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/tscs42xx.c", i32 510, i32 27}
!359 = !{ptr @eq2_band_enable_enum, !360, !"eq2_band_enable_enum", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/tscs42xx.c", i32 549, i32 30}
!361 = !{ptr @cle_level_detection_enum, !362, !"cle_level_detection_enum", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/tscs42xx.c", i32 553, i32 30}
!363 = !{ptr @.str.256, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/tscs42xx.c", i32 521, i32 2}
!365 = !{ptr @.str.257, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/tscs42xx.c", i32 522, i32 2}
!367 = !{ptr @level_detection_text, !368, !"level_detection_text", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/tscs42xx.c", i32 520, i32 27}
!369 = !{ptr @cle_level_detection_window_enum, !370, !"cle_level_detection_window_enum", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/tscs42xx.c", i32 558, i32 30}
!371 = !{ptr @.str.258, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/tscs42xx.c", i32 526, i32 2}
!373 = !{ptr @.str.259, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/tscs42xx.c", i32 527, i32 2}
!375 = !{ptr @level_detection_window_text, !376, !"level_detection_window_text", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/tscs42xx.c", i32 525, i32 27}
!377 = !{ptr @mugain_scale, !378, !"mugain_scale", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/tscs42xx.c", i32 542, i32 8}
!379 = !{ptr @compth_scale, !380, !"compth_scale", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/tscs42xx.c", i32 543, i32 8}
!381 = !{ptr @compressor_ratio_enum, !382, !"compressor_ratio_enum", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/tscs42xx.c", i32 587, i32 30}
!383 = !{ptr @.str.260, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/tscs42xx.c", i32 531, i32 2}
!385 = !{ptr @.str.261, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/tscs42xx.c", i32 531, i32 14}
!387 = !{ptr @.str.262, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/tscs42xx.c", i32 531, i32 23}
!389 = !{ptr @.str.263, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/tscs42xx.c", i32 531, i32 30}
!391 = !{ptr @.str.264, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/tscs42xx.c", i32 531, i32 37}
!393 = !{ptr @.str.265, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/tscs42xx.c", i32 531, i32 44}
!395 = !{ptr @.str.266, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/tscs42xx.c", i32 531, i32 51}
!397 = !{ptr @.str.267, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/tscs42xx.c", i32 532, i32 2}
!399 = !{ptr @.str.268, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/tscs42xx.c", i32 532, i32 9}
!401 = !{ptr @.str.269, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/tscs42xx.c", i32 532, i32 16}
!403 = !{ptr @.str.270, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/tscs42xx.c", i32 532, i32 23}
!405 = !{ptr @.str.271, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/tscs42xx.c", i32 532, i32 31}
!407 = !{ptr @.str.272, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/tscs42xx.c", i32 532, i32 39}
!409 = !{ptr @.str.273, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/tscs42xx.c", i32 532, i32 47}
!411 = !{ptr @.str.274, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/tscs42xx.c", i32 532, i32 55}
!413 = !{ptr @.str.275, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/tscs42xx.c", i32 533, i32 2}
!415 = !{ptr @.str.276, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/tscs42xx.c", i32 533, i32 10}
!417 = !{ptr @.str.277, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/tscs42xx.c", i32 533, i32 18}
!419 = !{ptr @.str.278, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/tscs42xx.c", i32 533, i32 26}
!421 = !{ptr @.str.279, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/tscs42xx.c", i32 533, i32 34}
!423 = !{ptr @.str.280, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/tscs42xx.c", i32 533, i32 42}
!425 = !{ptr @compressor_ratio_text, !426, !"compressor_ratio_text", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/tscs42xx.c", i32 530, i32 27}
!427 = !{ptr @mbc_level_detection_enums, !428, !"mbc_level_detection_enums", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/tscs42xx.c", i32 563, i32 30}
!429 = !{ptr @mbc_level_detection_window_enums, !430, !"mbc_level_detection_window_enums", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/tscs42xx.c", i32 575, i32 30}
!431 = !{ptr @dac_mbc1_compressor_ratio_enum, !432, !"dac_mbc1_compressor_ratio_enum", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/tscs42xx.c", i32 591, i32 30}
!433 = !{ptr @dac_mbc2_compressor_ratio_enum, !434, !"dac_mbc2_compressor_ratio_enum", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/tscs42xx.c", i32 595, i32 30}
!435 = !{ptr @dac_mbc3_compressor_ratio_enum, !436, !"dac_mbc3_compressor_ratio_enum", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/tscs42xx.c", i32 599, i32 30}
!437 = !{ptr @.str.281, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/tscs42xx.c", i32 409, i32 2}
!439 = !{ptr @.str.282, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/tscs42xx.c", i32 413, i32 2}
!441 = !{ptr @.str.283, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/tscs42xx.c", i32 417, i32 2}
!443 = !{ptr @.str.284, !442, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @.str.285, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/tscs42xx.c", i32 419, i32 2}
!446 = !{ptr @.str.286, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/tscs42xx.c", i32 421, i32 2}
!448 = !{ptr @.str.287, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/tscs42xx.c", i32 422, i32 2}
!450 = !{ptr @.str.288, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/tscs42xx.c", i32 425, i32 2}
!452 = !{ptr @.str.289, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/tscs42xx.c", i32 428, i32 2}
!454 = !{ptr @.str.290, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/tscs42xx.c", i32 431, i32 2}
!456 = !{ptr @.str.291, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/tscs42xx.c", i32 432, i32 2}
!458 = !{ptr @.str.292, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/tscs42xx.c", i32 435, i32 2}
!460 = !{ptr @.str.293, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/tscs42xx.c", i32 436, i32 2}
!462 = !{ptr @.str.294, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/tscs42xx.c", i32 437, i32 2}
!464 = !{ptr @.str.295, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/tscs42xx.c", i32 438, i32 2}
!466 = !{ptr @.str.296, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/tscs42xx.c", i32 439, i32 2}
!468 = !{ptr @.str.297, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/soc/codecs/tscs42xx.c", i32 440, i32 2}
!470 = !{ptr @.str.298, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @.str.299, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/tscs42xx.c", i32 441, i32 2}
!473 = !{ptr @.str.300, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/tscs42xx.c", i32 444, i32 2}
!475 = !{ptr @.str.301, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/tscs42xx.c", i32 446, i32 2}
!477 = !{ptr @.str.302, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/tscs42xx.c", i32 450, i32 2}
!479 = !{ptr @.str.303, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/tscs42xx.c", i32 455, i32 2}
!481 = !{ptr @.str.304, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/tscs42xx.c", i32 459, i32 2}
!483 = !{ptr @.str.305, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/tscs42xx.c", i32 460, i32 2}
!485 = !{ptr @.str.306, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/tscs42xx.c", i32 461, i32 2}
!487 = !{ptr @.str.307, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/tscs42xx.c", i32 462, i32 2}
!489 = !{ptr @.str.308, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/tscs42xx.c", i32 463, i32 2}
!491 = !{ptr @.str.309, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/tscs42xx.c", i32 464, i32 2}
!493 = !{ptr @tscs42xx_dapm_widgets, !494, !"tscs42xx_dapm_widgets", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/tscs42xx.c", i32 407, i32 41}
!495 = !{ptr @.str.311, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/tscs42xx.c", i32 208, i32 3}
!497 = !{ptr @.str.312, !496, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @power_up_audio_plls._entry, !496, !"_entry", i1 false, i1 false}
!499 = !{ptr @power_up_audio_plls._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!500 = !{ptr @.str.314, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/tscs42xx.c", i32 217, i32 3}
!502 = !{ptr @power_up_audio_plls._entry.313, !501, !"_entry", i1 false, i1 false}
!503 = !{ptr @power_up_audio_plls._entry_ptr.315, !501, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.317, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/tscs42xx.c", i32 222, i32 3}
!506 = !{ptr @power_up_audio_plls._entry.316, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @power_up_audio_plls._entry_ptr.318, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @.str.319, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/tscs42xx.c", i32 245, i32 3}
!510 = !{ptr @.str.320, !509, !"<string literal>", i1 false, i1 false}
!511 = !{ptr @power_down_audio_plls._entry, !509, !"_entry", i1 false, i1 false}
!512 = !{ptr @power_down_audio_plls._entry_ptr, !509, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @power_down_audio_plls._entry.321, !514, !"_entry", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/tscs42xx.c", i32 252, i32 3}
!515 = !{ptr @power_down_audio_plls._entry_ptr.322, !514, !"_entry_ptr", i1 false, i1 false}
!516 = !{ptr @.str.323, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/tscs42xx.c", i32 334, i32 1}
!518 = !{ptr @left_input_select, !519, !"left_input_select", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/tscs42xx.c", i32 333, i32 38}
!520 = !{ptr @left_input_select_enum, !521, !"left_input_select_enum", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/tscs42xx.c", i32 329, i32 30}
!522 = !{ptr @.str.324, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/tscs42xx.c", i32 326, i32 2}
!524 = !{ptr @.str.325, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/tscs42xx.c", i32 326, i32 12}
!526 = !{ptr @.str.326, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/tscs42xx.c", i32 326, i32 22}
!528 = !{ptr @.str.327, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/tscs42xx.c", i32 326, i32 32}
!530 = !{ptr @input_select_text, !531, !"input_select_text", i1 false, i1 false}
!531 = !{!"../sound/soc/codecs/tscs42xx.c", i32 325, i32 27}
!532 = !{ptr @.str.328, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/tscs42xx.c", i32 342, i32 1}
!534 = !{ptr @right_input_select, !535, !"right_input_select", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/tscs42xx.c", i32 341, i32 38}
!536 = !{ptr @right_input_select_enum, !537, !"right_input_select_enum", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/tscs42xx.c", i32 337, i32 30}
!538 = !{ptr @tscs42xx_intercon, !539, !"tscs42xx_intercon", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/tscs42xx.c", i32 467, i32 40}
!540 = !{ptr @.str.329, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1313, i32 4}
!542 = !{ptr @.str.330, !541, !"<string literal>", i1 false, i1 false}
!543 = !{ptr @set_sysclk._entry, !541, !"_entry", i1 false, i1 false}
!544 = !{ptr @set_sysclk._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!545 = !{ptr @.str.332, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1324, i32 4}
!547 = !{ptr @set_sysclk._entry.331, !546, !"_entry", i1 false, i1 false}
!548 = !{ptr @set_sysclk._entry_ptr.333, !546, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.335, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1330, i32 3}
!551 = !{ptr @set_sysclk._entry.334, !550, !"_entry", i1 false, i1 false}
!552 = !{ptr @set_sysclk._entry_ptr.336, !550, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.338, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1337, i32 3}
!555 = !{ptr @set_sysclk._entry.337, !554, !"_entry", i1 false, i1 false}
!556 = !{ptr @set_sysclk._entry_ptr.339, !554, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @.str.340, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1069, i32 3}
!559 = !{ptr @.str.341, !558, !"<string literal>", i1 false, i1 false}
!560 = !{ptr @set_pll_ctl_from_input_freq._entry, !558, !"_entry", i1 false, i1 false}
!561 = !{ptr @set_pll_ctl_from_input_freq._entry_ptr, !558, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @.str.343, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1080, i32 4}
!564 = !{ptr @set_pll_ctl_from_input_freq._entry.342, !563, !"_entry", i1 false, i1 false}
!565 = !{ptr @set_pll_ctl_from_input_freq._entry_ptr.344, !563, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @pll_ctls, !567, !"pll_ctls", i1 false, i1 false}
!567 = !{!"../sound/soc/codecs/tscs42xx.c", i32 973, i32 29}
!568 = !{ptr @.str.345, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1386, i32 10}
!570 = !{ptr @tscs42xx_dai, !571, !"tscs42xx_dai", i1 false, i1 false}
!571 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1385, i32 34}
!572 = !{ptr @tscs42xx_dai_ops, !573, !"tscs42xx_dai_ops", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1267, i32 37}
!574 = !{ptr @.str.346, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1239, i32 3}
!576 = !{ptr @.str.347, !575, !"<string literal>", i1 false, i1 false}
!577 = !{ptr @tscs42xx_set_dai_bclk_ratio._entry, !575, !"_entry", i1 false, i1 false}
!578 = !{ptr @tscs42xx_set_dai_bclk_ratio._entry_ptr, !575, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @.str.349, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1246, i32 3}
!581 = !{ptr @tscs42xx_set_dai_bclk_ratio._entry.348, !580, !"_entry", i1 false, i1 false}
!582 = !{ptr @tscs42xx_set_dai_bclk_ratio._entry_ptr.350, !580, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.352, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1253, i32 3}
!585 = !{ptr @tscs42xx_set_dai_bclk_ratio._entry.351, !584, !"_entry", i1 false, i1 false}
!586 = !{ptr @tscs42xx_set_dai_bclk_ratio._entry_ptr.353, !584, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.354, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1206, i32 4}
!589 = !{ptr @.str.355, !588, !"<string literal>", i1 false, i1 false}
!590 = !{ptr @tscs42xx_set_dai_fmt._entry, !588, !"_entry", i1 false, i1 false}
!591 = !{ptr @tscs42xx_set_dai_fmt._entry_ptr, !588, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @.str.357, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1213, i32 3}
!594 = !{ptr @tscs42xx_set_dai_fmt._entry.356, !593, !"_entry", i1 false, i1 false}
!595 = !{ptr @tscs42xx_set_dai_fmt._entry_ptr.358, !593, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.359, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1121, i32 3}
!598 = !{ptr @.str.360, !597, !"<string literal>", i1 false, i1 false}
!599 = !{ptr @dac_mute._entry, !597, !"_entry", i1 false, i1 false}
!600 = !{ptr @dac_mute._entry_ptr, !597, !"_entry_ptr", i1 false, i1 false}
!601 = !{ptr @.str.361, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1152, i32 3}
!603 = !{ptr @.str.362, !602, !"<string literal>", i1 false, i1 false}
!604 = !{ptr @adc_mute._entry, !602, !"_entry", i1 false, i1 false}
!605 = !{ptr @adc_mute._entry_ptr, !602, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @.str.363, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1137, i32 3}
!608 = !{ptr @.str.364, !607, !"<string literal>", i1 false, i1 false}
!609 = !{ptr @dac_unmute._entry, !607, !"_entry", i1 false, i1 false}
!610 = !{ptr @dac_unmute._entry_ptr, !607, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @.str.365, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1167, i32 3}
!613 = !{ptr @.str.366, !612, !"<string literal>", i1 false, i1 false}
!614 = !{ptr @adc_unmute._entry, !612, !"_entry", i1 false, i1 false}
!615 = !{ptr @adc_unmute._entry_ptr, !612, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @.str.367, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1098, i32 3}
!618 = !{ptr @.str.368, !617, !"<string literal>", i1 false, i1 false}
!619 = !{ptr @tscs42xx_hw_params._entry, !617, !"_entry", i1 false, i1 false}
!620 = !{ptr @tscs42xx_hw_params._entry_ptr, !617, !"_entry_ptr", i1 false, i1 false}
!621 = !{ptr @.str.370, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1105, i32 3}
!623 = !{ptr @tscs42xx_hw_params._entry.369, !622, !"_entry", i1 false, i1 false}
!624 = !{ptr @tscs42xx_hw_params._entry_ptr.371, !622, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @.str.372, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../sound/soc/codecs/tscs42xx.c", i32 834, i32 3}
!627 = !{ptr @.str.373, !626, !"<string literal>", i1 false, i1 false}
!628 = !{ptr @setup_sample_format._entry, !626, !"_entry", i1 false, i1 false}
!629 = !{ptr @setup_sample_format._entry_ptr, !626, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.375, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/soc/codecs/tscs42xx.c", i32 840, i32 3}
!632 = !{ptr @setup_sample_format._entry.374, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @setup_sample_format._entry_ptr.376, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.377, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../sound/soc/codecs/tscs42xx.c", i32 897, i32 3}
!636 = !{ptr @.str.378, !635, !"<string literal>", i1 false, i1 false}
!637 = !{ptr @setup_sample_rate._entry, !635, !"_entry", i1 false, i1 false}
!638 = !{ptr @setup_sample_rate._entry_ptr, !635, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.380, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../sound/soc/codecs/tscs42xx.c", i32 905, i32 3}
!641 = !{ptr @setup_sample_rate._entry.379, !640, !"_entry", i1 false, i1 false}
!642 = !{ptr @setup_sample_rate._entry_ptr.381, !640, !"_entry_ptr", i1 false, i1 false}
!643 = !{ptr @setup_sample_rate._entry.382, !644, !"_entry", i1 false, i1 false}
!644 = !{!"../sound/soc/codecs/tscs42xx.c", i32 912, i32 3}
!645 = !{ptr @setup_sample_rate._entry_ptr.383, !644, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @setup_sample_rate._entry.384, !647, !"_entry", i1 false, i1 false}
!647 = !{!"../sound/soc/codecs/tscs42xx.c", i32 919, i32 3}
!648 = !{ptr @setup_sample_rate._entry_ptr.385, !647, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @setup_sample_rate._entry.386, !650, !"_entry", i1 false, i1 false}
!650 = !{!"../sound/soc/codecs/tscs42xx.c", i32 926, i32 3}
!651 = !{ptr @setup_sample_rate._entry_ptr.387, !650, !"_entry_ptr", i1 false, i1 false}
!652 = !{ptr @tscs42xx_of_match, !653, !"tscs42xx_of_match", i1 false, i1 false}
!653 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1496, i32 34}
!654 = !{ptr @tscs42xx_i2c_id, !655, !"tscs42xx_i2c_id", i1 false, i1 false}
!655 = !{!"../sound/soc/codecs/tscs42xx.c", i32 1489, i32 35}
!656 = !{i32 1, !"wchar_size", i32 2}
!657 = !{i32 1, !"min_enum_size", i32 4}
!658 = !{i32 8, !"branch-target-enforcement", i32 0}
!659 = !{i32 8, !"sign-return-address", i32 0}
!660 = !{i32 8, !"sign-return-address-all", i32 0}
!661 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!662 = !{i32 7, !"uwtable", i32 1}
!663 = !{i32 7, !"frame-pointer", i32 2}
!664 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!665 = !{!"auto-init"}
!666 = !{i8 0, i8 2}
!667 = !{i32 0, i32 33}
