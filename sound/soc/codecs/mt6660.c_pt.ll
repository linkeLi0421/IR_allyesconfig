; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/mt6660.c_pt.bc'
source_filename = "../sound/soc/codecs/mt6660.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.107, ptr }
%union.anon.107 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_size_table = type { i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.reg_table = type { i32, i32, i32 }
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
%struct.mt6660_chip = type <{ ptr, ptr, ptr, %struct.mt6660_platform_data, %struct.mutex, ptr, i16 }>
%struct.mt6660_platform_data = type <{ i8, ptr, ptr, ptr }>
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_snd_soc_mt6660__309_574_mt6660_i2c_driver_init6 = internal global ptr @mt6660_i2c_driver_init, section ".initcall6.init", align 4
@mt6660_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mt6660_i2c_probe, ptr @mt6660_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt6660_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6660_dev_pm_ops, ptr null, ptr null }, ptr @mt6660_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mt6660_i2c_driver_exit = internal global ptr @mt6660_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [58 x i8] c"snd_soc_mt6660.author=Jeff Chang <jeff_chang@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [48 x i8] c"snd_soc_mt6660.description=MT6660 SPKAMP Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [52 x i8] c"snd_soc_mt6660.file=sound/soc/codecs/snd-soc-mt6660\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [27 x i8] c"snd_soc_mt6660.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version314 = internal constant [31 x i8] c"snd_soc_mt6660.version=1.0.8_G\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_mt6660\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1.0.8_G\00", [24 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mt6660\00", [25 x i8] zeroinitializer }, align 32
@mt6660_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt6660_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6660_i2c_runtime_suspend, ptr @mt6660_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mt6660_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt6660\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mt6660_i2c_probe.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt6660_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/mt6660.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mt6660_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&chip->io_lock\00", [17 x i8] zeroinitializer }, align 32
@mt6660_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mt6660_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @mt6660_reg_read, ptr @mt6660_reg_write, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mt6660:475:(&mt6660_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@mt6660_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 478, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialise regmap: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6660_i2c_probe._entry_ptr = internal global ptr @mt6660_i2c_probe._entry, section ".printk_index", align 4
@mt6660_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 485, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chip reset fail\0A\00", [47 x i8] zeroinitializer }, align 32
@mt6660_i2c_probe._entry_ptr.14 = internal global ptr @mt6660_i2c_probe._entry.12, section ".printk_index", align 4
@mt6660_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 491, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chip power on 2 fail\0A\00", [42 x i8] zeroinitializer }, align 32
@mt6660_i2c_probe._entry_ptr.17 = internal global ptr @mt6660_i2c_probe._entry.15, section ".printk_index", align 4
@mt6660_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 497, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chip id check fail\0A\00", [44 x i8] zeroinitializer }, align 32
@mt6660_i2c_probe._entry_ptr.20 = internal global ptr @mt6660_i2c_probe._entry.18, section ".printk_index", align 4
@mt6660_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.4, ptr @.str.5, i32 503, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"read chip revision fail\0A\00", [39 x i8] zeroinitializer }, align 32
@mt6660_i2c_probe._entry_ptr.23 = internal global ptr @mt6660_i2c_probe._entry.21, section ".printk_index", align 4
@mt6660_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @mt6660_component_snd_controls, i32 10, ptr @mt6660_component_dapm_widgets, i32 6, ptr @mt6660_component_dapm_routes, i32 7, ptr @mt6660_component_probe, ptr @mt6660_component_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt6660_codec_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.92, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt6660_component_aif_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.80, i64 5460, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.79, i64 5460, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -32, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mt6660_reg_size_table = internal constant { [9 x %struct.reg_size_table], [56 x i8] } { [9 x %struct.reg_size_table] [%struct.reg_size_table { i32 26, i8 4 }, %struct.reg_size_table { i32 27, i8 4 }, %struct.reg_size_table { i32 21, i8 2 }, %struct.reg_size_table { i32 183, i8 2 }, %struct.reg_size_table { i32 189, i8 2 }, %struct.reg_size_table { i32 51, i8 2 }, %struct.reg_size_table { i32 0, i8 2 }, %struct.reg_size_table { i32 36, i8 2 }, %struct.reg_size_table { i32 76, i8 2 }], [56 x i8] zeroinitializer }, align 32
@_mt6660_chip_id_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 423, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s id(%x) not match\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"_mt6660_chip_id_check\00", [42 x i8] zeroinitializer }, align 32
@_mt6660_chip_id_check._entry_ptr = internal global ptr @_mt6660_chip_id_check._entry, section ".printk_index", align 4
@_mt6660_read_chip_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.5, i32 451, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get chip revision fail\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_mt6660_read_chip_revision\00", [37 x i8] zeroinitializer }, align 32
@_mt6660_read_chip_revision._entry_ptr = internal global ptr @_mt6660_read_chip_revision._entry, section ".printk_index", align 4
@_mt6660_read_chip_revision._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 455, ptr @.str.30, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s chip_rev = %x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@_mt6660_read_chip_revision._entry_ptr.31 = internal global ptr @_mt6660_read_chip_revision._entry.28, section ".printk_index", align 4
@mt6660_component_snd_controls = internal constant { [10 x %struct.snd_kcontrol_new], [96 x i8] } { [10 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @vol_ctl_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr null, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @mt6660_component_get_volsw, ptr null, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }], [96 x i8] zeroinitializer }, align 32
@mt6660_component_dapm_routes = internal constant { [7 x %struct.snd_soc_dapm_route], [84 x i8] } { [7 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }], [84 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Digital Volume\00", [17 x i8] zeroinitializer }, align 32
@vol_ctl_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1155, i32 5], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 41, i32 41, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Hard Clip Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Clip Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 48, i32 48, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Boost Mode\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 64, i32 64, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRE Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 104, i32 104, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC Protect Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 116, i32 116, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Data Output Left Channel Selection\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 18, i32 18, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Data Output Right Channel Selection\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 18, i32 18, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"T0 SEL\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 63, i32 63, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Chip Rev\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 0, i32 0, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VI ADC\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PGA\00", [28 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ClassD\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUTP\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUTN\00", [27 x i8] zeroinitializer }, align 32
@mt6660_component_dapm_widgets = internal constant { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [264 x i8] } { [6 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 96, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 2, ptr @mt6660_codec_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @mt6660_codec_classd_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [264 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.5, ptr @.str.59, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt6660_codec_classd_event\00", [38 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: before classd turn on\0A\00", [37 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.5, i32 107, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"config mode adaptive fail\0A\00", [37 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event._entry_ptr = internal global ptr @mt6660_codec_classd_event._entry, section ".printk_index", align 4
@mt6660_codec_classd_event._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.58, ptr @.str.5, i32 117, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable voltage sensing fail\0A\00", [35 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event._entry_ptr.63 = internal global ptr @mt6660_codec_classd_event._entry.61, section ".printk_index", align 4
@mt6660_codec_classd_event.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.5, ptr @.str.64, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Amp on\0A\00", [24 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.5, ptr @.str.65, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Amp off\0A\00", [23 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.58, ptr @.str.5, i32 129, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"disable voltage sensing fail\0A\00", [34 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event._entry_ptr.68 = internal global ptr @mt6660_codec_classd_event._entry.66, section ".printk_index", align 4
@mt6660_codec_classd_event._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.58, ptr @.str.5, i32 137, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pop-noise improvement 1 fail\0A\00", [34 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event._entry_ptr.71 = internal global ptr @mt6660_codec_classd_event._entry.69, section ".printk_index", align 4
@mt6660_codec_classd_event.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.58, ptr @.str.5, ptr @.str.72, i8 0, i8 35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: after classd turn off\0A\00", [37 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.58, ptr @.str.5, i32 149, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pop-noise improvement 2 fail\0A\00", [34 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event._entry_ptr.75 = internal global ptr @mt6660_codec_classd_event._entry.73, section ".printk_index", align 4
@mt6660_codec_classd_event._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.58, ptr @.str.5, i32 156, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"config mode off fail\0A\00", [42 x i8] zeroinitializer }, align 32
@mt6660_codec_classd_event._entry_ptr.78 = internal global ptr @mt6660_codec_classd_event._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aif_playback\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aif_capture\00", [20 x i8] zeroinitializer }, align 32
@mt6660_component_probe.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.81, ptr @.str.5, ptr @.str.6, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mt6660_component_probe\00", [41 x i8] zeroinitializer }, align 32
@mt6660_component_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.81, ptr @.str.5, i32 303, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mt6660 component setting failed\0A\00", [63 x i8] zeroinitializer }, align 32
@mt6660_component_probe._entry_ptr = internal global ptr @mt6660_component_probe._entry, section ".printk_index", align 4
@mt6660_component_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 268, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s chip power on failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mt6660_component_setting\00", [39 x i8] zeroinitializer }, align 32
@mt6660_component_setting._entry_ptr = internal global ptr @mt6660_component_setting._entry, section ".printk_index", align 4
@mt6660_setting_table = internal constant { [26 x %struct.reg_table], [72 x i8] } { [26 x %struct.reg_table] [%struct.reg_table { i32 32, i32 128, i32 0 }, %struct.reg_table { i32 48, i32 1, i32 0 }, %struct.reg_table { i32 80, i32 28, i32 4 }, %struct.reg_table { i32 177, i32 12, i32 0 }, %struct.reg_table { i32 211, i32 3, i32 3 }, %struct.reg_table { i32 224, i32 1, i32 0 }, %struct.reg_table { i32 152, i32 68, i32 4 }, %struct.reg_table { i32 185, i32 255, i32 130 }, %struct.reg_table { i32 183, i32 30583, i32 29299 }, %struct.reg_table { i32 182, i32 7, i32 3 }, %struct.reg_table { i32 107, i32 224, i32 32 }, %struct.reg_table { i32 7, i32 255, i32 112 }, %struct.reg_table { i32 187, i32 255, i32 32 }, %struct.reg_table { i32 105, i32 255, i32 64 }, %struct.reg_table { i32 189, i32 65535, i32 6136 }, %struct.reg_table { i32 112, i32 255, i32 21 }, %struct.reg_table { i32 124, i32 255, i32 0 }, %struct.reg_table { i32 70, i32 255, i32 29 }, %struct.reg_table { i32 26, i32 -1, i32 2145091582 }, %struct.reg_table { i32 27, i32 -1, i32 2145091582 }, %struct.reg_table { i32 81, i32 255, i32 88 }, %struct.reg_table { i32 162, i32 255, i32 206 }, %struct.reg_table { i32 51, i32 65535, i32 32767 }, %struct.reg_table { i32 76, i32 65535, i32 278 }, %struct.reg_table { i32 22, i32 6144, i32 2048 }, %struct.reg_table { i32 104, i32 31, i32 7 }], [72 x i8] zeroinitializer }, align 32
@mt6660_component_setting._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.5, i32 279, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s update 0x%02x failed\0A\00", [39 x i8] zeroinitializer }, align 32
@mt6660_component_setting._entry_ptr.87 = internal global ptr @mt6660_component_setting._entry.85, section ".printk_index", align 4
@mt6660_component_setting._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.5, i32 286, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s chip power off failed\0A\00", [38 x i8] zeroinitializer }, align 32
@mt6660_component_setting._entry_ptr.90 = internal global ptr @mt6660_component_setting._entry.88, section ".printk_index", align 4
@mt6660_component_remove.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.91, ptr @.str.5, ptr @.str.6, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mt6660_component_remove\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mt6660-aif\00", [21 x i8] zeroinitializer }, align 32
@mt6660_component_aif_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6660_component_aif_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.93, ptr @.str.5, ptr @.str.94, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mt6660_component_aif_hw_params\00", [33 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: ++\0A\00", [24 x i8] zeroinitializer }, align 32
@mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.93, ptr @.str.5, ptr @.str.95, i8 0, i8 84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"format: 0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.93, ptr @.str.5, ptr @.str.96, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rate: 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.93, ptr @.str.5, ptr @.str.97, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"word_len: %d, aud_bit: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mt6660_component_aif_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.5, i32 341, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"not supported word length\0A\00", [37 x i8] zeroinitializer }, align 32
@mt6660_component_aif_hw_params._entry_ptr = internal global ptr @mt6660_component_aif_hw_params._entry, section ".printk_index", align 4
@mt6660_component_aif_hw_params._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.93, ptr @.str.5, i32 364, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"config aud bit fail\0A\00", [43 x i8] zeroinitializer }, align 32
@mt6660_component_aif_hw_params._entry_ptr.101 = internal global ptr @mt6660_component_aif_hw_params._entry.99, section ".printk_index", align 4
@mt6660_component_aif_hw_params._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.93, ptr @.str.5, i32 370, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"config word len fail\0A\00", [42 x i8] zeroinitializer }, align 32
@mt6660_component_aif_hw_params._entry_ptr.104 = internal global ptr @mt6660_component_aif_hw_params._entry.102, section ".printk_index", align 4
@mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.93, ptr @.str.5, ptr @.str.105, i8 0, i8 93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: --\0A\00", [24 x i8] zeroinitializer }, align 32
@mt6660_i2c_runtime_suspend.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.106, ptr @.str.5, ptr @.str.107, i8 0, i8 -123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt6660_i2c_runtime_suspend\00", [37 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enter low power mode\0A\00", [42 x i8] zeroinitializer }, align 32
@mt6660_i2c_runtime_resume.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.108, ptr @.str.5, ptr @.str.109, i8 0, i8 -121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mt6660_i2c_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"exit low power mode\0A\00", [43 x i8] zeroinitializer }, align 32
@switch.table.mt6660_component_aif_hw_params = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 192, i32 128, i32 64, i32 192, i32 0, i32 192, i32 192, i32 192, i32 0], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 224, i64 480]
@__sancov_gen_cov_switch_values.110 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 21, i64 26, i64 27, i64 36, i64 51, i64 76, i64 183, i64 189]
@__sancov_gen_cov_switch_values.111 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 21, i64 26, i64 27, i64 36, i64 51, i64 76, i64 183, i64 189]
@__sancov_gen_cov_switch_values.112 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.113 = private unnamed_addr constant [18 x i8] c"mt6660_i2c_driver\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 564, i32 26 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 579, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 566, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant [13 x i8] c"mt6660_of_id\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 552, i32 49 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"mt6660_dev_pm_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 547, i32 32 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"mt6660_i2c_id\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 558, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 465, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 471, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [21 x i8] c"mt6660_regmap_config\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 77, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 474, i32 17 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 478, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 485, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 491, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 497, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 503, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [24 x i8] c"mt6660_component_driver\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 314, i32 46 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"mt6660_codec_dai\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 389, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant [22 x i8] c"mt6660_reg_size_table\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 22, i32 36 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 423, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 451, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 455, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [30 x i8] c"mt6660_component_snd_controls\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 201, i32 38 }
@___asan_gen_.236 = private unnamed_addr constant [29 x i8] c"mt6660_component_dapm_routes\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 177, i32 40 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 202, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [12 x i8] c"vol_ctl_tlv\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 199, i32 14 }
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 204, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 205, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 206, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 207, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 208, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 209, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 211, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 213, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 215, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 165, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 167, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 168, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 169, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 173, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 174, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [30 x i8] c"mt6660_component_dapm_widgets\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 164, i32 41 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 101, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 107, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 116, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 120, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 123, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 128, i32 4 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 136, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 142, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 148, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 156, i32 4 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 178, i32 17 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 184, i32 4 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 298, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 303, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 268, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [21 x i8] c"mt6660_setting_table\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 231, i32 31 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 278, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 286, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 310, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 390, i32 10 }
@___asan_gen_.399 = private unnamed_addr constant [25 x i8] c"mt6660_component_aif_ops\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 377, i32 37 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 336, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 337, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 338, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 339, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 341, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 364, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 370, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 373, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 533, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.448 = private constant [29 x i8] c"../sound/soc/codecs/mt6660.c\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 542, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [44 x i8] c"switch.table.mt6660_component_aif_hw_params\00", align 1
@llvm.compiler.used = appending global [150 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__UNIQUE_ID_version314, ptr @__exitcall_mt6660_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_mt6660__309_574_mt6660_i2c_driver_init6, ptr @__modver_attr, ptr @_mt6660_chip_id_check._entry, ptr @_mt6660_chip_id_check._entry_ptr, ptr @_mt6660_read_chip_revision._entry, ptr @_mt6660_read_chip_revision._entry.28, ptr @_mt6660_read_chip_revision._entry_ptr, ptr @_mt6660_read_chip_revision._entry_ptr.31, ptr @mt6660_codec_classd_event._entry, ptr @mt6660_codec_classd_event._entry.61, ptr @mt6660_codec_classd_event._entry.66, ptr @mt6660_codec_classd_event._entry.69, ptr @mt6660_codec_classd_event._entry.73, ptr @mt6660_codec_classd_event._entry.76, ptr @mt6660_codec_classd_event._entry_ptr, ptr @mt6660_codec_classd_event._entry_ptr.63, ptr @mt6660_codec_classd_event._entry_ptr.68, ptr @mt6660_codec_classd_event._entry_ptr.71, ptr @mt6660_codec_classd_event._entry_ptr.75, ptr @mt6660_codec_classd_event._entry_ptr.78, ptr @mt6660_component_aif_hw_params._entry, ptr @mt6660_component_aif_hw_params._entry.102, ptr @mt6660_component_aif_hw_params._entry.99, ptr @mt6660_component_aif_hw_params._entry_ptr, ptr @mt6660_component_aif_hw_params._entry_ptr.101, ptr @mt6660_component_aif_hw_params._entry_ptr.104, ptr @mt6660_component_probe._entry, ptr @mt6660_component_probe._entry_ptr, ptr @mt6660_component_setting._entry, ptr @mt6660_component_setting._entry.85, ptr @mt6660_component_setting._entry.88, ptr @mt6660_component_setting._entry_ptr, ptr @mt6660_component_setting._entry_ptr.87, ptr @mt6660_component_setting._entry_ptr.90, ptr @mt6660_i2c_driver_exit, ptr @mt6660_i2c_probe._entry, ptr @mt6660_i2c_probe._entry.12, ptr @mt6660_i2c_probe._entry.15, ptr @mt6660_i2c_probe._entry.18, ptr @mt6660_i2c_probe._entry.21, ptr @mt6660_i2c_probe._entry_ptr, ptr @mt6660_i2c_probe._entry_ptr.14, ptr @mt6660_i2c_probe._entry_ptr.17, ptr @mt6660_i2c_probe._entry_ptr.20, ptr @mt6660_i2c_probe._entry_ptr.23, ptr @mt6660_i2c_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mt6660_of_id, ptr @mt6660_dev_pm_ops, ptr @mt6660_i2c_id, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mt6660_i2c_probe.__key, ptr @.str.7, ptr @mt6660_i2c_probe._key, ptr @mt6660_regmap_config, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @mt6660_component_driver, ptr @mt6660_codec_dai, ptr @mt6660_reg_size_table, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @mt6660_component_snd_controls, ptr @mt6660_component_dapm_routes, ptr @.str.32, ptr @vol_ctl_tlv, ptr @.compoundliteral, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @mt6660_component_dapm_widgets, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @mt6660_setting_table, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @mt6660_component_aif_ops, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @switch.table.mt6660_component_aif_hw_params], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_codec_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_reg_size_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mt6660_chip_id_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mt6660_read_chip_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_mt6660_read_chip_revision._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_snd_controls to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_dapm_routes to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_ctl_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_dapm_widgets to i32), i32 1080, i32 1344, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_codec_classd_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_codec_classd_event._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_codec_classd_event._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_codec_classd_event._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_codec_classd_event._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_codec_classd_event._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_setting_table to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_setting._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_setting._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_aif_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_aif_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_aif_hw_params._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6660_component_aif_hw_params._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mt6660_component_aif_hw_params to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mt6660_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6660_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mt6660_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val.i108 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_i2c_probe.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_i2c_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_i2c_probe.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 123, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store ptr %client, ptr %call.i, align 1
  %dev9 = getelementptr inbounds %struct.mt6660_chip, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev9 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store ptr %dev3, ptr %dev9, align 1
  %io_lock = getelementptr inbounds %struct.mt6660_chip, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %io_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @mt6660_i2c_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call15 = tail call ptr @__devm_regmap_init(ptr noundef %dev3, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @mt6660_regmap_config, ptr noundef nonnull @mt6660_i2c_probe._key, ptr noundef nonnull @.str.8) #7
  %regmap = getelementptr inbounds %struct.mt6660_chip, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store ptr %call15, ptr %regmap, align 1
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.9, i32 noundef %4) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end7
  %call.i99 = tail call i32 @regmap_write(ptr noundef %call15, i32 noundef 3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %cmp.i100 = icmp slt i32 %call.i99, 0
  br i1 %cmp.i100, label %if.end25.do.end30_crit_edge, label %if.end.i

if.end25.do.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

if.end.i:                                         ; preds = %if.end25
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load ptr, ptr %regmap, align 1
  %call2.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 3, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.do.end30_crit_edge, label %if.end32

if.end.i.do.end30_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end30:                                         ; preds = %if.end.i.do.end30_crit_edge, %if.end25.do.end30_crit_edge
  %retval.0.i101.ph = phi i32 [ %call2.i, %if.end.i.do.end30_crit_edge ], [ %call.i99, %if.end25.do.end30_crit_edge ]
  %7 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load ptr, ptr %dev9, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13) #10
  br label %probe_fail

if.end32:                                         ; preds = %if.end.i
  tail call void @msleep(i32 noundef 30) #7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load ptr, ptr %regmap, align 1
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp34 = icmp slt i32 %call.i.i, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load ptr, ptr %dev9, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.16) #10
  br label %probe_fail

if.end40:                                         ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %val.i, align 4, !annotation !238
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load ptr, ptr %regmap, align 1
  %call.i104 = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp.i105 = icmp slt i32 %call.i104, 0
  br i1 %cmp.i105, label %if.end40.do.end46_crit_edge, label %if.end.i106

if.end40.do.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

if.end.i106:                                      ; preds = %if.end40
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %and.i = and i32 %17, 4080
  store i32 %and.i, ptr %val.i, align 4
  %18 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %do.end.i [
    i32 224, label %if.end.i106.if.end48_crit_edge
    i32 480, label %if.end.i106.if.end48_crit_edge129
  ]

if.end.i106.if.end48_crit_edge129:                ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end.i106.if.end48_crit_edge:                   ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end.i:                                         ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load ptr, ptr %dev9, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %and.i) #10
  br label %do.end46

do.end46:                                         ; preds = %do.end.i, %if.end40.do.end46_crit_edge
  %retval.0.i107.ph = phi i32 [ %call.i104, %if.end40.do.end46_crit_edge ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %21 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load ptr, ptr %dev9, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.19) #10
  br label %probe_fail

if.end48:                                         ; preds = %if.end.i106.if.end48_crit_edge, %if.end.i106.if.end48_crit_edge129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i108) #7
  %23 = ptrtoint ptr %val.i108 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i108, align 4, !annotation !238
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load ptr, ptr %regmap, align 1
  %call.i110 = call i32 @regmap_read(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %val.i108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp.i111 = icmp slt i32 %call.i110, 0
  br i1 %cmp.i111, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load ptr, ptr %dev9, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.26) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i108) #7
  %28 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load ptr, ptr %dev9, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.22) #10
  br label %probe_fail

if.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %val.i108 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i108, align 4
  %32 = trunc i32 %31 to i16
  %conv.i = and i16 %32, 255
  %chip_rev.i = getelementptr inbounds %struct.mt6660_chip, ptr %call.i, i32 0, i32 6
  %33 = ptrtoint ptr %chip_rev.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv.i, ptr %chip_rev.i, align 1
  %34 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load ptr, ptr %dev9, align 1
  %conv6.i = zext i16 %conv.i to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %conv6.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i108) #7
  %36 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load ptr, ptr %dev9, align 1
  %call.i116 = call i32 @__pm_runtime_set_status(ptr noundef %37, i32 noundef 0) #7
  %38 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load ptr, ptr %dev9, align 1
  call void @pm_runtime_enable(ptr noundef %39) #7
  %40 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load ptr, ptr %dev9, align 1
  %call61 = call i32 @devm_snd_soc_register_component(ptr noundef %41, ptr noundef nonnull @mt6660_component_driver, ptr noundef nonnull @mt6660_codec_dai, i32 noundef 1) #7
  br label %cleanup

probe_fail:                                       ; preds = %do.end54, %do.end46, %do.end38, %do.end30
  %ret.0 = phi i32 [ %retval.0.i101.ph, %do.end30 ], [ %call.i.i, %do.end38 ], [ %retval.0.i107.ph, %do.end46 ], [ %call.i110, %do.end54 ]
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load ptr, ptr %regmap, align 1
  %call.i.i118 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 3, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @mutex_destroy(ptr noundef %io_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %probe_fail, %if.end56, %if.then18, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then18 ], [ %ret.0, %probe_fail ], [ %call61, %if.end56 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.mt6660_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %dev, align 1
  tail call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #7
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %dev, align 1
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %5, i32 noundef 2) #7
  %io_lock = getelementptr inbounds %struct.mt6660_chip, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %io_lock) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %reg, label %entry.mt6660_get_reg_size.exit_crit_edge [
    i32 26, label %entry.if.then.i_crit_edge
    i32 27, label %if.then.fold.split.i
    i32 21, label %if.then.fold.split10.i
    i32 183, label %if.then.fold.split11.i
    i32 189, label %if.then.fold.split12.i
    i32 51, label %if.then.fold.split13.i
    i32 0, label %if.then.fold.split14.i
    i32 36, label %if.then.fold.split15.i
    i32 76, label %if.then.fold.split16.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

entry.mt6660_get_reg_size.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split.i, %entry.if.then.i_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split10.i ], [ 3, %if.then.fold.split11.i ], [ 4, %if.then.fold.split12.i ], [ 5, %if.then.fold.split13.i ], [ 6, %if.then.fold.split14.i ], [ 7, %if.then.fold.split15.i ], [ 8, %if.then.fold.split16.i ]
  %size.i = getelementptr [9 x %struct.reg_size_table], ptr @mt6660_reg_size_table, i32 0, i32 %i.08.lcssa.i, i32 1
  %1 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %size.i, align 4
  %conv.i = zext i8 %2 to i32
  br label %mt6660_get_reg_size.exit

mt6660_get_reg_size.exit:                         ; preds = %if.then.i, %entry.mt6660_get_reg_size.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ 1, %entry.mt6660_get_reg_size.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %data, align 4
  %4 = ptrtoint ptr %context to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load ptr, ptr %context, align 1
  %conv = trunc i32 %reg to i8
  %conv1 = trunc i32 %retval.0.i to i8
  %call2 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv1, ptr noundef nonnull %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %mt6660_get_reg_size.exit.cleanup_crit_edge, label %for.cond.preheader

mt6660_get_reg_size.exit.cleanup_crit_edge:       ; preds = %mt6660_get_reg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %mt6660_get_reg_size.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp419.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp419.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %reg_data.021 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %shl = shl i32 %reg_data.021, 8
  %arrayidx = getelementptr [4 x i8], ptr %data, i32 0, i32 %i.020
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %7 to i32
  %or = or i32 %shl, %conv6
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %reg_data.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %reg_data.0.lcssa, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mt6660_get_reg_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call2, %mt6660_get_reg_size.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  %reg_data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %reg, label %mt6660_get_reg_size.exit.thread [
    i32 26, label %entry.mt6660_get_reg_size.exit_crit_edge
    i32 27, label %if.then.fold.split.i
    i32 21, label %if.then.fold.split10.i
    i32 183, label %if.then.fold.split11.i
    i32 189, label %if.then.fold.split12.i
    i32 51, label %if.then.fold.split13.i
    i32 0, label %if.then.fold.split14.i
    i32 36, label %if.then.fold.split15.i
    i32 76, label %if.then.fold.split16.i
  ]

entry.mt6660_get_reg_size.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

mt6660_get_reg_size.exit.thread:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data) #7
  br label %for.body.preheader

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

if.then.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

if.then.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

if.then.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

if.then.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

if.then.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

if.then.fold.split16.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mt6660_get_reg_size.exit

mt6660_get_reg_size.exit:                         ; preds = %if.then.fold.split16.i, %if.then.fold.split15.i, %if.then.fold.split14.i, %if.then.fold.split13.i, %if.then.fold.split12.i, %if.then.fold.split11.i, %if.then.fold.split10.i, %if.then.fold.split.i, %entry.mt6660_get_reg_size.exit_crit_edge
  %i.08.lcssa.i = phi i32 [ 0, %entry.mt6660_get_reg_size.exit_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split10.i ], [ 3, %if.then.fold.split11.i ], [ 4, %if.then.fold.split12.i ], [ 5, %if.then.fold.split13.i ], [ 6, %if.then.fold.split14.i ], [ 7, %if.then.fold.split15.i ], [ 8, %if.then.fold.split16.i ]
  %size.i = getelementptr [9 x %struct.reg_size_table], ptr @mt6660_reg_size_table, i32 0, i32 %i.08.lcssa.i, i32 1
  %1 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %size.i, align 4
  %conv.i = zext i8 %2 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_data) #7
  br label %for.body.preheader

for.body.preheader:                               ; preds = %mt6660_get_reg_size.exit, %mt6660_get_reg_size.exit.thread
  %retval.0.i15 = phi i32 [ 1, %mt6660_get_reg_size.exit.thread ], [ %conv.i, %mt6660_get_reg_size.exit ]
  %3 = ptrtoint ptr %reg_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg_data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = shl i32 %i.012, 3
  %shr = lshr i32 %val, %mul
  %conv = trunc i32 %shr to i8
  %4 = xor i32 %i.012, -1
  %sub1 = add nsw i32 %retval.0.i15, %4
  %arrayidx = getelementptr [4 x i8], ptr %reg_data, i32 0, i32 %sub1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i15
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %context to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load ptr, ptr %context, align 1
  %conv2 = trunc i32 %reg to i8
  %conv3 = trunc i32 %retval.0.i15 to i8
  %call4 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %7, i8 noundef zeroext %conv2, i8 noundef zeroext %conv3, ptr noundef nonnull %reg_data) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_data) #7
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_component_probe(ptr noundef %component) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_component_probe.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_component_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_component_probe.__UNIQUE_ID_ddebug299, ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.81) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.mt6660_chip, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load ptr, ptr %regmap, align 1
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %7) #7
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %regmap.i.i = getelementptr inbounds %struct.mt6660_chip, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load ptr, ptr %regmap.i.i, align 1
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #10
  br label %do.end8

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.042.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 26
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %i.042.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %do.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [26 x %struct.reg_table], ptr @mt6660_setting_table, i32 0, i32 %i.042.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %mask.i = getelementptr [26 x %struct.reg_table], ptr @mt6660_setting_table, i32 0, i32 %i.042.i, i32 1
  %18 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask.i, align 4
  %val.i = getelementptr [26 x %struct.reg_table], ptr @mt6660_setting_table, i32 0, i32 %i.042.i, i32 2
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  %call5.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef %17, i32 noundef %19, i32 noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.end10.i, label %for.cond.i

do.end10.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, i32 noundef %17) #10
  br label %do.end8

for.end.i:                                        ; preds = %for.cond.i
  %24 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load ptr, ptr %regmap.i.i, align 1
  %call.i.i41.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 3, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41.i)
  %cmp16.i = icmp slt i32 %call.i.i41.i, 0
  br i1 %cmp16.i, label %do.end20.i, label %for.end.i.if.end10_crit_edge

for.end.i.if.end10_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end20.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.84) #10
  br label %do.end8

do.end8:                                          ; preds = %do.end20.i, %do.end10.i, %do.end.i
  %retval.0.i16.ph = phi i32 [ %call.i.i41.i, %do.end20.i ], [ %call5.i, %do.end10.i ], [ %call.i.i.i, %do.end.i ]
  %dev9 = getelementptr inbounds %struct.mt6660_chip, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %dev9 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load ptr, ptr %dev9, align 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.82) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %for.end.i.if.end10_crit_edge
  %retval.0.i1620 = phi i32 [ %retval.0.i16.ph, %do.end8 ], [ 0, %for.end.i.if.end10_crit_edge ]
  ret i32 %retval.0.i1620
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mt6660_component_remove(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_component_remove.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_component_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_component_remove.__UNIQUE_ID_ddebug300, ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.91) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @snd_soc_component_exit_regmap(ptr noundef %component) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt6660_component_get_volsw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %chip_rev = getelementptr inbounds %struct.mt6660_chip, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %chip_rev to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %chip_rev, align 1
  %8 = and i16 %7, 15
  %and = zext i16 %8 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_codec_dac_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp = icmp eq i32 %event, 2
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_codec_classd_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %do.body
    i32 2, label %sw.bb11
    i32 4, label %do.body38
    i32 8, label %do.body72
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_codec_classd_event.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_codec_classd_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_codec_classd_event.__UNIQUE_ID_ddebug295, ptr noundef %4, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef 3, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr i8, ptr %1, i32 -164
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.60) #10
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 163, i32 noundef 4, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %do.body20

do.end17:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr i8, ptr %1, i32 -164
  %7 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.62) #10
  br label %cleanup

do.body20:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_codec_classd_event.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_codec_classd_event, %if.then32)) #7
          to label %cleanup [label %if.then32], !srcloc !237

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr i8, ptr %1, i32 -164
  %9 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_codec_classd_event.__UNIQUE_ID_ddebug296, ptr noundef %10, ptr noundef nonnull @.str.64) #7
  br label %cleanup

do.body38:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_codec_classd_event.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_codec_classd_event, %if.then50)) #7
          to label %do.end54 [label %if.then50], !srcloc !237

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %dev51 = getelementptr i8, ptr %1, i32 -164
  %11 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_codec_classd_event.__UNIQUE_ID_ddebug297, ptr noundef %12, ptr noundef nonnull @.str.65) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body38
  %call55 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 163, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %do.end60, label %if.end62

do.end60:                                         ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  %dev61 = getelementptr i8, ptr %1, i32 -164
  %13 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.67) #10
  br label %cleanup

if.end62:                                         ; preds = %do.end54
  %call63 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 176, i32 noundef 16, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end68, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %dev69 = getelementptr i8, ptr %1, i32 -164
  %15 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.70) #10
  br label %cleanup

do.body72:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_codec_classd_event.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_codec_classd_event, %if.then84)) #7
          to label %do.end88 [label %if.then84], !srcloc !237

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %dev85 = getelementptr i8, ptr %1, i32 -164
  %17 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_codec_classd_event.__UNIQUE_ID_ddebug298, ptr noundef %18, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.58) #7
  br label %do.end88

do.end88:                                         ; preds = %if.then84, %do.body72
  %call89 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 176, i32 noundef 16, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %do.end94, label %if.end96

do.end94:                                         ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #9
  %dev95 = getelementptr i8, ptr %1, i32 -164
  %19 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev95, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.74) #10
  br label %cleanup

if.end96:                                         ; preds = %do.end88
  %call97 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 64, i32 noundef 3, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %cmp98 = icmp slt i32 %call97, 0
  br i1 %cmp98, label %do.end102, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end102:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %dev103 = getelementptr i8, ptr %1, i32 -164
  %21 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev103, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.77) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %if.end96.cleanup_crit_edge, %do.end94, %do.end68, %if.end62.cleanup_crit_edge, %do.end60, %if.then32, %do.body20, %do.end17, %do.end8, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call89, %do.end94 ], [ %call97, %do.end102 ], [ %call55, %do.end60 ], [ %call63, %do.end68 ], [ %call12, %do.end17 ], [ %call4, %do.end8 ], [ 0, %if.end96.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ], [ 0, %if.then32 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_exit_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_component_aif_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %hw_params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i.i.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %1, %entry.if.then.i.i.i_crit_edge ], [ %4, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %2 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !239
  %add.i.i.i = or i32 %2, %i.09.lcssa.i.i.i
  br label %params_physical_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.1.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_physical_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_physical_width.exit

params_physical_width.exit:                       ; preds = %for.inc.i.i.i.params_physical_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_physical_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i) #7
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i.i140 = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i.i140, label %for.inc.i.i.i147, label %params_physical_width.exit.if.then.i.i.i144_crit_edge

params_physical_width.exit.if.then.i.i.i144_crit_edge: ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i144

if.then.i.i.i144:                                 ; preds = %for.inc.i.i.i147.if.then.i.i.i144_crit_edge, %params_physical_width.exit.if.then.i.i.i144_crit_edge
  %i.09.lcssa.i.i.i141 = phi i32 [ 0, %params_physical_width.exit.if.then.i.i.i144_crit_edge ], [ 32, %for.inc.i.i.i147.if.then.i.i.i144_crit_edge ]
  %.lcssa.i.i.i142 = phi i32 [ %6, %params_physical_width.exit.if.then.i.i.i144_crit_edge ], [ %9, %for.inc.i.i.i147.if.then.i.i.i144_crit_edge ]
  %7 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i142, i1 true) #7, !range !239
  %add.i.i.i143 = or i32 %7, %i.09.lcssa.i.i.i141
  br label %params_width.exit

for.inc.i.i.i147:                                 ; preds = %params_physical_width.exit
  %arrayidx.1.i.i.i145 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i.i.i145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i.i.i146 = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i.i.i146, label %for.inc.i.i.i147.params_width.exit_crit_edge, label %for.inc.i.i.i147.if.then.i.i.i144_crit_edge

for.inc.i.i.i147.if.then.i.i.i144_crit_edge:      ; preds = %for.inc.i.i.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i144

for.inc.i.i.i147.params_width.exit_crit_edge:     ; preds = %for.inc.i.i.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i147.params_width.exit_crit_edge, %if.then.i.i.i144
  %retval.0.i.i.i148 = phi i32 [ %add.i.i.i143, %if.then.i.i.i144 ], [ 0, %for.inc.i.i.i147.params_width.exit_crit_edge ]
  %call1.i149 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i148) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_component_aif_hw_params, %if.then)) #7
          to label %do.body5 [label %if.then], !srcloc !237

if.then:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug301, ptr noundef %11, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #7
  br label %do.body5

do.body5:                                         ; preds = %if.then, %params_width.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_component_aif_hw_params, %if.then17)) #7
          to label %do.body23 [label %if.then17], !srcloc !237

if.then17:                                        ; preds = %do.body5
  %dev18 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %12 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev18, align 4
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %if.then17.if.then.i.i_crit_edge

if.then17.if.then.i.i_crit_edge:                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %if.then17.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %if.then17.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %15, %if.then17.if.then.i.i_crit_edge ], [ %18, %for.inc.i.i.if.then.i.i_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !239
  %add.i.i = or i32 %16, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %if.then17
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug302, ptr noundef %13, ptr noundef nonnull @.str.95, i32 noundef %retval.0.i.i) #7
  br label %do.body23

do.body23:                                        ; preds = %params_format.exit, %do.body5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_component_aif_hw_params, %if.then35)) #7
          to label %do.body41 [label %if.then35], !srcloc !237

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %19 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev36, align 4
  %arrayidx.i.i150 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %arrayidx.i.i150 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i150, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug303, ptr noundef %20, ptr noundef nonnull @.str.96, i32 noundef %22) #7
  br label %do.body41

do.body41:                                        ; preds = %if.then35, %do.body23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_component_aif_hw_params, %if.then53)) #7
          to label %do.end57 [label %if.then53], !srcloc !237

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %dev54 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %23 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug304, ptr noundef %24, ptr noundef nonnull @.str.97, i32 noundef %call1.i, i32 noundef %call1.i149) #7
  br label %do.end57

do.end57:                                         ; preds = %if.then53, %do.body41
  %25 = add i32 %call1.i, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %25)
  %26 = icmp ult i32 %25, -17
  br i1 %26, label %do.end62, label %if.end64

do.end62:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  %dev63 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %27 = ptrtoint ptr %dev63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.98) #10
  br label %cleanup

if.end64:                                         ; preds = %do.end57
  %29 = add i32 %call1.i149, -16
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %30)
  %31 = icmp ult i32 %30, 9
  br i1 %31, label %switch.hole_check, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %if.end64
  %switch.maskindex = trunc i32 %30 to i16
  %switch.shifted = lshr i16 279, %switch.maskindex
  %32 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %switch.lobit.not = icmp eq i16 %32, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.mt6660_component_aif_hw_params, i32 0, i32 %30
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %34 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %component, align 4
  %call68 = tail call i32 @snd_soc_component_update_bits(ptr noundef %35, i32 noundef 16, i32 noundef 192, i32 noundef %switch.load) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %do.end74, label %if.end76

do.end74:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %dev75 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %36 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev75, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.100) #10
  br label %cleanup

if.end76:                                         ; preds = %switch.lookup
  %38 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %component, align 4
  %shl78 = shl nuw nsw i32 %call1.i, 4
  %call79 = tail call i32 @snd_soc_component_update_bits(ptr noundef %39, i32 noundef 21, i32 noundef 1008, i32 noundef %shl78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end85, label %do.body88

do.end85:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %dev86 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %40 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev86, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.103) #10
  br label %cleanup

do.body88:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_component_aif_hw_params, %if.then100)) #7
          to label %cleanup [label %if.then100], !srcloc !237

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #9
  %dev101 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %42 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev101, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug305, ptr noundef %43, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.93) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %do.body88, %do.end85, %do.end74, %switch.hole_check.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %do.end62
  %retval.0 = phi i32 [ -524, %do.end62 ], [ %call68, %do.end74 ], [ %call79, %do.end85 ], [ -524, %if.end64.cleanup_crit_edge ], [ 0, %if.then100 ], [ 0, %do.body88 ], [ -524, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_i2c_runtime_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_i2c_runtime_suspend.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_i2c_runtime_suspend, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_i2c_runtime_suspend.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.107) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.mt6660_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %regmap, align 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6660_i2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt6660_i2c_runtime_resume.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt6660_i2c_runtime_resume, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !237

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt6660_i2c_runtime_resume.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.109) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.mt6660_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load ptr, ptr %regmap, align 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !145, !147, !148, !149, !151, !153, !155, !157, !158, !160, !161, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !179, !180, !182, !184, !186, !188, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !218, !220, !221, !222, !224, !225, !226}
!llvm.module.flags = !{!228, !229, !230, !231, !232, !233, !234, !235}
!llvm.ident = !{!236}

!0 = !{ptr @__initcall__kmod_snd_soc_mt6660__309_574_mt6660_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_mt6660__309_574_mt6660_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/mt6660.c", i32 574, i32 1}
!2 = !{ptr @__exitcall_mt6660_i2c_driver_exit, !1, !"__exitcall_mt6660_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author310, !4, !"__UNIQUE_ID_author310", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/mt6660.c", i32 576, i32 1}
!5 = !{ptr @__UNIQUE_ID_description311, !6, !"__UNIQUE_ID_description311", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/mt6660.c", i32 577, i32 1}
!7 = !{ptr @__UNIQUE_ID_file312, !8, !"__UNIQUE_ID_file312", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/mt6660.c", i32 578, i32 1}
!9 = !{ptr @__UNIQUE_ID_license313, !8, !"__UNIQUE_ID_license313", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version314, !11, !"__UNIQUE_ID_version314", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/mt6660.c", i32 579, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/mt6660.c", i32 566, i32 11}
!18 = !{ptr @mt6660_i2c_driver, !19, !"mt6660_i2c_driver", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/mt6660.c", i32 564, i32 26}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/mt6660.c", i32 465, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mt6660_i2c_probe.__UNIQUE_ID_ddebug306, !21, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!25 = !{ptr @mt6660_i2c_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/mt6660.c", i32 471, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mt6660_i2c_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/mt6660.c", i32 474, i32 17}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/mt6660.c", i32 478, i32 3}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mt6660_i2c_probe._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @mt6660_i2c_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/mt6660.c", i32 485, i32 3}
!39 = !{ptr @mt6660_i2c_probe._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mt6660_i2c_probe._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/mt6660.c", i32 491, i32 3}
!43 = !{ptr @mt6660_i2c_probe._entry.15, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mt6660_i2c_probe._entry_ptr.17, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/mt6660.c", i32 497, i32 3}
!47 = !{ptr @mt6660_i2c_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mt6660_i2c_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/mt6660.c", i32 503, i32 3}
!51 = !{ptr @mt6660_i2c_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mt6660_i2c_probe._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mt6660_regmap_config, !54, !"mt6660_regmap_config", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/mt6660.c", i32 77, i32 35}
!55 = !{ptr @mt6660_reg_size_table, !56, !"mt6660_reg_size_table", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/mt6660.c", i32 22, i32 36}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/mt6660.c", i32 423, i32 3}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @_mt6660_chip_id_check._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @_mt6660_chip_id_check._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/mt6660.c", i32 451, i32 3}
!64 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @_mt6660_read_chip_revision._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @_mt6660_read_chip_revision._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/mt6660.c", i32 455, i32 2}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @_mt6660_read_chip_revision._entry.28, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @_mt6660_read_chip_revision._entry_ptr.31, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mt6660_component_driver, !73, !"mt6660_component_driver", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/mt6660.c", i32 314, i32 46}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/mt6660.c", i32 202, i32 2}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/mt6660.c", i32 204, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/mt6660.c", i32 205, i32 2}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/mt6660.c", i32 206, i32 2}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/mt6660.c", i32 207, i32 2}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/mt6660.c", i32 208, i32 2}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/mt6660.c", i32 209, i32 2}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/mt6660.c", i32 211, i32 2}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/mt6660.c", i32 213, i32 2}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/mt6660.c", i32 215, i32 2}
!94 = !{ptr @mt6660_component_snd_controls, !95, !"mt6660_component_snd_controls", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/mt6660.c", i32 201, i32 38}
!96 = !{ptr @vol_ctl_tlv, !97, !"vol_ctl_tlv", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/mt6660.c", i32 199, i32 14}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/mt6660.c", i32 165, i32 2}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/mt6660.c", i32 167, i32 2}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/mt6660.c", i32 168, i32 2}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/mt6660.c", i32 169, i32 2}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/mt6660.c", i32 173, i32 2}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/mt6660.c", i32 174, i32 2}
!110 = !{ptr @mt6660_component_dapm_widgets, !111, !"mt6660_component_dapm_widgets", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/mt6660.c", i32 164, i32 41}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/mt6660.c", i32 101, i32 3}
!114 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mt6660_codec_classd_event.__UNIQUE_ID_ddebug295, !113, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/mt6660.c", i32 107, i32 4}
!118 = !{ptr @mt6660_codec_classd_event._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @mt6660_codec_classd_event._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.62, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/mt6660.c", i32 116, i32 4}
!122 = !{ptr @mt6660_codec_classd_event._entry.61, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @mt6660_codec_classd_event._entry_ptr.63, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/mt6660.c", i32 120, i32 3}
!126 = !{ptr @mt6660_codec_classd_event.__UNIQUE_ID_ddebug296, !125, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/mt6660.c", i32 123, i32 3}
!129 = !{ptr @mt6660_codec_classd_event.__UNIQUE_ID_ddebug297, !128, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/mt6660.c", i32 128, i32 4}
!132 = !{ptr @mt6660_codec_classd_event._entry.66, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @mt6660_codec_classd_event._entry_ptr.68, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/mt6660.c", i32 136, i32 4}
!136 = !{ptr @mt6660_codec_classd_event._entry.69, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @mt6660_codec_classd_event._entry_ptr.71, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/mt6660.c", i32 142, i32 3}
!140 = !{ptr @mt6660_codec_classd_event.__UNIQUE_ID_ddebug298, !139, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/mt6660.c", i32 148, i32 4}
!143 = !{ptr @mt6660_codec_classd_event._entry.73, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @mt6660_codec_classd_event._entry_ptr.75, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/mt6660.c", i32 156, i32 4}
!147 = !{ptr @mt6660_codec_classd_event._entry.76, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @mt6660_codec_classd_event._entry_ptr.78, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.79, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/mt6660.c", i32 178, i32 17}
!151 = !{ptr @.str.80, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/mt6660.c", i32 184, i32 4}
!153 = !{ptr @mt6660_component_dapm_routes, !154, !"mt6660_component_dapm_routes", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/mt6660.c", i32 177, i32 40}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/mt6660.c", i32 298, i32 2}
!157 = !{ptr @mt6660_component_probe.__UNIQUE_ID_ddebug299, !156, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/mt6660.c", i32 303, i32 3}
!160 = !{ptr @mt6660_component_probe._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @mt6660_component_probe._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/mt6660.c", i32 268, i32 3}
!164 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @mt6660_component_setting._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @mt6660_component_setting._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/mt6660.c", i32 278, i32 4}
!169 = !{ptr @mt6660_component_setting._entry.85, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @mt6660_component_setting._entry_ptr.87, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.89, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/mt6660.c", i32 286, i32 3}
!173 = !{ptr @mt6660_component_setting._entry.88, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @mt6660_component_setting._entry_ptr.90, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @mt6660_setting_table, !176, !"mt6660_setting_table", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/mt6660.c", i32 231, i32 31}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/mt6660.c", i32 310, i32 2}
!179 = !{ptr @mt6660_component_remove.__UNIQUE_ID_ddebug300, !178, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!180 = !{ptr @.str.92, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/mt6660.c", i32 390, i32 10}
!182 = !{ptr @mt6660_codec_dai, !183, !"mt6660_codec_dai", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/mt6660.c", i32 389, i32 34}
!184 = !{ptr @mt6660_component_aif_ops, !185, !"mt6660_component_aif_ops", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/mt6660.c", i32 377, i32 37}
!186 = !{ptr @.str.93, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/mt6660.c", i32 336, i32 2}
!188 = !{ptr @.str.94, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug301, !187, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!190 = !{ptr @.str.95, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/mt6660.c", i32 337, i32 2}
!192 = !{ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug302, !191, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/mt6660.c", i32 338, i32 2}
!195 = !{ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug303, !194, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!196 = !{ptr @.str.97, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/mt6660.c", i32 339, i32 2}
!198 = !{ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug304, !197, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!199 = !{ptr @.str.98, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/mt6660.c", i32 341, i32 3}
!201 = !{ptr @mt6660_component_aif_hw_params._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @mt6660_component_aif_hw_params._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.100, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/mt6660.c", i32 364, i32 3}
!205 = !{ptr @mt6660_component_aif_hw_params._entry.99, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @mt6660_component_aif_hw_params._entry_ptr.101, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/mt6660.c", i32 370, i32 3}
!209 = !{ptr @mt6660_component_aif_hw_params._entry.102, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @mt6660_component_aif_hw_params._entry_ptr.104, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/mt6660.c", i32 373, i32 2}
!213 = !{ptr @mt6660_component_aif_hw_params.__UNIQUE_ID_ddebug305, !212, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!214 = !{ptr @mt6660_of_id, !215, !"mt6660_of_id", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/mt6660.c", i32 552, i32 49}
!216 = !{ptr @mt6660_dev_pm_ops, !217, !"mt6660_dev_pm_ops", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/mt6660.c", i32 547, i32 32}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/mt6660.c", i32 533, i32 2}
!220 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @mt6660_i2c_runtime_suspend.__UNIQUE_ID_ddebug307, !219, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/mt6660.c", i32 542, i32 2}
!224 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @mt6660_i2c_runtime_resume.__UNIQUE_ID_ddebug308, !223, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!226 = !{ptr @mt6660_i2c_id, !227, !"mt6660_i2c_id", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/mt6660.c", i32 558, i32 35}
!228 = !{i32 1, !"wchar_size", i32 2}
!229 = !{i32 1, !"min_enum_size", i32 4}
!230 = !{i32 8, !"branch-target-enforcement", i32 0}
!231 = !{i32 8, !"sign-return-address", i32 0}
!232 = !{i32 8, !"sign-return-address-all", i32 0}
!233 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!234 = !{i32 7, !"uwtable", i32 1}
!235 = !{i32 7, !"frame-pointer", i32 2}
!236 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!237 = !{i64 2148966575, i64 2148966580, i64 2148966593, i64 2148966637, i64 2148966671, i64 2148966692}
!238 = !{!"auto-init"}
!239 = !{i32 0, i32 33}
